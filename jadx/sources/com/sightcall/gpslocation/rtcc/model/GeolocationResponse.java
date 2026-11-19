package com.sightcall.gpslocation.rtcc.model;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.sightcall.pratik.extensions.JsonException;
import defpackage.fc;
import defpackage.tr;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 -2\u00020\u0001:\u0001-B]\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\"\u001a\u00020\nHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\fHÆ\u0003J\t\u0010$\u001a\u00020\bHÆ\u0003Jj\u0010%\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0002\u0010&J\u0014\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010*\u001a\u00020+HÖ\u0081\u0004J\n\u0010,\u001a\u00020\bHÖ\u0081\u0004R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0015\u0010\u0011R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\r\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017¨\u0006."}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;", "", "longitude", "", "latitude", "accuracy", "altitude", "altitudeAccuracy", "", "timestamp", "", "requestId", "Ljava/util/UUID;", "status", "<init>", "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)V", "getLongitude", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getLatitude", "getAccuracy", "getAltitude", "getAltitudeAccuracy", "()Ljava/lang/String;", "getTimestamp", "()J", "getRequestId", "()Ljava/util/UUID;", "getStatus", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;JLjava/util/UUID;Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;", "equals", "", "other", "hashCode", "", "toString", "Companion", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class GeolocationResponse {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @SerializedName("accuracy")
    private final Double accuracy;

    @SerializedName("altitude")
    private final Double altitude;

    @SerializedName("altitudeAccuracy")
    private final String altitudeAccuracy;

    @SerializedName("latitude")
    private final Double latitude;

    @SerializedName("longitude")
    private final Double longitude;

    @SerializedName("requestId")
    private final UUID requestId;

    @SerializedName("status")
    private final String status;

    @SerializedName("timestamp")
    private final long timestamp;

    public /* synthetic */ GeolocationResponse(Double d, Double d2, Double d3, Double d4, String str, long j2, UUID uuid, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : d, (i2 & 2) != 0 ? null : d2, (i2 & 4) != 0 ? null : d3, (i2 & 8) != 0 ? null : d4, (i2 & 16) != 0 ? null : str, j2, uuid, str2);
    }

    public static /* synthetic */ GeolocationResponse copy$default(GeolocationResponse geolocationResponse, Double d, Double d2, Double d3, Double d4, String str, long j2, UUID uuid, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            d = geolocationResponse.longitude;
        }
        if ((i2 & 2) != 0) {
            d2 = geolocationResponse.latitude;
        }
        if ((i2 & 4) != 0) {
            d3 = geolocationResponse.accuracy;
        }
        if ((i2 & 8) != 0) {
            d4 = geolocationResponse.altitude;
        }
        if ((i2 & 16) != 0) {
            str = geolocationResponse.altitudeAccuracy;
        }
        if ((i2 & 32) != 0) {
            j2 = geolocationResponse.timestamp;
        }
        if ((i2 & 64) != 0) {
            uuid = geolocationResponse.requestId;
        }
        if ((i2 & 128) != 0) {
            str2 = geolocationResponse.status;
        }
        long j3 = j2;
        Double d5 = d4;
        String str3 = str;
        Double d6 = d3;
        return geolocationResponse.copy(d, d2, d6, d5, str3, j3, uuid, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Double getLongitude() {
        return this.longitude;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Double getLatitude() {
        return this.latitude;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Double getAccuracy() {
        return this.accuracy;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Double getAltitude() {
        return this.altitude;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getAltitudeAccuracy() {
        return this.altitudeAccuracy;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final UUID getRequestId() {
        return this.requestId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    public final GeolocationResponse copy(Double longitude, Double latitude, Double accuracy, Double altitude, String altitudeAccuracy, long timestamp, UUID requestId, String status) {
        status.getClass();
        return new GeolocationResponse(longitude, latitude, accuracy, altitude, altitudeAccuracy, timestamp, requestId, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GeolocationResponse)) {
            return false;
        }
        GeolocationResponse geolocationResponse = (GeolocationResponse) other;
        return Intrinsics.c(this.longitude, geolocationResponse.longitude) && Intrinsics.c(this.latitude, geolocationResponse.latitude) && Intrinsics.c(this.accuracy, geolocationResponse.accuracy) && Intrinsics.c(this.altitude, geolocationResponse.altitude) && Intrinsics.c(this.altitudeAccuracy, geolocationResponse.altitudeAccuracy) && this.timestamp == geolocationResponse.timestamp && Intrinsics.c(this.requestId, geolocationResponse.requestId) && Intrinsics.c(this.status, geolocationResponse.status);
    }

    public final Double getAccuracy() {
        return this.accuracy;
    }

    public final Double getAltitude() {
        return this.altitude;
    }

    public final String getAltitudeAccuracy() {
        return this.altitudeAccuracy;
    }

    public final Double getLatitude() {
        return this.latitude;
    }

    public final Double getLongitude() {
        return this.longitude;
    }

    public final UUID getRequestId() {
        return this.requestId;
    }

    public final String getStatus() {
        return this.status;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        Double d = this.longitude;
        int iHashCode = (d == null ? 0 : d.hashCode()) * 31;
        Double d2 = this.latitude;
        int iHashCode2 = (iHashCode + (d2 == null ? 0 : d2.hashCode())) * 31;
        Double d3 = this.accuracy;
        int iHashCode3 = (iHashCode2 + (d3 == null ? 0 : d3.hashCode())) * 31;
        Double d4 = this.altitude;
        int iHashCode4 = (iHashCode3 + (d4 == null ? 0 : d4.hashCode())) * 31;
        String str = this.altitudeAccuracy;
        int iA = fc.a((iHashCode4 + (str == null ? 0 : str.hashCode())) * 31, 31, this.timestamp);
        UUID uuid = this.requestId;
        return this.status.hashCode() + ((iA + (uuid != null ? uuid.hashCode() : 0)) * 31);
    }

    public String toString() {
        return "GeolocationResponse(longitude=" + this.longitude + ", latitude=" + this.latitude + ", accuracy=" + this.accuracy + ", altitude=" + this.altitude + ", altitudeAccuracy=" + this.altitudeAccuracy + ", timestamp=" + this.timestamp + ", requestId=" + this.requestId + ", status=" + this.status + ")";
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;", "", "<init>", "()V", "fromJson", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;", "geolocationResponseAsJson", "", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GeolocationResponse fromJson(String geolocationResponseAsJson) throws JsonException {
            geolocationResponseAsJson.getClass();
            try {
                return (GeolocationResponse) new Gson().fromJson(geolocationResponseAsJson, GeolocationResponse.class);
            } catch (Exception e2) {
                throw new JsonException(tr.g("Unable to deserialize: ", geolocationResponseAsJson), e2);
            }
        }

        private Companion() {
        }
    }

    public GeolocationResponse(Double d, Double d2, Double d3, Double d4, String str, long j2, UUID uuid, String str2) {
        str2.getClass();
        this.longitude = d;
        this.latitude = d2;
        this.accuracy = d3;
        this.altitude = d4;
        this.altitudeAccuracy = str;
        this.timestamp = j2;
        this.requestId = uuid;
        this.status = str2;
    }
}
