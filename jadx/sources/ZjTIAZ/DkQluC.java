package ZjTIAZ;

import android.app.Application;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import com.cyberfend.cyfsecurity.SDKInitFailure;
import java.util.Observable;
import net.rtccloud.sdk.Call;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
class DkQluC extends Observable implements SensorEventListener {
    public static String I;
    public static String J;
    public static String K;
    public static String L;
    public static String M;
    public static String N;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KgGan f164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SensorManager f165c;
    public Sensor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Sensor f166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public HandlerThread f167f;
    public long g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f168h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f169i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f170j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f171k = false;
    public boolean l = false;
    public float m = -1.0f;
    public float n = -1.0f;
    public float o = -1.0f;
    public float p = -1.0f;
    public float q = -1.0f;
    public float r = -1.0f;
    public float s = -1.0f;
    public float t = -1.0f;
    public float u = -1.0f;
    public float v = Call.Parameters.DEFAULT_CAMERA_ZOOM;
    public final float[] w = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
    public int x = 0;
    public boolean y = true;
    public static String z = CNATAC.a("FD{W_W]tyCP]Q\u0016[WFZN^\rG\\\u0010OWOH\t\u0006DIVtth=lzGYagqg");
    public static String A = CNATAC.a("OIgVRVV\u0000cTRUFBRJLN\u0007\f^EF@QKMC");
    public static String B = CNATAC.a("OIgVRVV\u0000cTRUFBRJLN\u0005");
    public static String C = CNATAC.a("}QtAGsCL]XFHPXRJ\t\u007fE^HIFCUGQ\u0004HISAWtwunjzNU`3");
    public static String D = CNATAC.a(".D{W\u0013sLCt]PNZ[RLLX\u000b_YO[ER\u0002");
    public static String E = CNATAC.a("K]vVCFFO\u007f\u0011ZR\u0015QRL]CEK\r]J^RMQ\u0004VCU^Qy~");
    public static String F = CNATAC.a("}@{@\\@");
    public static String G = CNATAC.a("CJaZ\\\\cIbEPRPD");
    public static String H = CNATAC.a("M|S~\\FFO\u007f}\\OASY][");

    static {
        CNATAC.a("AW|V]FNTx^[\u001cY_DLLDN^\r@@D\u0001KMMQOFDQ`~x");
        I = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010LMWMJH\u0007MN\u007fuh");
        J = CNATAC.a("CJaZ\\\\cIbEPRPDxwd");
        K = CNATAC.a("I\\g\\`Q@Pt\u0011FHTBBK\t");
        L = CNATAC.a("HD|_VV\u000fT~\u0011GYR_DLLX\u000bABZF_O\u0002OMVRBF]h");
        M = CNATAC.a("[KgV_[NB}T\u0015QZB^WG\nXIC]@BR\u0002GEQG\t\u0006\u0016");
        N = CNATAC.a("}QtAGsCL]XFHPXRJ\txNKD][USKMC\u0005KH\\Quu<qwlTU|vff");
    }

    public DkQluC(Application application, KgGan kgGan) {
        this.f164b = kgGan;
        try {
            this.f165c = (SensorManager) application.getApplicationContext().getSystemService(F);
        } catch (Exception e2) {
            GpYFMu.d(G, E, e2);
            GWINqE.b(e2);
        }
    }

    public final float[] a(float[] fArr) {
        float fNanoTime = System.nanoTime();
        int i2 = this.x + 1;
        this.x = i2;
        float f2 = 1.0f / (i2 / ((fNanoTime - this.v) / 1.0E9f));
        if (Float.isNaN(f2) || Float.isInfinite(f2)) {
            f2 = 0.0f;
        }
        float f3 = 0.18f / (f2 + 0.18f);
        float[] fArr2 = this.w;
        float f4 = 1.0f - f3;
        fArr2[0] = (fArr[0] * f4) + (fArr2[0] * f3);
        fArr2[1] = (fArr[1] * f4) + (fArr2[1] * f3);
        fArr2[2] = (f4 * fArr[2]) + (f3 * fArr2[2]);
        float[] fArr3 = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        float f5 = fArr[0] - fArr2[0];
        fArr3[0] = f5;
        fArr3[1] = fArr[1] - fArr2[1];
        fArr3[2] = fArr[2] - fArr2[2];
        if (Float.isNaN(f5) || Float.isInfinite(fArr3[0])) {
            fArr3[0] = 0.0f;
        }
        if (Float.isNaN(fArr3[1]) || Float.isInfinite(fArr3[1])) {
            fArr3[1] = 0.0f;
        }
        if (!Float.isNaN(fArr3[2]) && !Float.isInfinite(fArr3[2])) {
            return fArr3;
        }
        fArr3[2] = 0.0f;
        return fArr3;
    }

