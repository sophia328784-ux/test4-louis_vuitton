package ZjTIAZ;

import XqjhMb.DMsjta;
import XqjhMb.GrZpLc;
import android.app.Application;
import android.os.SystemClock;
import android.util.Pair;
import com.cyberfend.cyfsecurity.CYFMonitor;
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
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import wcQZwr.GpYFMu;
import wcQZwr.MrfBl;

/* JADX INFO: loaded from: classes.dex */
public class Gvcplk implements Observer {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f193k = 5403;
    public static final MrfBl l = new MrfBl(new Pair("", ""), 0L, 0L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DkQluC f194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f196c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Future f197e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f199h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final KgGan f200i;
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f198f = new AtomicBoolean(false);
    public final LinkedHashSet g = new LinkedHashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ExecutorService f201j = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: ZjTIAZ.Gvcplk$Gvcplk, reason: collision with other inner class name */
    public class CallableC0002Gvcplk implements Callable {
        public CallableC0002Gvcplk() {
        }

        @Override // java.util.concurrent.Callable
        public MrfBl<Pair<String, String>, Long, Long> call() {
            Gvcplk gvcplk = Gvcplk.this;
            int i2 = Gvcplk.f193k;
            return gvcplk.a();
        }
    }

    public Gvcplk(Application application, KgGan kgGan) {
        GpYFMu.e(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("GK|GZSCIkX[[\u0015[XL@EE\f@OAQFGQ"), new Throwable[0]);
        this.f196c = SystemClock.uptimeMillis();
        this.f194a = new DkQluC(application, kgGan);
        this.f200i = kgGan;
    }

    public final MrfBl a() {
        ArrayList arrayList;
        ArrayList arrayList2;
        float[] fArr;
        float[] fArr2;
        ArrayList arrayList3 = this.d;
        if (arrayList3 == null || arrayList3.size() <= 1) {
            return l;
        }
        synchronized (this.d) {
            arrayList = new ArrayList(this.d);
        }
        try {
            if (!this.f198f.compareAndSet(false, true)) {
                return null;
            }
            try {
                long jUptimeMillis = SystemClock.uptimeMillis();
                int iA = (int) DMsjta.a(arrayList.size());
                float[] fArr3 = new float[iA];
                float[] fArr4 = new float[iA];
                float[] fArr5 = new float[iA];
                float[] fArr6 = new float[iA];
                float[] fArr7 = new float[iA];
                float[] fArr8 = new float[iA];
                float[] fArr9 = new float[iA];
                float[] fArr10 = new float[iA];
                float[] fArr11 = new float[iA];
                float[] fArr12 = new float[iA];
                long j2 = this.f196c;
                Iterator it = arrayList.iterator();
                int i2 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        arrayList2 = arrayList;
                        fArr = fArr10;
                        fArr2 = fArr11;
                        break;
                    }
                    arrayList2 = arrayList;
                    QwtCVJ qwtCVJ = (QwtCVJ) it.next();
                    long j3 = j2;
                    fArr3[i2] = qwtCVJ.d;
                    fArr4[i2] = qwtCVJ.f238e;
                    fArr5[i2] = qwtCVJ.f239f;
                    fArr6[i2] = qwtCVJ.f235a;
                    fArr7[i2] = qwtCVJ.f236b;
                    fArr8[i2] = qwtCVJ.f237c;
                    fArr9[i2] = qwtCVJ.g;
                    fArr10[i2] = qwtCVJ.f240h;
                    fArr11[i2] = qwtCVJ.f241i;
                    fArr = fArr10;
                    fArr2 = fArr11;
                    long jMax = Math.max(0L, qwtCVJ.f242j - j3);
                    if (qwtCVJ.f243k && i2 != 0) {
                        long jMax2 = Math.max(0L, qwtCVJ.l);
                        this.g.add(new Pair(Integer.valueOf(i2), Long.valueOf(qwtCVJ.f242j - j3)));
                        jMax = jMax2;
                    }
                    fArr12[i2] = jMax;
                    SystemClock.uptimeMillis();
                    j2 = qwtCVJ.f242j;
                    int i3 = i2 + 1;
                    if (i3 >= iA) {
                        break;
                    }
                    i2 = i3;
                    fArr10 = fArr;
                    arrayList = arrayList2;
                    fArr11 = fArr2;
                    it = it;
                }
                Pair pairD = GrZpLc.d(0.6f, fArr3);
                Pair pairD2 = GrZpLc.d(0.6f, fArr4);
                Pair pairD3 = GrZpLc.d(0.6f, fArr5);
                Pair pairD4 = GrZpLc.d(0.6f, fArr6);
                Pair pairD5 = GrZpLc.d(0.6f, fArr7);
                Pair pairD6 = GrZpLc.d(0.6f, fArr8);
                Pair pairD7 = GrZpLc.d(0.6f, fArr9);
                Pair pairD8 = GrZpLc.d(0.6f, fArr);
                Pair pairD9 = GrZpLc.d(0.6f, fArr2);
                Pair pair = new Pair(((String) pairD.first) + ":" + ((String) pairD2.first) + ":" + ((String) pairD3.first) + ":" + ((String) pairD4.first) + ":" + ((String) pairD5.first) + ":" + ((String) pairD6.first) + ":" + ((String) pairD7.first) + ":" + ((String) pairD8.first) + ":" + ((String) pairD9.first), (String) GrZpLc.d(Call.Parameters.DEFAULT_CAMERA_ZOOM, fArr12).first);
                long jLongValue = ((Long) pairD.second).longValue() + ((Long) pairD2.second).longValue() + ((Long) pairD3.second).longValue() + ((Long) pairD4.second).longValue() + ((Long) pairD5.second).longValue() + ((Long) pairD6.second).longValue() + ((Long) pairD7.second).longValue() + ((Long) pairD8.second).longValue() + ((Long) pairD9.second).longValue();
                long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
                String strA = CNATAC.a("CJaZ\\\\bA\u007fPRYG");
                StringBuilder sb = new StringBuilder();
                sb.append(CNATAC.a("CJaZ\\\\\u000fegT[H\u0015uXMG^\u0011\f"));
                sb.append(iA);
                sb.append("/");
                sb.append(arrayList2.size());
                GpYFMu.e(strA, sb.toString(), new Throwable[0]);
                String strA2 = CNATAC.a("CJaZ\\\\bA\u007fPRYG");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(CNATAC.a("CJaZ\\\\\u000fsUrTPV\u001bcQDO\u0011\f"));
                sb2.append(jUptimeMillis2);
                sb2.append(CNATAC.a("cV"));
                GpYFMu.e(strA2, sb2.toString(), new Throwable[0]);
                MrfBl mrfBl = new MrfBl(pair, Long.valueOf(jLongValue), Long.valueOf((long) iA));
                this.f198f.set(false);
                return mrfBl;
            } catch (Exception e2) {
                GpYFMu.g(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rC@DHMM\u0004@PBFLi"), e2);
                GWINqE.b(e2);
                this.f198f.set(false);
                return l;
            }
        } catch (Throwable th) {
            this.f198f.set(false);
            throw th;
        }
    }

