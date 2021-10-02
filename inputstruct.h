#ifndef INPUTSTRUCT_H
#define INPUTSTRUCT_H

#include <QString>

class InputStruct
{

public:
    enum   TypeInfo{
        BYTE_8,
        BYTE_16,
        BYTE_32,
        BYTE_64
    };

    QString name;
    TypeInfo type;
    double scale;
    double bias;
    bool isArray;
    int sizeOfArray;
    InputStruct();
};

#endif // INPUTSTRUCT_H
