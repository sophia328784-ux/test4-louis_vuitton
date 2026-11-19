package com.vuitton.core.infrastructure.data.forms.models;

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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class DispatchIdentifierListDto$$serializer implements GeneratedSerializer<DispatchIdentifierListDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DispatchIdentifierListDto$$serializer f66056a;
    private static final SerialDescriptor descriptor;

    static {
        DispatchIdentifierListDto$$serializer dispatchIdentifierListDto$$serializer = new DispatchIdentifierListDto$$serializer();
        f66056a = dispatchIdentifierListDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.core.infrastructure.data.forms.models.DispatchIdentifierListDto", dispatchIdentifierListDto$$serializer, 1);
        pluginGeneratedSerialDescriptor.k("dispatchIdentifierList", false);
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
        Lazy[] lazyArr = DispatchIdentifierListDto.f66054b;
        boolean z = true;
        int i2 = 0;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else {
                if (iN != 0) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 = 1;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new DispatchIdentifierListDto(i2, list, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        DispatchIdentifierListDto dispatchIdentifierListDto = (DispatchIdentifierListDto) obj;
        dispatchIdentifierListDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) DispatchIdentifierListDto.f66054b[0].getF71699b(), dispatchIdentifierListDto.f66055a);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{DispatchIdentifierListDto.f66054b[0].getF71699b()};
    }
}
