package com.sightcall.gpslocation.datasource;

import android.location.Location;
import defpackage.dy;
import defpackage.mt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u00052\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\b\u0012\u00060\bj\u0002`\t\u0012\u0004\u0012\u00020\u00030\u0005H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\fH&J\b\u0010\u000e\u001a\u00020\fH&¨\u0006\u000fÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/gpslocation/datasource/GpsDatasource;", "", "startGps", "", "callback", "Lkotlin/Function1;", "Landroid/location/Location;", "failure", "Ljava/lang/Exception;", "Lkotlin/Exception;", "stopGps", "hasGpsFeature", "", "checkPermission", "isGPSEnabled", "GpsLocation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface GpsDatasource {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class DefaultImpls {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void startGps$default(GpsDatasource gpsDatasource, Function1 function1, Function1 function2, int i2, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: startGps");
            return;
        }
        if ((i2 & 2) != 0) {
            function2 = new dy(19);
        }
        gpsDatasource.startGps(function1, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static Unit startGps$lambda$0(Exception exc) {
        exc.getClass();
        return Unit.f71739a;
    }

    boolean checkPermission();

    boolean hasGpsFeature();

    boolean isGPSEnabled();

    void startGps(Function1<? super Location, Unit> callback, Function1<? super Exception, Unit> failure);

    void stopGps();
}
