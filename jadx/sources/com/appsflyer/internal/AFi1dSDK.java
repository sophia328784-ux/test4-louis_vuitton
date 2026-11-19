package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1dSDK implements SensorEventListener {
    private double AFKeystoreWrapper;
    private final String AFLogger;
    private final int d;
    private final Executor force;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f22659i;
    private final int registerClient;
    private final String unregisterClient;
    private final float[][] v = new float[2][];
    private final long[] w = new long[2];

    public AFi1dSDK(Sensor sensor, ExecutorService executorService) {
        int type = sensor.getType();
        this.d = type;
        String name = sensor.getName();
        name = name == null ? "" : name;
        this.unregisterClient = name;
        String vendor = sensor.getVendor();
        String str = vendor != null ? vendor : "";
        this.AFLogger = str;
        this.registerClient = str.hashCode() + ((name.hashCode() + ((type + 31) * 31)) * 31);
        this.force = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O_, reason: merged with bridge method [inline-methods] */
    public void P_(SensorEvent sensorEvent) {
        long j2 = sensorEvent.timestamp;
        float[] fArr = sensorEvent.values;
        long jCurrentTimeMillis = System.currentTimeMillis();
        float[][] fArr2 = this.v;
        float[] fArr3 = fArr2[0];
        if (fArr3 == null) {
            fArr2[0] = Arrays.copyOf(fArr, fArr.length);
            this.w[0] = jCurrentTimeMillis;
            return;
        }
        float[] fArr4 = fArr2[1];
        if (fArr4 == null) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, fArr.length);
            this.v[1] = fArrCopyOf;
            this.w[1] = jCurrentTimeMillis;
            this.AFKeystoreWrapper = AFLogger(fArr3, fArrCopyOf);
            return;
        }
        if (50000000 <= j2 - this.f22659i) {
            this.f22659i = j2;
            if (Arrays.equals(fArr4, fArr)) {
                this.w[1] = jCurrentTimeMillis;
                return;
            }
            double dAFLogger = AFLogger(fArr3, fArr);
            if (dAFLogger > this.AFKeystoreWrapper) {
                this.v[1] = Arrays.copyOf(fArr, fArr.length);
                this.w[1] = jCurrentTimeMillis;
                this.AFKeystoreWrapper = dAFLogger;
            }
        }
    }

    private Map<String, Object> registerClient() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.d));
        concurrentHashMap.put("sN", this.unregisterClient);
        concurrentHashMap.put("sV", this.AFLogger);
        float[] fArr = this.v[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", unregisterClient(fArr));
        }
        float[] fArr2 = this.v[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", unregisterClient(fArr2));
        }
        return concurrentHashMap;
    }

    private static List<Float> unregisterClient(float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f2 : fArr) {
            arrayList.add(Float.valueOf(f2));
        }
        return arrayList;
    }

    public final void AFLogger(Map<AFi1dSDK, Map<String, Object>> map, boolean z) {
        if (this.v[0] == null) {
            if (map.containsKey(this)) {
                return;
            }
            map.put(this, registerClient());
            return;
        }
        map.put(this, registerClient());
        if (z) {
            int length = this.v.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.v[i2] = null;
            }
            int length2 = this.w.length;
            for (int i3 = 0; i3 < length2; i3++) {
                this.w[i3] = 0;
            }
            this.AFKeystoreWrapper = 0.0d;
            this.f22659i = 0L;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AFi1dSDK) {
            AFi1dSDK aFi1dSDK = (AFi1dSDK) obj;
            int i2 = aFi1dSDK.d;
            String str = aFi1dSDK.unregisterClient;
            String str2 = aFi1dSDK.AFLogger;
            if (this.d == i2 && this.unregisterClient.equals(str) && this.AFLogger.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.registerClient;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.force.execute(new m(this, sensorEvent, 3));
        } else {
            P_(sensorEvent);
        }
    }

    private static double AFLogger(float[] fArr, float[] fArr2) {
        int iMin = Math.min(fArr.length, fArr2.length);
        double dPow = 0.0d;
        for (int i2 = 0; i2 < iMin; i2++) {
            dPow += StrictMath.pow(fArr[i2] - fArr2[i2], 2.0d);
        }
        return Math.sqrt(dPow);
    }
}
