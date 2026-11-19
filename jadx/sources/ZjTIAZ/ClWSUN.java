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
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
class ClWSUN extends Observable implements SensorEventListener {
    public static String F;
    public static String G;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KgGan f128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SensorManager f129c;
    public Sensor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Sensor f130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Sensor f131f;
    public HandlerThread g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f132h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f133i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f134j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f135k = false;
    public boolean l = false;
    public boolean m = false;
    public long n = 0;
    public float[] o = new float[3];
    public float[] p = new float[3];
    public boolean q = true;
    public static String r = CNATAC.a("[KgVT[\\TtC\u0015SG_RV]K_EB@\u000f\\HQWAKCU[");
    public static String s = CNATAC.a("}@{@\\@");
    public static String t = CNATAC.a("CLf@Z\\H\u0000\\PRRPBXUL^N^");
    public static String u = CNATAC.a("OIgVRVV\u0000cTRUFBRJLN\u0005");
    public static String v = CNATAC.a("M|S|A[JNePAUZX{QZ^NBH\\");
    public static String w = CNATAC.a("|@rZ@FJR]XFHPXRJ\teYEH@[QUKLJ\u0005");
    public static String x = CNATAC.a("FD{W_W]tyCP]Q\u0016[WFZN^\rG\\\u0010OWOH\t\u0006DIVtth=lzGYagqg");
    public static String y = CNATAC.a("K]vVCFFO\u007f\u0011ZR\u0015QRL]CEK\r]J^RMQ\u0004VCU^Qy~");
    public static String z = CNATAC.a("[KgV_[NB}T\u0015SG_RV]K_EB@\u000fCDLPKW\u0006CIL{523");
    public static String A = CNATAC.a("@J5@V\\\\OcB\u0015]CW^THHGI");
    public static String B = CNATAC.a("AW|V]FNTx^[\u001cY_DLLDN^\rOCBDCG]\u0005TBOQioyo{{");
    public static String C = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010NPJAKRF\\Quu<xhzND");
    public static String D = CNATAC.a("HD|_VV\u000fT~\u0011GYR_DLLX\u000bC_GJ^UCWMJH\u0007DQioys{m");
    public static String E = CNATAC.a("CLf@Z\\H\u0000VCTJ\\BN");

    static {
        CNATAC.a("AW|V]FNTx^[\u001cY_DLLDN^\r@@D\u0001KMMQOFDQ`~x");
        F = CNATAC.a("CLf@Z\\H\u0000PRVYYSEWDO_I_");
        G = CNATAC.a("AW|V]FNTx^[p\\EC]GOY");
    }

    public ClWSUN(Application application, KgGan kgGan) {
        this.f128b = kgGan;
        try {
            this.f129c = (SensorManager) application.getApplicationContext().getSystemService(s);
        } catch (NullPointerException e2) {
            GpYFMu.d(G, y, e2);
            GWINqE.b(e2);
        }
    }

    public final synchronized boolean a() {
        HandlerThread handlerThread = this.g;
        if (handlerThread != null && handlerThread.isAlive()) {
            GpYFMu.g(G, B, new Throwable[0]);
            return true;
        }
        if (!this.f132h && !this.f133i && !this.f134j) {
            this.d = this.f129c.getDefaultSensor(1);
            Sensor defaultSensor = this.f129c.getDefaultSensor(2);
            this.f130e = defaultSensor;
            if (this.d == null && defaultSensor == null) {
                GpYFMu.d(G, A, new Throwable[0]);
                return false;
            }
            HandlerThread handlerThread2 = new HandlerThread(v);
            this.g = handlerThread2;
            handlerThread2.start();
            Looper looper = this.g.getLooper();
            if (looper == null) {
                GpYFMu.d(G, x, new Throwable[0]);
                return false;
            }
            Handler handler = new Handler(looper);
            GpYFMu.d(G, w + Thread.currentThread(), new Throwable[0]);
            Sensor sensor = this.d;
            if (sensor != null) {
                this.f132h = this.f129c.registerListener(this, sensor, 1, handler);
            }
            Sensor sensor2 = this.f130e;
            if (sensor2 != null) {
                this.f133i = this.f129c.registerListener(this, sensor2, 1, handler);
            }
            Sensor defaultSensor2 = this.f129c.getDefaultSensor(9);
            this.f131f = defaultSensor2;
            if (defaultSensor2 != null) {
                this.f134j = this.f129c.registerListener(this, defaultSensor2, 1, handler);
            }
            if (this.f134j) {
                this.f129c.unregisterListener(this, this.d);
                this.f132h = false;
                ZxDSl.f347f = 1;
            } else {
                ZxDSl.f347f = 0;
            }
            this.q = true;
            this.n = SystemClock.uptimeMillis();
            if ((this.f132h || this.f134j) && this.f133i) {
                return true;
            }
            GpYFMu.d(G, D, new Throwable[0]);
            if (!this.f132h) {
                GpYFMu.d(G, F, new Throwable[0]);
            } else if (!this.f134j) {
                GpYFMu.d(G, E, new Throwable[0]);
            }
            if (!this.f133i) {
                GpYFMu.d(G, t, new Throwable[0]);
            }
            KgGan kgGan = this.f128b;
            if (kgGan != null) {
                SDKInitFailure sDKInitFailure = SDKInitFailure.MOTION_SENSOR_FAILURE;
                kgGan.a();
            }
            b();
            return false;
        }
        GpYFMu.g(G, u, new Throwable[0]);
        return true;
    }

    public final synchronized void b() {
        Sensor sensor;
        Sensor sensor2;
        Sensor sensor3;
        try {
            GpYFMu.d(G, r + Thread.currentThread(), new Throwable[0]);
            if (this.f133i && (sensor3 = this.f130e) != null) {
                this.f129c.unregisterListener(this, sensor3);
                this.f133i = false;
                this.f130e = null;
            }
            if (this.f134j && (sensor2 = this.f131f) != null) {
                this.f129c.unregisterListener(this, sensor2);
                this.f134j = false;
                this.f131f = null;
            }
            if (this.f132h && (sensor = this.d) != null) {
                this.f129c.unregisterListener(this, sensor);
                this.f132h = false;
                this.d = null;
            }
            this.m = false;
            HandlerThread handlerThread = this.g;
            if (handlerThread != null && handlerThread.isAlive()) {
                this.g.quitSafely();
                this.g = null;
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
            if (!this.m && sensorEvent.accuracy == 0) {
                GpYFMu.g(G, z, new Throwable[0]);
                this.m = true;
            }
            int type = sensorEvent.sensor.getType();
            if (type == 9 || type == 1) {
                this.o = (float[]) sensorEvent.values.clone();
                this.f135k = true;
            } else if (type == 2) {
                this.p = (float[]) sensorEvent.values.clone();
                this.l = true;
            }
            if (this.f135k && this.l) {
                long j2 = jUptimeMillis - this.n;
                if (j2 >= 100 || ZxDSl.d == 1) {
                    this.n = jUptimeMillis;
                    int i2 = ZxDSl.f345c;
                    ZxDSl.d = 0;
                    setChanged();
                    notifyObservers(new QkthEf(this.o, this.p, this.n, this.q, j2));
                    this.f135k = false;
                    this.l = false;
                    this.q = false;
                }
            }
        } catch (Exception e2) {
            GpYFMu.g(G, C, e2);
            GWINqE.b(e2);
        } catch (OutOfMemoryError e3) {
            GpYFMu.d(G, e3.getMessage(), new Throwable[0]);
        }
    }
}
