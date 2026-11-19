package com.networkbench.agent.impl.crash.oom;

import android.text.TextUtils;
import com.networkbench.agent.impl.util.Logger;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f36697a = "OOMFileUtil";

    public static long a(String str) {
        String[] strArrSplit;
        return (TextUtils.isEmpty(str) || (strArrSplit = str.split("_", 2)) == null || strArrSplit.length <= 1) ? System.currentTimeMillis() : b(strArrSplit[1]);
    }

    private static long b(String str) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss_SSS").parse(str).getTime();
        } catch (Throwable th) {
            Logger.error(f36697a, "parse happenedTime error:" + str, th);
            return System.currentTimeMillis();
        }
    }
}
