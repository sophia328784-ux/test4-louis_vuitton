package com.sightcall.gpslocation.rtcc.model;

import com.batch.android.s.b;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.sightcall.pratik.extensions.JsonException;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ$\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0003HÖ\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;", "", "requestId", "", "expirationTimeout", "", "<init>", "(Ljava/lang/String;Ljava/lang/Long;)V", "getRequestId", "()Ljava/lang/String;", "getExpirationTimeout", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Long;)Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;", "equals", "", "other", "hashCode", "", "toString", "Constant", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GeoLocationRequest {

    /* JADX INFO: renamed from: Constant, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long defaultTimeout = 60000;

    @SerializedName("expirationTimeout")
    private final Long expirationTimeout;

    @SerializedName(b.a.f24015b)
    private final String requestId;

    public GeoLocationRequest(String str, Long l) {
        str.getClass();
        this.requestId = str;
        this.expirationTimeout = l;
    }

    public static /* synthetic */ GeoLocationRequest copy$default(GeoLocationRequest geoLocationRequest, String str, Long l, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = geoLocationRequest.requestId;
        }
        if ((i2 & 2) != 0) {
            l = geoLocationRequest.expirationTimeout;
        }
        return geoLocationRequest.copy(str, l);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getRequestId() {
        return this.requestId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getExpirationTimeout() {
        return this.expirationTimeout;
    }

    public final GeoLocationRequest copy(String requestId, Long expirationTimeout) {
        requestId.getClass();
        return new GeoLocationRequest(requestId, expirationTimeout);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GeoLocationRequest)) {
            return false;
        }
        GeoLocationRequest geoLocationRequest = (GeoLocationRequest) other;
        return Intrinsics.c(this.requestId, geoLocationRequest.requestId) && Intrinsics.c(this.expirationTimeout, geoLocationRequest.expirationTimeout);
    }

    public final Long getExpirationTimeout() {
        return this.expirationTimeout;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public int hashCode() {
        int iHashCode = this.requestId.hashCode() * 31;
        Long l = this.expirationTimeout;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "GeoLocationRequest(requestId=" + this.requestId + ", expirationTimeout=" + this.expirationTimeout + ")";
    }

    /* JADX INFO: renamed from: com.sightcall.gpslocation.rtcc.model.GeoLocationRequest$Constant, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;", "", "<init>", "()V", "defaultTimeout", "", "fromJson", "Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;", "geolocationRequestAsJson", "", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GeoLocationRequest fromJson(String geolocationRequestAsJson) {
            geolocationRequestAsJson.getClass();
            try {
                return (GeoLocationRequest) new Gson().fromJson(geolocationRequestAsJson, GeoLocationRequest.class);
            } catch (Exception e2) {
                throw new JsonException(tr.g("Unable to deserialize: ", geolocationRequestAsJson), e2);
            }
        }

        private Companion() {
        }
    }
}
