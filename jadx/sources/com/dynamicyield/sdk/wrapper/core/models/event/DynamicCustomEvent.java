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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;", "", "name", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;", SAPropertyFilter.PROPERTIES, "<init>", "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomProperties;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class DynamicCustomEvent extends DYEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DynamicCustomProperties f26308b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DynamicCustomEvent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<DynamicCustomEvent> serializer() {
            return DynamicCustomEvent$$serializer.f26309a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DynamicCustomEvent(int i2, String str, DynamicCustomProperties dynamicCustomProperties, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, DynamicCustomEvent$$serializer.f26309a.a());
            throw null;
        }
        this.f26307a = str;
        if ((i2 & 2) == 0) {
            this.f26308b = null;
        } else {
            this.f26308b = dynamicCustomProperties;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DynamicCustomEvent)) {
            return false;
        }
        DynamicCustomEvent dynamicCustomEvent = (DynamicCustomEvent) obj;
        return Intrinsics.c(this.f26307a, dynamicCustomEvent.f26307a) && Intrinsics.c(this.f26308b, dynamicCustomEvent.f26308b);
    }

    public final int hashCode() {
        int iHashCode = this.f26307a.hashCode() * 31;
        DynamicCustomProperties dynamicCustomProperties = this.f26308b;
        return iHashCode + (dynamicCustomProperties == null ? 0 : dynamicCustomProperties.hashCode());
    }

    public final String toString() {
        return "DynamicCustomEvent(name=" + this.f26307a + ", properties=" + this.f26308b + ')';
    }

    public /* synthetic */ DynamicCustomEvent(String str, DynamicCustomProperties dynamicCustomProperties, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : dynamicCustomProperties);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicCustomEvent(String str, DynamicCustomProperties dynamicCustomProperties) {
        super(null);
        str.getClass();
        this.f26307a = str;
        this.f26308b = dynamicCustomProperties;
    }
}
