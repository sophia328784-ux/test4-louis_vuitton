package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.engagment.BaseEngagement;
import com.dynamicyield.sdk.wrapper.core.models.engagment.ClickEngagement;
import com.dynamicyield.sdk.wrapper.core.models.engagment.EngagementPN;
import com.dynamicyield.sdk.wrapper.core.models.engagment.ImpressionEngagement;
import com.dynamicyield.sdk.wrapper.core.models.engagment.SlotClickEngagement;
import com.dynamicyield.sdk.wrapper.core.models.engagment.SlotImpressionEngagement;
import defpackage.v40;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EngagementSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EngagementSerializer implements KSerializer<BaseEngagement> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EngagementSerializer f25965a = new EngagementSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25966b = SerialDescriptorsKt.d("BaseEngagement", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f25966b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("Unknown type for BaseEngagement");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        BaseEngagement baseEngagement = (BaseEngagement) obj;
        baseEngagement.getClass();
        if (baseEngagement instanceof ClickEngagement) {
            encoder.d(ClickEngagement.INSTANCE.serializer(), baseEngagement);
            return;
        }
        if (baseEngagement instanceof ImpressionEngagement) {
            encoder.d(ImpressionEngagement.INSTANCE.serializer(), baseEngagement);
            return;
        }
        if (baseEngagement instanceof EngagementPN) {
            encoder.d(EngagementPN.INSTANCE.serializer(), baseEngagement);
            return;
        }
        if (baseEngagement instanceof SlotImpressionEngagement) {
            encoder.d(SlotImpressionEngagement.INSTANCE.serializer(), baseEngagement);
        } else if (baseEngagement instanceof SlotClickEngagement) {
            encoder.d(SlotClickEngagement.INSTANCE.serializer(), baseEngagement);
        } else {
            v40.g();
        }
    }
}
