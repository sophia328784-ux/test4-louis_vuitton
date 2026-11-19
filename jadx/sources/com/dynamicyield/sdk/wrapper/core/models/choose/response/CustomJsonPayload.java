package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.dynamicyield.sdk.wrapper.core.enums.DecisionType;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.CustomJsonPayloadSerializer;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Payload;", "Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;", "type", "", DbParams.KEY_DATA, "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/enums/DecisionType;Ljava/lang/String;)V", "Companion", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable(with = CustomJsonPayloadSerializer.class)
public final class CustomJsonPayload extends Payload {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CustomJsonPayload;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CustomJsonPayload> serializer() {
            return CustomJsonPayloadSerializer.f25947a;
        }
    }

    public CustomJsonPayload(DecisionType decisionType, String str) {
        str.getClass();
    }
}
