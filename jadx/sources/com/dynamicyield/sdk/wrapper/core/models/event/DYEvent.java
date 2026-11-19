package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.DYEventSerializer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0001\u0003\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;", "", "Companion", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomEvent;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable(with = DYEventSerializer.class)
public abstract class DYEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DYEvent> serializer() {
            return DYEventSerializer.f25953a;
        }
    }

    public DYEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
