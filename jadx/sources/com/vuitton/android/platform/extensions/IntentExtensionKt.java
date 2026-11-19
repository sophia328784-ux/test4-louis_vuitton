package com.vuitton.android.platform.extensions;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResultLauncher;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"platform"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class IntentExtensionKt {
    public static final void a(Context context, Intent intent) {
        intent.getClass();
        context.getClass();
        context.startActivity(intent);
    }

    public static final void b(Intent intent, ActivityResultLauncher activityResultLauncher) {
        intent.getClass();
        activityResultLauncher.getClass();
        activityResultLauncher.a(intent);
    }
}
