package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import defpackage.b21;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/certificate/CertificateRubyDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CertificateRubyDto$$serializer implements GeneratedSerializer<CertificateRubyDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CertificateRubyDto$$serializer f45203a;
    private static final SerialDescriptor descriptor;

    static {
        CertificateRubyDto$$serializer certificateRubyDto$$serializer = new CertificateRubyDto$$serializer();
        f45203a = certificateRubyDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.certificate.CertificateRubyDto", certificateRubyDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("identifier", true);
        pluginGeneratedSerialDescriptor.k("type", true);
        pluginGeneratedSerialDescriptor.k("product", true);
        pluginGeneratedSerialDescriptor.k("asset", true);
        pluginGeneratedSerialDescriptor.k("acquiredDate", true);
        pluginGeneratedSerialDescriptor.k("detailId", true);
        pluginGeneratedSerialDescriptor.k("status", false);
        pluginGeneratedSerialDescriptor.k(DbParams.KEY_DATA, true);
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
        Lazy[] lazyArr = CertificateRubyDto.f45196i;
        Object obj = null;
        boolean z = true;
        CertificateRubyDataDto certificateRubyDataDto = null;
        String str = null;
        String str2 = null;
        ProductDto productDto = null;
        AssetDto assetDto = null;
        String str3 = null;
        String str4 = null;
        CertificateStatusDto certificateStatusDto = null;
        int i2 = 0;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    productDto = (ProductDto) compositeDecoderB.m(serialDescriptor, 2, ProductDto$$serializer.f45223a, productDto);
                    i2 |= 4;
                    break;
                case 3:
                    assetDto = (AssetDto) compositeDecoderB.m(serialDescriptor, 3, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 8;
                    break;
                case 4:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str3);
                    i2 |= 16;
                    break;
                case 5:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str4);
                    i2 |= 32;
                    break;
                case 6:
                    certificateStatusDto = (CertificateStatusDto) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), certificateStatusDto);
                    i2 |= 64;
                    break;
                case 7:
                    certificateRubyDataDto = (CertificateRubyDataDto) compositeDecoderB.m(serialDescriptor, 7, CertificateRubyDataDto$$serializer.f45195a, certificateRubyDataDto);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CertificateRubyDto(i2, str, str2, productDto, assetDto, str3, str4, certificateStatusDto, certificateRubyDataDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CertificateRubyDto certificateRubyDto = (CertificateRubyDto) obj;
        certificateRubyDto.getClass();
        String str = certificateRubyDto.f45201f;
        String str2 = certificateRubyDto.f45200e;
        AssetDto assetDto = certificateRubyDto.d;
        ProductDto productDto = certificateRubyDto.f45199c;
        String str3 = certificateRubyDto.f45198b;
        String str4 = certificateRubyDto.f45197a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CertificateRubyDto.f45196i;
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || productDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, ProductDto$$serializer.f45223a, productDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, AssetDto$$serializer.f45238a, assetDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str);
        }
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[6].getF71699b();
        CertificateStatusDto certificateStatusDto = certificateRubyDto.g;
        CertificateRubyDataDto certificateRubyDataDto = certificateRubyDto.f45202h;
        compositeEncoderB.A(serialDescriptor, 6, serializationStrategy, certificateStatusDto);
        if (compositeEncoderB.o(serialDescriptor) || certificateRubyDataDto != null) {
            compositeEncoderB.h(serialDescriptor, 7, CertificateRubyDataDto$$serializer.f45195a, certificateRubyDataDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CertificateRubyDto.f45196i;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(ProductDto$$serializer.f45223a), BuiltinSerializersKt.d(AssetDto$$serializer.f45238a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), lazyArr[6].getF71699b(), BuiltinSerializersKt.d(CertificateRubyDataDto$$serializer.f45195a)};
    }
}
