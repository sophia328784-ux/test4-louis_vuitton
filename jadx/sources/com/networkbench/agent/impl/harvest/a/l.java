package com.networkbench.agent.impl.harvest.a;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f37267a = true;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.harvest.a.l$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f37268a;

        static {
            int[] iArr = new int[r.values().length];
            f37268a = iArr;
            try {
                iArr[r.REDIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37268a[r.INIT_MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37268a[r.METIRC_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37268a[r.ACTION_SELECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37268a[r.UPDATE_HINT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f37268a[r.USER_ACTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f37268a[r.USER_PROFILE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f37268a[r.CONTROLLER_DATA.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f37268a[r.CRASH_DATA.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f37268a[r.ANR_DATA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f37268a[r.RESOURE_HOST.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f37268a[r.EXTENSION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f37268a[r.EXTENSION_SEND.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f37268a[r.TRANSACTION_SPAN_DATA.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f37268a[r.VIDEO_CAPTURE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f37268a[r.LOG_TASK_URL.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public static h a(r rVar, String str, boolean z) {
        if (rVar == null) {
            md.n("error uploadData");
            return null;
        }
        switch (AnonymousClass1.f37268a[rVar.ordinal()]) {
            case 1:
                return new n(str, z);
            case 2:
                return new e(str, z);
            case 3:
                return new d(str, z);
            case 4:
                return new a(str, z);
            case 5:
                return new q(str, z);
            case 6:
                return new s(str, z);
            case 7:
                return new t(str, z);
            case 8:
                return new f(str, z);
            case 9:
                return new g(str, z);
            case 10:
                return new b(str, z);
            case 11:
                return new o(str, z);
            case 12:
                return new j(str, z);
            case 13:
                return new i(str, z);
            case 14:
                return new p(str, z);
            case 15:
                return new u(str, z);
            case 16:
                return new k(str, z);
            default:
                return null;
        }
    }
}
