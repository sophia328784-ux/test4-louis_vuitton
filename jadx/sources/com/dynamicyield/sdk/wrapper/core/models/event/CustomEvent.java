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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomEvent;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/DYEvent;", "", "name", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomProperties;", SAPropertyFilter.PROPERTIES, "<init>", "(Ljava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomProperties;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomProperties;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class CustomEvent extends DYEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CustomProperties f26305b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomEvent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/CustomEvent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CustomEvent> serializer() {
            return CustomEvent$$serializer.f26306a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CustomEvent(int i2, String str, CustomProperties customProperties, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, CustomEvent$$serializer.f26306a.a());
            throw null;
        }
        this.f26304a = str;
        if ((i2 & 2) == 0) {
            this.f26305b = null;
        } else {
            this.f26305b = customProperties;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomEvent)) {
            return false;
        }
        CustomEvent customEvent = (CustomEvent) obj;
        return Intrinsics.c(this.f26304a, customEvent.f26304a) && Intrinsics.c(this.f26305b, customEvent.f26305b);
    }

    public final int hashCode() {
        int iHashCode = this.f26304a.hashCode() * 31;
        CustomProperties customProperties = this.f26305b;
        return iHashCode + (customProperties == null ? 0 : customProperties.hashCode());
    }

    public final String toString() {
        return "CustomEvent(name=" + this.f26304a + ", properties=" + this.f26305b + ')';
    }

    public /* synthetic */ CustomEvent(String str, CustomProperties customProperties, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : customProperties);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomEvent(String str, CustomProperties customProperties) {
        super(null);
        str.getClass();
        this.f26304a = str;
        this.f26305b = customProperties;
    }
}
