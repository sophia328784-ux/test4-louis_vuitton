package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/vto/ShadeFinderRequestDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ShadeFinderRequestDto$$serializer implements GeneratedSerializer<ShadeFinderRequestDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ShadeFinderRequestDto$$serializer f46551a;
    private static final SerialDescriptor descriptor;

    static {
        ShadeFinderRequestDto$$serializer shadeFinderRequestDto$$serializer = new ShadeFinderRequestDto$$serializer();
        f46551a = shadeFinderRequestDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.vto.ShadeFinderRequestDto", shadeFinderRequestDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("cheekbone", true);
        pluginGeneratedSerialDescriptor.k("eyelid", true);
        pluginGeneratedSerialDescriptor.k("eyebrow", true);
        pluginGeneratedSerialDescriptor.k("faceshape", true);
        pluginGeneratedSerialDescriptor.k("lipshape", true);
        pluginGeneratedSerialDescriptor.k("nose", true);
        pluginGeneratedSerialDescriptor.k("color", true);
        pluginGeneratedSerialDescriptor.k("metadata", true);
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
        Lazy[] lazyArr = ShadeFinderRequestDto.f46544i;
        Object obj = null;
        boolean z = true;
        MetadataDto metadataDto = null;
        CheekboneDto cheekboneDto = null;
        EyelidDto eyelidDto = null;
        EyebrowDto eyebrowDto = null;
        String str = null;
        List list = null;
        NoseDto noseDto = null;
        FaceColorDto faceColorDto = null;
        int i2 = 0;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    cheekboneDto = (CheekboneDto) compositeDecoderB.m(serialDescriptor, 0, CheekboneDto$$serializer.f46502a, cheekboneDto);
                    i2 |= 1;
                    break;
                case 1:
                    eyelidDto = (EyelidDto) compositeDecoderB.m(serialDescriptor, 1, EyelidDto$$serializer.f46522a, eyelidDto);
                    i2 |= 2;
                    break;
                case 2:
                    eyebrowDto = (EyebrowDto) compositeDecoderB.m(serialDescriptor, 2, EyebrowDto$$serializer.f46515a, eyebrowDto);
                    i2 |= 4;
                    break;
                case 3:
                    str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    noseDto = (NoseDto) compositeDecoderB.m(serialDescriptor, 5, NoseDto$$serializer.f46539a, noseDto);
                    i2 |= 32;
                    break;
                case 6:
                    faceColorDto = (FaceColorDto) compositeDecoderB.m(serialDescriptor, 6, FaceColorDto$$serializer.f46527a, faceColorDto);
                    i2 |= 64;
                    break;
                case 7:
                    metadataDto = (MetadataDto) compositeDecoderB.m(serialDescriptor, 7, MetadataDto$$serializer.f46536a, metadataDto);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ShadeFinderRequestDto(i2, cheekboneDto, eyelidDto, eyebrowDto, str, list, noseDto, faceColorDto, metadataDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ShadeFinderRequestDto shadeFinderRequestDto = (ShadeFinderRequestDto) obj;
        shadeFinderRequestDto.getClass();
        MetadataDto metadataDto = shadeFinderRequestDto.f46550h;
        FaceColorDto faceColorDto = shadeFinderRequestDto.g;
        NoseDto noseDto = shadeFinderRequestDto.f46549f;
        List list = shadeFinderRequestDto.f46548e;
        String str = shadeFinderRequestDto.d;
        EyebrowDto eyebrowDto = shadeFinderRequestDto.f46547c;
        EyelidDto eyelidDto = shadeFinderRequestDto.f46546b;
        CheekboneDto cheekboneDto = shadeFinderRequestDto.f46545a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ShadeFinderRequestDto.f46544i;
        if (compositeEncoderB.o(serialDescriptor) || cheekboneDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, CheekboneDto$$serializer.f46502a, cheekboneDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || eyelidDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, EyelidDto$$serializer.f46522a, eyelidDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || eyebrowDto != null) {
            compositeEncoderB.h(serialDescriptor, 2, EyebrowDto$$serializer.f46515a, eyebrowDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || noseDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, NoseDto$$serializer.f46539a, noseDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || faceColorDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, FaceColorDto$$serializer.f46527a, faceColorDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || metadataDto != null) {
            compositeEncoderB.h(serialDescriptor, 7, MetadataDto$$serializer.f46536a, metadataDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(CheekboneDto$$serializer.f46502a), BuiltinSerializersKt.d(EyelidDto$$serializer.f46522a), BuiltinSerializersKt.d(EyebrowDto$$serializer.f46515a), BuiltinSerializersKt.d(StringSerializer.f75684a), BuiltinSerializersKt.d((KSerializer) ShadeFinderRequestDto.f46544i[4].getF71699b()), BuiltinSerializersKt.d(NoseDto$$serializer.f46539a), BuiltinSerializersKt.d(FaceColorDto$$serializer.f46527a), BuiltinSerializersKt.d(MetadataDto$$serializer.f46536a)};
    }
}
