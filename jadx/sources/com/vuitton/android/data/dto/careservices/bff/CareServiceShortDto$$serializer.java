package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId$$serializer;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId$$serializer;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/bff/CareServiceShortDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceShortDto$$serializer implements GeneratedSerializer<CareServiceShortDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceShortDto$$serializer f44956a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceShortDto$$serializer careServiceShortDto$$serializer = new CareServiceShortDto$$serializer();
        f44956a = careServiceShortDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.bff.CareServiceShortDto", careServiceShortDto$$serializer, 14);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("displayableIdentifier", true);
        pluginGeneratedSerialDescriptor.k("transactionIdentifier", true);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("category", false);
        pluginGeneratedSerialDescriptor.k("stepTitle", false);
        pluginGeneratedSerialDescriptor.k("action", true);
        pluginGeneratedSerialDescriptor.k("product", true);
        pluginGeneratedSerialDescriptor.k("trackingURL", true);
        pluginGeneratedSerialDescriptor.k("creationDate", false);
        pluginGeneratedSerialDescriptor.k("deliveryDate", true);
        pluginGeneratedSerialDescriptor.k("updatedDeliveryDate", true);
        pluginGeneratedSerialDescriptor.k("restitutionHistoryDate", true);
        pluginGeneratedSerialDescriptor.k("hotContent", true);
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
        CareServiceHotContentDto careServiceHotContentDto = null;
        boolean z = true;
        String str = null;
        int i2 = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        CareServiceProductDto careServiceProductDto = null;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    CareServiceId careServiceId = (CareServiceId) compositeDecoderB.w(serialDescriptor, 0, CareServiceId$$serializer.f66880a, str2 != null ? new CareServiceId(str2) : null);
                    i2 |= 1;
                    str2 = careServiceId != null ? careServiceId.f66879a : null;
                    break;
                case 1:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str3);
                    i2 |= 2;
                    break;
                case 2:
                    CareServiceTransactionId careServiceTransactionId = (CareServiceTransactionId) compositeDecoderB.m(serialDescriptor, 2, CareServiceTransactionId$$serializer.f66894a, str4 != null ? new CareServiceTransactionId(str4) : null);
                    str4 = careServiceTransactionId != null ? careServiceTransactionId.f66893a : null;
                    i2 |= 4;
                    break;
                case 3:
                    strL = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    strL2 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    strL3 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str8);
                    i2 |= 64;
                    break;
                case 7:
                    careServiceProductDto = (CareServiceProductDto) compositeDecoderB.m(serialDescriptor, 7, CareServiceProductDto$$serializer.f44946a, careServiceProductDto);
                    i2 |= 128;
                    break;
                case 8:
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    break;
                case 9:
                    strL4 = compositeDecoderB.l(serialDescriptor, 9);
                    i2 |= 512;
                    break;
                case 10:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str5);
                    i2 |= 1024;
                    break;
                case 11:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str6);
                    i2 |= 2048;
                    break;
                case 12:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str7);
                    i2 |= 4096;
                    break;
                case 13:
                    careServiceHotContentDto = (CareServiceHotContentDto) compositeDecoderB.m(serialDescriptor, 13, CareServiceHotContentDto$$serializer.f44942a, careServiceHotContentDto);
                    i2 |= 8192;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceShortDto(i2, str2, str3, str4, strL, strL2, strL3, str8, careServiceProductDto, str, strL4, str5, str6, str7, careServiceHotContentDto, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceShortDto careServiceShortDto = (CareServiceShortDto) obj;
        careServiceShortDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        CareServiceId$$serializer careServiceId$$serializer = CareServiceId$$serializer.f66880a;
        String str = careServiceShortDto.f44947a;
        CareServiceHotContentDto careServiceHotContentDto = careServiceShortDto.n;
        String str2 = careServiceShortDto.m;
        String str3 = careServiceShortDto.l;
        String str4 = careServiceShortDto.f44955k;
        String str5 = careServiceShortDto.f44953i;
        CareServiceProductDto careServiceProductDto = careServiceShortDto.f44952h;
        String str6 = careServiceShortDto.g;
        String str7 = careServiceShortDto.f44949c;
        String str8 = careServiceShortDto.f44948b;
        compositeEncoderB.A(serialDescriptor, 0, careServiceId$$serializer, new CareServiceId(str));
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 2, CareServiceTransactionId$$serializer.f66894a, str7 != null ? new CareServiceTransactionId(str7) : null);
        }
        compositeEncoderB.y(serialDescriptor, 3, careServiceShortDto.d);
        compositeEncoderB.y(serialDescriptor, 4, careServiceShortDto.f44950e);
        compositeEncoderB.y(serialDescriptor, 5, careServiceShortDto.f44951f);
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || careServiceProductDto != null) {
            compositeEncoderB.h(serialDescriptor, 7, CareServiceProductDto$$serializer.f44946a, careServiceProductDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str5);
        }
        compositeEncoderB.y(serialDescriptor, 9, careServiceShortDto.f44954j);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 12, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || careServiceHotContentDto != null) {
            compositeEncoderB.h(serialDescriptor, 13, CareServiceHotContentDto$$serializer.f44942a, careServiceHotContentDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{CareServiceId$$serializer.f66880a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CareServiceTransactionId$$serializer.f66894a), stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CareServiceProductDto$$serializer.f44946a), BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CareServiceHotContentDto$$serializer.f44942a)};
    }
}
