package com.perfectcorp.perfectlib.core;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* JADX INFO: loaded from: classes3.dex */
final class a implements SensorEventListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ LivePreviewHelper f40097b;

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        synchronized (this.f40097b.d) {
            try {
                int rotation = this.f40097b.f40088c.getDefaultDisplay().getRotation();
                if (rotation == 0) {
                    float[] fArr = this.f40097b.f40089e;
                    float[] fArr2 = sensorEvent.values;
                    fArr[0] = fArr2[0];
                    fArr[1] = fArr2[1];
                    fArr[2] = fArr2[2];
                } else if (rotation == 1) {
                    float[] fArr3 = this.f40097b.f40089e;
                    float[] fArr4 = sensorEvent.values;
                    fArr3[0] = -fArr4[1];
                    fArr3[1] = fArr4[0];
                    fArr3[2] = fArr4[2];
                } else if (rotation == 2) {
                    float[] fArr5 = this.f40097b.f40089e;
                    float[] fArr6 = sensorEvent.values;
                    fArr5[0] = -fArr6[0];
                    fArr5[1] = -fArr6[1];
                    fArr5[2] = fArr6[2];
                } else if (rotation == 3) {
                    float[] fArr7 = this.f40097b.f40089e;
                    float[] fArr8 = sensorEvent.values;
                    fArr7[0] = fArr8[1];
                    fArr7[1] = -fArr8[0];
                    fArr7[2] = fArr8[2];
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
