package com.sightcall.gpslocation;

import com.sightcall.pratik.Result;
import com.sightcall.universal.agent.Location;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0011\u001a\u00020\u0012H&R(\u0010\u0002\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u00060\u0006j\u0002`\u00070\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0012\u0010\u0010\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\r¨\u0006\u0013À\u0006\u0003"}, d2 = {"Lcom/sightcall/gpslocation/GpsRepository;", "", Location.TYPE, "Lkotlinx/coroutines/flow/Flow;", "Lcom/sightcall/pratik/Result;", "Landroid/location/Location;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "getLocations", "()Lkotlinx/coroutines/flow/Flow;", "hasGpsFeature", "", "getHasGpsFeature", "()Z", "hasPermissions", "getHasPermissions", "isGpsEnabled", "stopGPS", "", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface GpsRepository {
    boolean getHasGpsFeature();

    boolean getHasPermissions();

    Flow<Result<android.location.Location, Exception>> getLocations();

    boolean isGpsEnabled();

    void stopGPS();
}
