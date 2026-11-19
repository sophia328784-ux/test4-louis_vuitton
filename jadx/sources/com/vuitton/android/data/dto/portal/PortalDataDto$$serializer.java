package com.vuitton.android.data.dto.portal;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/portal/PortalDataDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/portal/PortalDataDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PortalDataDto$$serializer implements GeneratedSerializer<PortalDataDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PortalDataDto$$serializer f46402a;
    private static final SerialDescriptor descriptor;

    static {
        PortalDataDto$$serializer portalDataDto$$serializer = new PortalDataDto$$serializer();
        f46402a = portalDataDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.portal.PortalDataDto", portalDataDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("title", true);
        pluginGeneratedSerialDescriptor.k("surtitle", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("asset", false);
        pluginGeneratedSerialDescriptor.k("cta", true);
        pluginGeneratedSerialDescriptor.k("teaser", true);
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
        String str = null;
        String str2 = null;
        String str3 = null;
        AssetDto assetDto = null;
        PortalCtaDto portalCtaDto = null;
        PortalTeaserDto portalTeaserDto = null;
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
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    assetDto = (AssetDto) compositeDecoderB.w(serialDescriptor, 3, AssetDto$$serializer.f45238a, assetDto);
                    i2 |= 8;
                    break;
                case 4:
                    portalCtaDto = (PortalCtaDto) compositeDecoderB.m(serialDescriptor, 4, PortalCtaDto$$serializer.f46396a, portalCtaDto);
                    i2 |= 16;
                    break;
                case 5:
                    portalTeaserDto = (PortalTeaserDto) compositeDecoderB.m(serialDescriptor, 5, PortalTeaserDto$$serializer.f46414a, portalTeaserDto);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new PortalDataDto(i2, str, str2, str3, assetDto, portalCtaDto, portalTeaserDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PortalDataDto portalDataDto = (PortalDataDto) obj;
        portalDataDto.getClass();
        String str = portalDataDto.f46399c;
        String str2 = portalDataDto.f46398b;
        String str3 = portalDataDto.f46397a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str);
        }
        AssetDto$$serializer assetDto$$serializer = AssetDto$$serializer.f45238a;
        AssetDto assetDto = portalDataDto.d;
        PortalTeaserDto portalTeaserDto = portalDataDto.f46401f;
        PortalCtaDto portalCtaDto = portalDataDto.f46400e;
        compositeEncoderB.A(serialDescriptor, 3, assetDto$$serializer, assetDto);
        if (compositeEncoderB.o(serialDescriptor) || portalCtaDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, PortalCtaDto$$serializer.f46396a, portalCtaDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || portalTeaserDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, PortalTeaserDto$$serializer.f46414a, portalTeaserDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), AssetDto$$serializer.f45238a, BuiltinSerializersKt.d(PortalCtaDto$$serializer.f46396a), BuiltinSerializersKt.d(PortalTeaserDto$$serializer.f46414a)};
    }
}
