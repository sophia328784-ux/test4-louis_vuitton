package com.vuitton.android.data.dto.pdp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/HighlightDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/HighlightDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class HighlightDto$$serializer implements GeneratedSerializer<HighlightDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HighlightDto$$serializer f46218a;
    private static final SerialDescriptor descriptor;

    static {
        HighlightDto$$serializer highlightDto$$serializer = new HighlightDto$$serializer();
        f46218a = highlightDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.HighlightDto", highlightDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("image", false);
        pluginGeneratedSerialDescriptor.k("link", false);
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
        String strL = null;
        String strL2 = null;
        String str = null;
        AssetImageDto assetImageDto = null;
        ContributionLinkLegacyDto contributionLinkLegacyDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                strL2 = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                str = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str);
                i2 |= 4;
            } else if (iN == 3) {
                assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 3, AssetImageDto$$serializer.f45243a, assetImageDto);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                contributionLinkLegacyDto = (ContributionLinkLegacyDto) compositeDecoderB.w(serialDescriptor, 4, ContributionLinkLegacyDto$$serializer.f46033a, contributionLinkLegacyDto);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new HighlightDto(i2, strL, strL2, str, assetImageDto, contributionLinkLegacyDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        HighlightDto highlightDto = (HighlightDto) obj;
        highlightDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = highlightDto.f46214a;
        String str2 = highlightDto.f46216c;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, highlightDto.f46215b);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 3, AssetImageDto$$serializer.f45243a, highlightDto.d);
        compositeEncoderB.A(serialDescriptor, 4, ContributionLinkLegacyDto$$serializer.f46033a, highlightDto.f46217e);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), AssetImageDto$$serializer.f45243a, ContributionLinkLegacyDto$$serializer.f46033a};
    }
}
