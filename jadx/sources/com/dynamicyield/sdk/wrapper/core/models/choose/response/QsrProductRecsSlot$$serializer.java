package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsSlot.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsSlot;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class QsrProductRecsSlot$$serializer implements GeneratedSerializer<QsrProductRecsSlot> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final QsrProductRecsSlot$$serializer f26098a;
    private static final SerialDescriptor descriptor;

    static {
        QsrProductRecsSlot$$serializer qsrProductRecsSlot$$serializer = new QsrProductRecsSlot$$serializer();
        f26098a = qsrProductRecsSlot$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsSlot", qsrProductRecsSlot$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("variationId", true);
        pluginGeneratedSerialDescriptor.k("sku", false);
        pluginGeneratedSerialDescriptor.k("slotId", false);
        pluginGeneratedSerialDescriptor.k("productData", false);
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
        Integer num = null;
        String strL = null;
        String strL2 = null;
        QsrProductRecsProductData qsrProductRecsProductData = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                num = (Integer) compositeDecoderB.m(serialDescriptor, 0, IntSerializer.f75624a, num);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                strL2 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                qsrProductRecsProductData = (QsrProductRecsProductData) compositeDecoderB.w(serialDescriptor, 3, QsrProductRecsProductData$$serializer.f26095a, qsrProductRecsProductData);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new QsrProductRecsSlot(i2, num, strL, strL2, qsrProductRecsProductData, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        QsrProductRecsSlot qsrProductRecsSlot = (QsrProductRecsSlot) obj;
        qsrProductRecsSlot.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Slot.a(qsrProductRecsSlot, compositeEncoderB, serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 1, qsrProductRecsSlot.f26096c);
        compositeEncoderB.y(serialDescriptor, 2, qsrProductRecsSlot.d);
        compositeEncoderB.A(serialDescriptor, 3, QsrProductRecsProductData$$serializer.f26095a, qsrProductRecsSlot.f26097e);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(IntSerializer.f75624a), stringSerializer, stringSerializer, QsrProductRecsProductData$$serializer.f26095a};
    }
}
