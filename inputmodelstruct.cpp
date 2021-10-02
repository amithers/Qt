#include "inputmodelstruct.h"

InputModelStruct::InputModelStruct(
        QObject* parent) : QAbstractListModel(parent)
{

}

QHash<int, QByteArray> InputModelStruct::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[NameRole] = "Name";
    roles[TypeRole] = "Type";
    roles[ScaleRole] = "Scale";
    roles[BiasRole] = "Bias";
    roles[IsArrayRole] = "Is_Array";
    roles[SizeOfArrayRole] = "Size_Of_Array";

    return roles;
}

QVariant InputModelStruct::data(const QModelIndex &index, int role) const {
    if(!index.isValid()) {
        return QVariant();
    }

    switch(role){

        case(NameRole):
            return QVariant(structures[index.row()].name);

        case(TypeRole):
            return QVariant(structures[index.row()].type);

        case(ScaleRole):
            return QVariant(structures[index.row()].scale);

        case(BiasRole):
            return QVariant(structures[index.row()].bias);

        case(IsArrayRole):
            return QVariant(structures[index.row()].isArray);

        case(SizeOfArrayRole):
            return QVariant(structures[index.row()].sizeOfArray);
    }
    return QVariant();
}
