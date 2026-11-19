package com.dynamicyield.sdk.wrapper.core.models.engagment;

import defpackage.fc;
import defpackage.l31;
import io.jsonwebtoken.Claims;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BU\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fB]\b\u0010\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000b\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent;", "", "", "ver", "expVisitId", "smech", "", "", "vars", Claims.EXPIRATION, "mech", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class TrackingDataEvent {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(17)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26280c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26282f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TrackingDataEvent> serializer() {
            return TrackingDataEvent$$serializer.f26283a;
        }
    }

    public /* synthetic */ TrackingDataEvent(int i2, String str, String str2, String str3, List list, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26278a = null;
        } else {
            this.f26278a = str;
        }
        if ((i2 & 2) == 0) {
            this.f26279b = null;
        } else {
            this.f26279b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f26280c = null;
        } else {
            this.f26280c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = list;
        }
        if ((i2 & 16) == 0) {
            this.f26281e = null;
        } else {
            this.f26281e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f26282f = null;
        } else {
            this.f26282f = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrackingDataEvent)) {
            return false;
        }
        TrackingDataEvent trackingDataEvent = (TrackingDataEvent) obj;
        return Intrinsics.c(this.f26278a, trackingDataEvent.f26278a) && Intrinsics.c(this.f26279b, trackingDataEvent.f26279b) && Intrinsics.c(this.f26280c, trackingDataEvent.f26280c) && Intrinsics.c(this.d, trackingDataEvent.d) && Intrinsics.c(this.f26281e, trackingDataEvent.f26281e) && Intrinsics.c(this.f26282f, trackingDataEvent.f26282f);
    }

    public final int hashCode() {
        String str = this.f26278a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f26279b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f26280c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.d;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.f26281e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f26282f;
        return iHashCode5 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TrackingDataEvent(ver=");
        sb.append(this.f26278a);
        sb.append(", expVisitId=");
        sb.append(this.f26279b);
        sb.append(", smech=");
        sb.append(this.f26280c);
        sb.append(", vars=");
        sb.append(this.d);
        sb.append(", exp=");
        sb.append(this.f26281e);
        sb.append(", mech=");
        return fc.l(sb, this.f26282f, ')');
    }

    public TrackingDataEvent() {
        this((String) null, (String) null, (String) null, (List) null, (String) null, (String) null, 63, (DefaultConstructorMarker) null);
    }

    public TrackingDataEvent(String str, String str2, String str3, List<Integer> list, String str4, String str5) {
        this.f26278a = str;
        this.f26279b = str2;
        this.f26280c = str3;
        this.d = list;
        this.f26281e = str4;
        this.f26282f = str5;
    }

    public /* synthetic */ TrackingDataEvent(String str, String str2, String str3, List list, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5);
    }
}
