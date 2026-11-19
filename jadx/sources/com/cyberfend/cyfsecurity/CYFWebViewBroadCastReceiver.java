package com.cyberfend.cyfsecurity;

import NPR.HbI;
import ZjTIAZ.CNATAC;
import ZjTIAZ.GWINqE;
import ZjTIAZ.ZptgnD;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.cj;
import defpackage.d21;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public class CYFWebViewBroadCastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f25363a = CNATAC.a("lHel\\@KEc");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f25364b = CNATAC.a("HIzD\u0013QCObTQ\u001cV^R[B\nN^_A]\n\u0001");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f25365c = CNATAC.a("lHelYApSxV[]Y");
    public static String d = CNATAC.a("mUglYApSxV[]Y");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f25366e = CNATAC.a("lHelYApSePGHPR");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f25367f = CNATAC.a("gK|GlAZCrTFO");
    public static String g = CNATAC.a("HD|_VV\u000fT~\u0011Z^AW^V\tnxo`OAQFGQ\u001e\u0005");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f25368h = CNATAC.a("GKaV]F\u000fIb\u0011[IYZ");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f25369i = CNATAC.a("lHelWAL\u007ft_T^YSS");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f25370j = CNATAC.a("M|SdVPyItFwNZWS{HY_~HMJYWGQ");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f25371k = CNATAC.a("\"\u0005a\\XWA\u0000t\\EHL\u000b");
    public static String l = CNATAC.a("M|S~R\\NGtC\u0015UF\u0016YMEF\u0010\fLL@BUKMC");
    public static String m = CNATAC.a("mUglUW[CynFIVURKZ");
    public static String n = CNATAC.a("lHelUW[CynS]\\ZR\\");
    public static String o = CNATAC.a("[KpKCWLTtU\u0015YMURH]CDB\rGA\u0010NLqAFCN^] ;");
    public static String p = CNATAC.a("MuG\u0013@[HNp]\u001aHZ]RV\tGB_@O[SI\u0002\u000e\u0004VO@FYv;ypnkY\r");
    public static String q = CNATAC.a("HD|_VV\u000fT~\u0011Z^AW^V\tirj`OAQFGQ\u001e\u0005");
    public static String r = CNATAC.a("MJ{U_[LTx_R\u001cw{g\u0018Z_HOH]\\\u0010\u0007\u0002EELJRZ]:}p|yl\u0000‣2cfpprj{cek-hnymwqa");
    public static String s = CNATAC.a("MJ{GVJ[\u0000xB\u0015R@Z[");
    public static String t = CNATAC.a("mUglUW[CynS]\\ZR\\");
    public static String u = CNATAC.a("mJx\u001dRYNMpX\u001bKPTAQL]\u0005HLZN");
    public static String v = CNATAC.a("lHelUW[CynFIVURKZ");
    public static String w = CNATAC.a("LWzRWQNSe\u0011]][R[][\nN^_A]\n\u0001");
    public static String x = CNATAC.a("MJ{U_[LTx_R\u001cvfe\u0018Z_HOH]\\\u0010\u0007\u0002EELJRZ]:}p|yl\u0000‣2cfpprj{cek-hnymwqa");
    public static String y = CNATAC.a("mUglYApT~ZPR");
    public static String z = CNATAC.a("lHelAWIRtB]c\\XC][\\J@");
    public static String A = CNATAC.a("JvV~R\\NGtC\u0015UF\u0016YMEF\u0010\fLL@BUKMC\u0005DUGY~x}nj?PB}pqfe~vn");
    public static String B = CNATAC.a("mUglYApSePGHPR");
    public static String C = CNATAC.a("gK|GlTNI}TQ");

    public static void a(Runnable runnable) {
        try {
            runnable.run();
        } catch (Exception e2) {
            GpYFMu.d(f25370j, cj.h(e2, w, new StringBuilder()), new Throwable[0]);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        final ZptgnD zptgnD;
        Runnable runnable;
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        try {
            if (context == null) {
                GpYFMu.d(f25370j, s, new Throwable[0]);
                return;
            }
            if (intent == null) {
                GpYFMu.d(f25370j, f25368h, new Throwable[0]);
                return;
            }
            if (u.equals(intent.getAction())) {
                try {
                    CYFManager cYFManager = CYFMonitor.f25346b;
                    if (cYFManager == null) {
                        GpYFMu.d(f25370j, l, new Throwable[0]);
                        return;
                    }
                    try {
                        synchronized (cYFManager) {
                            zptgnD = cYFManager.f25342i;
                        }
                        if (zptgnD == null) {
                            GpYFMu.d(f25370j, A, new Throwable[0]);
                            return;
                        }
                        try {
                            if (zptgnD.s.get() && !intent.getBooleanExtra(C, false)) {
                                return;
                            }
                        } catch (Exception e2) {
                            GpYFMu.d(f25370j, f25364b + e2.getMessage(), new Throwable[0]);
                        }
                        boolean booleanExtra = intent.getBooleanExtra(C, false);
                        boolean booleanExtra2 = intent.getBooleanExtra(f25367f, false);
                        boolean booleanExtra3 = intent.getBooleanExtra(f25366e, false);
                        boolean booleanExtra4 = intent.getBooleanExtra(B, false);
                        boolean booleanExtra5 = intent.getBooleanExtra(n, false);
                        boolean booleanExtra6 = intent.getBooleanExtra(t, false);
                        boolean booleanExtra7 = intent.getBooleanExtra(v, false);
                        boolean booleanExtra8 = intent.getBooleanExtra(m, false);
                        if (booleanExtra5 && booleanExtra7) {
                            GpYFMu.g(f25370j, r, new Throwable[0]);
                            booleanExtra7 = false;
                        }
                        if (booleanExtra6 && booleanExtra8) {
                            GpYFMu.g(f25370j, x, new Throwable[0]);
                            booleanExtra8 = false;
                        }
                        if (booleanExtra) {
                            runnable = new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ZptgnD zptgnD2 = zptgnD;
                                    zptgnD2.getClass();
                                    try {
                                        zptgnD2.g();
                                        if (zptgnD2.n()) {
                                            CYFMonitor.f25346b.n = 15;
                                        }
                                        if (zptgnD2.b()) {
                                            CYFMonitor.f25346b.o = 15;
                                        }
                                        zptgnD2.o.set(true);
                                        zptgnD2.p.set(true);
                                        zptgnD2.j();
                                        zptgnD2.F(false);
                                    } catch (Exception e3) {
                                        GpYFMu.d(ZptgnD.I, d21.h(e3, "}@adVPyItF|R\\BqY@FNH\rK]BNP\u0019\u0004", new StringBuilder()), new Throwable[0]);
                                    }
                                }
                            };
                        } else {
                            if (booleanExtra2) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        zptgnD.w();
                                    }
                                });
                            }
                            if (booleanExtra3) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        zptgnD.getClass();
                                        try {
                                            CYFMonitor.f25346b.n = 14;
                                        } catch (Exception unused) {
                                        }
                                    }
                                });
                            }
                            if (booleanExtra4) {
                                a(new Runnable(this) { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.4
                                    final /* synthetic */ HbI ZRQiWB;

                                    {
                                        this.ZRQiWB = this;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        zptgnD.getClass();
                                        try {
                                            CYFMonitor.f25346b.o = 14;
                                        } catch (Exception unused) {
                                        }
                                    }
                                });
                            }
                            final String stringExtra = intent.getStringExtra(f25365c);
                            if (stringExtra != null) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.5
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        zptgnD.y(stringExtra);
                                    }
                                });
                            }
                            final String stringExtra2 = intent.getStringExtra(d);
                            final String stringExtra3 = intent.getStringExtra(y);
                            if (stringExtra2 != null && !stringExtra2.trim().isEmpty() && stringExtra3 != null && !stringExtra3.trim().isEmpty()) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.6
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        zptgnD.A(stringExtra2, stringExtra3);
                                    }
                                });
                            } else if (stringExtra2 != null || stringExtra3 != null) {
                                String str = f25370j;
                                StringBuilder sb = new StringBuilder();
                                sb.append(p);
                                sb.append(stringExtra2 == null || stringExtra2.trim().isEmpty());
                                sb.append(f25371k);
                                sb.append(stringExtra3 == null || stringExtra3.trim().isEmpty());
                                GpYFMu.g(str, sb.toString(), new Throwable[0]);
                            }
                            final String[] stringArrayExtra = intent.getStringArrayExtra(f25363a);
                            if (stringArrayExtra != null) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.7
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        zptgnD.l = stringArrayExtra;
                                    }
                                });
                            }
                            final boolean booleanExtra9 = intent.getBooleanExtra(f25369i, true);
                            a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    zptgnD.m = booleanExtra9;
                                }
                            });
                            final int intExtra = intent.getIntExtra(z, 0);
                            a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    zptgnD.n = intExtra;
                                }
                            });
                            if (booleanExtra5) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.10
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ZptgnD zptgnD2 = zptgnD;
                                        if (zptgnD2.u.compareAndSet(false, true)) {
                                            zptgnD2.m();
                                        }
                                    }
                                });
                            }
                            if (booleanExtra6) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.11
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ZptgnD zptgnD2 = zptgnD;
                                        if (zptgnD2.w.compareAndSet(false, true)) {
                                            zptgnD2.m();
                                        }
                                    }
                                });
                            }
                            if (booleanExtra7) {
                                a(new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.12
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ZptgnD zptgnD2 = zptgnD;
                                        if (zptgnD2.t.compareAndSet(false, true)) {
                                            zptgnD2.m();
                                        }
                                    }
                                });
                            }
                            if (!booleanExtra8) {
                                return;
                            } else {
                                runnable = new Runnable() { // from class: com.cyberfend.cyfsecurity.CYFWebViewBroadCastReceiver.13
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ZptgnD zptgnD2 = zptgnD;
                                        if (zptgnD2.v.compareAndSet(false, true)) {
                                            zptgnD2.m();
                                        }
                                    }
                                };
                            }
                        }
                        a(runnable);
                    } catch (Exception e3) {
                        GpYFMu.d(f25370j, g + e3.getMessage(), new Throwable[0]);
                    }
                } catch (Exception e4) {
                    GpYFMu.d(f25370j, q + e4.getMessage(), new Throwable[0]);
                }
            }
        } catch (Exception e5) {
            GpYFMu.d(f25370j, cj.h(e5, o, new StringBuilder()), new Throwable[0]);
            GWINqE.b(e5);
        }
    }
}
