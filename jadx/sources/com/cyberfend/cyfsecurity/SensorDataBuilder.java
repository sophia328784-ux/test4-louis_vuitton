package com.cyberfend.cyfsecurity;

import ZjTIAZ.CNATAC;
import android.util.Pair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class SensorDataBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SensorDataBuilder f25398a = new SensorDataBuilder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f25399b = false;

    /* JADX INFO: renamed from: com.cyberfend.cyfsecurity.SensorDataBuilder$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        static String GDMRFG;
        static String XcbxXI;

        static {
            uwO(false);
        }

        public AnonymousClass1() {
        }

        public static /* synthetic */ void uwO(boolean z) {
            if (z) {
                uwO(false);
            }
            XcbxXI = CNATAC.a("]@{@\\@kAePwI\\ZS][");
            GDMRFG = CNATAC.a("gK|GZSCIkT~YLx\u0017^HCGII\u0014\u000f");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SensorDataBuilder.this.initializeKeyN();
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
    }

    public native synchronized String buildN(ArrayList<Pair<String, String>> arrayList);

    public native synchronized void decryptN();

    public native synchronized void encryptKeyN();

    public native synchronized void initializeKeyN();
}
