package com.vuitton.android.data.dto.certificate;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CertificateVisionnaireDataDto$$serializer implements GeneratedSerializer<CertificateVisionnaireDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CertificateVisionnaireDataDto$$serializer f45212a;
    private static final SerialDescriptor descriptor;

    static {
        CertificateVisionnaireDataDto$$serializer certificateVisionnaireDataDto$$serializer = new CertificateVisionnaireDataDto$$serializer();
        f45212a = certificateVisionnaireDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.certificate.CertificateVisionnaireDataDto", certificateVisionnaireDataDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("currentOwnerId", true);
        pluginGeneratedSerialDescriptor.k("journeyLink", true);
        pluginGeneratedSerialDescriptor.k("purchaseDate", true);
        pluginGeneratedSerialDescriptor.k("purchaseStore", true);
        pluginGeneratedSerialDescriptor.k("formattedDimensionValue", true);
        pluginGeneratedSerialDescriptor.k("productionDate", true);
        pluginGeneratedSerialDescriptor.k("productionSite", true);
        pluginGeneratedSerialDescriptor.k("material", true);
        pluginGeneratedSerialDescriptor.k("metallicPart", true);
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
        String str = null;
        boolean z = true;
        String str2 = null;
        int i2 = 0;
        String str3 = null;
        String str4 = null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = null;
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
                    break;
                case 0:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str3);
                    i2 |= 1;
                    break;
                case 1:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str4);
                    i2 |= 2;
                    break;
                case 2:
                    contributionLinkLegacyDto = (ContributionLinkLegacyDto) compositeDecoderB.m(serialDescriptor, 2, ContributionLinkLegacyDto$$serializer.f46033a, contributionLinkLegacyDto);
                    i2 |= 4;
                    break;
                case 3:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str5);
                    i2 |= 8;
                    break;
                case 4:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str6);
                    i2 |= 16;
                    break;
                case 5:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str7);
                    i2 |= 32;
                    break;
                case 6:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str8);
                    i2 |= 64;
                    break;
                case 7:
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str9);
                    i2 |= 128;
                    break;
                case 8:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str2);
                    i2 |= 256;
                    break;
                case 9:
                    str = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CertificateVisionnaireDataDto(i2, str3, str4, contributionLinkLegacyDto, str5, str6, str7, str8, str9, str2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CertificateVisionnaireDataDto certificateVisionnaireDataDto = (CertificateVisionnaireDataDto) obj;
        certificateVisionnaireDataDto.getClass();
        String str = certificateVisionnaireDataDto.f45211j;
        String str2 = certificateVisionnaireDataDto.f45210i;
        String str3 = certificateVisionnaireDataDto.f45209h;
        String str4 = certificateVisionnaireDataDto.g;
        String str5 = certificateVisionnaireDataDto.f45208f;
        String str6 = certificateVisionnaireDataDto.f45207e;
        String str7 = certificateVisionnaireDataDto.d;
        ContributionLinkLegacyDto contributionLinkLegacyDto = certificateVisionnaireDataDto.f45206c;
        String str8 = certificateVisionnaireDataDto.f45205b;
        String str9 = certificateVisionnaireDataDto.f45204a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || contributionLinkLegacyDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, ContributionLinkLegacyDto$$serializer.f46033a, contributionLinkLegacyDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(ContributionLinkLegacyDto$$serializer.f46033a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
