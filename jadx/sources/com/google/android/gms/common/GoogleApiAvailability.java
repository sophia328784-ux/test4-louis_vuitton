package com.google.android.gms.common;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.TypedValue;
import androidx.core.app.NotificationCompat$BigTextStyle;
import androidx.core.app.NotificationCompat$Builder;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.zaq;
import com.google.android.gms.common.internal.zab;
import com.google.android.gms.common.internal.zaf;
import com.google.android.gms.common.internal.zaj;
import com.google.android.gms.common.util.DeviceProperties;
import com.networkbench.agent.impl.NBSSpanMetricUnit;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {
    public static final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final GoogleApiAvailability f28961e = new GoogleApiAvailability();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zaq f28962c;

    public static AlertDialog d(Activity activity, int i2, zaj zajVar, DialogInterface.OnCancelListener onCancelListener) {
        String string;
        if (i2 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(zaf.b(i2, activity));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = activity.getResources();
        if (i2 == 1) {
            string = resources.getString(com.vuitton.android.R.string.common_google_play_services_install_button);
        } else if (i2 != 2) {
            string = i2 != 3 ? resources.getString(R.string.ok) : resources.getString(com.vuitton.android.R.string.common_google_play_services_enable_button);
        } else {
            string = resources.getString(com.vuitton.android.R.string.common_google_play_services_update_button);
        }
        if (string != null) {
            builder.setPositiveButton(string, zajVar);
        }
        String strA = zaf.a(i2, activity);
        if (strA != null) {
            builder.setTitle(strA);
        }
        new IllegalArgumentException();
        return builder.create();
    }

    public static void h(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
                SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
                Preconditions.i(alertDialog, "Cannot display null dialog");
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                supportErrorDialogFragment.A = alertDialog;
                if (onCancelListener != null) {
                    supportErrorDialogFragment.B = onCancelListener;
                }
                supportErrorDialogFragment.show(supportFragmentManager, str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        android.app.FragmentManager fragmentManager = activity.getFragmentManager();
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Preconditions.i(alertDialog, "Cannot display null dialog");
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        errorDialogFragment.f28956b = alertDialog;
        if (onCancelListener != null) {
            errorDialogFragment.f28957c = onCancelListener;
        }
        errorDialogFragment.show(fragmentManager, str);
    }

    public final void c(GoogleApiActivity googleApiActivity, int i2, GoogleApiActivity googleApiActivity2) {
        AlertDialog alertDialogD = d(googleApiActivity, i2, zaj.b(super.a(googleApiActivity, i2, NBSSpanMetricUnit.Day), googleApiActivity), googleApiActivity2);
        if (alertDialogD == null) {
            return;
        }
        h(googleApiActivity, alertDialogD, "GooglePlayServicesErrorDialog", googleApiActivity2);
    }

    public final void e(Activity activity, LifecycleFragment lifecycleFragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialogD = d(activity, i2, zaj.c(super.a(activity, i2, NBSSpanMetricUnit.Day), lifecycleFragment), onCancelListener);
        if (alertDialogD == null) {
            return;
        }
        h(activity, alertDialogD, "GooglePlayServicesErrorDialog", onCancelListener);
    }

    public final void f(Context context, int i2, PendingIntent pendingIntent) {
        int i3;
        new IllegalArgumentException();
        if (i2 == 18) {
            new zad(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            return;
        }
        String strE = i2 == 6 ? zaf.e(context, "common_google_play_services_resolution_required_title") : zaf.a(i2, context);
        if (strE == null) {
            strE = context.getResources().getString(com.vuitton.android.R.string.common_google_play_services_notification_ticker);
        }
        String strD = (i2 == 6 || i2 == 19) ? zaf.d(context, "common_google_play_services_resolution_required_text", zaf.c(context)) : zaf.b(i2, context);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        Preconditions.h(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context);
        notificationCompat$Builder.y = true;
        notificationCompat$Builder.g(16, true);
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(strE);
        NotificationCompat$BigTextStyle notificationCompat$BigTextStyle = new NotificationCompat$BigTextStyle();
        notificationCompat$BigTextStyle.f11896e = NotificationCompat$Builder.e(strD);
        notificationCompat$Builder.i(notificationCompat$BigTextStyle);
        PackageManager packageManager = context.getPackageManager();
        if (DeviceProperties.f29337a == null) {
            DeviceProperties.f29337a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        boolean zBooleanValue = DeviceProperties.f29337a.booleanValue();
        int i4 = R.drawable.stat_sys_warning;
        if (zBooleanValue) {
            int i5 = context.getApplicationInfo().icon;
            if (i5 != 0) {
                i4 = i5;
            }
            notificationCompat$Builder.Q.icon = i4;
            notificationCompat$Builder.m = 2;
            if (DeviceProperties.a(context)) {
                notificationCompat$Builder.a(2131230904, pendingIntent, resources.getString(com.vuitton.android.R.string.common_open_on_phone));
            } else {
                notificationCompat$Builder.f11912h = pendingIntent;
            }
        } else {
            notificationCompat$Builder.Q.icon = R.drawable.stat_sys_warning;
            notificationCompat$Builder.Q.tickerText = NotificationCompat$Builder.e(resources.getString(com.vuitton.android.R.string.common_google_play_services_notification_ticker));
            notificationCompat$Builder.Q.when = System.currentTimeMillis();
            notificationCompat$Builder.f11912h = pendingIntent;
            notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(strD);
        }
        synchronized (d) {
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
        String string = context.getResources().getString(com.vuitton.android.R.string.common_google_play_services_notification_channel_name);
        if (notificationChannel == null) {
            notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
        } else if (!string.contentEquals(notificationChannel.getName())) {
            notificationChannel.setName(string);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        notificationCompat$Builder.I = "com.google.android.gms.availability";
        Notification notificationC = notificationCompat$Builder.c();
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            GooglePlayServicesUtilLight.f28966a.set(false);
            i3 = 10436;
        } else {
            i3 = 39789;
        }
        notificationManager.notify(i3, notificationC);
    }

    public final void g(Context context, ConnectionResult connectionResult, boolean z) {
        Integer num = connectionResult.f28955f;
        zab zabVar = new zab(num == null ? -1 : num.intValue(), context.getPackageName(), System.currentTimeMillis(), connectionResult.f28953c, z);
        if (this.f28962c == null) {
            this.f28962c = new zaq(context);
        }
        this.f28962c.j(zabVar);
    }
}
