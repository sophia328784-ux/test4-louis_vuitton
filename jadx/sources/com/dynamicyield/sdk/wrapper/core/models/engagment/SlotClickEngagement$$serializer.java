package com.dynamicyield.sdk.wrapper.core.models.engagment;

import com.dynamicyield.sdk.wrapper.core.enums.EngagementType;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SlotClickEngagement$$serializer implements GeneratedSerializer<SlotClickEngagement> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SlotClickEngagement$$serializer f26267a;
    private static final SerialDescriptor descriptor;

    static {
        SlotClickEngagement$$serializer slotClickEngagement$$serializer = new SlotClickEngagement$$serializer();
        f26267a = slotClickEngagement$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.engagment.SlotClickEngagement", slotClickEngagement$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("variations", true);
        pluginGeneratedSerialDescriptor.k("slotId", false);
        pluginGeneratedSerialDescriptor.k("type", true);
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
        Lazy[] lazyArr = SlotClickEngagement.d;
        boolean z = true;
        int i2 = 0;
        List list = null;
        String strL = null;
        EngagementType engagementType = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                engagementType = (EngagementType) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), engagementType);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SlotClickEngagement(i2, list, strL, engagementType, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SlotClickEngagement slotClickEngagement = (SlotClickEngagement) obj;
        slotClickEngagement.getClass();
        List list = slotClickEngagement.f26264a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SlotClickEngagement.d;
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), list);
        }
        String str = slotClickEngagement.f26265b;
        EngagementType engagementType = slotClickEngagement.f26266c;
        compositeEncoderB.y(serialDescriptor, 1, str);
        if (compositeEncoderB.o(serialDescriptor) || engagementType != EngagementType.SLOT_CLICK) {
            compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), engagementType);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SlotClickEngagement.d;
        return new KSerializer[]{BuiltinSerializersKt.d((KSerializer) lazyArr[0].getF71699b()), StringSerializer.f75684a, lazyArr[2].getF71699b()};
    }
}
