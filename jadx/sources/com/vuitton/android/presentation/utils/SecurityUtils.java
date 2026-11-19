package com.vuitton.android.presentation.utils;

import android.app.Activity;
import android.view.Window;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/SecurityUtils;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SecurityUtils {
    public static void a(Activity activity) {
        Window window;
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        window.clearFlags(8192);
    }

    public static void b(Activity activity) {
        Window window;
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        window.setFlags(8192, 8192);
    }
}