    public final void b() {
        try {
            Future future = this.f197e;
            if (future != null && !future.isCancelled() && !this.f197e.isDone()) {
                return;
            }
            this.f197e = this.f201j.submit(new CallableC0002Gvcplk());
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("}QtAGtZTdCP\u001cPDEW["), e2);
        }
    }

    public final String c() {
        try {
            StringBuilder sb = new StringBuilder();
            for (Pair pair : this.g) {
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
            GpYFMu.d(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRLkKHGJ\\@EOFfR@HS"), e2);
            GWINqE.b(e2);
            return "";
        }
    }

    public final MrfBl d() {
        Future future;
        this.g.clear();
        MrfBl mrfBlA = null;
        try {
            Future future2 = this.f197e;
            if (future2 != null) {
                try {
                    mrfBlA = (MrfBl) future2.get();
                } catch (InterruptedException | ExecutionException e2) {
                    GpYFMu.g(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016ZW]CDB\rJND@\u0018\u0003") + e2.getMessage(), new Throwable[0]);
                }
                if (mrfBlA == null && (mrfBlA = a()) == null && (future = this.f197e) != null) {
                    try {
                        mrfBlA = (MrfBl) future.get();
                    } catch (InterruptedException | ExecutionException e3) {
                        GpYFMu.g(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016ZW]CDB\rJND@\u0018\u0003") + e3.getMessage(), new Throwable[0]);
                    }
                }
            } else if (mrfBlA == null) {
                mrfBlA = (MrfBl) future.get();
            }
        } catch (Exception e4) {
            GpYFMu.d(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015{XL@EEaL@NWDP"), e4);
            GWINqE.b(e4);
        }
        if (mrfBlA != null) {
            return mrfBlA;
        }
        GpYFMu.g(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("CJaZ\\\\\u000fGtEfY[EXJmK_M\r\\JDTPMMKA\u0007L]|ziqj?E]bgm5Beqyfnx-hn|m`bgn"), new Throwable[0]);
        return l;
    }

    public final boolean e() {
        return this.f194a.l;
    }

    public final void f() {
        this.f196c = SystemClock.uptimeMillis();
        this.d.clear();
        Future future = this.f197e;
        if (future != null) {
            if (f193k <= 5402) {
                while (true) {
                    int i2 = f193k;
                    int i3 = i2 + 26;
                    if (i3 != 27) {
                        if (i3 == 142) {
                            f193k = (i2 ^ 1265) % 47;
                            break;
                        } else if (i3 == 157) {
                            while (true) {
                                f193k = (f193k % 24) + i2;
                            }
                        }
                    } else {
                        break;
                    }
                }
                f193k = ((f193k >> 28) ^ 4044) >> 97;
            }
            if (!future.isCancelled()) {
                boolean zIsDone = this.f197e.isDone();
                if ((f193k ^ 5403) != 0) {
                    while (true) {
                        int i4 = f193k;
                        int i5 = i4 + 52;
                        if (i5 == 16) {
                            f193k = (i4 ^ KyberEngine.KyberQ) + i4;
                        } else if (i5 != 151) {
                            if (i5 == 256) {
                                f193k = ((i4 + i4) ^ 2005) * 105;
                            }
                        }
                        while (true) {
                            f193k = (f193k ^ 1408) + i4;
                        }
                    }
                }
                if (!zIsDone) {
                    this.f197e.cancel(true);
                }
            }
            this.f197e = null;
        }
        this.g.clear();
    }

    public final void g() {
        DkQluC dkQluC = this.f194a;
        if (this.d.size() < 128 && !this.f198f.get()) {
            try {
                if (!dkQluC.b()) {
                    GpYFMu.d(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("CJaZ\\\\\u000fLxBAY[SE\u0018[OLE^Z]QUKLJ\u0005@FAT\u007f\u007f"), new Throwable[0]);
                } else {
                    this.f195b = true;
                    dkQluC.addObserver(this);
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("BLfGV\\JR1CP[\\EC][\n_D_KX\u0010DZ@AURNGV"), e2);
                GWINqE.b(e2);
            }
        }
    }

    public final void h() {
        DkQluC dkQluC = this.f194a;
        try {
            dkQluC.c();
        } catch (Exception e2) {
            GpYFMu.g(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("BLfGV\\JR1D[NPQ^K]OY\fKOF\\DF"), e2);
        }
        dkQluC.deleteObservers();
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (this.d.size() >= 128) {
                CYFMonitor.f25346b.C();
                h();
                b();
                return;
            }
            if (this.d.size() >= 16 && !this.f199h) {
                this.f199h = true;
                this.f200i.b();
            }
            QwtCVJ qwtCVJ = (QwtCVJ) obj;
            synchronized (this.d) {
                this.d.add(qwtCVJ);
            }
        } catch (Exception e2) {
            GpYFMu.g(CNATAC.a("CJaZ\\\\bA\u007fPRYG"), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010LMWMJH\u0007MN\u007fuh"), e2);
            GWINqE.b(e2);
        }
    }
}
