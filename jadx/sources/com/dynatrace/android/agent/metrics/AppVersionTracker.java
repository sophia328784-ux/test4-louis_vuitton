package com.dynatrace.android.agent.metrics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.dynatrace.agent.metrics.AppVersion;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.util.SdkVersionProvider;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public class AppVersionTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f27561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SdkVersionProvider f27562b;

    static {
        boolean z = Global.f27307a;
    }

    public AppVersionTracker(Context context, SdkVersionProvider sdkVersionProvider) {
        this.f27561a = context;
        this.f27562b = sdkVersionProvider;
    }

    public final AppVersion a() {
        SdkVersionProvider sdkVersionProvider = this.f27562b;
        try {
            int iA = sdkVersionProvider.a();
            Context context = this.f27561a;
            PackageInfo packageInfo = iA >= 33 ? context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L)) : context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo == null) {
                return null;
            }
            return new AppVersion(sdkVersionProvider.a() >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode, packageInfo.versionName);
        } catch (PackageManager.NameNotFoundException unused) {
            if (!Global.f27307a) {
                return null;
            }
            Utility.g();
            return null;
        }
    }
}
