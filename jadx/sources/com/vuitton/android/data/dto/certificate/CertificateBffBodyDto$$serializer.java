package com.vuitton.android.data.dto.certificate;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/certificate/CertificateBffBodyDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CertificateBffBodyDto$$serializer implements GeneratedSerializer<CertificateBffBodyDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CertificateBffBodyDto$$serializer f45151a;
    private static final SerialDescriptor descriptor;

    static {
        CertificateBffBodyDto$$serializer certificateBffBodyDto$$serializer = new CertificateBffBodyDto$$serializer();
        f45151a = certificateBffBodyDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.certificate.CertificateBffBodyDto", certificateBffBodyDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("certificate", false);
        pluginGeneratedSerialDescriptor.k("date", false);
        pluginGeneratedSerialDescriptor.k("keyword", false);
        pluginGeneratedSerialDescriptor.k("email", true);
        pluginGeneratedSerialDescriptor.k("phone", true);
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
        boolean z = true;
        int i2 = 0;
        CertificateDto certificateDto = null;
        String strL = null;
        String strL2 = null;
        String str = null;
        String str2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                certificateDto = (CertificateDto) compositeDecoderB.w(serialDescriptor, 0, CertificateDtoSerializer.f45184c, certificateDto);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                strL2 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            } else if (iN == 3) {
                str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                str2 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str2);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CertificateBffBodyDto(i2, certificateDto, strL, strL2, str, str2, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CertificateBffBodyDto certificateBffBodyDto = (CertificateBffBodyDto) obj;
        certificateBffBodyDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        CertificateDtoSerializer certificateDtoSerializer = CertificateDtoSerializer.f45184c;
        CertificateDto certificateDto = certificateBffBodyDto.f45147a;
        String str = certificateBffBodyDto.f45150e;
        String str2 = certificateBffBodyDto.d;
        compositeEncoderB.A(serialDescriptor, 0, certificateDtoSerializer, certificateDto);
        compositeEncoderB.y(serialDescriptor, 1, certificateBffBodyDto.f45148b);
        compositeEncoderB.y(serialDescriptor, 2, certificateBffBodyDto.f45149c);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{CertificateDtoSerializer.f45184c, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
