package com.batch.android.e;

import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.NotificationCompat$Builder;

/* JADX INFO: loaded from: classes.dex */
public class f0 {
    public static boolean a(NotificationCompat$Builder notificationCompat$Builder) {
        try {
            notificationCompat$Builder.getClass().getMethod("setAllowSystemGeneratedContextualActions", Boolean.TYPE).invoke(notificationCompat$Builder, Boolean.FALSE);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void b(View view) {
        if (view == null) {
            return;
        }
        a(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                b(viewGroup.getChildAt(i2));
            }
        }
    }

    public static boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            String str = CoordinatorLayout.u;
            return obj.getClass().isAssignableFrom(CoordinatorLayout.class);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean b() {
        return true;
    }

    public static boolean a() {
        try {
            int i2 = AppCompatActivity.f812h;
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void a(View view) {
        view.setForceDarkAllowed(false);
    }
}
