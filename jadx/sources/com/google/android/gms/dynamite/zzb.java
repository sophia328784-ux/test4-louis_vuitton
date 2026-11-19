package com.google.android.gms.dynamite;

import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ClassLoader f29399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Thread f29400b;

    /* JADX WARN: Code duplicated, block: B:52:0x00a3 A[Catch: all -> 0x009f, PHI: r1
      0x00a3: PHI (r1v4 java.lang.Thread) = (r1v3 java.lang.Thread), (r1v18 java.lang.Thread) binds: [B:7:0x000a, B:46:0x009c] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #6 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x000c, B:45:0x009a, B:60:0x00c2, B:12:0x001f, B:51:0x00a2, B:52:0x00a3, B:63:0x00c6, B:64:0x00c7, B:53:0x00a4, B:59:0x00c1, B:58:0x00ae, B:13:0x0020, B:15:0x002d, B:25:0x0047, B:26:0x004e, B:28:0x0059, B:34:0x006e, B:35:0x0075, B:42:0x0085, B:43:0x0098, B:18:0x003c), top: B:79:0x0003, inners: #1, #5 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static synchronized ClassLoader a() {
        SecurityException e2;
        Thread thread;
        ThreadGroup threadGroup;
        if (f29399a == null) {
            Thread thread2 = f29400b;
            ClassLoader contextClassLoader = null;
            if (thread2 != null) {
                synchronized (thread2) {
                    try {
                        contextClassLoader = f29400b.getContextClassLoader();
                    } catch (SecurityException e3) {
                        new StringBuilder(String.valueOf(e3.getMessage()).length() + 41);
                    }
                }
                f29399a = contextClassLoader;
            } else {
                ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                if (threadGroup2 == null) {
                    thread2 = null;
                } else {
                    synchronized (Void.class) {
                        try {
                            try {
                                int iActiveGroupCount = threadGroup2.activeGroupCount();
                                ThreadGroup[] threadGroupArr = new ThreadGroup[iActiveGroupCount];
                                threadGroup2.enumerate(threadGroupArr);
                                int i2 = 0;
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= iActiveGroupCount) {
                                        threadGroup = null;
                                        break;
                                    }
                                    threadGroup = threadGroupArr[i3];
                                    if ("dynamiteLoader".equals(threadGroup.getName())) {
                                        break;
                                    }
                                    i3++;
                                }
                                if (threadGroup == null) {
                                    threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                                }
                                int iActiveCount = threadGroup.activeCount();
                                Thread[] threadArr = new Thread[iActiveCount];
                                threadGroup.enumerate(threadArr);
                                while (true) {
                                    if (i2 >= iActiveCount) {
                                        thread = null;
                                        break;
                                    }
                                    thread = threadArr[i2];
                                    if ("GmsDynamite".equals(thread.getName())) {
                                        break;
                                    }
                                    i2++;
                                }
                                if (thread == null) {
                                    try {
                                        zza zzaVar = new zza(threadGroup, "GmsDynamite");
                                        try {
                                            zzaVar.setContextClassLoader(null);
                                            zzaVar.start();
                                            thread = zzaVar;
                                        } catch (SecurityException e4) {
                                            e2 = e4;
                                            thread = zzaVar;
                                            new StringBuilder(String.valueOf(e2.getMessage()).length() + 39);
                                        }
                                    } catch (SecurityException e5) {
                                        e2 = e5;
                                    }
                                }
                            } catch (SecurityException e6) {
                                e2 = e6;
                                thread = null;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    thread2 = thread;
                }
                f29400b = thread2;
                if (thread2 != null) {
                    synchronized (thread2) {
                        contextClassLoader = f29400b.getContextClassLoader();
                    }
                }
                f29399a = contextClassLoader;
            }
        }
        return f29399a;
    }
}
