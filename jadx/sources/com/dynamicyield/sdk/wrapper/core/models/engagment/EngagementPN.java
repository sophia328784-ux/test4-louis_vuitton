package com.dynamicyield.sdk.wrapper.core.models.engagment;

import com.dynamicyield.sdk.wrapper.core.enums.EngagementPNType;
import defpackage.ew;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B/\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0004\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/BaseEngagement;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;", "trackingData", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;)V", "", "seen0", "Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;", "type", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class EngagementPN extends BaseEngagement {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f26256c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(7))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TrackingData f26257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EngagementPNType f26258b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EngagementPN> serializer() {
            return EngagementPN$$serializer.f26259a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EngagementPN(int i2, TrackingData trackingData, EngagementPNType engagementPNType, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, EngagementPN$$serializer.f26259a.getF19838b());
            throw null;
        }
        this.f26257a = trackingData;
        if ((i2 & 2) == 0) {
            this.f26258b = EngagementPNType.PN_CLICK;
        } else {
            this.f26258b = engagementPNType;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EngagementPN) && Intrinsics.c(this.f26257a, ((EngagementPN) obj).f26257a);
    }

    public final int hashCode() {
        return this.f26257a.hashCode();
    }

    public final String toString() {
        return "EngagementPN(trackingData=" + this.f26257a + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngagementPN(TrackingData trackingData) {
        super(null);
        trackingData.getClass();
        this.f26257a = trackingData;
        this.f26258b = EngagementPNType.PN_CLICK;
    }
}
