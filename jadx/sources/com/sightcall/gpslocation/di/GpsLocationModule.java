package com.sightcall.gpslocation.di;

import android.content.Context;
import android.location.LocationManager;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.location.LocationServices;
import com.sightcall.gpslocation.GpsRepository;
import com.sightcall.gpslocation.GpsRepositoryImpl;
import com.sightcall.gpslocation.datasource.GpsDatasource;
import com.sightcall.gpslocation.datasource.GpsGmsDatasourceImpl;
import com.sightcall.gpslocation.datasource.GpsNativeDatasourceImpl;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!¢\u0006\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/sightcall/gpslocation/di/GpsLocationModule;", "", "<init>", "()V", "provideGpsRepository", "Lcom/sightcall/gpslocation/GpsRepository;", "gpsRepositoryImpl", "Lcom/sightcall/gpslocation/GpsRepositoryImpl;", "provideGpsRepository$GpsLocation_release", "Companion", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public abstract class GpsLocationModule {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Binds
    public abstract GpsRepository provideGpsRepository$GpsLocation_release(GpsRepositoryImpl gpsRepositoryImpl);

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001¢\u0006\u0002\b\fJ\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\u000f"}, d2 = {"Lcom/sightcall/gpslocation/di/GpsLocationModule$Companion;", "", "<init>", "()V", "provideGpsLocationDataSource", "Lcom/sightcall/gpslocation/datasource/GpsDatasource;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "locationManager", "Landroid/location/LocationManager;", "holder", "Lcom/sightcall/gpslocation/di/Holder;", "provideGpsLocationDataSource$GpsLocation_release", "provideGmsLocationManager", "provideLocationManager", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Provides
        public final Holder provideGmsLocationManager(Context context) {
            context.getClass();
            int i2 = LocationServices.f31364a;
            return new Holder(new zzcg(context));
        }

        @Provides
        public final GpsDatasource provideGpsLocationDataSource$GpsLocation_release(Context context, LocationManager locationManager, Holder holder) {
            context.getClass();
            locationManager.getClass();
            holder.getClass();
            return GoogleApiAvailability.f28961e.b(context, GoogleApiAvailabilityLight.f28963a) == 0 ? new GpsGmsDatasourceImpl(context, locationManager, holder.getFusedLocationManager()) : new GpsNativeDatasourceImpl(locationManager, context);
        }

        @Provides
        public final LocationManager provideLocationManager(Context context) {
            context.getClass();
            Object systemService = context.getSystemService("location");
            systemService.getClass();
            return (LocationManager) systemService;
        }

        private Companion() {
        }
    }
}
