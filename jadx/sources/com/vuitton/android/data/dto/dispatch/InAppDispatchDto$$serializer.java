package com.vuitton.android.data.dto.dispatch;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/dispatch/InAppDispatchDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/dispatch/InAppDispatchDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class InAppDispatchDto$$serializer implements GeneratedSerializer<InAppDispatchDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InAppDispatchDto$$serializer f45696a;
    private static final SerialDescriptor descriptor;

    static {
        InAppDispatchDto$$serializer inAppDispatchDto$$serializer = new InAppDispatchDto$$serializer();
        f45696a = inAppDispatchDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.dispatch.InAppDispatchDto", inAppDispatchDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("order", false);
        pluginGeneratedSerialDescriptor.k("displayName", true);
        pluginGeneratedSerialDescriptor.k("name", true);
        pluginGeneratedSerialDescriptor.k("localeKey", false);
        pluginGeneratedSerialDescriptor.k("eCommerce", true);
        pluginGeneratedSerialDescriptor.k("countryKey", false);
        pluginGeneratedSerialDescriptor.k("flagUrl", true);
        pluginGeneratedSerialDescriptor.k("group", true);
        pluginGeneratedSerialDescriptor.k("androidLocalization", true);
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
        LocalizationDto localizationDto = null;
        boolean z = true;
        String str = null;
        int i2 = 0;
        int iJ = 0;
        int iJ2 = 0;
        String str2 = null;
        String str3 = null;
        String strL = null;
        Boolean bool = null;
        String strL2 = null;
        String str4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    iJ = compositeDecoderB.j(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    iJ2 = compositeDecoderB.j(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    break;
                case 3:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str3);
                    i2 |= 8;
                    break;
                case 4:
                    strL = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 5, BooleanSerializer.f75574a, bool);
                    i2 |= 32;
                    break;
                case 6:
                    strL2 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str4);
                    i2 |= 128;
                    break;
                case 8:
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    break;
                case 9:
                    localizationDto = (LocalizationDto) compositeDecoderB.m(serialDescriptor, 9, LocalizationDto$$serializer.f45703a, localizationDto);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new InAppDispatchDto(i2, iJ, iJ2, str2, str3, strL, bool, strL2, str4, str, localizationDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        InAppDispatchDto inAppDispatchDto = (InAppDispatchDto) obj;
        inAppDispatchDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        int i2 = inAppDispatchDto.f45688a;
        LocalizationDto localizationDto = inAppDispatchDto.f45695j;
        String str = inAppDispatchDto.f45694i;
        String str2 = inAppDispatchDto.f45693h;
        Boolean bool = inAppDispatchDto.f45692f;
        String str3 = inAppDispatchDto.d;
        String str4 = inAppDispatchDto.f45690c;
        compositeEncoderB.u(0, i2, serialDescriptor);
        compositeEncoderB.u(1, inAppDispatchDto.f45689b, serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.y(serialDescriptor, 4, inAppDispatchDto.f45691e);
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 5, BooleanSerializer.f75574a, bool);
        }
        compositeEncoderB.y(serialDescriptor, 6, inAppDispatchDto.g);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || localizationDto != null) {
            compositeEncoderB.h(serialDescriptor, 9, LocalizationDto$$serializer.f45703a, localizationDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(BooleanSerializer.f75574a);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD5 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD6 = BuiltinSerializersKt.d(LocalizationDto$$serializer.f45703a);
        IntSerializer intSerializer = IntSerializer.f75624a;
        return new KSerializer[]{intSerializer, intSerializer, kSerializerD, kSerializerD2, stringSerializer, kSerializerD3, stringSerializer, kSerializerD4, kSerializerD5, kSerializerD6};
    }
}
