package com.sightcall.gpslocation.datasource;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.Looper;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.internal.location.zzdb;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.tasks.Task;
import com.sightcall.pratik.logs.Logger;
import defpackage.fw;
import defpackage.gv;
import defpackage.k0;
import defpackage.lr;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ4\u0010\u0015\u001a\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00160\u00182\u0016\u0010\u001a\u001a\u0012\u0012\b\u0012\u00060\u001bj\u0002`\u001c\u0012\u0004\u0012\u00020\u00160\u0018H\u0017J\b\u0010\u001d\u001a\u00020\u0016H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;", "Lcom/sightcall/gpslocation/datasource/GpsDatasource;", "Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "locationManager", "Landroid/location/LocationManager;", "fusedLocationManager", "Lcom/google/android/gms/location/FusedLocationProviderClient;", "<init>", "(Landroid/content/Context;Landroid/location/LocationManager;Lcom/google/android/gms/location/FusedLocationProviderClient;)V", "getContext", "()Landroid/content/Context;", "getLocationManager", "()Landroid/location/LocationManager;", "locationCallback", "Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;", "locationRequest", "Lcom/google/android/gms/location/LocationRequest;", "locationSettingsRequest", "Lcom/google/android/gms/location/LocationSettingsRequest;", "startGps", "", "callback", "Lkotlin/Function1;", "Landroid/location/Location;", "failure", "Ljava/lang/Exception;", "Lkotlin/Exception;", "stopGps", "checkPermission", "", "MyLocationCallback", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GpsGmsDatasourceImpl extends GpsDatasourceImpl implements GpsDatasource {
    private final Context context;
    private final FusedLocationProviderClient fusedLocationManager;
    private final MyLocationCallback locationCallback;
    private final LocationManager locationManager;
    private final LocationRequest locationRequest;
    private final LocationSettingsRequest locationSettingsRequest;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0016R(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl$MyLocationCallback;", "Lcom/google/android/gms/location/LocationCallback;", "<init>", "(Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;)V", "callback", "Lkotlin/Function1;", "Landroid/location/Location;", "", "getCallback", "()Lkotlin/jvm/functions/Function1;", "setCallback", "(Lkotlin/jvm/functions/Function1;)V", "onLocationResult", "locationResult", "Lcom/google/android/gms/location/LocationResult;", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class MyLocationCallback extends LocationCallback {
        private Function1<? super Location, Unit> callback;

        public MyLocationCallback() {
        }

        public final Function1<Location, Unit> getCallback() {
            return this.callback;
        }

        @Override // com.google.android.gms.location.LocationCallback
        public void onLocationResult(LocationResult locationResult) {
            locationResult.getClass();
            Function1<? super Location, Unit> function1 = this.callback;
            if (function1 != null) {
                List list = locationResult.f31363b;
                int size = list.size();
                Location location = size == 0 ? null : (Location) list.get(size - 1);
                if (location != null) {
                    function1.invoke(location);
                }
            }
        }

        public final void setCallback(Function1<? super Location, Unit> function1) {
            this.callback = function1;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GpsGmsDatasourceImpl(Context context, LocationManager locationManager, FusedLocationProviderClient fusedLocationProviderClient) {
        super(context, locationManager);
        context.getClass();
        locationManager.getClass();
        fusedLocationProviderClient.getClass();
        this.context = context;
        this.locationManager = locationManager;
        this.fusedLocationManager = fusedLocationProviderClient;
        this.locationCallback = new MyLocationCallback();
        LocationRequest locationRequestA = new LocationRequest.Builder(100, 1000L).a();
        this.locationRequest = locationRequestA;
        LocationSettingsRequest.Builder builder = new LocationSettingsRequest.Builder();
        ArrayList arrayList = builder.f31367a;
        arrayList.add(locationRequestA);
        builder.f31368b = true;
        this.locationSettingsRequest = new LocationSettingsRequest(arrayList, builder.f31368b, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startGps$lambda$0(GpsGmsDatasourceImpl gpsGmsDatasourceImpl, Function1 function1, LocationSettingsResponse locationSettingsResponse) {
        gpsGmsDatasourceImpl.fusedLocationManager.c().e(new fw(new k0(function1, 15), 7));
        gpsGmsDatasourceImpl.fusedLocationManager.a(gpsGmsDatasourceImpl.locationRequest, gpsGmsDatasourceImpl.locationCallback, Looper.getMainLooper());
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit startGps$lambda$0$0(Function1 function1, Location location) {
        if (location != null) {
            function1.invoke(location);
        }
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startGps$lambda$2(Function1 function1, Exception exc) {
        exc.getClass();
        Logger.INSTANCE.getTag();
        if (exc instanceof ResolvableApiException) {
            function1.invoke(exc);
        }
    }

    @Override // com.sightcall.gpslocation.datasource.GpsDatasource
    public boolean checkPermission() {
        return super.checkPermissions();
    }

    @Override // com.sightcall.gpslocation.datasource.GpsDatasourceImpl
    public Context getContext() {
        return this.context;
    }

    @Override // com.sightcall.gpslocation.datasource.GpsDatasourceImpl
    public LocationManager getLocationManager() {
        return this.locationManager;
    }

    @Override // com.sightcall.gpslocation.datasource.GpsDatasource
    public void startGps(Function1<? super Location, Unit> callback, Function1<? super Exception, Unit> failure) {
        callback.getClass();
        failure.getClass();
        this.locationCallback.setCallback(callback);
        Context context = getContext();
        int i2 = LocationServices.f31364a;
        Task taskJ = new zzdb(context).j(this.locationSettingsRequest);
        taskJ.e(new fw(new gv((Object) this, (Function1) callback, 19), 6));
        taskJ.c(new lr(failure, 2));
    }

    @Override // com.sightcall.gpslocation.datasource.GpsDatasource
    public void stopGps() {
        this.fusedLocationManager.b(this.locationCallback);
    }
}
