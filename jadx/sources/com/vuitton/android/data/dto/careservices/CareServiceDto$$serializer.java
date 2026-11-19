package com.vuitton.android.data.dto.careservices;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/CareServiceDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceDto$$serializer implements GeneratedSerializer<CareServiceDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceDto$$serializer f44815a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceDto$$serializer careServiceDto$$serializer = new CareServiceDto$$serializer();
        f44815a = careServiceDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.CareServiceDto", careServiceDto$$serializer, 16);
        pluginGeneratedSerialDescriptor.k("phone", false);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("description", false);
        pluginGeneratedSerialDescriptor.k("origin", false);
        pluginGeneratedSerialDescriptor.k("appointementDateTime", false);
        pluginGeneratedSerialDescriptor.k("followupByCall", false);
        pluginGeneratedSerialDescriptor.k("followupByEmail", false);
        pluginGeneratedSerialDescriptor.k("followupByVideoCall", false);
        pluginGeneratedSerialDescriptor.k("storeCode", false);
        pluginGeneratedSerialDescriptor.k("languageLocaleKey", false);
        pluginGeneratedSerialDescriptor.k(Payload.TYPE_STORE, false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("images", false);
        pluginGeneratedSerialDescriptor.k("product", true);
        pluginGeneratedSerialDescriptor.k("appExternalId", true);
        pluginGeneratedSerialDescriptor.k("zipPostalCode", false);
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
        Lazy[] lazyArr = CareServiceDto.q;
        Object obj = null;
        boolean z = true;
        List list = null;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        CareServiceOriginDto careServiceOriginDto = null;
        String strL4 = null;
        String strL5 = null;
        String strL6 = null;
        String strL7 = null;
        String strL8 = null;
        String strL9 = null;
        String strL10 = null;
        String strL11 = null;
        int i2 = 0;
        boolean zY = false;
        boolean zY2 = false;
        boolean zY3 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    careServiceOriginDto = (CareServiceOriginDto) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), careServiceOriginDto);
                    i2 |= 8;
                    break;
                case 4:
                    strL4 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    zY = compositeDecoderB.y(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    zY2 = compositeDecoderB.y(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    zY3 = compositeDecoderB.y(serialDescriptor, 7);
                    i2 |= 128;
                    break;
                case 8:
                    strL5 = compositeDecoderB.l(serialDescriptor, 8);
                    i2 |= 256;
                    break;
                case 9:
                    strL6 = compositeDecoderB.l(serialDescriptor, 9);
                    i2 |= 512;
                    break;
                case 10:
                    strL7 = compositeDecoderB.l(serialDescriptor, 10);
                    i2 |= 1024;
                    break;
                case 11:
                    strL8 = compositeDecoderB.l(serialDescriptor, 11);
                    i2 |= 2048;
                    break;
                case 12:
                    list = (List) compositeDecoderB.w(serialDescriptor, 12, (DeserializationStrategy) lazyArr[12].getF71699b(), list);
                    i2 |= 4096;
                    break;
                case 13:
                    strL9 = compositeDecoderB.l(serialDescriptor, 13);
                    i2 |= 8192;
                    break;
                case 14:
                    strL10 = compositeDecoderB.l(serialDescriptor, 14);
                    i2 |= 16384;
                    break;
                case 15:
                    strL11 = compositeDecoderB.l(serialDescriptor, 15);
                    i2 |= 32768;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceDto(i2, strL, strL2, strL3, careServiceOriginDto, strL4, zY, zY2, zY3, strL5, strL6, strL7, strL8, list, strL9, strL10, strL11, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceDto careServiceDto = (CareServiceDto) obj;
        careServiceDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDto.q;
        String str = careServiceDto.f44806a;
        String str2 = careServiceDto.o;
        String str3 = careServiceDto.n;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, careServiceDto.f44807b);
        compositeEncoderB.y(serialDescriptor, 2, careServiceDto.f44808c);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), careServiceDto.d);
        compositeEncoderB.y(serialDescriptor, 4, careServiceDto.f44809e);
        compositeEncoderB.x(serialDescriptor, 5, careServiceDto.f44810f);
        compositeEncoderB.x(serialDescriptor, 6, careServiceDto.g);
        compositeEncoderB.x(serialDescriptor, 7, careServiceDto.f44811h);
        compositeEncoderB.y(serialDescriptor, 8, careServiceDto.f44812i);
        compositeEncoderB.y(serialDescriptor, 9, careServiceDto.f44813j);
        compositeEncoderB.y(serialDescriptor, 10, careServiceDto.f44814k);
        compositeEncoderB.y(serialDescriptor, 11, careServiceDto.l);
        compositeEncoderB.A(serialDescriptor, 12, (SerializationStrategy) lazyArr[12].getF71699b(), careServiceDto.m);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str3, "")) {
            compositeEncoderB.y(serialDescriptor, 13, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str2, "")) {
            compositeEncoderB.y(serialDescriptor, 14, str2);
        }
        compositeEncoderB.y(serialDescriptor, 15, careServiceDto.p);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CareServiceDto.q;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, lazyArr[3].getF71699b(), stringSerializer, booleanSerializer, booleanSerializer, booleanSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, lazyArr[12].getF71699b(), stringSerializer, stringSerializer, stringSerializer};
    }
}
