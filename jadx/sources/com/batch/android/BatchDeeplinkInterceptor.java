package com.batch.android;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.TaskStackBuilder;

/* JADX INFO: loaded from: classes.dex */
public interface BatchDeeplinkInterceptor {
    default Intent getFallbackIntent(Context context) {
        return com.batch.android.e.f.a(context);
    }

    Intent getIntent(Context context, String str);

    TaskStackBuilder getTaskStackBuilder(Context context, String str);
}
