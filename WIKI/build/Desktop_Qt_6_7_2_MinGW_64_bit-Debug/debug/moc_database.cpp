/****************************************************************************
** Meta object code from reading C++ file 'database.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../database.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'database.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.7.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSdatabaseENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSdatabaseENDCLASS = QtMocHelpers::stringData(
    "database",
    "registerUser",
    "",
    "login",
    "password",
    "enterUser",
    "getUserName",
    "getFirstTestProcent",
    "getSecondTestProcent",
    "getThirdTestProcent",
    "updateTestProcentage",
    "testIndex",
    "value",
    "setFirstTestProcent",
    "setSecondTestProcent",
    "setThirdTestProcent"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSdatabaseENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       1,    2,   74,    2, 0x02,    1 /* Public */,
       5,    2,   79,    2, 0x02,    4 /* Public */,
       6,    0,   84,    2, 0x02,    7 /* Public */,
       7,    0,   85,    2, 0x02,    8 /* Public */,
       8,    0,   86,    2, 0x02,    9 /* Public */,
       9,    0,   87,    2, 0x02,   10 /* Public */,
      10,    3,   88,    2, 0x02,   11 /* Public */,
      13,    1,   95,    2, 0x02,   15 /* Public */,
      14,    1,   98,    2, 0x02,   17 /* Public */,
      15,    1,  101,    2, 0x02,   19 /* Public */,

 // methods: parameters
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,    3,    4,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,    3,    4,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::Bool, QMetaType::Int, QMetaType::Int, QMetaType::QString,   11,   12,    3,
    QMetaType::Void, QMetaType::QString,   12,
    QMetaType::Void, QMetaType::QString,   12,
    QMetaType::Void, QMetaType::QString,   12,

       0        // eod
};

Q_CONSTINIT const QMetaObject database::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSdatabaseENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSdatabaseENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSdatabaseENDCLASS_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<database, std::true_type>,
        // method 'registerUser'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'enterUser'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'getUserName'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getFirstTestProcent'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getSecondTestProcent'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getThirdTestProcent'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'updateTestProcentage'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'setFirstTestProcent'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'setSecondTestProcent'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'setThirdTestProcent'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>
    >,
    nullptr
} };

void database::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<database *>(_o);
        (void)_t;
        switch (_id) {
        case 0: { bool _r = _t->registerUser((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 1: { bool _r = _t->enterUser((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 2: { QString _r = _t->getUserName();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 3: { QString _r = _t->getFirstTestProcent();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 4: { QString _r = _t->getSecondTestProcent();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 5: { QString _r = _t->getThirdTestProcent();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 6: { bool _r = _t->updateTestProcentage((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[3])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 7: _t->setFirstTestProcent((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 8: _t->setSecondTestProcent((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 9: _t->setThirdTestProcent((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject *database::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *database::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSdatabaseENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int database::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 10;
    }
    return _id;
}
QT_WARNING_POP
