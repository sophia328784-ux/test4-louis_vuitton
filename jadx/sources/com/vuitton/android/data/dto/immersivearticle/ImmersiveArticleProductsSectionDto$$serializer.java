package com.vuitton.android.data.dto.immersivearticle;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ImmersiveArticleProductsSectionDto$$serializer implements GeneratedSerializer<ImmersiveArticleProductsSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmersiveArticleProductsSectionDto$$serializer f45908a;
    private static final SerialDescriptor descriptor;

    static {
        ImmersiveArticleProductsSectionDto$$serializer immersiveArticleProductsSectionDto$$serializer = new ImmersiveArticleProductsSectionDto$$serializer();
        f45908a = immersiveArticleProductsSectionDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleProductsSectionDto", immersiveArticleProductsSectionDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.KEY, false);
        pluginGeneratedSerialDescriptor.k("type", false);
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
        boolean z = true;
        int i2 = 0;
        Integer num = null;
        String strL = null;
        String strL2 = null;
        ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                num = (Integer) compositeDecoderB.m(serialDescriptor, 0, IntSerializer.f75624a, num);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                strL2 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                immersiveArticleProductsDataDto = (ImmersiveArticleProductsDataDto) compositeDecoderB.m(serialDescriptor, 3, ImmersiveArticleProductsDataDto$$serializer.f45904a, immersiveArticleProductsDataDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ImmersiveArticleProductsSectionDto(i2, num, strL, strL2, immersiveArticleProductsDataDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ImmersiveArticleProductsSectionDto immersiveArticleProductsSectionDto = (ImmersiveArticleProductsSectionDto) obj;
        immersiveArticleProductsSectionDto.getClass();
        Integer num = immersiveArticleProductsSectionDto.f45905a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 0, IntSerializer.f75624a, num);
        }
        String str = immersiveArticleProductsSectionDto.f45906b;
        ImmersiveArticleProductsDataDto immersiveArticleProductsDataDto = immersiveArticleProductsSectionDto.d;
        compositeEncoderB.y(serialDescriptor, 1, str);
        compositeEncoderB.y(serialDescriptor, 2, immersiveArticleProductsSectionDto.f45907c);
        if (compositeEncoderB.o(serialDescriptor) || immersiveArticleProductsDataDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, ImmersiveArticleProductsDataDto$$serializer.f45904a, immersiveArticleProductsDataDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        KSerializer kSerializerD = BuiltinSerializersKt.d(IntSerializer.f75624a);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(ImmersiveArticleProductsDataDto$$serializer.f45904a);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{kSerializerD, stringSerializer, stringSerializer, kSerializerD2};
    }
}
