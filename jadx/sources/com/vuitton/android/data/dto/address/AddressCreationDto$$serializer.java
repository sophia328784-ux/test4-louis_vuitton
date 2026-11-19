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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/address/AddressCreationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/address/AddressCreationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AddressCreationDto$$serializer implements GeneratedSerializer<AddressCreationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AddressCreationDto$$serializer f44453a;
    private static final SerialDescriptor descriptor;

    static {
        AddressCreationDto$$serializer addressCreationDto$$serializer = new AddressCreationDto$$serializer();
        f44453a = addressCreationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.address.AddressCreationDto", addressCreationDto$$serializer, 20);
        pluginGeneratedSerialDescriptor.k("mainAddress", false);
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
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("lastName", true);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("civilityCode", true);
        pluginGeneratedSerialDescriptor.k("phoneNumbers", true);
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
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = AddressCreationDto.u;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i3 = 0;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        List list = null;
        boolean z = true;
        boolean zY = false;
        String str14 = null;
        String str15 = null;
        String str16 = null;
        String str17 = null;
        String str18 = null;
        String str19 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    str = str7;
                    z = false;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 0:
                    str = str7;
                    zY = compositeDecoderB.y(serialDescriptor, 0);
                    i3 |= 1;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 1:
                    str = str7;
                    str14 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str14);
                    i3 |= 2;
                    str15 = str15;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 2:
                    str = str7;
                    str15 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str15);
                    i3 |= 4;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 3:
                    str = str7;
                    str16 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str16);
                    i3 |= 8;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 4:
                    str = str7;
                    str17 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str17);
                    i3 |= 16;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 5:
                    str = str7;
                    str18 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str18);
                    i3 |= 32;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 6:
                    str = str7;
                    str19 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str19);
                    i3 |= 64;
                    str7 = str;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 7:
                    str2 = str2;
                    str5 = str5;
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str7);
                    i3 |= 128;
                    str2 = str2;
                    str5 = str5;
                    break;
                case 8:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str5);
                    i3 |= 256;
                    str7 = str7;
                    str2 = str2;
                    break;
                case 9:
                    str5 = str5;
                    str7 = str7;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str4);
                    i3 |= 512;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 10:
                    str5 = str5;
                    str7 = str7;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str3);
                    i3 |= 1024;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 11:
                    str5 = str5;
                    str7 = str7;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str2);
                    i3 |= 2048;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 12:
                    str5 = str5;
                    str7 = str7;
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str6);
                    i3 |= 4096;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 13:
                    str5 = str5;
                    str7 = str7;
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str8);
                    i3 |= 8192;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 14:
                    str5 = str5;
                    str7 = str7;
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 14, StringSerializer.f75684a, str9);
                    i3 |= 16384;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 15:
                    str10 = (String) compositeDecoderB.m(serialDescriptor, 15, StringSerializer.f75684a, str10);
                    i2 = 32768;
                    i3 |= i2;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 16:
                    str11 = (String) compositeDecoderB.m(serialDescriptor, 16, StringSerializer.f75684a, str11);
                    i2 = 65536;
                    i3 |= i2;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 17:
                    str12 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str12);
                    i2 = 131072;
                    i3 |= i2;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 18:
                    str13 = (String) compositeDecoderB.m(serialDescriptor, 18, StringSerializer.f75684a, str13);
                    i2 = 262144;
                    i3 |= i2;
                    str7 = str7;
                    str5 = str5;
                    break;
                case 19:
                    list = (List) compositeDecoderB.m(serialDescriptor, 19, (DeserializationStrategy) lazyArr[19].getF71699b(), list);
                    i2 = 524288;
                    i3 |= i2;
                    str7 = str7;
                    str5 = str5;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        String str20 = str2;
        String str21 = str7;
        String str22 = str14;
        String str23 = str15;
        compositeDecoderB.c(serialDescriptor);
        List list2 = list;
        String str24 = str19;
        String str25 = str11;
        return new AddressCreationDto(i3, zY, str22, str23, str16, str17, str18, str24, str21, str5, str4, str3, str20, str6, str8, str9, str10, str25, str12, str13, list2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AddressCreationDto addressCreationDto = (AddressCreationDto) obj;
        addressCreationDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = AddressCreationDto.u;
        boolean z = addressCreationDto.f44444a;
        List list = addressCreationDto.t;
        String str = addressCreationDto.s;
        String str2 = addressCreationDto.r;
        String str3 = addressCreationDto.q;
        String str4 = addressCreationDto.p;
        String str5 = addressCreationDto.o;
        String str6 = addressCreationDto.n;
        String str7 = addressCreationDto.m;
        String str8 = addressCreationDto.l;
        String str9 = addressCreationDto.f44452k;
        String str10 = addressCreationDto.f44451j;
        String str11 = addressCreationDto.f44450i;
        String str12 = addressCreationDto.f44449h;
        String str13 = addressCreationDto.g;
        String str14 = addressCreationDto.f44448f;
        String str15 = addressCreationDto.f44447e;
        String str16 = addressCreationDto.d;
        String str17 = addressCreationDto.f44446c;
        String str18 = addressCreationDto.f44445b;
        compositeEncoderB.x(serialDescriptor, 0, z);
        if (compositeEncoderB.o(serialDescriptor) || str18 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str18);
        }
        if (compositeEncoderB.o(serialDescriptor) || str17 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str17);
        }
        if (compositeEncoderB.o(serialDescriptor) || str16 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str16);
        }
        if (compositeEncoderB.o(serialDescriptor) || str15 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str15);
        }
        if (compositeEncoderB.o(serialDescriptor) || str14 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str14);
        }
        if (compositeEncoderB.o(serialDescriptor) || str13 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str13);
        }
        if (compositeEncoderB.o(serialDescriptor) || str12 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str12);
        }
        if (compositeEncoderB.o(serialDescriptor) || str11 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str11);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 12, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 13, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 14, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 15, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 16, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 17, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 18, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 19, (SerializationStrategy) lazyArr[19].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = AddressCreationDto.u;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BooleanSerializer.f75574a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[19].getF71699b())};
    }
}
