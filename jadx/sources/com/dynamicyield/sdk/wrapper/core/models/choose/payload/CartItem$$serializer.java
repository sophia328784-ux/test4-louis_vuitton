package com.dynamicyield.sdk.wrapper.core.models.choose.payload;

import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.UInt;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class CartItem$$serializer implements GeneratedSerializer<CartItem> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartItem$$serializer f26022a;
    private static final SerialDescriptor descriptor;

    static {
        CartItem$$serializer cartItem$$serializer = new CartItem$$serializer();
        f26022a = cartItem$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.choose.payload.CartItem", cartItem$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("productId", false);
        pluginGeneratedSerialDescriptor.k("quantity", false);
        pluginGeneratedSerialDescriptor.k("itemPrice", false);
        pluginGeneratedSerialDescriptor.k("innerProducts", true);
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
        Lazy[] lazyArr = CartItem.f26018e;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        UInt uInt = null;
        Float f2 = null;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                uInt = (UInt) compositeDecoderB.w(serialDescriptor, 1, UIntSerializer.f75700a, uInt);
                i2 |= 2;
            } else if (iN == 2) {
                f2 = (Float) compositeDecoderB.m(serialDescriptor, 2, FloatSerializer.f75616a, f2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CartItem(i2, strL, uInt, f2, list, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CartItem cartItem = (CartItem) obj;
        cartItem.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CartItem.f26018e;
        String str = cartItem.f26019a;
        List list = cartItem.d;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.A(serialDescriptor, 1, UIntSerializer.f75700a, new UInt(cartItem.f26020b));
        compositeEncoderB.h(serialDescriptor, 2, FloatSerializer.f75616a, cartItem.f26021c);
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, UIntSerializer.f75700a, BuiltinSerializersKt.d(FloatSerializer.f75616a), BuiltinSerializersKt.d((KSerializer) CartItem.f26018e[3].getF71699b())};
    }
}
