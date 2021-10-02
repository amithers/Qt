#ifndef INPUTMODELSTRUCT_H
#define INPUTMODELSTRUCT_H
#include <QString>
#include <QAbstractTableModel>
#include "inputstruct.h"

class InputModelStruct : public QAbstractListModel
{
    Q_OBJECT
public:
    enum TableRoles {
      NameRole = Qt::UserRole +1,
      TypeRole = Qt::UserRole +2,
      ScaleRole = Qt::UserRole +3,
      BiasRole = Qt::UserRole +4,
      IsArrayRole = Qt::UserRole +5,
      SizeOfArrayRole = Qt::UserRole +6,

    };
    QHash<int, QByteArray> roleNames() const;
    explicit InputModelStruct(QObject* parent = nullptr);
    virtual QVariant data(const QModelIndex &index, int role) const;
private:
    QVector<InputStruct> structures;

};

#endif // INPUTMODELSTRUCT_H

