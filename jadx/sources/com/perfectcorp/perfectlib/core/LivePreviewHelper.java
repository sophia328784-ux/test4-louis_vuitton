package com.perfectcorp.perfectlib.core;

import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final class LivePreviewHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SensorManager f40086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Sensor f40087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowManager f40088c;
    public final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f40089e = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f40090f;
    public volatile int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f40091h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SensorEventListener f40092i;

    public LivePreviewHelper() {
        a aVar = new a();
        aVar.f40097b = this;
        this.f40092i = aVar;
        SensorManager sensorManager = (SensorManager) PfCommons.b().getSystemService("sensor");
        this.f40086a = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(9);
        defaultSensor = defaultSensor == null ? sensorManager.getDefaultSensor(1) : defaultSensor;
        this.f40087b = defaultSensor;
        if (defaultSensor == null) {
            Log.d("LivePreviewHelper", "sensor is null");
        }
        Object systemService = PfCommons.b().getSystemService("window");
        Objects.requireNonNull(systemService, "Can't get WINDOW_SERVICE.");
        this.f40088c = (WindowManager) systemService;
    }
}
