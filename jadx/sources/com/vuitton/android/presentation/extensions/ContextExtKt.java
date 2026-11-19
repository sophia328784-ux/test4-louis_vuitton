package com.vuitton.android.presentation.extensions;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AppCompatActivity;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.presentation.screen.maintenance.MaintenanceActivity;
import defpackage.d21;
import defpackage.je;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContextExtKt {
    public static final String a(int i2, Context context) {
        return d21.j(context.getString(i2), Browse.CAPS_WILDCARD);
    }

    public static final AppCompatActivity b(Context context) {
        context.getClass();
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        Context baseContext = ((ContextWrapper) context).getBaseContext();
        baseContext.getClass();
        return b(baseContext);
    }

    public static final float c(Context context) {
        Point point;
        context.getClass();
        if (Build.VERSION.SDK_INT >= 30) {
            WindowMetrics currentWindowMetrics = ((Activity) context).getWindowManager().getCurrentWindowMetrics();
            currentWindowMetrics.getClass();
            Rect bounds = currentWindowMetrics.getBounds();
            bounds.getClass();
            point = new Point(bounds.width(), bounds.height());
        } else {
            Object systemService = context.getSystemService("window");
            systemService.getClass();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) systemService).getDefaultDisplay().getRealMetrics(displayMetrics);
            point = new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        return point.x / point.y;
    }

    public static final void d(Context context, IBinder iBinder) {
        InputMethodManager inputMethodManager;
        if (iBinder == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(iBinder, 0);
    }

    public static final boolean e(Context context) {
        Object failure;
        context.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = context.getSystemService(ActionFloatingViewItem.f37018a);
            systemService.getClass();
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(Integer.MAX_VALUE);
            runningTasks.getClass();
            List<ActivityManager.RunningTaskInfo> list = runningTasks;
            boolean z = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    ComponentName componentName = ((ActivityManager.RunningTaskInfo) it.next()).baseActivity;
                    if (Intrinsics.c(componentName != null ? componentName.getClassName() : null, MaintenanceActivity.class.getName())) {
                        z = true;
                        break;
                    }
                }
            }
            failure = Boolean.valueOf(z);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Object obj = Boolean.FALSE;
        Result.Companion companion3 = Result.INSTANCE;
        if (failure instanceof Result.Failure) {
            failure = obj;
        }
        return ((Boolean) failure).booleanValue();
    }

    public static final je f(Context context) {
        context.getClass();
        return new je(context, 6);
    }
}
