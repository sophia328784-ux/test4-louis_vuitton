package com.vuitton.android.presentation.utils;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationManagerCompat;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/NotificationUtils;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationUtils {
    public static boolean a(Context context) {
        context.getClass();
        return new NotificationManagerCompat(context).f11955b.areNotificationsEnabled();
    }

    public static void b(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        context.startActivity(intent);
    }
}
