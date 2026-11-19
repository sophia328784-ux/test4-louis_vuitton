package com.networkbench.agent.impl.c;

import com.networkbench.agent.impl.harvest.type.Harvestable;
import com.networkbench.agent.impl.pubapi.NBSLogLevel;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f36570a = "NBSAgent";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static NBSLogLevel f36571b = NBSLogLevel.NONE;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.c.j$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f36572a;

        static {
            int[] iArr = new int[NBSLogLevel.values().length];
            f36572a = iArr;
            try {
                iArr[NBSLogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36572a[NBSLogLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36572a[NBSLogLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36572a[NBSLogLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static void a(String str, int i2, String str2) {
        if (str.length() > 4000) {
            a("sb.length = " + str.length());
            int length = str.length() / 4000;
            int i3 = 0;
            while (i3 <= length) {
                int i4 = i3 + 1;
                int i5 = i4 * 4000;
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                if (i5 >= str.length()) {
                                    str.substring(i3 * 4000);
                                } else {
                                    str.substring(i3 * 4000, i5);
                                }
                            } else if (i5 >= str.length()) {
                                str.substring(i3 * 4000);
                            } else {
                                str.substring(i3 * 4000, i5);
                            }
                        } else if (i5 >= str.length()) {
                            str.substring(i3 * 4000);
                        } else {
                            str.substring(i3 * 4000, i5);
                        }
                    } else if (i5 >= str.length()) {
                        str.substring(i3 * 4000);
                    } else {
                        str.substring(i3 * 4000, i5);
                    }
                } else if (i5 >= str.length()) {
                    str.substring(i3 * 4000);
                } else {
                    str.substring(i3 * 4000, i5);
                }
                i3 = i4;
            }
        }
    }

    public static void b(String str, Harvestable harvestable) {
        NBSLogLevel nBSLogLevel = NBSLogLevel.INFO;
        if (b(nBSLogLevel)) {
            return;
        }
        StringBuilder sbT = n00.t(str);
        sbT.append(harvestable.toJsonString());
        a(nBSLogLevel, sbT.toString());
    }

    public static void c(String str) {
        a(NBSLogLevel.INFO, str);
    }

    public static void d(String str) {
        NBSLogLevel nBSLogLevel = NBSLogLevel.WARNING;
        if (b(nBSLogLevel)) {
            return;
        }
        a(nBSLogLevel, str);
    }

    public static void e(String str) {
        NBSLogLevel nBSLogLevel = NBSLogLevel.ERROR;
        if (b(nBSLogLevel)) {
            return;
        }
        a(nBSLogLevel, str);
    }

    public static void b(String str) {
        NBSLogLevel nBSLogLevel = NBSLogLevel.INFO;
        if (b(nBSLogLevel)) {
            return;
        }
        a(nBSLogLevel, str);
    }

    private static boolean b(NBSLogLevel nBSLogLevel) {
        return f36571b == NBSLogLevel.NONE || nBSLogLevel.getLevel() < f36571b.getLevel();
    }

    public static void a(String str) {
        NBSLogLevel nBSLogLevel = NBSLogLevel.DEBUG;
        if (b(nBSLogLevel)) {
            return;
        }
        a(nBSLogLevel, str);
    }

    public static void a(String str, Harvestable harvestable) {
        if (b(NBSLogLevel.DEBUG)) {
            return;
        }
        StringBuilder sbT = n00.t(str);
        sbT.append(harvestable.toJsonString());
        a(sbT.toString());
    }

    public static void a(String str, Throwable th) {
        b(NBSLogLevel.ERROR);
    }

    private static void a(NBSLogLevel nBSLogLevel, String str) {
        int i2 = AnonymousClass1.f36572a[nBSLogLevel.ordinal()];
        if (i2 == 1) {
            a(str, 2, "NBSAgent");
            return;
        }
        if (i2 == 2) {
            a(str, 3, "NBSAgent");
        } else if (i2 != 3) {
            if (i2 != 4) {
                a(str, 1, "NBSAgent");
            } else {
                a(str, 4, "NBSAgent");
            }
        }
    }

    public static synchronized void a(NBSLogLevel nBSLogLevel) {
        if (nBSLogLevel == null) {
            return;
        }
        f36571b = nBSLogLevel;
    }
}
