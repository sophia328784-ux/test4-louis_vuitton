package com.vuitton.android.data.dto.product.vto;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/vto/LookDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/vto/LookDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class LookDto$$serializer implements GeneratedSerializer<LookDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LookDto$$serializer f46533a;
    private static final SerialDescriptor descriptor;

    static {
        LookDto$$serializer lookDto$$serializer = new LookDto$$serializer();
        f46533a = lookDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.vto.LookDto", lookDto$$serializer, 6);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("vtoId", false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("number", false);
        pluginGeneratedSerialDescriptor.k("image", false);
        pluginGeneratedSerialDescriptor.k("hasTutorial", false);
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
        boolean zY = false;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        AssetImageDto assetImageDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
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
                    strL4 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    assetImageDto = (AssetImageDto) compositeDecoderB.w(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 16;
                    break;
                case 5:
                    zY = compositeDecoderB.y(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new LookDto(i2, strL, strL2, strL3, strL4, assetImageDto, zY, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        LookDto lookDto = (LookDto) obj;
        lookDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, lookDto.f46528a);
        compositeEncoderB.y(serialDescriptor, 1, lookDto.f46529b);
        compositeEncoderB.y(serialDescriptor, 2, lookDto.f46530c);
        compositeEncoderB.y(serialDescriptor, 3, lookDto.d);
        compositeEncoderB.A(serialDescriptor, 4, AssetImageDto$$serializer.f45243a, lookDto.f46531e);
        compositeEncoderB.x(serialDescriptor, 5, lookDto.f46532f);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, AssetImageDto$$serializer.f45243a, BooleanSerializer.f75574a};
    }
}
