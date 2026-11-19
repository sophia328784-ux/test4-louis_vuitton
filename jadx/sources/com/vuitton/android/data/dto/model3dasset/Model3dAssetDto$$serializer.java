package com.vuitton.android.data.dto.model3dasset;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/model3dasset/Model3dAssetDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class Model3dAssetDto$$serializer implements GeneratedSerializer<Model3dAssetDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Model3dAssetDto$$serializer f46106a;
    private static final SerialDescriptor descriptor;

    static {
        Model3dAssetDto$$serializer model3dAssetDto$$serializer = new Model3dAssetDto$$serializer();
        f46106a = model3dAssetDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.model3dasset.Model3dAssetDto", model3dAssetDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k(ConfigurationName.DOWNLOAD_PLUGIN_URL, false);
        pluginGeneratedSerialDescriptor.k("name", false);
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
        Lazy[] lazyArr = Model3dAssetDto.d;
        boolean z = true;
        int i2 = 0;
        Model3dAssetTypeDto model3dAssetTypeDto = null;
        String strL = null;
        Model3dAssetNameDto model3dAssetNameDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                model3dAssetTypeDto = (Model3dAssetTypeDto) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), model3dAssetTypeDto);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                model3dAssetNameDto = (Model3dAssetNameDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), model3dAssetNameDto);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new Model3dAssetDto(i2, model3dAssetTypeDto, strL, model3dAssetNameDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Model3dAssetDto model3dAssetDto = (Model3dAssetDto) obj;
        model3dAssetDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = Model3dAssetDto.d;
        compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), model3dAssetDto.f46103a);
        compositeEncoderB.y(serialDescriptor, 1, model3dAssetDto.f46104b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), model3dAssetDto.f46105c);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = Model3dAssetDto.d;
        return new KSerializer[]{lazyArr[0].getF71699b(), StringSerializer.f75684a, lazyArr[2].getF71699b()};
    }
}
