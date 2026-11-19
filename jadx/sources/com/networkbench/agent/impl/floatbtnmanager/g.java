package com.networkbench.agent.impl.floatbtnmanager;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g f37098b;
    private static final com.networkbench.agent.impl.c.e d = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WindowManager f37099a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f37100c;

    private g(Context context) {
        this.f37100c = context;
        this.f37099a = (WindowManager) context.getSystemService("window");
    }

    public static g a(Context context) {
        if (f37098b == null) {
            f37098b = new g(context);
        }
        return f37098b;
    }

    public boolean b(View view, WindowManager.LayoutParams layoutParams) {
        try {
            this.f37099a.updateViewLayout(view, layoutParams);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean a(View view, WindowManager.LayoutParams layoutParams) {
        try {
            this.f37099a.addView(view, layoutParams);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean a(View view) {
        try {
            this.f37099a.removeView(view);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
