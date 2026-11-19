package com.networkbench.agent.impl.plugin.g.a;

import java.net.InetAddress;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38077a = "<iframe src=\"";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38078b = ".php";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f38079c = "<tr>";
    private static final String d = "</table>";

    public static String[] a() {
        InetAddress[] inetAddressArrD = d();
        if (inetAddressArrD == null && (inetAddressArrD = c()) == null) {
            return new String[]{"119.29.29.29"};
        }
        int length = inetAddressArrD.length;
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            String string = inetAddressArrD[i2].toString();
            strArr[i2] = string;
            if (string.indexOf(47) == 0) {
                strArr[i2] = strArr[i2].substring(1);
            }
        }
        return strArr;
    }

    public static String b() {
        InetAddress[] inetAddressArrC;
        if (d() == null && (inetAddressArrC = c()) != null && inetAddressArrC.length > 0) {
            String string = inetAddressArrC[0].toString();
            if (string.indexOf(47) == 0) {
                return string.substring(1);
            }
        }
        return "";
    }

    private static InetAddress[] c() {
        return null;
    }

    private static InetAddress[] d() {
        return null;
    }
}
