package ZjTIAZ;

import Hth.LNm;
import android.app.Application;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Pair;
import androidx.biometric.BiometricManager;
import androidx.core.content.ContextCompat;
import com.linkplay.medialib.ContentTree;
import defpackage.x1;
import java.util.ArrayList;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class DUcPEg {
    public static String p = CNATAC.a("j@sRF^[\rx_SS");
    public static String q = CNATAC.a("M|S`JA[E|x[ZZ{VVHMN^");
    public static String r = CNATAC.a("oKqA\\[K\u000eyPGXBWE]\u0007_XN\u0003OLDHMM\npuewkNZHX");
    public static String s = CNATAC.a("oAw");
    public static String t = CNATAC.a("#\u0014");
    public static String u = CNATAC.a("K]vVCFFO\u007f\u0011\\R\u0015QRLgO\\hHXFSDkMBJ");
    public static String v = CNATAC.a("mJ{]VQ[Eu");
    public static String w = CNATAC.a("mJ{UZUZRtU");
    public static String x = CNATAC.a("#\u00179\u0000\u001f\u001f\u001a\u0010=\u001c\u0006\f\u0004");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BkzsL f145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f147c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f149f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f150h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f151i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f152j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Boolean f153k;
    public boolean l;
    public boolean m;
    public String n;
    public String o;

    /* JADX INFO: renamed from: ZjTIAZ.DUcPEg$DUcPEg, reason: collision with other inner class name */
    class RunnableC0000DUcPEg implements Runnable {

        /* JADX INFO: Incorrect field signature: Llong; */
        static String CsBkfC;
        static String QCGAHG;
        static String QlMVYq;
        static String eOKLLk;

        /* JADX INFO: Incorrect field signature: Llong; */
        static String zJanJO;
        final /* synthetic */ LNm etzqkG;

        static {
            uAt(false);
        }

        public RunnableC0000DUcPEg(Application application) {
            this.etzqkG = application;
        }

        public static /* synthetic */ void uAt(boolean z) {
            if (z) {
                uAt(false);
            }
            CsBkfC = CNATAC.a("J@cZPWfNw^\u0018h\\[R\u0002\t");
            zJanJO = CNATAC.a("J@cZPWfNw^\u0018\u001cFBVJ]OO");
            QCGAHG = CNATAC.a("cV");
            QlMVYq = CNATAC.a("M|S`JA[E|x[ZZ{VVHMN^");
            eOKLLk = CNATAC.a("#\u0014");
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            GpYFMu.e(QlMVYq, zJanJO, new Throwable[0]);
            try {
                DUcPEg dUcPEg = DUcPEg.this;
                BkzsL bkzsL = dUcPEg.f145a;
                dUcPEg.f146b = BkzsL.d(this.etzqkG);
                DUcPEg.this.c(this.etzqkG);
                long jUptimeMillis = SystemClock.uptimeMillis();
                DUcPEg.this.g = Settings.Secure.getString(this.etzqkG.getContentResolver(), "android_id");
                String str = DUcPEg.this.g;
                String str2 = ContentTree.ROOT_ID;
                if (str != null && !str.isEmpty() && !eOKLLk.equals(DUcPEg.this.g) && !ContentTree.ROOT_ID.equals(DUcPEg.this.g)) {
                    try {
                        RXtEM.f246j.o(DUcPEg.this.g);
                    } catch (Throwable unused) {
                    }
                }
                DUcPEg dUcPEg2 = DUcPEg.this;
                BkzsL bkzsL2 = dUcPEg2.f145a;
                dUcPEg2.f147c = ((TelephonyManager) this.etzqkG.getSystemService("phone")).getSimOperatorName();
                DUcPEg dUcPEg3 = DUcPEg.this;
                BkzsL bkzsL3 = dUcPEg3.f145a;
                dUcPEg3.d = BkzsL.e(this.etzqkG);
                DUcPEg dUcPEg4 = DUcPEg.this;
                BkzsL bkzsL4 = dUcPEg4.f145a;
                dUcPEg4.f148e = BkzsL.a(this.etzqkG);
                DUcPEg dUcPEg5 = DUcPEg.this;
                BkzsL bkzsL5 = dUcPEg5.f145a;
                try {
                    try {
                        try {
                            Class.forName("com.akamai.react.RNAkamaibapModule");
                            str2 = "4";
                        } catch (Exception unused2) {
                            Class.forName("org.apache.cordova.CordovaPlugin");
                            str2 = ContentTree.AUDIO_ID;
                        }
                    } catch (Exception unused3) {
                        Class.forName("io.flutter.plugins.GeneratedPluginRegistrant");
                        str2 = ContentTree.IMAGE_ID;
                    }
                } catch (Exception unused4) {
                }
                dUcPEg5.f149f = str2;
                DUcPEg.this.f151i = String.valueOf(System.currentTimeMillis());
                DUcPEg.this.f150h = UxaBRS.a(this.etzqkG);
                DUcPEg dUcPEg6 = DUcPEg.this;
                dUcPEg6.o = DUcPEg.a(dUcPEg6);
                ZxDSl.f346e = SystemClock.uptimeMillis() - jUptimeMillis;
                DUcPEg dUcPEg7 = DUcPEg.this;
                BkzsL bkzsL6 = dUcPEg7.f145a;
                LNm lNm = this.etzqkG;
                try {
                    z = ContextCompat.checkSelfPermission(lNm, "android.permission.USE_BIOMETRIC") == 0 && BiometricManager.b(lNm).a() == 0;
                } catch (Exception e2) {
                    GWINqE.b(e2);
                }
                dUcPEg7.l = z;
                DUcPEg dUcPEg8 = DUcPEg.this;
                BkzsL bkzsL7 = dUcPEg8.f145a;
                dUcPEg8.m = BkzsL.g(this.etzqkG);
                DUcPEg dUcPEg9 = DUcPEg.this;
                BkzsL bkzsL8 = dUcPEg9.f145a;
                dUcPEg9.n = BkzsL.c(this.etzqkG);
                GpYFMu.e(QlMVYq, CsBkfC + ZxDSl.f346e + QCGAHG, new Throwable[0]);
            } catch (Exception e3) {
                x1.m(e3);
            }
        }
    }

    public DUcPEg() {
        String str = t;
        this.f146b = str;
        this.f147c = str;
        this.d = str;
        this.f148e = str;
        this.f149f = str;
        this.g = str;
        this.f150h = str;
        this.f151i = str;
        Boolean bool = Boolean.FALSE;
        this.f152j = bool;
        this.f153k = bool;
        this.o = p;
        this.f145a = new BkzsL();
    }

    public static String a(DUcPEg dUcPEg) {
        dUcPEg.getClass();
        try {
            ArrayList<Pair> arrayList = new ArrayList();
            arrayList.add(new Pair(x, BkzsL.b()));
            StringBuilder sb = new StringBuilder();
            for (Pair pair : arrayList) {
                sb.append(pair.first);
                sb.append(",");
                sb.append(pair.second);
            }
            return sb.toString();
        } catch (Exception e2) {
            GpYFMu.d(q, u, e2);
            GWINqE.b(e2);
            return p;
        }
    }

    public final String b() {
        return this.f147c + "," + this.d + "," + this.f148e + "," + this.f149f + "," + this.f150h + "," + this.f151i + "," + this.f153k + "," + this.f152j;
    }

    public final void c(Application application) {
        boolean z;
        try {
            Intent intentRegisterReceiver = application.registerReceiver(null, new IntentFilter(r));
            if (intentRegisterReceiver == null || intentRegisterReceiver.getExtras() == null) {
                Boolean bool = Boolean.FALSE;
                this.f153k = bool;
                this.f152j = bool;
            } else {
                Bundle extras = intentRegisterReceiver.getExtras();
                boolean z2 = false;
                try {
                    z = extras.getBoolean(s, false);
                } catch (Exception unused) {
                    z = false;
                }
                this.f153k = Boolean.valueOf(z);
                try {
                    boolean z3 = extras.getBoolean(v, false);
                    boolean z4 = extras.getBoolean(w, false);
                    if (z3 && z4) {
                        z2 = true;
                    }
                } catch (Exception unused2) {
                }
                this.f152j = Boolean.valueOf(z2);
            }
        } catch (Exception unused3) {
        }
    }

    public final void d(Application application) {
        try {
            new Thread(new RunnableC0000DUcPEg(application)).start();
        } catch (Exception e2) {
            try {
                throw new RuntimeException(e2);
            } catch (Exception unused) {
            }
        }
    }
}
