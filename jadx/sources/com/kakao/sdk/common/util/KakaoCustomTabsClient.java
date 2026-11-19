package com.kakao.sdk.common.util;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import com.kakao.sdk.auth.CustomTabLauncherActivity;
import defpackage.md;
import defpackage.x1;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;", "", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class KakaoCustomTabsClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f35882a = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [android.content.ServiceConnection, androidx.browser.customtabs.CustomTabsServiceConnection, com.kakao.sdk.common.util.KakaoCustomTabsClient$openWithDefault$connection$1] */
    public static KakaoCustomTabsClient$openWithDefault$connection$1 a(final CustomTabLauncherActivity customTabLauncherActivity, final Uri uri) {
        final String str;
        ActivityInfo activityInfo;
        ActivityInfo activityInfo2;
        uri.getClass();
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        int i2 = Build.VERSION.SDK_INT;
        ResolveInfo resolveInfoResolveActivity = i2 >= 33 ? customTabLauncherActivity.getPackageManager().resolveActivity(intent, PackageManager.ResolveInfoFlags.of(65536L)) : customTabLauncherActivity.getPackageManager().resolveActivity(intent, 65536);
        Intent action = new Intent().setAction("android.support.customtabs.action.CustomTabsService");
        action.getClass();
        List<ResolveInfo> listQueryIntentServices = i2 >= 33 ? customTabLauncherActivity.getPackageManager().queryIntentServices(action, PackageManager.ResolveInfoFlags.of(0L)) : customTabLauncherActivity.getPackageManager().queryIntentServices(action, 0);
        listQueryIntentServices.getClass();
        Iterator<ResolveInfo> it = listQueryIntentServices.iterator();
        String str2 = null;
        while (true) {
            if (it.hasNext()) {
                ResolveInfo next = it.next();
                if (str2 == null) {
                    String str3 = next.serviceInfo.packageName;
                    str3.getClass();
                    if (ArraysKt.f(str3, f35882a)) {
                        str2 = next.serviceInfo.packageName;
                    }
                }
                if (Intrinsics.c(next.serviceInfo.packageName, (resolveInfoResolveActivity == null || (activityInfo2 = resolveInfoResolveActivity.activityInfo) == null) ? null : activityInfo2.packageName)) {
                    if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null) {
                        str = activityInfo.packageName;
                        break;
                    }
                    break;
                }
            }
            str = null;
            break;
        }
        if (str == null && str2 != null) {
            str = str2;
        }
        if (str == null) {
            x1.i();
            return null;
        }
        SdkLog.d.getClass();
        SdkLog.a((SdkLog) SdkLog.f35886e.getF71699b(), "Choosing " + str + " as custom tabs browser", SdkLogLevel.D);
        ?? r1 = new CustomTabsServiceConnection() { // from class: com.kakao.sdk.common.util.KakaoCustomTabsClient$openWithDefault$connection$1
            @Override // androidx.browser.customtabs.CustomTabsServiceConnection
            public final void a(ComponentName componentName, CustomTabsClient customTabsClient) {
                componentName.getClass();
                CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
                Intent intent2 = builder.f1379a;
                intent2.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", true);
                intent2.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 1);
                Intent intent3 = builder.a().f1377a;
                intent3.setData(uri);
                intent3.setPackage(str);
                customTabLauncherActivity.startActivity(intent3);
            }

            @Override // android.content.ServiceConnection
            public final void onServiceDisconnected(ComponentName componentName) {
                SdkLog.d.getClass();
                SdkLog.a((SdkLog) SdkLog.f35886e.getF71699b(), "onServiceDisconnected: " + componentName, SdkLogLevel.D);
            }
        };
        r1.f1382b = customTabLauncherActivity.getApplicationContext();
        Intent intent2 = new Intent("android.support.customtabs.action.CustomTabsService");
        if (str.isEmpty()) {
            md.n("Service Intents must be explicit");
            return null;
        }
        intent2.setPackage(str);
        if (customTabLauncherActivity.bindService(intent2, (ServiceConnection) r1, 33)) {
            return r1;
        }
        return null;
    }
}
