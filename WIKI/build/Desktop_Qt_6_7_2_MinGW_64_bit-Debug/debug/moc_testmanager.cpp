/****************************************************************************
** Meta object code from reading C++ file 'testmanager.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../testmanager.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'testmanager.h' doesn't include <QObject>."
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
struct qt_meta_stringdata_CLASStestmanagerENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASStestmanagerENDCLASS = QtMocHelpers::stringData(
    "testmanager",
    "questionsChanged",
    "",
    "currentQuestionIndexChanged",
    "setQuestionsAndAnswers",
    "index",
    "getCurrentQuestion",
    "getCurrentQuestionIndex",
    "saveAnswer",
    "answer",
    "getSavedAnswer",
    "checkIfFirst",
    "checkIfLast",
    "plusIndex",
    "minusIndex",
    "clearEverything",
    "checkIfAllAnswersAreSelected",
    "correctVsIncorrect",
    "getTestIndex",
    "questions",
    "currentQuestionIndex"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASStestmanagerENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       2,  123, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,  104,    2, 0x06,    3 /* Public */,
       3,    0,  105,    2, 0x06,    4 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       4,    1,  106,    2, 0x02,    5 /* Public */,
       6,    0,  109,    2, 0x02,    7 /* Public */,
       7,    0,  110,    2, 0x02,    8 /* Public */,
       8,    1,  111,    2, 0x02,    9 /* Public */,
      10,    0,  114,    2, 0x02,   11 /* Public */,
      11,    0,  115,    2, 0x02,   12 /* Public */,
      12,    0,  116,    2, 0x02,   13 /* Public */,
      13,    0,  117,    2, 0x02,   14 /* Public */,
      14,    0,  118,    2, 0x02,   15 /* Public */,
      15,    0,  119,    2, 0x02,   16 /* Public */,
      16,    0,  120,    2, 0x02,   17 /* Public */,
      17,    0,  121,    2, 0x02,   18 /* Public */,
      18,    0,  122,    2, 0x02,   19 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::QVariantMap,
    QMetaType::QString,
    QMetaType::Void, QMetaType::QString,    9,
    QMetaType::QString,
    QMetaType::Bool,
    QMetaType::Bool,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Bool,
    QMetaType::Int,
    QMetaType::Int,

 // properties: name, type, flags
      19, QMetaType::QVariantList, 0x00015001, uint(0), 0,
      20, QMetaType::Int, 0x00015103, uint(1), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject testmanager::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASStestmanagerENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASStestmanagerENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASStestmanagerENDCLASS_t,
        // property 'questions'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'currentQuestionIndex'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<testmanager, std::true_type>,
        // method 'questionsChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'currentQuestionIndexChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'setQuestionsAndAnswers'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getCurrentQuestion'
        QtPrivate::TypeAndForceComplete<QVariantMap, std::false_type>,
        // method 'getCurrentQuestionIndex'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'saveAnswer'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getSavedAnswer'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'checkIfFirst'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'checkIfLast'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'plusIndex'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'minusIndex'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'clearEverything'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'checkIfAllAnswersAreSelected'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'correctVsIncorrect'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getTestIndex'
        QtPrivate::TypeAndForceComplete<int, std::false_type>
    >,
    nullptr
} };

void testmanager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<testmanager *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->questionsChanged(); break;
        case 1: _t->currentQuestionIndexChanged(); break;
        case 2: _t->setQuestionsAndAnswers((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 3: { QVariantMap _r = _t->getCurrentQuestion();
            if (_a[0]) *reinterpret_cast< QVariantMap*>(_a[0]) = std::move(_r); }  break;
        case 4: { QString _r = _t->getCurrentQuestionIndex();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 5: _t->saveAnswer((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 6: { QString _r = _t->getSavedAnswer();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 7: { bool _r = _t->checkIfFirst();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 8: { bool _r = _t->checkIfLast();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 9: _t->plusIndex(); break;
        case 10: _t->minusIndex(); break;
        case 11: _t->clearEverything(); break;
        case 12: { bool _r = _t->checkIfAllAnswersAreSelected();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 13: { int _r = _t->correctVsIncorrect();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 14: { int _r = _t->getTestIndex();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (testmanager::*)();
            if (_t _q_method = &testmanager::questionsChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (testmanager::*)();
            if (_t _q_method = &testmanager::currentQuestionIndexChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
    } else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<testmanager *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QVariantList*>(_v) = _t->questions(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->currentQuestionIndex(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<testmanager *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 1: _t->setCurrentQuestionIndex(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *testmanager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *testmanager::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASStestmanagerENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int testmanager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 15)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 15;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void testmanager::questionsChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void testmanager::currentQuestionIndexChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}
QT_WARNING_POP
