/****************************************************************************
** Meta object code from reading C++ file 'competition.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../Ctest-client/competition.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'competition.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_competition[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      17,   13,   12,   12, 0x08,
      29,   12,   12,   12, 0x08,
      62,   12,   12,   12, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_competition[] = {
    "competition\0\0row\0change(int)\0"
    "on_pushButton_Practise_clicked()\0"
    "on_pushButton_Sumit_clicked()\0"
};

void competition::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        competition *_t = static_cast<competition *>(_o);
        switch (_id) {
        case 0: _t->change((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->on_pushButton_Practise_clicked(); break;
        case 2: _t->on_pushButton_Sumit_clicked(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData competition::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject competition::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_competition,
      qt_meta_data_competition, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &competition::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *competition::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *competition::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_competition))
        return static_cast<void*>(const_cast< competition*>(this));
    return QDialog::qt_metacast(_clname);
}

int competition::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
