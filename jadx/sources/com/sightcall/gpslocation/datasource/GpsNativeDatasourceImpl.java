package com.sightcall.gpslocation.datasource;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Looper;
import com.sightcall.gpslocation.NoProviderFoundException;
import com.sightcall.pratik.logs.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001aB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ4\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00100\u00122\u0016\u0010\u0014\u001a\u0012\u0012\b\u0012\u00060\u0015j\u0002`\u0016\u0012\u0004\u0012\u00020\u00100\u0012H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl;", "Lcom/sightcall/gpslocation/datasource/GpsDatasource;", "Lcom/sightcall/gpslocation/datasource/GpsDatasourceImpl;", "locationManager", "Landroid/location/LocationManager;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/location/LocationManager;Landroid/content/Context;)V", "getLocationManager", "()Landroid/location/LocationManager;", "getContext", "()Landroid/content/Context;", "locationListener", "Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;", "startGps", "", "callback", "Lkotlin/Function1;", "Landroid/location/Location;", "failure", "Ljava/lang/Exception;", "Lkotlin/Exception;", "stopGps", "checkPermission", "", "MyLocationListener", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GpsNativeDatasourceImpl extends GpsDatasourceImpl implements GpsDatasource {
    private final Context context;
    private final MyLocationListener locationListener;
    private final LocationManager locationManager;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0006H\u0016R(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/sightcall/gpslocation/datasource/GpsNativeDatasourceImpl$MyLocationListener;", "Landroid/location/LocationListener;", "<init>", "()V", "callback", "Lkotlin/Function1;", "Landroid/location/Location;", "", "getCallback", "()Lkotlin/jvm/functions/Function1;", "setCallback", "(Lkotlin/jvm/functions/Function1;)V", "onLocationChanged", "location", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MyLocationListener implements LocationListener {
        private Function1<? super Location, Unit> callback;

        public final Function1<Location, Unit> getCallback() {
            return this.callback;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            location.getClass();
            Function1<? super Location, Unit> function1 = this.callback;
            if (function1 != null) {
                function1.invoke(location);
            }
        }

        public final void setCallback(Function1<? super Location, Unit> function1) {
            this.callback = function1;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GpsNativeDatasourceImpl(LocationManager locationManager, Context context) {
        super(context, locationManager);
        locationManager.getClass();
        context.getClass();
        this.locationManager = locationManager;
        this.context = context;
        this.locationListener = new MyLocationListener();
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
        try {
            this.locationListener.setCallback(callback);
            String bestProvider = getLocationManager().getBestProvider(new Criteria(), true);
            if (bestProvider != null) {
                getLocationManager().requestLocationUpdates(bestProvider, 1000L, 20.0f, this.locationListener, Looper.getMainLooper());
            } else {
                failure.invoke(new NoProviderFoundException());
            }
        } catch (SecurityException e2) {
            Logger.INSTANCE.getTag();
            failure.invoke(e2);
        }
    }

    @Override // com.sightcall.gpslocation.datasource.GpsDatasource
    public void stopGps() {
        getLocationManager().removeUpdates(this.locationListener);
    }
}
