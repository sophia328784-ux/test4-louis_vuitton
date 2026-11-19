package com.vuitton.android.data.dto.profile;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.legacy.ContactabilityDto;
import com.vuitton.android.data.dto.profile.legacy.ContactabilityDto$$serializer;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/profile/ProfileDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/profile/ProfileDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProfileDto$$serializer implements GeneratedSerializer<ProfileDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProfileDto$$serializer f46691a;
    private static final SerialDescriptor descriptor;

    static {
        ProfileDto$$serializer profileDto$$serializer = new ProfileDto$$serializer();
        f46691a = profileDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.profile.ProfileDto", profileDto$$serializer, 18);
        pluginGeneratedSerialDescriptor.k("identifier", true);
        pluginGeneratedSerialDescriptor.k("identifierType", true);
        pluginGeneratedSerialDescriptor.k("login", true);
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("lastName", true);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("civilityCode", true);
        pluginGeneratedSerialDescriptor.k("email", true);
        pluginGeneratedSerialDescriptor.k("vatCode", true);
        pluginGeneratedSerialDescriptor.k("branchID", true);
        pluginGeneratedSerialDescriptor.k("batchAuthKey", true);
        pluginGeneratedSerialDescriptor.k("contactId", true);
        pluginGeneratedSerialDescriptor.k("accountId", true);
        pluginGeneratedSerialDescriptor.k("contactability", true);
        pluginGeneratedSerialDescriptor.k("phoneNumbers", true);
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
        String str;
        String str2;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = ProfileDto.s;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        int i3 = 0;
        String str9 = null;
        ContactabilityDto contactabilityDto = null;
        List list = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        boolean z = true;
        String str14 = null;
        String str15 = null;
        String str16 = null;
        String str17 = null;
        String str18 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    str = str14;
                    z = false;
                    str4 = str4;
                    str13 = str13;
                    str14 = str;
                    str3 = str3;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str14);
                    i3 |= 1;
                    str4 = str4;
                    str12 = str12;
                    str13 = str13;
                    str14 = str;
                    str3 = str3;
                    break;
                case 1:
                    str2 = str12;
                    str15 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str15);
                    i3 |= 2;
                    str16 = str16;
                    str12 = str2;
                    str13 = str13;
                    str3 = str3;
                    break;
                case 2:
                    str2 = str12;
                    str16 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str16);
                    i3 |= 4;
                    str12 = str2;
                    str13 = str13;
                    str3 = str3;
                    break;
                case 3:
                    str2 = str12;
                    str17 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str17);
                    i3 |= 8;
                    str12 = str2;
                    str13 = str13;
                    str3 = str3;
                    break;
                case 4:
                    str2 = str12;
                    str18 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str18);
                    i3 |= 16;
                    str12 = str2;
                    str13 = str13;
                    str3 = str3;
                    break;
                case 5:
                    str3 = str3;
                    str13 = str13;
                    str12 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str12);
                    i3 |= 32;
                    str13 = str13;
                    str3 = str3;
                    break;
                case 6:
                    str3 = str3;
                    str13 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str13);
                    i3 |= 64;
                    str12 = str12;
                    str3 = str3;
                    break;
                case 7:
                    str12 = str12;
                    str13 = str13;
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str8);
                    i3 |= 128;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 8:
                    str12 = str12;
                    str13 = str13;
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str6);
                    i3 |= 256;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 9:
                    str12 = str12;
                    str13 = str13;
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str5);
                    i3 |= 512;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 10:
                    str12 = str12;
                    str13 = str13;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str4);
                    i3 |= 1024;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 11:
                    str12 = str12;
                    str13 = str13;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str3);
                    i3 |= 2048;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 12:
                    str12 = str12;
                    str13 = str13;
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str7);
                    i3 |= 4096;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 13:
                    str12 = str12;
                    str13 = str13;
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str9);
                    i3 |= 8192;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 14:
                    str12 = str12;
                    str13 = str13;
                    contactabilityDto = (ContactabilityDto) compositeDecoderB.m(serialDescriptor, 14, ContactabilityDto$$serializer.f46695a, contactabilityDto);
                    i3 |= 16384;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 15:
                    list = (List) compositeDecoderB.m(serialDescriptor, 15, (DeserializationStrategy) lazyArr[15].getF71699b(), list);
                    i2 = 32768;
                    i3 |= i2;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 16:
                    str10 = (String) compositeDecoderB.m(serialDescriptor, 16, StringSerializer.f75684a, str10);
                    i2 = 65536;
                    i3 |= i2;
                    str12 = str12;
                    str13 = str13;
                    break;
                case 17:
                    str11 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str11);
                    i2 = 131072;
                    i3 |= i2;
                    str12 = str12;
                    str13 = str13;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        String str19 = str3;
        String str20 = str13;
        compositeDecoderB.c(serialDescriptor);
        return new ProfileDto(i3, str14, str15, str16, str17, str18, str12, str20, str8, str6, str5, str4, str19, str7, str9, contactabilityDto, list, str10, str11, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProfileDto profileDto = (ProfileDto) obj;
        profileDto.getClass();
        String str = profileDto.r;
        String str2 = profileDto.q;
        List list = profileDto.p;
        ContactabilityDto contactabilityDto = profileDto.o;
        String str3 = profileDto.n;
        String str4 = profileDto.m;
        String str5 = profileDto.l;
        String str6 = profileDto.f46690k;
        String str7 = profileDto.f46689j;
        String str8 = profileDto.f46688i;
        String str9 = profileDto.f46687h;
        String str10 = profileDto.g;
        String str11 = profileDto.f46686f;
        String str12 = profileDto.f46685e;
        String str13 = profileDto.d;
        String str14 = profileDto.f46684c;
        String str15 = profileDto.f46683b;
        String str16 = profileDto.f46682a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProfileDto.s;
        if (compositeEncoderB.o(serialDescriptor) || str16 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str16);
        }
        if (compositeEncoderB.o(serialDescriptor) || str15 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str15);
        }
        if (compositeEncoderB.o(serialDescriptor) || str14 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str14);
        }
        if (compositeEncoderB.o(serialDescriptor) || str13 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str13);
        }
        if (compositeEncoderB.o(serialDescriptor) || str12 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str12);
        }
        if (compositeEncoderB.o(serialDescriptor) || str11 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str11);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != 0) {
            compositeEncoderB.h(serialDescriptor, 12, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != 0) {
            compositeEncoderB.h(serialDescriptor, 13, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || contactabilityDto != null) {
            compositeEncoderB.h(serialDescriptor, 14, ContactabilityDto$$serializer.f46695a, contactabilityDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 15, (SerializationStrategy) lazyArr[15].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 16, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 17, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProfileDto.s;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(ContactabilityDto$$serializer.f46695a), BuiltinSerializersKt.d((KSerializer) lazyArr[15].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
