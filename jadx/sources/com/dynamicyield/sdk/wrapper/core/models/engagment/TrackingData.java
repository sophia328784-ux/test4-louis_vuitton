package com.dynamicyield.sdk.wrapper.core.models.engagment;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.l31;
import defpackage.tr;
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
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012BU\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fB]\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;", "", "", "rri", "sectionID", "reqTs", "userID", "version", "", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingDataEvent;", DbParams.TABLE_EVENTS, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Serializable
public final /* data */ class TrackingData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(16))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26274c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f26276f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/engagment/TrackingData;", "serializer", "()Lkotlinx/serialization/KSerializer;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TrackingData> serializer() {
            return TrackingData$$serializer.f26277a;
        }
    }

    public /* synthetic */ TrackingData(int i2, String str, String str2, String str3, String str4, String str5, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f26272a = null;
        } else {
            this.f26272a = str;
        }
        if ((i2 & 2) == 0) {
            this.f26273b = null;
        } else {
            this.f26273b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f26274c = null;
        } else {
            this.f26274c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f26275e = null;
        } else {
            this.f26275e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f26276f = null;
        } else {
            this.f26276f = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrackingData)) {
            return false;
        }
        TrackingData trackingData = (TrackingData) obj;
        return Intrinsics.c(this.f26272a, trackingData.f26272a) && Intrinsics.c(this.f26273b, trackingData.f26273b) && Intrinsics.c(this.f26274c, trackingData.f26274c) && Intrinsics.c(this.d, trackingData.d) && Intrinsics.c(this.f26275e, trackingData.f26275e) && Intrinsics.c(this.f26276f, trackingData.f26276f);
    }

    public final int hashCode() {
        String str = this.f26272a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f26273b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f26274c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f26275e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List list = this.f26276f;
        return iHashCode5 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TrackingData(rri=");
        sb.append(this.f26272a);
        sb.append(", sectionID=");
        sb.append(this.f26273b);
        sb.append(", reqTs=");
        sb.append(this.f26274c);
        sb.append(", userID=");
        sb.append(this.d);
        sb.append(", version=");
        sb.append(this.f26275e);
        sb.append(", events=");
        return tr.m(sb, this.f26276f, ')');
    }

    public TrackingData() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (List) null, 63, (DefaultConstructorMarker) null);
    }

    public TrackingData(String str, String str2, String str3, String str4, String str5, List<TrackingDataEvent> list) {
        this.f26272a = str;
        this.f26273b = str2;
        this.f26274c = str3;
        this.d = str4;
        this.f26275e = str5;
        this.f26276f = list;
    }

    public /* synthetic */ TrackingData(String str, String str2, String str3, String str4, String str5, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : list);
    }
}
