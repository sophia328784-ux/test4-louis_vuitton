package com.vuitton.android.presentation.extensions;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import com.vuitton.android.R;
import com.vuitton.android.domain.reporter.CrashReporter;
import com.vuitton.android.presentation.di.CrashReporterEntryPoint;
import dagger.hilt.android.EntryPointAccessors;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ActivityViewTreeExtKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f51498a;

    static {
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        setNewSetFromMap.getClass();
        f51498a = setNewSetFromMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Activity activity) {
        View decorView;
        Window window = activity.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        boolean z = false;
        boolean z2 = (activity instanceof LifecycleOwner) && ViewTreeLifecycleOwner.a(decorView) == null;
        boolean z3 = (activity instanceof SavedStateRegistryOwner) && ViewTreeSavedStateRegistryOwner.a(decorView) == null;
        if ((activity instanceof ViewModelStoreOwner) && ViewTreeViewModelStoreOwner.a(decorView) == null) {
            z = true;
        }
        if (z2 || z3 || z) {
            if (z2) {
                decorView.setTag(R.id.view_tree_lifecycle_owner, (LifecycleOwner) activity);
            }
            if (z3) {
                decorView.setTag(R.id.view_tree_saved_state_registry_owner, (SavedStateRegistryOwner) activity);
            }
            if (z) {
                decorView.setTag(R.id.view_tree_view_model_store_owner, (ViewModelStoreOwner) activity);
            }
            Context applicationContext = activity.getApplicationContext();
            applicationContext.getClass();
            CrashReporter crashReporterD = ((CrashReporterEntryPoint) EntryPointAccessors.a(applicationContext, CrashReporterEntryPoint.class)).d();
            if (crashReporterD.isReady()) {
                String strB = Reflection.f71922a.b(activity.getClass()).B();
                if (strB == null) {
                    strB = "";
                }
                String str = Build.MANUFACTURER;
                String str2 = Build.MODEL;
                int i2 = Build.VERSION.SDK_INT;
                StringBuilder sbS = d21.s("[ViewTreeLifecycleOwner ComposeView crash fix] DecorView missing ViewTree owners in ", strB, " [lifecycle=", ", savedState=", z2);
                fc.y(sbS, z3, ", vmStore=", z, "] on ");
                cj.C(sbS, str, " ", str2, " API ");
                String strI = a.i(i2, ". Forcing setup as fallback.", sbS);
                crashReporterD.a("W/ViewTreeOwners: ".concat(strI));
                crashReporterD.e();
                crashReporterD.d("vt_owner_fallback_last_activity", strB);
                crashReporterD.d("vt_owner_fallback_device", d21.p(new StringBuilder(), str, " ", str2));
                crashReporterD.c(i2);
                if (f51498a.add(strB)) {
                    crashReporterD.b(new ViewTreeOwnersFallbackApplied(strI));
                }
            }
        }
    }
}
