package com.sightcall.gpslocation.datasource;

import android.content.Context;
import android.location.LocationManager;
import android.provider.Settings;
import androidx.core.content.ContextCompat;
import com.sightcall.pratik.utils.SdkUtilsKt;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "locationManager", "Landroid/location/LocationManager;", "<init>", "(Landroid/content/Context;Landroid/location/LocationManager;)V", "getContext", "()Landroid/content/Context;", "getLocationManager", "()Landroid/location/LocationManager;", "hasGpsFeature", "", "checkPermissions", "isGPSEnabled", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class GpsDatasourceImpl {
    private final Context context;
    private final LocationManager locationManager;

    public GpsDatasourceImpl(Context context, LocationManager locationManager) {
        context.getClass();
        locationManager.getClass();
        this.context = context;
        this.locationManager = locationManager;
    }

    public boolean checkPermissions() {
        return ContextCompat.checkSelfPermission(getContext(), "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public Context getContext() {
        return this.context;
    }

    public LocationManager getLocationManager() {
        return this.locationManager;
    }

    public boolean hasGpsFeature() {
        return getLocationManager().getAllProviders().contains("gps");
    }

    public boolean isGPSEnabled() {
        if (SdkUtilsKt.isAtLeastSdk28()) {
            return getLocationManager().isLocationEnabled();
        }
        try {
            return Settings.Secure.getInt(getContext().getContentResolver(), "location_mode") != 0;
        } catch (Settings.SettingNotFoundException unused) {
        }
    }
}
