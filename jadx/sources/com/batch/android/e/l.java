package com.batch.android.e;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23110b = "ExcludedActivityHelper";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23111c = "com.batch.android.EXCLUDE_FROM_LIFECYCLE";
    private static final Map<Class<?>, Boolean> d = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Intent f23112a;

    public static boolean a(Activity activity) {
        Map<Class<?>, Boolean> map = d;
        Boolean bool = map.get(activity.getClass());
        if (bool != null) {
            return bool.booleanValue();
        }
        Boolean boolValueOf = Boolean.FALSE;
        try {
            Bundle bundle = activity.getPackageManager().getActivityInfo(activity.getComponentName(), 128).metaData;
            if (bundle != null) {
                boolValueOf = Boolean.valueOf(bundle.getBoolean(f23111c, false));
                map.put(activity.getClass(), boolValueOf);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return boolValueOf.booleanValue();
    }

    public void b(Activity activity) {
        if (activity.getIntent() == null || !new com.batch.android.h(activity).g()) {
            return;
        }
        this.f23112a = activity.getIntent();
        t.c(f23110b, "Saving the intent for the next start");
    }

    public Intent b() {
        Intent intent = this.f23112a;
        this.f23112a = null;
        return intent;
    }

    public boolean a() {
        return this.f23112a != null;
    }
}
