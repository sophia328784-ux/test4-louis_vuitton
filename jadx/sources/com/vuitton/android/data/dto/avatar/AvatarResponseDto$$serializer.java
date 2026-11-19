package com.vuitton.android.data.dto.avatar;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/avatar/AvatarResponseDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/avatar/AvatarResponseDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AvatarResponseDto$$serializer implements GeneratedSerializer<AvatarResponseDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AvatarResponseDto$$serializer f44615a;
    private static final SerialDescriptor descriptor;

    static {
        AvatarResponseDto$$serializer avatarResponseDto$$serializer = new AvatarResponseDto$$serializer();
        f44615a = avatarResponseDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.avatar.AvatarResponseDto", avatarResponseDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("sections", false);
        pluginGeneratedSerialDescriptor.k("default", false);
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
        Lazy[] lazyArr = AvatarResponseDto.f44612c;
        boolean z = true;
        int i2 = 0;
        List list = null;
        AvatarItemDto avatarItemDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                avatarItemDto = (AvatarItemDto) compositeDecoderB.w(serialDescriptor, 1, AvatarItemDto$$serializer.f44611a, avatarItemDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AvatarResponseDto(i2, list, avatarItemDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AvatarResponseDto avatarResponseDto = (AvatarResponseDto) obj;
        avatarResponseDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) AvatarResponseDto.f44612c[0].getF71699b(), avatarResponseDto.f44613a);
        compositeEncoderB.A(serialDescriptor, 1, AvatarItemDto$$serializer.f44611a, avatarResponseDto.f44614b);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{AvatarResponseDto.f44612c[0].getF71699b(), AvatarItemDto$$serializer.f44611a};
    }
}
