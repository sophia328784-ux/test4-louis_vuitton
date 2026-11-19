package ZjTIAZ;

import LPJ.TGS;
import android.content.Context;
import android.os.SystemClock;
import android.util.Pair;
import android.widget.EditText;
import defpackage.cj;
import java.util.ArrayList;
import java.util.HashMap;
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
public class CbGKec {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f115i = 8858;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f116j = CNATAC.a("Z@mGpZNNvTx][WP][");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f117k = CNATAC.a("\"\u0005^VJ\u0012|TcX[[\u0015");
    public static String l = CNATAC.a("BLfGV\\FNv\u0011ZR\u0015SSQ]\n_IUZ\u0015\u0010");
    public static String m = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UG[P\u0005CQMVn");
    public static String n = CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016c]Q^\u000bHLZN\n\u0001");
    public static String o = CNATAC.a("K]vVCFFO\u007f\u0011VPPWYMY\u0010\u000b");
    public static String p = CNATAC.a("\"\u0005aZ^W\u0007Mb\u0018\u000f\u001c");
    public static String q = CNATAC.a("c`cV]F\u000fc~D[H\u000f\u0016");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f119b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Future f121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f122f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f123h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f120c = new ArrayList();
    public final AtomicBoolean d = new AtomicBoolean(false);
    public final HashMap g = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XkvjdW f118a = new XkvjdW();

