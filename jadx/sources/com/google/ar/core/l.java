package com.google.ar.core;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.ar.core.exceptions.FatalException;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.r81;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
final class l extends ArCoreApk {
    public static final l m = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Exception f33419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f33420c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f33421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f33422f;
    public ArCoreApk.Availability g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f33423h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public y f33424i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f33425j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f33426k;
    public int l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f33418a = new Handler(Looper.getMainLooper());
    public boolean d = true;

    public static int d(Context context) {
        if (SessionCreateJniHelper.useProjectedApk(context)) {
            return SessionCreateJniHelper.getMinApkVersion(context);
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.ar.core", 4);
            int i2 = packageInfo.versionCode;
            if (i2 != 0) {
                return i2;
            }
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            return (serviceInfoArr == null || serviceInfoArr.length == 0) ? -1 : 0;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    public final synchronized y a(Context context) {
        try {
            if (this.f33424i == null) {
                y yVar = new y();
                yVar.a(context.getApplicationContext());
                this.f33424i = yVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f33424i;
    }

    public final synchronized void b() {
        try {
            if (this.f33419b == null) {
                this.f33421e = 0;
            }
            this.f33420c = false;
            y yVar = this.f33424i;
            if (yVar != null) {
                yVar.b();
                this.f33424i = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(Context context, h hVar) {
        ArCoreApk.Availability availability;
        try {
            e(context);
            if (d(context) == 0 || d(context) >= this.l) {
                b();
                try {
                    availability = ak.a(context) != null ? ArCoreApk.Availability.SUPPORTED_APK_TOO_OLD : ArCoreApk.Availability.SUPPORTED_INSTALLED;
                } catch (UnavailableDeviceNotCompatibleException unused) {
                    availability = ArCoreApk.Availability.UNSUPPORTED_DEVICE_NOT_CAPABLE;
                } catch (UnavailableUserDeclinedInstallationException | RuntimeException unused2) {
                    availability = ArCoreApk.Availability.UNKNOWN_ERROR;
                }
                hVar.a(availability);
                return;
            }
            if (d(context) != -1) {
                hVar.a(ArCoreApk.Availability.SUPPORTED_APK_TOO_OLD);
                return;
            }
            e(context);
            if (this.f33426k) {
                hVar.a(ArCoreApk.Availability.SUPPORTED_NOT_INSTALLED);
            } else {
                a(context).c(context, hVar);
            }
        } catch (FatalException unused3) {
            hVar.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        }
    }

    @Override // com.google.ar.core.ArCoreApk
    public final ArCoreApk.Availability checkAvailability(Context context) {
        synchronized (this) {
            try {
                ArCoreApk.Availability availability = this.g;
                if (availability == null || availability.isUnknown()) {
                    if (!this.f33423h) {
                        this.f33423h = true;
                        c(context, new i(this));
                    }
                }
                ArCoreApk.Availability availability2 = this.g;
                if (availability2 != null) {
                    if (!availability2.isUnsupported()) {
                        this.g = null;
                    }
                    return availability2;
                }
                if (this.f33423h) {
                    return ArCoreApk.Availability.UNKNOWN_CHECKING;
                }
                return ArCoreApk.Availability.UNKNOWN_ERROR;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.ar.core.ArCoreApk
    public final void checkAvailabilityAsync(Context context, Consumer consumer) {
        c(context, new k(this, consumer));
    }

    public final synchronized void e(Context context) {
        if (this.f33425j) {
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            Bundle bundle = packageManager.getApplicationInfo(packageName, 128).metaData;
            if (!bundle.containsKey("com.google.ar.core")) {
                throw new FatalException("Application manifest must contain meta-data com.google.ar.core");
            }
            String string = bundle.getString("com.google.ar.core");
            Objects.requireNonNull(string);
            this.f33426k = string.equals("required");
            if (!bundle.containsKey("com.google.ar.core.min_apk_version")) {
                throw new FatalException("Application manifest must contain meta-data com.google.ar.core.min_apk_version");
            }
            this.l = bundle.getInt("com.google.ar.core.min_apk_version");
            try {
                ActivityInfo[] activityInfoArr = packageManager.getPackageInfo(packageName, 1).activities;
                String canonicalName = InstallActivity.class.getCanonicalName();
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if (canonicalName.equals(activityInfo.name)) {
                        this.f33425j = true;
                        return;
                    }
                }
                StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 43);
                sb.append("Application manifest must contain activity ");
                sb.append(canonicalName);
                throw new FatalException(sb.toString());
            } catch (PackageManager.NameNotFoundException e2) {
                throw new FatalException("Could not load application package info", e2);
            }
        } catch (PackageManager.NameNotFoundException e3) {
            throw new FatalException("Could not load application package metadata", e3);
        }
    }

    @Override // com.google.ar.core.ArCoreApk
    public final ArCoreApk.InstallStatus requestInstall(Activity activity, boolean z, ArCoreApk.InstallBehavior installBehavior, ArCoreApk.UserMessageType userMessageType) throws UnavailableUserDeclinedInstallationException, UnavailableDeviceNotCompatibleException {
        e(activity);
        if (d(activity) == 0 || d(activity) >= this.l) {
            b();
            PendingIntent pendingIntentA = ak.a(activity);
            if (pendingIntentA != null) {
                try {
                    activity.startIntentSender(pendingIntentA.getIntentSender(), null, 0, 0, 0, Build.VERSION.SDK_INT > 33 ? ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle() : null);
                    return ArCoreApk.InstallStatus.INSTALL_REQUESTED;
                } catch (IntentSender.SendIntentException | RuntimeException unused) {
                }
            }
            return ArCoreApk.InstallStatus.INSTALLED;
        }
        if (this.f33420c) {
            return ArCoreApk.InstallStatus.INSTALL_REQUESTED;
        }
        Exception exc = this.f33419b;
        if (exc != null) {
            if (!z) {
                if (exc instanceof UnavailableDeviceNotCompatibleException) {
                    throw ((UnavailableDeviceNotCompatibleException) exc);
                }
                if (exc instanceof UnavailableUserDeclinedInstallationException) {
                    throw ((UnavailableUserDeclinedInstallationException) exc);
                }
                if (exc instanceof RuntimeException) {
                    throw ((RuntimeException) exc);
                }
                r81.g("Unexpected exception type", exc);
                return null;
            }
            this.f33419b = null;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (jUptimeMillis - this.f33422f > LiveTranslationEntity.DefaultSentenceTimeOut) {
            this.f33421e = 0;
        }
        int i2 = this.f33421e + 1;
        this.f33421e = i2;
        this.f33422f = jUptimeMillis;
        if (i2 > 2) {
            r81.i("Requesting ARCore installation too rapidly.");
            return null;
        }
        try {
            activity.startActivity(new Intent(activity, (Class<?>) InstallActivity.class).putExtra("message", userMessageType).putExtra("behavior", installBehavior));
            this.f33420c = true;
            return ArCoreApk.InstallStatus.INSTALL_REQUESTED;
        } catch (ActivityNotFoundException e2) {
            throw new FatalException("Failed to launch InstallActivity.", e2);
        }
    }

    @Override // com.google.ar.core.ArCoreApk
    public final ArCoreApk.InstallStatus requestInstall(Activity activity, boolean z) {
        ArCoreApk.UserMessageType userMessageType;
        e(activity);
        ArCoreApk.InstallBehavior installBehavior = this.f33426k ? ArCoreApk.InstallBehavior.REQUIRED : ArCoreApk.InstallBehavior.OPTIONAL;
        e(activity);
        if (this.f33426k) {
            userMessageType = ArCoreApk.UserMessageType.APPLICATION;
        } else {
            userMessageType = ArCoreApk.UserMessageType.USER_ALREADY_INFORMED;
        }
        return requestInstall(activity, z, installBehavior, userMessageType);
    }
}
