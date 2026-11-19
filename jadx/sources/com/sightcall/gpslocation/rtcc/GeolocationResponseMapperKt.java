package com.sightcall.gpslocation.rtcc;

import android.location.Location;
import com.sightcall.gpslocation.rtcc.model.GeolocationResponse;
import com.sightcall.gpslocation.rtcc.model.GeolocationStatus;
import com.sightcall.pratik.extensions.AnyExtensionsKt;
import java.util.Date;
import java.util.UUID;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u001a\u0018\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001¨\u0006\n"}, d2 = {"toGeolocationResponse", "", "Landroid/location/Location;", "gpsLocationStatus", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "date", "", "requestId", "locationResponseStatus", "geolocationStatus", "GpsLocation_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class GeolocationResponseMapperKt {
    public static final String locationResponseStatus(GeolocationStatus geolocationStatus, String str) {
        geolocationStatus.getClass();
        return AnyExtensionsKt.toJson$default(new GeolocationResponse(null, null, null, null, null, new Date().getTime(), str != null ? UUID.fromString(str) : null, geolocationStatus.getValue(), 31, null), false, true, 1, null);
    }

    public static final String toGeolocationResponse(Location location, GeolocationStatus geolocationStatus, long j2, String str) {
        location.getClass();
        geolocationStatus.getClass();
        return AnyExtensionsKt.toJson$default(new GeolocationResponse(Double.valueOf(location.getLongitude()), Double.valueOf(location.getLatitude()), Double.valueOf(location.getAccuracy()), Double.valueOf(location.getAltitude()), null, j2, str != null ? UUID.fromString(str) : null, geolocationStatus.getValue(), 16, null), false, true, 1, null);
    }
}