    public class XkvjdW implements Observer {
        public static String d = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UG[P\u0005EOIV}~<xhzND");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static String f124e = CNATAC.a("Z@mGpZNNvTx][WP][");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f126b = -1;

        public XkvjdW() {
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            CbGKec cbGKec = CbGKec.this;
            ArrayList arrayList = cbGKec.f120c;
            try {
                cbGKec.f123h++;
                if (obj == null || arrayList.size() >= 50 || cbGKec.d.get() || !(obj instanceof DmNgem)) {
                    return;
                }
                DmNgem dmNgem = (DmNgem) obj;
                long j2 = dmNgem.f172a;
                long j3 = j2 - this.f125a;
                String str = dmNgem.f173b;
                int i2 = dmNgem.f174c;
                DmNgem dmNgem2 = new DmNgem(j3, str, i2, dmNgem.d, dmNgem.f175e);
                if (this.f126b != i2) {
                    cbGKec.f122f = 0;
                    this.f126b = i2;
                }
                int i3 = cbGKec.f122f;
                if (i3 < 9) {
                    cbGKec.f122f = i3 + 1;
                    arrayList.add(dmNgem2);
                }
                this.f125a = j2;
                if (arrayList.size() >= 50) {
                    try {
                        Future future = cbGKec.f121e;
                        if (future == null || future.isCancelled() || cbGKec.f121e.isDone()) {
                            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(1);
                            cbGKec.f121e = executorServiceNewFixedThreadPool.submit(new zMeEGO(cbGKec));
                            executorServiceNewFixedThreadPool.shutdown();
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception e2) {
                GpYFMu.g(f124e, d, e2);
                GWINqE.b(e2);
            }
        }
    }

    public class zMeEGO implements Callable {
        final /* synthetic */ TGS ZRQiWB;

        public zMeEGO(CbGKec cbGKec) {
            this.ZRQiWB = cbGKec;
        }

        @Override // java.util.concurrent.Callable
        public Pair<String, Long> call() {
            TGS tgs = this.ZRQiWB;
            int i2 = CbGKec.f115i;
            return tgs.a();
        }
    }

    public CbGKec(Context context) {
        this.f119b = context;
        d();
    }

    public final Pair a() {
        long j2;
        ArrayList<DmNgem> arrayList = this.f120c;
        String strConcat = "";
        if (arrayList.size() == 0) {
            return new Pair("", 0L);
        }
        AtomicBoolean atomicBoolean = this.d;
        if (!atomicBoolean.compareAndSet(false, true)) {
            return null;
        }
        long j3 = 0;
        for (DmNgem dmNgem : arrayList) {
            StringBuilder sb = new StringBuilder();
            String str = dmNgem.f173b;
            int i2 = dmNgem.d;
            int i3 = dmNgem.f174c;
            long j4 = dmNgem.f172a;
            sb.append(str);
            sb.append(",");
            sb.append(Long.valueOf(j4));
            sb.append(",");
            sb.append(i3);
            sb.append(",");
            sb.append(dmNgem.f175e);
            String string = sb.toString();
            if (i2 != -1) {
                string = cj.e(i2, string, ",");
            }
            String strConcat2 = string.concat(";");
            strConcat = strConcat.concat(strConcat2);
            String str2 = dmNgem.f173b;
            String str3 = DeHqqG.f157a;
            try {
                j2 = Long.parseLong(str2);
            } catch (NumberFormatException unused) {
                j2 = 0;
            }
            j3 += j2 + j4 + ((long) i3);
            Long lValueOf = Long.valueOf((SystemClock.uptimeMillis() - ZxDSl.f344b) - j4);
            GpYFMu.c(f116j, q + arrayList.size() + f117k + strConcat2 + p + lValueOf, new Throwable[0]);
            if (f115i <= 8857) {
                while (true) {
                    int i4 = f115i;
                    int i5 = i4 + 65;
                    if (i5 != 2) {
                        if (i5 == 109) {
                            break;
                        }
                        if (i5 == 161) {
                            f115i = cj.a(i4, 57, i4, i4);
                            break;
                        }
                    } else {
                        f115i = ((i4 % 39) ^ 1694) + i4;
                    }
                }
                f115i = (f115i % 30) % 90;
            }
        }
        atomicBoolean.set(false);
        return new Pair(strConcat, Long.valueOf(j3));
    }

    public final Pair b() {
        Future future;
        Pair pairA = null;
        try {
            Future future2 = this.f121e;
            if (future2 != null) {
                try {
                    try {
                        pairA = (Pair) future2.get();
                    } catch (InterruptedException e2) {
                        GpYFMu.g(f116j, n + e2.getMessage(), new Throwable[0]);
                    }
                } catch (ExecutionException e3) {
                    GpYFMu.g(f116j, n + e3.getMessage(), new Throwable[0]);
                }
            }
            if (pairA != null) {
                return pairA;
            }
            pairA = a();
            if (pairA != null || (future = this.f121e) == null) {
                return pairA;
            }
            try {
                return (Pair) future.get();
            } catch (InterruptedException e4) {
                GpYFMu.g(f116j, n + e4.getMessage(), new Throwable[0]);
                return pairA;
            } catch (ExecutionException e5) {
                GpYFMu.g(f116j, n + e5.getMessage(), new Throwable[0]);
                return pairA;
            }
        } catch (Exception e6) {
            GpYFMu.g(f116j, m, e6);
            GWINqE.b(e6);
            return pairA;
        }
    }

    public final void c(EditText editText) {
        GpYFMu.e(f116j, l + editText.getId(), new Throwable[0]);
        int id = editText.getId();
        String str = DeHqqG.f157a;
        int iE = DeHqqG.e(String.valueOf(id));
        String strB = DeHqqG.b(editText);
        int inputType = editText.getInputType() & 129;
        Context context = this.f119b;
        CHrESI cHrESI = (inputType == 129 || (editText.getInputType() & 18) == 18 || (editText.getInputType() & 145) == 145 || (editText.getInputType() & 225) == 225) ? new CHrESI(context, iE, strB, true) : new CHrESI(context, iE, strB, false);
        editText.addTextChangedListener(cHrESI);
        cHrESI.addObserver(this.f118a);
        this.g.put(editText, cHrESI);
    }

    public final void d() {
        int i2;
        XkvjdW xkvjdW = this.f118a;
        xkvjdW.getClass();
        xkvjdW.f125a = SystemClock.uptimeMillis();
        this.f122f = 0;
        this.f123h = 0L;
        this.f120c.clear();
        Future future = this.f121e;
        if (future != null) {
            if (!future.isCancelled()) {
                boolean zIsDone = this.f121e.isDone();
                if (f115i <= 8857) {
                    while (true) {
                        int i3 = f115i;
                        int i4 = i3 + 39;
                        if (i4 != 67) {
                            if (i4 != 182) {
                                if (i4 == 241) {
                                    i2 = (i3 ^ 5110) * 333;
                                } else if (i4 == 399) {
                                    i2 = (i3 * 125) ^ 3744;
                                }
                                f115i = i2;
                                break;
                            }
                            break;
                        }
                        while (true) {
                            f115i = (f115i * 121) >> 3;
                        }
                    }
                    f115i = ((f115i % 83) * 111) ^ 2267;
                }
                if (!zIsDone) {
                    this.f121e.cancel(true);
                }
            }
            this.f121e = null;
        }
    }
}
