#import "TLRPCauth_signUp.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLauth_Authorization.h"

@implementation TLRPCauth_signUp

@synthesize phone_number = _phone_number;
@synthesize phone_code_hash = _phone_code_hash;
@synthesize phone_code = _phone_code;
@synthesize first_name = _first_name;
@synthesize last_name = _last_name;

- (Class)responseClass
{
    return [TLauth_Authorization class];
}

- (int)impliedResponseSignature
{
    return (int)0xf6b673a4;
}

- (int)layerVersion
{
    return 8;
}

- (int32_t)TLconstructorSignature
{
    TGLog(@"constructorSignature is not implemented for base type");
    return 0;
}

- (int32_t)TLconstructorName
{
    TGLog(@"constructorName is not implemented for base type");
    return 0;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)__unused metaObject
{
    TGLog(@"TLbuildFromMetaObject is not implemented for base type");
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
    TGLog(@"TLfillFieldsWithValues is not implemented for base type");
}


@end

@implementation TLRPCauth_signUp$auth_signUp : TLRPCauth_signUp


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x1b067634;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x82dec460;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCauth_signUp$auth_signUp *object = [[TLRPCauth_signUp$auth_signUp alloc] init];
    object.phone_number = metaObject->getString(0xaecb6c79);
    object.phone_code_hash = metaObject->getString(0xd4dfef1b);
    object.phone_code = metaObject->getString(0xbbf1e711);
    object.first_name = metaObject->getString(0xa604f05d);
    object.last_name = metaObject->getString(0x10662e0e);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.phone_number;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xaecb6c79, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.phone_code_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xd4dfef1b, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.phone_code;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xbbf1e711, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.first_name;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xa604f05d, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.last_name;
        values->insert(std::pair<int32_t, TLConstructedValue>(0x10662e0e, value));
    }
}


@end

