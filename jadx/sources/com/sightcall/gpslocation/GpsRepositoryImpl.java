package com.sightcall.gpslocation;

import com.sightcall.gpslocation.datasource.GpsDatasource;
import com.sightcall.pratik.Result;
import com.sightcall.universal.agent.Location;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R0\u0010\u0006\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t\u0012\b\u0012\u00060\nj\u0002`\u000b0\b0\u0007X\u0096\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0013¨\u0006\u0019"}, d2 = {"Lcom/sightcall/gpslocation/GpsRepositoryImpl;", "Lcom/sightcall/gpslocation/GpsRepository;", "gpsDataSource", "Lcom/sightcall/gpslocation/datasource/GpsDatasource;", "<init>", "(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)V", Location.TYPE, "Lkotlinx/coroutines/flow/Flow;", "Lcom/sightcall/pratik/Result;", "Landroid/location/Location;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "getLocations$annotations", "()V", "getLocations", "()Lkotlinx/coroutines/flow/Flow;", "hasGpsFeature", "", "getHasGpsFeature", "()Z", "hasPermissions", "getHasPermissions", "isGpsEnabled", "stopGPS", "", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GpsRepositoryImpl implements GpsRepository {
    private final GpsDatasource gpsDataSource;
    private final Flow<Result<android.location.Location, Exception>> locations;

    @Inject
    public GpsRepositoryImpl(GpsDatasource gpsDatasource) {
        gpsDatasource.getClass();
        this.gpsDataSource = gpsDatasource;
        this.locations = FlowKt.d(new GpsRepositoryImpl$locations$1(this, null));
    }

    public static /* synthetic */ void getLocations$annotations() {
    }

    @Override // com.sightcall.gpslocation.GpsRepository
    public boolean getHasGpsFeature() {
        return this.gpsDataSource.hasGpsFeature();
    }

    @Override // com.sightcall.gpslocation.GpsRepository
    public boolean getHasPermissions() {
        return this.gpsDataSource.checkPermission();
    }

    @Override // com.sightcall.gpslocation.GpsRepository
    public Flow<Result<android.location.Location, Exception>> getLocations() {
        return this.locations;
    }

    @Override // com.sightcall.gpslocation.GpsRepository
    public boolean isGpsEnabled() {
        return this.gpsDataSource.isGPSEnabled();
    }

    @Override // com.sightcall.gpslocation.GpsRepository
    public void stopGPS() {
        this.gpsDataSource.stopGps();
    }
}
