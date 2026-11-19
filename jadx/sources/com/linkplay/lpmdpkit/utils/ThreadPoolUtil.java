package com.linkplay.lpmdpkit.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadPoolUtil {
    private static ExecutorService mCachedThread;
    private static ExecutorService mPrintThread;

    private ThreadPoolUtil() {
    }

    public static ExecutorService getCachedThread() {
        if (mCachedThread == null) {
            mCachedThread = Executors.newCachedThreadPool();
        }
        return mCachedThread;
    }

    public static ExecutorService getPrintThread() {
        if (mPrintThread == null) {
            mPrintThread = Executors.newSingleThreadExecutor();
        }
        return mPrintThread;
    }
}
