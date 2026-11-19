package ZjTIAZ;

import XqjhMb.DMsjta;
import XqjhMb.GrZpLc;
import android.app.Application;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.util.Pair;
import com.cyberfend.cyfsecurity.CYFMonitor;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import net.rtccloud.sdk.Call;
import wcQZwr.GpYFMu;
import wcQZwr.MrfBl;

/* JADX INFO: loaded from: classes.dex */
public class QYXNEc implements Observer {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f222k = 8581;
    public static int l = 1311;
    public static final MrfBl m = new MrfBl(new Pair("", ""), 0L, 0L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClWSUN f223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f225c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Future f227f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f229i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final KgGan f230j;
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f226e = new LinkedHashSet();
    public final ExecutorService g = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f228h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: ZjTIAZ.QYXNEc$QYXNEc, reason: collision with other inner class name */
    public class CallableC0005QYXNEc implements Callable {
        public CallableC0005QYXNEc() {
        }

        @Override // java.util.concurrent.Callable
        public MrfBl<Pair<String, String>, Long, Long> call() {
            QYXNEc qYXNEc = QYXNEc.this;
            int i2 = QYXNEc.f222k;
            return qYXNEc.a();
        }
    }

    public QYXNEc(Application application, KgGan kgGan) {
        GpYFMu.e(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("GK|GZSCIkX[[\u0015YEQLD_MYG@^\u0001OBJDABZ"), new Throwable[0]);
        this.f225c = SystemClock.uptimeMillis();
        this.f223a = new ClWSUN(application, kgGan);
        this.f230j = kgGan;
    }

    /* JADX INFO: Infinite loop detected, blocks: 24, insns: 0 */
    /* JADX WARN: Code duplicated, block: B:100:0x021a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x0212 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x025d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x0258 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x020c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0212 A[LOOP:1: B:56:0x0212->B:101:0x0212, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:60:0x021e  */
    /* JADX WARN: Code duplicated, block: B:66:0x023e A[LOOP:3: B:66:0x023e->B:108:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:68:0x0246  */
    /* JADX WARN: Code duplicated, block: B:70:0x024a  */
    /* JADX WARN: Code duplicated, block: B:97:0x0235 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0223 A[EDGE_INSN: B:98:0x0223->B:104:? BREAK  A[LOOP:1: B:56:0x0212->B:101:0x0212], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x022c A[SYNTHETIC] */
    public final MrfBl a() throws Throwable {
        ArrayList arrayList;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        ArrayList arrayList2;
        int i7;
        float f2;
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null) {
            int i8 = 1;
            if (arrayList3.size() > 1) {
                synchronized (this.d) {
                    arrayList = new ArrayList(this.d);
                }
                int i9 = 0;
                try {
                    if (!this.f228h.compareAndSet(false, true)) {
                        return null;
                    }
                    try {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        int iA = (int) DMsjta.a(arrayList.size());
                        float[] fArr = new float[iA];
                        float[] fArr2 = new float[iA];
                        float[] fArr3 = new float[iA];
                        float[] fArr4 = new float[iA];
                        float[] fArr5 = new float[9];
                        float[] fArr6 = new float[9];
                        float[] fArr7 = new float[3];
                        long j2 = this.f225c;
                        Iterator it = arrayList.iterator();
                        int i10 = 0;
                        while (true) {
                            i2 = i8;
                            if (!it.hasNext()) {
                                arrayList2 = arrayList;
                                i7 = i9;
                                jUptimeMillis = jUptimeMillis;
                                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                break;
                            }
                            try {
                                i7 = i9;
                                try {
                                    QkthEf qkthEf = (QkthEf) it.next();
                                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    arrayList2 = arrayList;
                                    if (SensorManager.getRotationMatrix(fArr5, fArr6, qkthEf.f231a, qkthEf.f232b)) {
                                        SensorManager.getOrientation(fArr5, fArr7);
                                        float degrees = (float) Math.toDegrees(fArr7[i7]);
                                        float degrees2 = (float) Math.toDegrees(fArr7[i2]);
                                        float degrees3 = (float) Math.toDegrees(fArr7[2]);
                                        float f3 = degrees * (-1.0f);
                                        if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            f3 += 360.0f;
                                        }
                                        fArr[i10] = f3;
                                        fArr2[i10] = degrees2 * (-1.0f);
                                        fArr3[i10] = degrees3;
                                        long jMax = Math.max(0L, qkthEf.f233c - j2);
                                        if (qkthEf.d && i10 != 0) {
                                            long jMax2 = Math.max(0L, qkthEf.f234e);
                                            this.f226e.add(new Pair(Integer.valueOf(i10), Long.valueOf(qkthEf.f233c - j2)));
                                            jMax = jMax2;
                                        }
                                        fArr4[i10] = jMax;
                                    } else {
                                        fArr[i10] = 0.0f;
                                        fArr2[i10] = 0.0f;
                                        fArr3[i10] = 0.0f;
                                        fArr4[i10] = 0.0f;
                                    }
                                    j2 = qkthEf.f233c;
                                    int i11 = i10 + 1;
                                    if (i11 >= iA) {
                                        break;
                                    }
                                    i10 = i11;
                                    fArr6 = fArr6;
                                    i8 = i2;
                                    i9 = i7;
                                    arrayList = arrayList2;
                                    jUptimeMillis = jUptimeMillis;
                                    fArr5 = fArr5;
                                } catch (Exception e2) {
                                    e = e2;
                                    String strA = CNATAC.a("AW|V]FNTx^[qTXV_LX");
                                    String strA2 = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rA]YDLWEQOHF\u0018\u007fmysjl");
                                    Throwable[] thArr = new Throwable[i2];
                                    thArr[0] = e;
                                    GpYFMu.g(strA, strA2, thArr);
                                    GWINqE.b(e);
                                    this.f228h.set(false);
                                    if (l <= 1310) {
                                        if ((f222k ^ 8581) != 0) {
                                            while (true) {
                                                i5 = f222k;
                                                i6 = i5 + 169;
                                                if (i6 != 63) {
                                                    f222k = ((i5 * 92) % 34) >> 122;
                                                } else if (i6 == 164) {
                                                    if (i6 != 336) {
                                                        f222k = pq0.D(f222k, i5, i5, i5);
                                                        break;
                                                    }
                                                } else {
                                                    break;
                                                }
                                            }
                                            while (true) {
                                                f222k = ((f222k + i5) ^ 3086) * 83;
                                                f222k = pq0.D(f222k, i5, i5, i5);
                                            }
                                        } else {
                                            do {
                                                i3 = l;
                                                i4 = i3 + 156;
                                                if (i4 != 49) {
                                                    while (true) {
                                                        l = (l % 28) ^ 5466;
                                                    }
                                                } else if (i4 != 162) {
                                                    l = i3 >> 16;
                                                }
                                            } while (i4 != 264);
                                            while (true) {
                                                l = (l >> 121) ^ 3011;
                                            }
                                        }
                                    }
                                    return m;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                String strA3 = CNATAC.a("AW|V]FNTx^[qTXV_LX");
                                String strA4 = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rA]YDLWEQOHF\u0018\u007fmysjl");
                                Throwable[] thArr2 = new Throwable[i2];
                                thArr2[0] = e;
                                GpYFMu.g(strA3, strA4, thArr2);
                                GWINqE.b(e);
                                this.f228h.set(false);
                                if (l <= 1310) {
                                    if ((f222k ^ 8581) != 0) {
                                        while (true) {
                                            i5 = f222k;
                                            i6 = i5 + 169;
                                            if (i6 != 63) {
                                                f222k = ((i5 * 92) % 34) >> 122;
                                            } else if (i6 == 164) {
                                                if (i6 != 336) {
                                                    f222k = pq0.D(f222k, i5, i5, i5);
                                                    break;
                                                }
                                            } else {
                                                break;
                                                break;
                                            }
                                        }
                                        while (true) {
                                            f222k = ((f222k + i5) ^ 3086) * 83;
                                            f222k = pq0.D(f222k, i5, i5, i5);
                                        }
                                    } else {
                                        do {
                                            i3 = l;
                                            i4 = i3 + 156;
                                            if (i4 != 49) {
                                                while (true) {
                                                    l = (l % 28) ^ 5466;
                                                }
                                            } else if (i4 != 162) {
                                                l = i3 >> 16;
                                            }
                                        } while (i4 != 264);
                                        while (true) {
                                            l = (l >> 121) ^ 3011;
                                        }
                                    }
                                }
                                return m;
                            } catch (Throwable th) {
                                th = th;
                                this.f228h.set(false);
                                throw th;
                            }
                        }
                        Pair pairD = GrZpLc.d(0.6f, fArr);
                        Pair pairD2 = GrZpLc.d(0.6f, fArr2);
                        Pair pairD3 = GrZpLc.d(0.6f, fArr3);
                        Pair pair = new Pair(((String) pairD.first) + ":" + ((String) pairD2.first) + ":" + ((String) pairD3.first), (String) GrZpLc.d(f2, fArr4).first);
                        long jLongValue = ((Long) pairD.second).longValue() + ((Long) pairD2.second).longValue() + ((Long) pairD3.second).longValue();
                        long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
                        GpYFMu.e(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("AW|V]FNTx^[\u001cp@RV]\nhCX@[\n\u0001") + iA + "/" + arrayList2.size(), new Throwable[i7]);
                        GpYFMu.e(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("AW|V]FNTx^[\u001cfrtYEI\u0006xDCJ\n\u0001") + jUptimeMillis2 + CNATAC.a("cV"), new Throwable[0]);
                        MrfBl mrfBl = new MrfBl(pair, Long.valueOf(jLongValue), Long.valueOf((long) iA));
                        this.f228h.set(false);
                        return mrfBl;
                    } catch (Exception e4) {
                        e = e4;
                        i2 = i8;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return m;
    }

    public final void b() {
        try {
            Future future = this.f227f;
            if (future != null && !future.isCancelled() && !this.f227f.isDone()) {
                return;
            }
            this.f227f = this.g.submit(new CallableC0005QYXNEc());
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("}QtAGtZTdCP\u001cPDEW["), e2);
        }
    }

    public final String c() {
        try {
            StringBuilder sb = new StringBuilder();
            for (Pair pair : this.f226e) {
                sb.append(pair.first);
                sb.append(",");
                sb.append(pair.second);
                sb.append(";");
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRLkKHGJ\\@EOFfR@HS"), e2);
            GWINqE.b(e2);
            return "";
        }
    }

    public final MrfBl d() {
        Future future;
        this.f226e.clear();
        MrfBl mrfBlA = null;
        try {
            Future future2 = this.f227f;
            if (future2 != null) {
                try {
                    mrfBlA = (MrfBl) future2.get();
                } catch (InterruptedException | ExecutionException e2) {
                    GpYFMu.g(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016XJ@OEXLZF_O\u0002GEQG\u001d\b") + e2.getMessage(), new Throwable[0]);
                }
                if (mrfBlA == null && (mrfBlA = a()) == null && (future = this.f227f) != null) {
                    try {
                        mrfBlA = (MrfBl) future.get();
                    } catch (InterruptedException | ExecutionException e3) {
                        GpYFMu.g(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016XJ@OEXLZF_O\u0002GEQG\u001d\b") + e3.getMessage(), new Throwable[0]);
                    }
                }
            } else if (mrfBlA == null) {
                mrfBlA = (MrfBl) future.get();
            }
        } catch (Exception e4) {
            GpYFMu.d(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015yEQLD_MYG@^lCMEBCU"), e4);
            GWINqE.b(e4);
        }
        if (mrfBlA != null) {
            return mrfBlA;
        }
        GpYFMu.g(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("AW|V]FNTx^[\u001cRSCkLDXC_jND@\u0002QAQSUFQt|<y{yAE~g4p{glp*_~d~cuu\"eeijeizQ"), new Throwable[0]);
        return m;
    }

    public final boolean e() {
        return this.f223a.m;
    }

    public final void f() {
        ClWSUN clWSUN = this.f223a;
        if (this.d.size() < 128 && !this.f228h.get()) {
            try {
                if (!clWSUN.a()) {
                    GpYFMu.d(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("AW|V]FNTx^[\u001cY_DLLDN^\r\\JWHQWVDRNGV:}}trzD"), new Throwable[0]);
                } else {
                    this.f224b = true;
                    clWSUN.addObserver(this);
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("BLfGV\\JR1CP[\\EC][\n_D_KX\u0010DZ@AURNGV"), e2);
                GWINqE.b(e2);
            }
        }
    }

    public final void g() {
        ClWSUN clWSUN = this.f223a;
        try {
            clWSUN.b();
        } catch (Exception e2) {
            GpYFMu.g(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("BLfGV\\JR1D[NPQ^K]OY\fKOF\\DF"), e2);
        }
        clWSUN.deleteObservers();
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (this.d.size() >= 128) {
                CYFMonitor.f25346b.C();
                g();
                b();
                return;
            }
            if (this.d.size() >= 16 && !this.f229i) {
                this.f229i = true;
                this.f230j.b();
            }
            QkthEf qkthEf = (QkthEf) obj;
            synchronized (this.d) {
                this.d.add(qkthEf);
            }
        } catch (Exception e2) {
            GpYFMu.g(CNATAC.a("AW|V]FNTx^[qTXV_LX"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010NPJAKRF\\Quu<xhzND"), e2);
            GWINqE.b(e2);
        }
    }
}
