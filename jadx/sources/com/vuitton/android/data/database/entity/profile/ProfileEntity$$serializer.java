package com.vuitton.android.data.database.entity.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/database/entity/profile/ProfileEntity.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProfileEntity$$serializer implements GeneratedSerializer<ProfileEntity> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProfileEntity$$serializer f43603a;
    private static final SerialDescriptor descriptor;

    static {
        ProfileEntity$$serializer profileEntity$$serializer = new ProfileEntity$$serializer();
        f43603a = profileEntity$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.database.entity.profile.ProfileEntity", profileEntity$$serializer, 19);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("identifierType", false);
        pluginGeneratedSerialDescriptor.k("login", false);
        pluginGeneratedSerialDescriptor.k("firstName", false);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName", false);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("civilityCode", false);
        pluginGeneratedSerialDescriptor.k("addressList", true);
        pluginGeneratedSerialDescriptor.k("taxId", true);
        pluginGeneratedSerialDescriptor.k("branchId", true);
        pluginGeneratedSerialDescriptor.k("contactId", false);
        pluginGeneratedSerialDescriptor.k("batchAuthKey", false);
        pluginGeneratedSerialDescriptor.k("accountId", false);
        pluginGeneratedSerialDescriptor.k("kisaStoreAppointmentPersonalData", false);
        pluginGeneratedSerialDescriptor.k("mobilePhoneNumber", false);
        pluginGeneratedSerialDescriptor.k("initials", true);
        pluginGeneratedSerialDescriptor.k("displayName", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        int i2;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = ProfileEntity.t;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        List list = null;
        int i3 = 0;
        Boolean bool = null;
        PhoneNumberEntity phoneNumberEntity = null;
        String str6 = null;
        String strL = null;
        String str7 = null;
        String strL2 = null;
        String str8 = null;
        String strL3 = null;
        String strL4 = null;
        boolean z = true;
        String strL5 = null;
        String strL6 = null;
        String strL7 = null;
        String strL8 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    strL2 = strL2;
                    z = false;
                    strL2 = strL2;
                    break;
                case 0:
                    strL = strL;
                    strL2 = strL2;
                    strL5 = compositeDecoderB.l(serialDescriptor, 0);
                    i3 |= 1;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 1:
                    strL6 = compositeDecoderB.l(serialDescriptor, 1);
                    i3 |= 2;
                    strL = strL;
                    break;
                case 2:
                    strL7 = compositeDecoderB.l(serialDescriptor, 2);
                    i3 |= 4;
                    strL = strL;
                    break;
                case 3:
                    strL = compositeDecoderB.l(serialDescriptor, 3);
                    i3 |= 8;
                    break;
                case 4:
                    strL = strL;
                    strL2 = strL2;
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str7);
                    i3 |= 16;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 5:
                    strL2 = compositeDecoderB.l(serialDescriptor, 5);
                    i3 |= 32;
                    strL = strL;
                    break;
                case 6:
                    strL = strL;
                    strL2 = strL2;
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str8);
                    i3 |= 64;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 7:
                    strL3 = compositeDecoderB.l(serialDescriptor, 7);
                    i3 |= 128;
                    strL = strL;
                    break;
                case 8:
                    strL4 = compositeDecoderB.l(serialDescriptor, 8);
                    i3 |= 256;
                    strL = strL;
                    break;
                case 9:
                    strL = strL;
                    strL2 = strL2;
                    list = (List) compositeDecoderB.w(serialDescriptor, 9, (DeserializationStrategy) lazyArr[9].getF71699b(), list);
                    i3 |= 512;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 10:
                    strL = strL;
                    strL2 = strL2;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str4);
                    i3 |= 1024;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 11:
                    strL = strL;
                    strL2 = strL2;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str3);
                    i3 |= 2048;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 12:
                    strL = strL;
                    strL2 = strL2;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str2);
                    i3 |= 4096;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 13:
                    strL = strL;
                    strL2 = strL2;
                    str = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str);
                    i3 |= 8192;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 14:
                    strL = strL;
                    strL2 = strL2;
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 14, StringSerializer.f75684a, str5);
                    i3 |= 16384;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 15:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 15, BooleanSerializer.f75574a, bool);
                    i2 = 32768;
                    i3 |= i2;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 16:
                    phoneNumberEntity = (PhoneNumberEntity) compositeDecoderB.m(serialDescriptor, 16, PhoneNumberEntity$$serializer.f43593a, phoneNumberEntity);
                    i2 = 65536;
                    i3 |= i2;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 17:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str6);
                    i2 = 131072;
                    i3 |= i2;
                    strL = strL;
                    strL2 = strL2;
                    break;
                case 18:
                    strL8 = compositeDecoderB.l(serialDescriptor, 18);
                    i3 |= 262144;
                    strL = strL;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProfileEntity(i3, strL5, strL6, strL7, strL, str7, strL2, str8, strL3, strL4, list, str4, str3, str2, str, str5, bool, phoneNumberEntity, str6, strL8, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProfileEntity profileEntity = (ProfileEntity) obj;
        profileEntity.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProfileEntity.t;
        String str = profileEntity.f43594a;
        String str2 = profileEntity.s;
        String str3 = profileEntity.r;
        String str4 = profileEntity.l;
        String str5 = profileEntity.f43602k;
        List list = profileEntity.f43601j;
        String str6 = profileEntity.g;
        String str7 = profileEntity.f43597e;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, profileEntity.f43595b);
        compositeEncoderB.y(serialDescriptor, 2, profileEntity.f43596c);
        compositeEncoderB.y(serialDescriptor, 3, profileEntity.d);
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str7);
        }
        compositeEncoderB.y(serialDescriptor, 5, profileEntity.f43598f);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str6);
        }
        compositeEncoderB.y(serialDescriptor, 7, profileEntity.f43599h);
        compositeEncoderB.y(serialDescriptor, 8, profileEntity.f43600i);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(list, EmptyList.f71768b)) {
            compositeEncoderB.A(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str4);
        }
        StringSerializer stringSerializer = StringSerializer.f75684a;
        compositeEncoderB.h(serialDescriptor, 12, stringSerializer, profileEntity.m);
        compositeEncoderB.h(serialDescriptor, 13, stringSerializer, profileEntity.n);
        compositeEncoderB.h(serialDescriptor, 14, stringSerializer, profileEntity.o);
        compositeEncoderB.h(serialDescriptor, 15, BooleanSerializer.f75574a, profileEntity.p);
        compositeEncoderB.h(serialDescriptor, 16, PhoneNumberEntity$$serializer.f43593a, profileEntity.q);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 17, stringSerializer, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str2, "")) {
            compositeEncoderB.y(serialDescriptor, 18, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProfileEntity.t;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, stringSerializer, lazyArr[9].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(BooleanSerializer.f75574a), BuiltinSerializersKt.d(PhoneNumberEntity$$serializer.f43593a), BuiltinSerializersKt.d(stringSerializer), stringSerializer};
    }
}
