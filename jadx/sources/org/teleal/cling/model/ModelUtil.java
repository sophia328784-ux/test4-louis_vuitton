package org.teleal.cling.model;

import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.media.offline.FileUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ModelUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f78377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f78378b;

    static {
        boolean z = true;
        f78377a = Thread.currentThread().getContextClassLoader().loadClass("android.os.Build").getField("ID").get(null) != null;
        try {
            String str = (String) Thread.currentThread().getContextClassLoader().loadClass("android.os.Build").getField("PRODUCT").get(null);
            if (!"google_sdk".equals(str) && !"sdk".equals(str)) {
                z = false;
            }
        } catch (Exception unused) {
        }
        f78378b = z;
    }

    public static long a(String str) {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length <= 0) {
            return 0L;
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            String strSubstring = strArrSplit[i2];
            if (strSubstring.contains(FileUtils.HIDDEN_PREFIX)) {
                strSubstring = strSubstring.substring(0, strSubstring.indexOf(FileUtils.HIDDEN_PREFIX));
            }
            strArrSplit[i2] = strSubstring;
        }
        if (strArrSplit.length == 3) {
            return (Long.parseLong(strArrSplit[0]) * 3600) + (Long.parseLong(strArrSplit[1]) * 60) + Long.parseLong(strArrSplit[2]);
        }
        if (strArrSplit.length != 2) {
            return 0L;
        }
        return Long.parseLong(strArrSplit[1]) + (Long.parseLong(strArrSplit[0]) * 60);
    }

    public static String b(long j2) {
        long j3 = j2 / 3600;
        long j4 = j2 % 3600;
        long j5 = j4 / 60;
        long j6 = j4 % 60;
        if (j3 <= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(j5 < 10 ? ContentTree.ROOT_ID : "");
            sb.append(j5);
            sb.append(":");
            sb.append(j6 < 10 ? ContentTree.ROOT_ID : "");
            sb.append(j6);
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j3 < 10 ? ContentTree.ROOT_ID : "");
        sb2.append(j3);
        sb2.append(":");
        sb2.append(j5 < 10 ? ContentTree.ROOT_ID : "");
        sb2.append(j5);
        sb2.append(":");
        sb2.append(j6 < 10 ? ContentTree.ROOT_ID : "");
        sb2.append(j6);
        return sb2.toString();
    }
}
