package com.vuitton.android.data.dto.address;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
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
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/address/AddressDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/address/AddressDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AddressDto$$serializer implements GeneratedSerializer<AddressDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AddressDto$$serializer f44469a;
    private static final SerialDescriptor descriptor;

    static {
        AddressDto$$serializer addressDto$$serializer = new AddressDto$$serializer();
        f44469a = addressDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.address.AddressDto", addressDto$$serializer, 23);
        pluginGeneratedSerialDescriptor.k("identifier", true);
        pluginGeneratedSerialDescriptor.k("isMain", true);
        pluginGeneratedSerialDescriptor.k("addressLine1", true);
        pluginGeneratedSerialDescriptor.k("addressLine2", true);
        pluginGeneratedSerialDescriptor.k("addressLine3", true);
        pluginGeneratedSerialDescriptor.k("postalCode", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("companyName", true);
        pluginGeneratedSerialDescriptor.k("streetNumber", true);
        pluginGeneratedSerialDescriptor.k("street", true);
        pluginGeneratedSerialDescriptor.k("stateName", true);
        pluginGeneratedSerialDescriptor.k("stateCode", true);
        pluginGeneratedSerialDescriptor.k("cityName", true);
        pluginGeneratedSerialDescriptor.k("countyName", true);
        pluginGeneratedSerialDescriptor.k("countryCode", true);
        pluginGeneratedSerialDescriptor.k("countryName", true);
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("lastName", true);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("civilityCode", true);
        pluginGeneratedSerialDescriptor.k("phoneNumbers", true);
        pluginGeneratedSerialDescriptor.k("latLong", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        String str;
        int i2;
        String str2;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = AddressDto.x;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        List list = null;
        String str6 = null;
        String str7 = null;
        int i3 = 0;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        boolean z = true;
        boolean zY = false;
        String str15 = null;
        String str16 = null;
        String str17 = null;
        String str18 = null;
        String str19 = null;
        String str20 = null;
        String str21 = null;
        String str22 = null;
        String str23 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    str = str15;
                    z = false;
                    str5 = str5;
                    str15 = str;
                    str3 = str3;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str15);
                    i3 |= 1;
                    str16 = str16;
                    str4 = str4;
                    str5 = str5;
                    str15 = str;
                    str3 = str3;
                    break;
                case 1:
                    str3 = str3;
                    str5 = str5;
                    zY = compositeDecoderB.y(serialDescriptor, 1);
                    i3 |= 2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 2:
                    str2 = str4;
                    str16 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str16);
                    i3 |= 4;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 3:
                    str2 = str4;
                    str17 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str17);
                    i3 |= 8;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 4:
                    str2 = str4;
                    str18 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str18);
                    i3 |= 16;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 5:
                    str2 = str4;
                    str19 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str19);
                    i3 |= 32;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 6:
                    str2 = str4;
                    str20 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str20);
                    i3 |= 64;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 7:
                    str2 = str4;
                    str21 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str21);
                    i3 |= 128;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 8:
                    str2 = str4;
                    str22 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str22);
                    i3 |= 256;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 9:
                    str2 = str4;
                    str23 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str23);
                    i3 |= 512;
                    str4 = str2;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 10:
                    str5 = str5;
                    str3 = str3;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str4);
                    i3 |= 1024;
                    str3 = str3;
                    str5 = str5;
                    break;
                case 11:
                    str5 = str5;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str3);
                    i3 |= 2048;
                    str4 = str4;
                    str5 = str5;
                    break;
                case 12:
                    str3 = str3;
                    str4 = str4;
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str6);
                    i3 |= 4096;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 13:
                    str3 = str3;
                    str4 = str4;
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str9);
                    i3 |= 8192;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 14:
                    str3 = str3;
                    str4 = str4;
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 14, StringSerializer.f75684a, str8);
                    i3 |= 16384;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 15:
                    str10 = (String) compositeDecoderB.m(serialDescriptor, 15, StringSerializer.f75684a, str10);
                    i2 = 32768;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 16:
                    str11 = (String) compositeDecoderB.m(serialDescriptor, 16, StringSerializer.f75684a, str11);
                    i2 = 65536;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 17:
                    str12 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str12);
                    i2 = 131072;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 18:
                    str13 = (String) compositeDecoderB.m(serialDescriptor, 18, StringSerializer.f75684a, str13);
                    i2 = 262144;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 19:
                    str14 = (String) compositeDecoderB.m(serialDescriptor, 19, StringSerializer.f75684a, str14);
                    i2 = 524288;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 20:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 20, StringSerializer.f75684a, str7);
                    i2 = 1048576;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 21:
                    list = (List) compositeDecoderB.m(serialDescriptor, 21, (DeserializationStrategy) lazyArr[21].getF71699b(), list);
                    i2 = PKIFailureInfo.badSenderNonce;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                case 22:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 22, StringSerializer.f75684a, str5);
                    i2 = 4194304;
                    i3 |= i2;
                    str4 = str4;
                    str3 = str3;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        String str24 = str4;
        String str25 = str15;
        String str26 = str16;
        compositeDecoderB.c(serialDescriptor);
        String str27 = str23;
        String str28 = str14;
        String str29 = str20;
        String str30 = str11;
        return new AddressDto(i3, str25, zY, str26, str17, str18, str19, str29, str21, str22, str27, str24, str3, str6, str9, str8, str10, str30, str12, str13, str28, str7, list, str5, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AddressDto addressDto = (AddressDto) obj;
        addressDto.getClass();
        String str = addressDto.w;
        List list = addressDto.v;
        String str2 = addressDto.u;
        String str3 = addressDto.t;
        String str4 = addressDto.s;
        String str5 = addressDto.r;
        String str6 = addressDto.q;
        String str7 = addressDto.p;
        String str8 = addressDto.o;
        String str9 = addressDto.n;
        String str10 = addressDto.m;
        String str11 = addressDto.l;
        String str12 = addressDto.f44468k;
        String str13 = addressDto.f44467j;
        String str14 = addressDto.f44466i;
        String str15 = addressDto.f44465h;
        String str16 = addressDto.g;
        String str17 = addressDto.f44464f;
        String str18 = addressDto.f44463e;
        String str19 = addressDto.d;
        String str20 = addressDto.f44462c;
        boolean z = addressDto.f44461b;
        String str21 = addressDto.f44460a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = AddressDto.x;
        if (compositeEncoderB.o(serialDescriptor) || str21 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str21);
        }
        if (compositeEncoderB.o(serialDescriptor) || z) {
            compositeEncoderB.x(serialDescriptor, 1, z);
        }
        if (compositeEncoderB.o(serialDescriptor) || str20 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str20);
        }
        if (compositeEncoderB.o(serialDescriptor) || str19 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str19);
        }
        if (compositeEncoderB.o(serialDescriptor) || str18 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str18);
        }
        if (compositeEncoderB.o(serialDescriptor) || str17 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str17);
        }
        if (compositeEncoderB.o(serialDescriptor) || str16 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str16);
        }
        if (compositeEncoderB.o(serialDescriptor) || str15 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str15);
        }
        if (compositeEncoderB.o(serialDescriptor) || str14 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str14);
        }
        if (compositeEncoderB.o(serialDescriptor) || str13 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str13);
        }
        if (compositeEncoderB.o(serialDescriptor) || str12 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str12);
        }
        if (compositeEncoderB.o(serialDescriptor) || str11 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str11);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != 0) {
            compositeEncoderB.h(serialDescriptor, 12, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != 0) {
            compositeEncoderB.h(serialDescriptor, 13, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 14, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 15, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 16, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 17, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 18, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 19, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 20, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 21, (SerializationStrategy) lazyArr[21].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 22, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = AddressDto.x;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BooleanSerializer.f75574a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[21].getF71699b()), BuiltinSerializersKt.d(stringSerializer)};
    }
}
