package androidx.appcompat.app;

import android.content.Context;
import android.location.LocationManager;

/* JADX INFO: loaded from: classes.dex */
class TwilightManager {
    public static TwilightManager d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocationManager f873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TwilightState f874c = new TwilightState();

    public static class TwilightState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f875a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f876b;
    }

    public TwilightManager(Context context, LocationManager locationManager) {
        this.f872a = context;
        this.f873b = locationManager;
    }
}
