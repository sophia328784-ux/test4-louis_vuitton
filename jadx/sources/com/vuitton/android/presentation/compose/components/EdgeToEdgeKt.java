package com.vuitton.android.presentation.compose.components;

import android.app.Activity;
import androidx.activity.ComponentActivity;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.core.type.SystemIconsKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EdgeToEdgeKt {
    public static final void a(ComponentActivity componentActivity, boolean z, boolean z2) {
        SystemBarStyle systemBarStyleA;
        SystemBarStyle systemBarStyleA2;
        componentActivity.getClass();
        if (SystemIconsKt.a(z)) {
            SystemBarStyle.f684e.getClass();
            systemBarStyleA = SystemBarStyle.Companion.b(0, 0);
        } else {
            SystemBarStyle.f684e.getClass();
            systemBarStyleA = SystemBarStyle.Companion.a();
        }
        if (SystemIconsKt.a(z2)) {
            SystemBarStyle.f684e.getClass();
            systemBarStyleA2 = SystemBarStyle.Companion.b(0, 0);
        } else {
            SystemBarStyle.f684e.getClass();
            systemBarStyleA2 = SystemBarStyle.Companion.a();
        }
        EdgeToEdge.a(componentActivity, systemBarStyleA, systemBarStyleA2);
    }

    public static void b(ComponentActivity componentActivity, boolean z, boolean z2, int i2) {
        if ((i2 & 1) != 0) {
            SystemIcons.f43533b.getClass();
            z = false;
        }
        if ((i2 & 2) != 0) {
            SystemIcons.f43533b.getClass();
            z2 = false;
        }
        a(componentActivity, z, z2);
    }

    public static final void c(FragmentActivity fragmentActivity, boolean z, int i2) {
        if (fragmentActivity.getWindow() == null) {
            return;
        }
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(fragmentActivity.getWindow(), fragmentActivity.getWindow().getDecorView());
        if (z) {
            windowInsetsControllerCompat.g(i2);
        } else {
            windowInsetsControllerCompat.f();
            windowInsetsControllerCompat.a(i2);
        }
    }

    public static final void d(Activity activity, boolean z, boolean z2) {
        activity.getClass();
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(activity.getWindow(), activity.getWindow().getDecorView());
        windowInsetsControllerCompat.e(SystemIconsKt.a(z));
        windowInsetsControllerCompat.d(SystemIconsKt.a(z2));
    }
}
