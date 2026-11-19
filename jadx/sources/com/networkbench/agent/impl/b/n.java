package com.networkbench.agent.impl.b;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.networkbench.agent.impl.util.r;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36534a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f36535b = 50;
    private String d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f36537e = "Dear developer,a slowly operation is blocking the main thread.";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f36536c = false;

    private ActivityManager.ProcessErrorStateInfo a(Context context, long j2) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a);
        long j3 = j2 / 500;
        int i2 = 0;
        while (!this.f36536c) {
            List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
            if (processesInErrorState != null) {
                for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                    if (processErrorStateInfo.condition == 2) {
                        return processErrorStateInfo;
                    }
                }
            }
            try {
                Thread.sleep(500L);
            } catch (Exception e2) {
                f36534a.e("geteErrorStateInfo e = " + e2);
            }
            int i3 = i2 + 1;
            if (i2 >= j3) {
                return null;
            }
            i2 = i3;
        }
        f36534a.a("ui thread is active, skip");
        return null;
    }

    public String b() {
        return this.f36537e;
    }

    public void c() {
        this.f36536c = true;
    }

    public String a() {
        return this.d;
    }

    public void a(Context context) throws com.networkbench.agent.impl.util.d {
        ActivityManager.ProcessErrorStateInfo processErrorStateInfoA;
        if (context == null) {
            return;
        }
        try {
            processErrorStateInfoA = a(context, r.x);
            if (processErrorStateInfoA != null) {
                try {
                    if (processErrorStateInfoA.pid == Process.myPid()) {
                        String str = processErrorStateInfoA.shortMsg;
                        this.d = processErrorStateInfoA.longMsg;
                        this.f36537e = str;
                    }
                } catch (Throwable th) {
                    th = th;
                    f36534a.e(th.getMessage());
                }
            }
        } catch (Throwable th2) {
            th = th2;
            processErrorStateInfoA = null;
        }
        if (processErrorStateInfoA == null) {
            throw new com.networkbench.agent.impl.util.d("not catch ProcessErrorStateInfo");
        }
    }
}
