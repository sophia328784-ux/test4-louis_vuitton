package com.dynamicyield.sdk.wrapper.core.models.event;

import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;", "", "name", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;", SAPropertyFilter.PROPERTIES, "<init>", "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedProperties;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class PredefinedEvent extends DYEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PredefinedProperties f26336b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/PredefinedEvent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PredefinedEvent> serializer() {
            return PredefinedEvent$$serializer.f26337a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PredefinedEvent(int i2, String str, PredefinedProperties predefinedProperties, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, PredefinedEvent$$serializer.f26337a.a());
            throw null;
        }
        this.f26335a = str;
        if ((i2 & 2) == 0) {
            this.f26336b = null;
        } else {
            this.f26336b = predefinedProperties;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PredefinedEvent)) {
            return false;
        }
        PredefinedEvent predefinedEvent = (PredefinedEvent) obj;
        return Intrinsics.c(this.f26335a, predefinedEvent.f26335a) && Intrinsics.c(this.f26336b, predefinedEvent.f26336b);
    }

    public final int hashCode() {
        int iHashCode = this.f26335a.hashCode() * 31;
        PredefinedProperties predefinedProperties = this.f26336b;
        return iHashCode + (predefinedProperties == null ? 0 : predefinedProperties.hashCode());
    }

    public final String toString() {
        return "PredefinedEvent(name=" + this.f26335a + ", properties=" + this.f26336b + ')';
    }

    public /* synthetic */ PredefinedEvent(String str, PredefinedProperties predefinedProperties, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : predefinedProperties);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PredefinedEvent(String str, PredefinedProperties predefinedProperties) {
        super(null);
        str.getClass();
        this.f26335a = str;
        this.f26336b = predefinedProperties;
    }
}
