package com.vuitton.android.data.dto.profile.twist;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/profile/twist/ProfileUpdateDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProfileUpdateDto$$serializer implements GeneratedSerializer<ProfileUpdateDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProfileUpdateDto$$serializer f46748a;
    private static final SerialDescriptor descriptor;

    static {
        ProfileUpdateDto$$serializer profileUpdateDto$$serializer = new ProfileUpdateDto$$serializer();
        f46748a = profileUpdateDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.profile.twist.ProfileUpdateDto", profileUpdateDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k("login", true);
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("lastName", true);
        pluginGeneratedSerialDescriptor.k("firstName2", true);
        pluginGeneratedSerialDescriptor.k("lastName2", true);
        pluginGeneratedSerialDescriptor.k("civilityCode", true);
        pluginGeneratedSerialDescriptor.k("email", true);
        pluginGeneratedSerialDescriptor.k("vatCode", true);
        pluginGeneratedSerialDescriptor.k("branchID", true);
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
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = ProfileUpdateDto.f46739k;
        List list = null;
        String str = null;
        boolean z = true;
        String str2 = null;
        int i2 = 0;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str3);
                    i2 |= 1;
                    break;
                case 1:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str4);
                    i2 |= 2;
                    break;
                case 2:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str5);
                    i2 |= 4;
                    break;
                case 3:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str6);
                    i2 |= 8;
                    break;
                case 4:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str7);
                    i2 |= 16;
                    break;
                case 5:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str8);
                    i2 |= 32;
                    break;
                case 6:
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str9);
                    i2 |= 64;
                    break;
                case 7:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str2);
                    i2 |= 128;
                    break;
                case 8:
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    break;
                case 9:
                    list = (List) compositeDecoderB.m(serialDescriptor, 9, (DeserializationStrategy) lazyArr[9].getF71699b(), list);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            lazyArr = lazyArr;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProfileUpdateDto(i2, str3, str4, str5, str6, str7, str8, str9, str2, str, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProfileUpdateDto profileUpdateDto = (ProfileUpdateDto) obj;
        profileUpdateDto.getClass();
        List list = profileUpdateDto.f46747j;
        String str = profileUpdateDto.f46746i;
        String str2 = profileUpdateDto.f46745h;
        String str3 = profileUpdateDto.g;
        String str4 = profileUpdateDto.f46744f;
        String str5 = profileUpdateDto.f46743e;
        String str6 = profileUpdateDto.d;
        String str7 = profileUpdateDto.f46742c;
        String str8 = profileUpdateDto.f46741b;
        String str9 = profileUpdateDto.f46740a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ProfileUpdateDto.f46739k;
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ProfileUpdateDto.f46739k;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[9].getF71699b())};
    }
}
