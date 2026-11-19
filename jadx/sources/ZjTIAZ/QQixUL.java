package ZjTIAZ;

import android.os.SystemClock;
import android.util.Pair;
import android.view.MotionEvent;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class QQixUL implements Observer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f213i = 4748;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f214j = 3095;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Locale f215k = Locale.US;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f218c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Future f220f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DecimalFormat f221h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f216a = 0;
    public long d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f219e = new ArrayList();
    public final AtomicBoolean g = new AtomicBoolean(false);

    /* JADX INFO: renamed from: ZjTIAZ.QQixUL$QQixUL, reason: collision with other inner class name */
    public class CallableC0004QQixUL implements Callable {
        public CallableC0004QQixUL() {
        }

        @Override // java.util.concurrent.Callable
        public Pair<String, Long> call() {
            QQixUL qQixUL = QQixUL.this;
            int i2 = QQixUL.f213i;
            return qQixUL.a();
        }
    }

    public QQixUL() {
        DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(f215k);
        this.f221h = decimalFormat;
        decimalFormat.applyPattern("#");
    }

    /* JADX INFO: Infinite loop detected, blocks: 23, insns: 0 */
    /* JADX WARN: Code duplicated, block: B:100:0x01cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x01bb A[LOOP:1: B:55:0x01bb->B:102:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:57:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:59:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:66:0x01df A[LOOP:3: B:66:0x01df->B:105:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:71:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:99:0x01d3 A[SYNTHETIC] */
    public final Pair a() throws Throwable {
        AtomicBoolean atomicBoolean;
        String str;
        int i2;
        int i3;
        int i4;
        AtomicBoolean atomicBoolean2;
        long j2;
        long j3;
        String str2 = "ZJ`P[\u007fNNpVPN";
        DecimalFormat decimalFormat = this.f221h;
        ArrayList<CNATAC> arrayList = this.f219e;
        if (arrayList.isEmpty()) {
            return new Pair("", 0L);
        }
        AtomicBoolean atomicBoolean3 = this.g;
        if (!atomicBoolean3.compareAndSet(false, true)) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j4 = 0;
            for (CNATAC cnatac : arrayList) {
                try {
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        int i5 = cnatac.f108a;
                        try {
                            float f2 = cnatac.f110c;
                            str = str2;
                            try {
                                float f3 = cnatac.d;
                                long j5 = jUptimeMillis;
                                long j6 = cnatac.f112f;
                                sb2.append(i5);
                                try {
                                    sb2.append(",");
                                    sb2.append(j6);
                                    sb2.append(",");
                                    double d = f3;
                                    sb2.append(decimalFormat.format(d));
                                    sb2.append(",");
                                    double d2 = f2;
                                    sb2.append(decimalFormat.format(d2));
                                    sb2.append(",");
                                    sb2.append(cnatac.f109b);
                                    sb2.append(CNATAC.a("\"\u00149"));
                                    sb2.append(cnatac.f111e);
                                    sb2.append(CNATAC.a("\"\b$\u001f"));
                                    ArrayList arrayList2 = arrayList;
                                    atomicBoolean2 = atomicBoolean3;
                                    try {
                                        sb2.append(cnatac.g);
                                        sb2.append(",");
                                        sb2.append(cnatac.f113h);
                                        sb2.append(",");
                                        sb2.append(cnatac.f114i);
                                        sb2.append(";");
                                        sb.append(sb2.toString());
                                        long j7 = j6 + ((long) cnatac.f108a);
                                        String str3 = decimalFormat.format(d);
                                        String str4 = DeHqqG.f157a;
                                        try {
                                            j2 = Long.parseLong(str3);
                                        } catch (NumberFormatException unused) {
                                            j2 = 0;
                                        }
                                        long j8 = j7 + j2;
                                        try {
                                            j3 = Long.parseLong(decimalFormat.format(d2));
                                        } catch (NumberFormatException unused2) {
                                            j3 = 0;
                                        }
                                        j4 = j8 + j3 + j4;
                                        arrayList = arrayList2;
                                        str2 = str;
                                        jUptimeMillis = j5;
                                        atomicBoolean3 = atomicBoolean2;
                                    } catch (Exception e2) {
                                        e = e2;
                                        atomicBoolean = atomicBoolean2;
                                        try {
                                            GpYFMu.g(CNATAC.a(str), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rZ@EBJ\u0003ASCI\\K"), e);
                                            GWINqE.b(e);
                                            atomicBoolean.set(false);
                                            if (f214j <= 3094) {
                                                return new Pair("", 0L);
                                            }
                                            do {
                                                i2 = f214j;
                                                i3 = i2 + 65;
                                                if (i3 != 16) {
                                                    if (i3 != 196) {
                                                        f214j = (i2 >> 117) % 9;
                                                        break;
                                                    }
                                                } else {
                                                    f214j = (i2 + i2) ^ 1554;
                                                    if (f213i <= 4747) {
                                                        break;
                                                    }
                                                    do {
                                                        i4 = f213i;
                                                    } while (i4 + 117 != 23);
                                                    while (true) {
                                                        f213i = (f213i + i4) >> 22;
                                                    }
                                                }
                                            } while (i3 != 239);
                                            while (true) {
                                                f214j = (f214j % 106) + i2;
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            atomicBoolean.set(false);
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        atomicBoolean = atomicBoolean2;
                                        atomicBoolean.set(false);
                                        throw th;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    atomicBoolean2 = atomicBoolean3;
                                    atomicBoolean = atomicBoolean2;
                                    GpYFMu.g(CNATAC.a(str), CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRL]CEK\rZ@EBJ\u0003ASCI\\K"), e);
                                    GWINqE.b(e);
                                    atomicBoolean.set(false);
                                    if (f214j <= 3094) {
                                        return new Pair("", 0L);
                                    }
                                    do {
                                        i2 = f214j;
                                        i3 = i2 + 65;
                                        if (i3 != 16) {
                                            if (i3 != 196) {
                                                f214j = (i2 >> 117) % 9;
                                                break;
                                            }
                                        } else {
                                            f214j = (i2 + i2) ^ 1554;
                                            if (f213i <= 4747) {
                                                break;
                                            }
                                            do {
                                                i4 = f213i;
                                            } while (i4 + 117 != 23);
                                            while (true) {
                                                f213i = (f213i + i4) >> 22;
                                            }
                                        }
                                    } while (i3 != 239);
                                    while (true) {
                                        f214j = (f214j % 106) + i2;
                                    }
                                }
                            } catch (Exception e4) {
                                e = e4;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            str = str2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        atomicBoolean2 = atomicBoolean3;
                        atomicBoolean = atomicBoolean2;
                        atomicBoolean.set(false);
                        throw th;
                    }
                } catch (Exception e6) {
                    e = e6;
                    str = str2;
                }
            }
            str = str2;
            ArrayList arrayList3 = arrayList;
            atomicBoolean2 = atomicBoolean3;
            long jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
            GpYFMu.e(CNATAC.a(str), CNATAC.a("ZJ`P[\u0012jVt_A\u001cvYBV]\u0010\u000b") + arrayList3.size() + CNATAC.a(".\rx\\EW\u0015\u0000") + this.f217b + CNATAC.a("\"\u0005`CW]XN+\u0011") + this.f218c + ")", new Throwable[0]);
            String strA = CNATAC.a(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(CNATAC.a("ZJ`P[\u0012|dRPY_\u0018b^UL\u0010\u000b"));
            sb3.append(jUptimeMillis2);
            sb3.append(CNATAC.a("cV"));
            GpYFMu.e(strA, sb3.toString(), new Throwable[0]);
            Pair pair = new Pair(sb.toString(), Long.valueOf(j4));
            atomicBoolean2.set(false);
            return pair;
        } catch (Exception e7) {
            e = e7;
            str = str2;
            atomicBoolean = atomicBoolean3;
        } catch (Throwable th4) {
            th = th4;
            atomicBoolean = atomicBoolean3;
        }
    }

    public final Pair b() {
        Pair pairA;
        Future future;
        synchronized (this) {
            Future future2 = this.f220f;
            if (future2 != null) {
                try {
                    pairA = (Pair) future2.get();
                } catch (InterruptedException e2) {
                    GpYFMu.g(CNATAC.a("ZJ`P[\u007fNNpVPN"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\fIO[Q\u001b\u0002") + e2.getMessage(), new Throwable[0]);
                    pairA = null;
                } catch (ExecutionException e3) {
                    GpYFMu.g(CNATAC.a("ZJ`P[\u007fNNpVPN"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\fIO[Q\u001b\u0002") + e3.getMessage(), new Throwable[0]);
                    pairA = null;
                }
                if (pairA == null && (pairA = a()) == null && (future = this.f220f) != null) {
                    try {
                        pairA = (Pair) future.get();
                    } catch (InterruptedException e4) {
                        GpYFMu.g(CNATAC.a("ZJ`P[\u007fNNpVPN"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\fIO[Q\u001b\u0002") + e4.getMessage(), new Throwable[0]);
                    } catch (ExecutionException e5) {
                        GpYFMu.g(CNATAC.a("ZJ`P[\u007fNNpVPN"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016CW\\IC\fIO[Q\u001b\u0002") + e5.getMessage(), new Throwable[0]);
                    }
                }
            } else {
                pairA = null;
                if (pairA == null) {
                    pairA = (Pair) future.get();
                }
            }
            throw th;
        }
        return pairA;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        char c2;
        MotionEvent motionEvent;
        int i2;
        ArrayList arrayList;
        if (obj == null) {
            return;
        }
        int i3 = 1;
        try {
            if (!this.g.get() && (obj instanceof GLipSu)) {
                this.d++;
                GLipSu gLipSu = (GLipSu) obj;
                int i4 = gLipSu.f190c;
                MotionEvent motionEvent2 = gLipSu.f188a;
                int pointerCount = motionEvent2.getPointerCount();
                int i5 = 50;
                if (i4 != 1 || this.f217b >= 50) {
                    if (i4 == 1 || this.f218c >= 50) {
                        return;
                    }
                }
                ArrayList arrayList2 = this.f219e;
                if (i4 == 1) {
                    int i6 = 0;
                    while (i6 < pointerCount) {
                        try {
                            if (this.f217b < i5) {
                                c2 = 0;
                                try {
                                    try {
                                        arrayList = arrayList2;
                                        i2 = 50;
                                        arrayList.add(new CNATAC(gLipSu.f189b, motionEvent2.getEventTime() - this.f216a, gLipSu.f190c, pointerCount, motionEvent2.getY(i6), motionEvent2.getX(i6), motionEvent2.getToolType(i6), motionEvent2.getDeviceId(), motionEvent2.getSource(), motionEvent2.getSize()));
                                        this.f217b++;
                                    } catch (Exception e2) {
                                        e = e2;
                                        String strA = CNATAC.a("ZJ`P[\u007fNNpVPN");
                                        String strA2 = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UMVGM\u0006B^]to");
                                        Throwable[] thArr = new Throwable[1];
                                        thArr[c2] = e;
                                        GpYFMu.g(strA, strA2, thArr);
                                        GWINqE.b(e);
                                        return;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    String strA3 = CNATAC.a("ZJ`P[\u007fNNpVPN");
                                    String strA4 = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UMVGM\u0006B^]to");
                                    Throwable[] thArr2 = new Throwable[1];
                                    thArr2[c2] = e;
                                    GpYFMu.g(strA3, strA4, thArr2);
                                    GWINqE.b(e);
                                    return;
                                }
                            } else {
                                i2 = i5;
                                arrayList = arrayList2;
                            }
                            i6++;
                            arrayList2 = arrayList;
                            i5 = i2;
                            i3 = i3;
                            i4 = i4;
                        } catch (Exception e4) {
                            e = e4;
                            c2 = 0;
                            String strA5 = CNATAC.a("ZJ`P[\u007fNNpVPN");
                            String strA6 = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UMVGM\u0006B^]to");
                            Throwable[] thArr3 = new Throwable[1];
                            thArr3[c2] = e;
                            GpYFMu.g(strA5, strA6, thArr3);
                            GWINqE.b(e);
                            return;
                        }
                    }
                }
                int i7 = i3;
                ArrayList arrayList3 = arrayList2;
                c2 = 0;
                if (i4 != i7) {
                    motionEvent = motionEvent2;
                    arrayList3.add(new CNATAC(gLipSu.f189b, motionEvent2.getEventTime() - this.f216a, gLipSu.f190c, pointerCount, motionEvent2.getY(), motionEvent2.getX(), motionEvent2.getToolType(motionEvent2.getActionIndex()), motionEvent2.getDeviceId(), motionEvent.getSource(), motionEvent.getSize()));
                    this.f218c++;
                } else {
                    motionEvent = motionEvent2;
                }
                if (this.f217b >= 50 && this.f218c >= 50) {
                    try {
                        Future future = this.f220f;
                        if (future == null || future.isCancelled() || this.f220f.isDone()) {
                            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(1);
                            this.f220f = executorServiceNewFixedThreadPool.submit(new CallableC0004QQixUL());
                            executorServiceNewFixedThreadPool.shutdown();
                        }
                    } catch (Exception e5) {
                        GWINqE.b(e5);
                    }
                }
                this.f216a = motionEvent.getEventTime();
            }
        } catch (Exception e6) {
            e = e6;
        }
    }
}
