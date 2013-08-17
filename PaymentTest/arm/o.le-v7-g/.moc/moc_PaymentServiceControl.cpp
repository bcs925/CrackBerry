/****************************************************************************
** Meta object code from reading C++ file 'PaymentServiceControl.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/PaymentServiceControl.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'PaymentServiceControl.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PaymentServiceControl[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      19,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       7,       // signalCount

 // signals: signature, parameters, type, tag, flags
      37,   23,   22,   22, 0x05,
      85,   70,   22,   22, 0x05,
     133,  127,   22,   22, 0x05,
     210,  163,   22,   22, 0x05,
     283,  276,   22,   22, 0x05,
     326,  316,   22,   22, 0x05,
     386,  366,   22,   22, 0x05,

 // slots: signature, parameters, type, tag, flags
     417,   22,   22,   22, 0x0a,
     436,   22,   22,   22, 0x0a,
     464,   22,   22,   22, 0x0a,
     480,   22,   22,   22, 0x0a,
     508,   22,   22,   22, 0x0a,
     537,   22,   22,   22, 0x0a,

 // methods: signature, parameters, type, tag, flags
     587,  566,   22,   22, 0x02,
     637,  629,   22,   22, 0x02,
     662,  655,   22,   22, 0x02,
     688,  655,   22,   22, 0x02,
     726,  655,   22,   22, 0x02,
     778,  767,   22,   22, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_PaymentServiceControl[] = {
    "PaymentServiceControl\0\0receiptString\0"
    "purchaseResponseSuccess(QString)\0"
    "receiptsString\0existingPurchasesResponseSuccess(QString)\0"
    "price\0priceResponseSuccess(QString)\0"
    "price,initialPeriod,renewalPrice,renewalPeriod\0"
    "subscriptionTermsResponseSuccess(QString,QString,QString,QString)\0"
    "status\0checkStatusResponseSuccess(bool)\0"
    "cancelled\0cancelSubscriptionResponseSuccess(bool)\0"
    "errorCode,errorText\0infoResponseError(int,QString)\0"
    "purchaseResponse()\0existingPurchasesResponse()\0"
    "priceResponse()\0subscriptionTermsResponse()\0"
    "subscriptionStatusResponse()\0"
    "cancelSubscriptionResponse()\0"
    "id,sku,name,metadata\0"
    "purchase(QString,QString,QString,QString)\0"
    "refresh\0getExisting(bool)\0id,sku\0"
    "getPrice(QString,QString)\0"
    "getSubscriptionTerms(QString,QString)\0"
    "checkSubscriptionStatus(QString,QString)\0"
    "purchaseId\0cancelSubscription(QString)\0"
};

void PaymentServiceControl::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PaymentServiceControl *_t = static_cast<PaymentServiceControl *>(_o);
        switch (_id) {
        case 0: _t->purchaseResponseSuccess((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->existingPurchasesResponseSuccess((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->priceResponseSuccess((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->subscriptionTermsResponseSuccess((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4]))); break;
        case 4: _t->checkStatusResponseSuccess((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->cancelSubscriptionResponseSuccess((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->infoResponseError((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 7: _t->purchaseResponse(); break;
        case 8: _t->existingPurchasesResponse(); break;
        case 9: _t->priceResponse(); break;
        case 10: _t->subscriptionTermsResponse(); break;
        case 11: _t->subscriptionStatusResponse(); break;
        case 12: _t->cancelSubscriptionResponse(); break;
        case 13: _t->purchase((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4]))); break;
        case 14: _t->getExisting((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 15: _t->getPrice((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 16: _t->getSubscriptionTerms((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 17: _t->checkSubscriptionStatus((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 18: _t->cancelSubscription((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PaymentServiceControl::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PaymentServiceControl::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_PaymentServiceControl,
      qt_meta_data_PaymentServiceControl, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PaymentServiceControl::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PaymentServiceControl::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PaymentServiceControl::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PaymentServiceControl))
        return static_cast<void*>(const_cast< PaymentServiceControl*>(this));
    return QObject::qt_metacast(_clname);
}

int PaymentServiceControl::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 19)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 19;
    }
    return _id;
}

// SIGNAL 0
void PaymentServiceControl::purchaseResponseSuccess(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void PaymentServiceControl::existingPurchasesResponseSuccess(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PaymentServiceControl::priceResponseSuccess(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void PaymentServiceControl::subscriptionTermsResponseSuccess(const QString & _t1, const QString & _t2, const QString & _t3, const QString & _t4)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void PaymentServiceControl::checkStatusResponseSuccess(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void PaymentServiceControl::cancelSubscriptionResponseSuccess(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void PaymentServiceControl::infoResponseError(int _t1, const QString & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}
QT_END_MOC_NAMESPACE
