package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleProductListSectionDto$$serializer implements GeneratedSerializer<ImmersiveArticleProductListSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleProductListSectionDto$$serializer f45884a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleProductListSectionDto$$serializer immersiveArticleProductListSectionDto$$serializer = new ImmersiveArticleProductListSectionDto$$serializer();
        f45884a = immersiveArticleProductListSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductListSectionDto", immersiveArticleProductListSectionDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.KEY, false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k(DbParams.KEY_DATA, false);
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
        ImmersiveArticleProductListDataDto immersiveArticleProductListDataDto = null;
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
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                immersiveArticleProductListDataDto = (ImmersiveArticleProductListDataDto) compositeDecoderB.w(serialDescriptor, 2, ImmersiveArticleProductListDataDto$$serializer.f45880a, immersiveArticleProductListDataDto);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticleProductListSectionDto(i2, strL, strL2, immersiveArticleProductListDataDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleProductListSectionDto immersiveArticleProductListSectionDto = (ImmersiveArticleProductListSectionDto) obj;
        immersiveArticleProductListSectionDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, immersiveArticleProductListSectionDto.f45881a);
        compositeEncoderB.y(serialDescriptor, 1, immersiveArticleProductListSectionDto.f45882b);
        compositeEncoderB.A(serialDescriptor, 2, ImmersiveArticleProductListDataDto$$serializer.f45880a, immersiveArticleProductListSectionDto.f45883c);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, ImmersiveArticleProductListDataDto$$serializer.f45880a};
    }
}
