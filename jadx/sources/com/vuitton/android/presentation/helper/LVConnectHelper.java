package com.vuitton.android.presentation.helper;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import defpackage.l00;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/helper/LVConnectHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVConnectHelper {
    public static void a(FragmentActivity fragmentActivity) {
        fragmentActivity.getClass();
        l00 l00Var = new l00(fragmentActivity, 12);
        Context applicationContext = fragmentActivity.getApplicationContext();
        applicationContext.getClass();
        try {
            applicationContext.getPackageManager().getPackageInfo("com.vuittoncompanion.android", 0);
            ActivityExtKt.h(fragmentActivity, "lvconnect://homepage", l00Var, 2);
        } catch (PackageManager.NameNotFoundException unused) {
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            ref$BooleanRef.f71917b = true;
            ActivityExtKt.h(fragmentActivity, "market://details?id=com.vuittoncompanion.android", new l00(ref$BooleanRef, 13), 2);
            if (ref$BooleanRef.f71917b) {
                return;
            }
            ActivityExtKt.h(fragmentActivity, "https://play.google.com/store/apps/details?id=com.vuittoncompanion.android", l00Var, 2);
        }
    }
}
