package com.batch.android.e1;

import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$Style;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface c {
    RemoteViews a(String str);

    NotificationCompat$Style a();

    void a(NotificationCompat$Builder notificationCompat$Builder);

    void a(JSONObject jSONObject);

    RemoteViews b(String str);
}
