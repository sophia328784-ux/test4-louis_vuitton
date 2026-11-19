package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.common.payload.AssistantPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.ChoosePayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EndpointPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EngagementsPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EventsPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.SearchPayload;
import defpackage.iv;
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
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EndpointPayloadSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EndpointPayload;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EndpointPayloadSerializer implements KSerializer<EndpointPayload> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EndpointPayloadSerializer f25963a = new EndpointPayloadSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f25964b = SerialDescriptorsKt.c("EndpointPayload", new SerialDescriptor[0], new iv(11));

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f25964b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        throw new SerializationException("This class can't be deserialize");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        EndpointPayload endpointPayload = (EndpointPayload) obj;
        endpointPayload.getClass();
        if (endpointPayload instanceof ChoosePayload) {
            encoder.d(ChoosePayload.INSTANCE.serializer(), endpointPayload);
            return;
        }
        if (endpointPayload instanceof EventsPayload) {
            encoder.d(EventsPayload.INSTANCE.serializer(), endpointPayload);
            return;
        }
        if (endpointPayload instanceof EngagementsPayload) {
            encoder.d(EngagementsPayload.INSTANCE.serializer(), endpointPayload);
            return;
        }
        if (endpointPayload instanceof SearchPayload) {
            encoder.d(SearchPayload.INSTANCE.serializer(), endpointPayload);
        } else if (endpointPayload instanceof AssistantPayload) {
            encoder.d(AssistantPayload.INSTANCE.serializer(), endpointPayload);
        } else {
            v40.g();
        }
    }
}