    public final synchronized boolean b() {
        HandlerThread handlerThread = this.f167f;
        if (handlerThread != null && handlerThread.isAlive()) {
            GpYFMu.g(G, A, new Throwable[0]);
            return true;
        }
        if (!this.f168h && !this.f169i) {
            GpYFMu.d(G, N + Thread.currentThread(), new Throwable[0]);
            this.d = this.f165c.getDefaultSensor(1);
            this.f166e = this.f165c.getDefaultSensor(4);
            HandlerThread handlerThread2 = new HandlerThread(H);
            this.f167f = handlerThread2;
            handlerThread2.start();
            Looper looper = this.f167f.getLooper();
            if (looper == null) {
                GpYFMu.d(G, z, new Throwable[0]);
                return false;
            }
            Handler handler = new Handler(looper);
            this.f168h = this.f165c.registerListener(this, this.d, 1, handler);
            this.f169i = this.f165c.registerListener(this, this.f166e, 1, handler);
            GpYFMu.e(G, K + this.f169i + D + this.f168h, new Throwable[0]);
            boolean z2 = this.f168h;
            if (z2 || this.f169i) {
                this.f171k = !z2;
                this.f170j = !this.f169i;
                this.g = SystemClock.uptimeMillis();
                this.v = System.nanoTime();
                this.x = 0;
                this.y = true;
                return true;
            }
            GpYFMu.d(G, L, new Throwable[0]);
            KgGan kgGan = this.f164b;
            if (kgGan != null) {
                SDKInitFailure sDKInitFailure = SDKInitFailure.MOTION_SENSOR_FAILURE;
                kgGan.a();
            }
            c();
            return false;
        }
        GpYFMu.g(G, B, new Throwable[0]);
        return true;
    }

    public final synchronized void c() {
        Sensor sensor;
        Sensor sensor2;
        try {
            GpYFMu.d(G, C + Thread.currentThread(), new Throwable[0]);
            if (this.f169i && (sensor2 = this.f166e) != null) {
                this.f165c.unregisterListener(this, sensor2);
                this.f169i = false;
                this.f166e = null;
            }
            if (this.f168h && (sensor = this.d) != null) {
                this.f165c.unregisterListener(this, sensor);
                this.f168h = false;
                this.d = null;
            }
            this.l = false;
            HandlerThread handlerThread = this.f167f;
            if (handlerThread != null && handlerThread.isAlive()) {
                this.f167f.quitSafely();
                this.f167f = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (!this.l && sensorEvent.accuracy == 0) {
                GpYFMu.g(G, M, new Throwable[0]);
                this.l = true;
            }
            int type = sensorEvent.sensor.getType();
            if (type == 4) {
                if (this.f169i) {
                    float[] fArr = sensorEvent.values;
                    this.s = fArr[0];
                    this.t = fArr[1];
                    this.u = fArr[2];
                    this.f170j = true;
                }
            } else if (type == 1 && this.f168h) {
                float[] fArr2 = sensorEvent.values;
                this.m = fArr2[0];
                this.n = fArr2[1];
                this.o = fArr2[2];
                float[] fArrA = a(fArr2);
                float f2 = fArrA[0];
                this.p = f2;
                float f3 = fArrA[1];
                this.q = f3;
                float f4 = fArrA[2];
                this.m *= -1.0f;
                this.n *= -1.0f;
                this.o *= -1.0f;
                this.p = f2 * (-1.0f);
                this.q = f3 * (-1.0f);
                this.r = f4 * (-1.0f);
                this.f171k = true;
            }
            if (this.f170j && this.f171k) {
                long j2 = jUptimeMillis - this.g;
                if (j2 >= 100 || ZxDSl.f345c == 1) {
                    this.g = jUptimeMillis;
                    int i2 = ZxDSl.f345c;
                    ZxDSl.f345c = 0;
                    setChanged();
                    notifyObservers(new QwtCVJ(this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.g, this.y, j2));
                    this.f170j = !this.f169i;
                    this.f171k = !this.f168h;
                    this.y = false;
                }
            }
        } catch (Exception e2) {
            GpYFMu.g(G, I, e2);
            GWINqE.b(e2);
        } catch (OutOfMemoryError e3) {
            GpYFMu.d(J, e3.getMessage(), new Throwable[0]);
        }
    }
}
