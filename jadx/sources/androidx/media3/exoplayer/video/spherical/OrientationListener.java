package androidx.media3.exoplayer.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import defpackage.r81;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class OrientationListener implements SensorEventListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f16001b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f16002c = new float[16];
    public final float[] d = new float[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f16003e = new float[3];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Display f16004f;
    public final Listener[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f16005h;

    public interface Listener {
        void a(float f2, float[] fArr);
    }

    public OrientationListener(Display display, Listener... listenerArr) {
        this.f16004f = display;
        this.g = listenerArr;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        int i2;
        float[] fArr = sensorEvent.values;
        float[] fArr2 = this.f16001b;
        SensorManager.getRotationMatrixFromVector(fArr2, fArr);
        int rotation = this.f16004f.getRotation();
        float[] fArr3 = this.f16002c;
        if (rotation != 0) {
            int i3 = 129;
            if (rotation != 1) {
                i2 = 130;
                if (rotation != 2) {
                    if (rotation != 3) {
                        r81.b();
                        return;
                    } else {
                        i3 = 130;
                        i2 = 1;
                    }
                }
            } else {
                i2 = 129;
                i3 = 2;
            }
            System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
            SensorManager.remapCoordinateSystem(fArr3, i3, i2, fArr2);
        }
        SensorManager.remapCoordinateSystem(fArr2, 1, 131, fArr3);
        float[] fArr4 = this.f16003e;
        SensorManager.getOrientation(fArr3, fArr4);
        float f2 = fArr4[2];
        Matrix.rotateM(fArr2, 0, 90.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        boolean z = this.f16005h;
        float[] fArr5 = this.d;
        if (!z) {
            FrameRotationQueue.a(fArr5, fArr2);
            this.f16005h = true;
        }
        System.arraycopy(fArr2, 0, fArr3, 0, fArr3.length);
        Matrix.multiplyMM(fArr2, 0, fArr3, 0, fArr5, 0);
        for (Listener listener : this.g) {
            listener.a(f2, fArr2);
        }
    }
}
