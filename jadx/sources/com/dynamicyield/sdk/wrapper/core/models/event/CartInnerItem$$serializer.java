package com.dynamicyield.sdk.wrapper.core.models.event;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.UInt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.UIntSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class CartInnerItem$$serializer implements GeneratedSerializer<CartInnerItem> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartInnerItem$$serializer f26300a;
    private static final SerialDescriptor descriptor;

    static {
        CartInnerItem$$serializer cartInnerItem$$serializer = new CartInnerItem$$serializer();
        f26300a = cartInnerItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem", cartInnerItem$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("productId", false);
        pluginGeneratedSerialDescriptor.k("quantity", false);
        pluginGeneratedSerialDescriptor.k("itemPrice", false);
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
        UInt uInt = null;
        Float f2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                i2 |= 1;
            } else if (iN == 1) {
                uInt = (UInt) compositeDecoderB.m(serialDescriptor, 1, UIntSerializer.f75700a, uInt);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                f2 = (Float) compositeDecoderB.m(serialDescriptor, 2, FloatSerializer.f75616a, f2);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CartInnerItem(i2, str, uInt, f2, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartInnerItem cartInnerItem = (CartInnerItem) obj;
        cartInnerItem.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, cartInnerItem.f26297a);
        compositeEncoderB.h(serialDescriptor, 1, UIntSerializer.f75700a, cartInnerItem.f26298b);
        compositeEncoderB.h(serialDescriptor, 2, FloatSerializer.f75616a, cartInnerItem.f26299c);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(StringSerializer.f75684a), BuiltinSerializersKt.d(UIntSerializer.f75700a), BuiltinSerializersKt.d(FloatSerializer.f75616a)};
    }
}
