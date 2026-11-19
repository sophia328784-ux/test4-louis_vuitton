package com.vuitton.android.presentation.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import android.os.Handler;
import android.os.Looper;
import com.google.ar.core.ArCoreApk;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.presentation.screen.main.MainActivity;
import defpackage.z1;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/ArUtils;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ArUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ArCoreApk.Availability f65830a;

    public static boolean a(Context context) {
        ConfigurationInfo deviceConfigurationInfo;
        context.getClass();
        ArCoreApk.Availability availability = f65830a;
        if (availability == null || !availability.isSupported()) {
            return false;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a);
        String glEsVersion = (activityManager == null || (deviceConfigurationInfo = activityManager.getDeviceConfigurationInfo()) == null) ? null : deviceConfigurationInfo.getGlEsVersion();
        return glEsVersion != null && 3.0d <= Double.parseDouble(glEsVersion);
    }

    public static void b(MainActivity mainActivity) {
        ArCoreApk.Availability availabilityCheckAvailability = ArCoreApk.getInstance().checkAvailability(mainActivity);
        f65830a = availabilityCheckAvailability;
        if (availabilityCheckAvailability == null || !availabilityCheckAvailability.isTransient()) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new z1(mainActivity, 6), 200L);
    }
}
