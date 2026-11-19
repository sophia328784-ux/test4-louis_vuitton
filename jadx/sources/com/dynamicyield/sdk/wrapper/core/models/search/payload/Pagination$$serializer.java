package com.dynamicyield.sdk.wrapper.core.models.search.payload;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.UInt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.UIntSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Pagination;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class Pagination$$serializer implements GeneratedSerializer<Pagination> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pagination$$serializer f26396a;
    private static final SerialDescriptor descriptor;

    static {
        Pagination$$serializer pagination$$serializer = new Pagination$$serializer();
        f26396a = pagination$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.search.payload.Pagination", pagination$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("numItems", false);
        pluginGeneratedSerialDescriptor.k("offset", false);
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
        UInt uInt = null;
        UInt uInt2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                uInt = (UInt) compositeDecoderB.w(serialDescriptor, 0, UIntSerializer.f75700a, uInt);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                uInt2 = (UInt) compositeDecoderB.w(serialDescriptor, 1, UIntSerializer.f75700a, uInt2);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new Pagination(i2, uInt, uInt2, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Pagination pagination = (Pagination) obj;
        pagination.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        UIntSerializer uIntSerializer = UIntSerializer.f75700a;
        compositeEncoderB.A(serialDescriptor, 0, uIntSerializer, new UInt(pagination.f26394a));
        compositeEncoderB.A(serialDescriptor, 1, uIntSerializer, new UInt(pagination.f26395b));
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        UIntSerializer uIntSerializer = UIntSerializer.f75700a;
        return new KSerializer[]{uIntSerializer, uIntSerializer};
    }
}
