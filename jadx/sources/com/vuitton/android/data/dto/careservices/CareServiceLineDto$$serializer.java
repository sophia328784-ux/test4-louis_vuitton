package com.vuitton.android.data.dto.careservices;

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
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/CareServiceLineDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceLineDto$$serializer implements GeneratedSerializer<CareServiceLineDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceLineDto$$serializer f44823a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceLineDto$$serializer careServiceLineDto$$serializer = new CareServiceLineDto$$serializer();
        f44823a = careServiceLineDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.CareServiceLineDto", careServiceLineDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("instruction_Name", true);
        pluginGeneratedSerialDescriptor.k("instructionCode", true);
        pluginGeneratedSerialDescriptor.k("instruction_Name_ICONiCS", true);
        pluginGeneratedSerialDescriptor.k("initial_Price", true);
        pluginGeneratedSerialDescriptor.k("updated_Price", true);
        pluginGeneratedSerialDescriptor.k("quantity", true);
        pluginGeneratedSerialDescriptor.k("approved", false);
        pluginGeneratedSerialDescriptor.k("addedBy_repairCenter", false);
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
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        boolean zY = false;
        boolean zY2 = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Double d = null;
        Double d2 = null;
        Double d3 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str4);
                    i2 |= 8;
                    break;
                case 4:
                    d = (Double) compositeDecoderB.m(serialDescriptor, 4, DoubleSerializer.f75602a, d);
                    i2 |= 16;
                    break;
                case 5:
                    d2 = (Double) compositeDecoderB.m(serialDescriptor, 5, DoubleSerializer.f75602a, d2);
                    i2 |= 32;
                    break;
                case 6:
                    d3 = (Double) compositeDecoderB.m(serialDescriptor, 6, DoubleSerializer.f75602a, d3);
                    i2 |= 64;
                    break;
                case 7:
                    zY = compositeDecoderB.y(serialDescriptor, 7);
                    i2 |= 128;
                    continue;
                case 8:
                    zY2 = compositeDecoderB.y(serialDescriptor, 8);
                    i2 |= 256;
                    continue;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceLineDto(i2, str, str2, str3, str4, d, d2, d3, zY, zY2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceLineDto careServiceLineDto = (CareServiceLineDto) obj;
        careServiceLineDto.getClass();
        Double d = careServiceLineDto.g;
        Double d2 = careServiceLineDto.f44820f;
        Double d3 = careServiceLineDto.f44819e;
        String str = careServiceLineDto.d;
        String str2 = careServiceLineDto.f44818c;
        String str3 = careServiceLineDto.f44817b;
        String str4 = careServiceLineDto.f44816a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || d3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, DoubleSerializer.f75602a, d3);
        }
        if (compositeEncoderB.o(serialDescriptor) || d2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, DoubleSerializer.f75602a, d2);
        }
        if (compositeEncoderB.o(serialDescriptor) || d != null) {
            compositeEncoderB.h(serialDescriptor, 6, DoubleSerializer.f75602a, d);
        }
        compositeEncoderB.x(serialDescriptor, 7, careServiceLineDto.f44821h);
        compositeEncoderB.x(serialDescriptor, 8, careServiceLineDto.f44822i);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d(stringSerializer);
        DoubleSerializer doubleSerializer = DoubleSerializer.f75602a;
        KSerializer kSerializerD5 = BuiltinSerializersKt.d(doubleSerializer);
        KSerializer kSerializerD6 = BuiltinSerializersKt.d(doubleSerializer);
        KSerializer kSerializerD7 = BuiltinSerializersKt.d(doubleSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{kSerializerD, kSerializerD2, kSerializerD3, kSerializerD4, kSerializerD5, kSerializerD6, kSerializerD7, booleanSerializer, booleanSerializer};
    }
}
