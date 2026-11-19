package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class RemoveFromCartEventProperties$$serializer implements GeneratedSerializer<RemoveFromCartEventProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RemoveFromCartEventProperties$$serializer f26355a;
    private static final SerialDescriptor descriptor;

    static {
        RemoveFromCartEventProperties$$serializer removeFromCartEventProperties$$serializer = new RemoveFromCartEventProperties$$serializer();
        f26355a = removeFromCartEventProperties$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.event.RemoveFromCartEventProperties", removeFromCartEventProperties$$serializer, 6);
        pluginGeneratedSerialDescriptor.k("dyType", false);
        pluginGeneratedSerialDescriptor.k("value", false);
        pluginGeneratedSerialDescriptor.k("currency", true);
        pluginGeneratedSerialDescriptor.k("productId", false);
        pluginGeneratedSerialDescriptor.k("quantity", false);
        pluginGeneratedSerialDescriptor.k("cart", true);
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
        Lazy[] lazyArr = RemoveFromCartEventProperties.g;
        int i2 = 0;
        String strL = null;
        CurrencyType currencyType = null;
        String strL2 = null;
        UInt uInt = null;
        List list = null;
        float fR = 0.0f;
        boolean z = true;
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
                    fR = compositeDecoderB.r(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    currencyType = (CurrencyType) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), currencyType);
                    i2 |= 4;
                    break;
                case 3:
                    strL2 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    uInt = (UInt) compositeDecoderB.w(serialDescriptor, 4, UIntSerializer.f75700a, uInt);
                    i2 |= 16;
                    break;
                case 5:
                    list = (List) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new RemoveFromCartEventProperties(i2, strL, fR, currencyType, strL2, uInt, list, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        RemoveFromCartEventProperties removeFromCartEventProperties = (RemoveFromCartEventProperties) obj;
        removeFromCartEventProperties.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, removeFromCartEventProperties.f26338a);
        Lazy[] lazyArr = RemoveFromCartEventProperties.g;
        float f2 = removeFromCartEventProperties.f26351b;
        List list = removeFromCartEventProperties.f26354f;
        CurrencyType currencyType = removeFromCartEventProperties.f26352c;
        compositeEncoderB.t(serialDescriptor, 1, f2);
        if (compositeEncoderB.o(serialDescriptor) || currencyType != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), currencyType);
        }
        compositeEncoderB.y(serialDescriptor, 3, removeFromCartEventProperties.d);
        compositeEncoderB.A(serialDescriptor, 4, UIntSerializer.f75700a, new UInt(removeFromCartEventProperties.f26353e));
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = RemoveFromCartEventProperties.g;
        KSerializer kSerializerD = BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b());
        KSerializer kSerializerD2 = BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b());
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, FloatSerializer.f75616a, kSerializerD, stringSerializer, UIntSerializer.f75700a, kSerializerD2};
    }
}
