package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
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
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SyncCartEventProperties;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SyncCartEventProperties$$serializer implements GeneratedSerializer<SyncCartEventProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SyncCartEventProperties$$serializer f26379a;
    private static final SerialDescriptor descriptor;

    static {
        SyncCartEventProperties$$serializer syncCartEventProperties$$serializer = new SyncCartEventProperties$$serializer();
        f26379a = syncCartEventProperties$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.event.SyncCartEventProperties", syncCartEventProperties$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("dyType", false);
        pluginGeneratedSerialDescriptor.k("value", false);
        pluginGeneratedSerialDescriptor.k("currency", true);
        pluginGeneratedSerialDescriptor.k("cart", false);
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
        Lazy[] lazyArr = SyncCartEventProperties.f26376e;
        int i2 = 0;
        String strL = null;
        CurrencyType currencyType = null;
        List list = null;
        float fR = 0.0f;
        boolean z = true;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                fR = compositeDecoderB.r(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                currencyType = (CurrencyType) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), currencyType);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SyncCartEventProperties(i2, strL, fR, currencyType, list, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SyncCartEventProperties syncCartEventProperties = (SyncCartEventProperties) obj;
        syncCartEventProperties.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, syncCartEventProperties.f26338a);
        Lazy[] lazyArr = SyncCartEventProperties.f26376e;
        float f2 = syncCartEventProperties.f26377b;
        CurrencyType currencyType = syncCartEventProperties.f26378c;
        compositeEncoderB.t(serialDescriptor, 1, f2);
        if (compositeEncoderB.o(serialDescriptor) || currencyType != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), currencyType);
        }
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), syncCartEventProperties.d);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SyncCartEventProperties.f26376e;
        return new KSerializer[]{StringSerializer.f75684a, FloatSerializer.f75616a, BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), lazyArr[3].getF71699b()};
    }
}
