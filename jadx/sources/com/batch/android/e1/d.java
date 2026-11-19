package com.batch.android.e1;

import android.graphics.Bitmap;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat$BigPictureStyle;
import androidx.core.app.NotificationCompat$BigTextStyle;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$Style;
import androidx.core.graphics.drawable.IconCompat;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends b implements c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f23263e;

    public d(String str, String str2, Bitmap bitmap, Bitmap bitmap2, boolean z) {
        super(str, str2, bitmap, bitmap2);
        this.f23263e = z;
    }

    @Override // com.batch.android.e1.c
    public NotificationCompat$Style a() {
        if (this.d == null) {
            NotificationCompat$BigTextStyle notificationCompat$BigTextStyle = new NotificationCompat$BigTextStyle();
            notificationCompat$BigTextStyle.f11896e = NotificationCompat$Builder.e(this.f23261b);
            return notificationCompat$BigTextStyle;
        }
        NotificationCompat$BigPictureStyle notificationCompat$BigPictureStyle = new NotificationCompat$BigPictureStyle();
        Bitmap bitmap = this.d;
        notificationCompat$BigPictureStyle.f11893e = bitmap == null ? null : IconCompat.d(bitmap);
        notificationCompat$BigPictureStyle.f11946c = NotificationCompat$Builder.e(this.f23261b);
        notificationCompat$BigPictureStyle.d = true;
        if (this.f23262c == null && !this.f23263e) {
            notificationCompat$BigPictureStyle.f11894f = null;
            notificationCompat$BigPictureStyle.g = true;
        }
        return notificationCompat$BigPictureStyle;
    }

    @Override // com.batch.android.e1.c
    public RemoteViews b(String str) {
        return null;
    }

    @Override // com.batch.android.e1.c
    public void a(JSONObject jSONObject) {
    }

    @Override // com.batch.android.e1.c
    public RemoteViews a(String str) {
        return null;
    }

    @Override // com.batch.android.e1.c
    public void a(NotificationCompat$Builder notificationCompat$Builder) {
        Bitmap bitmap = this.d;
        if (bitmap != null && !this.f23263e) {
            Bitmap bitmap2 = this.f23262c;
            if (bitmap2 != null) {
                bitmap = bitmap2;
            }
            notificationCompat$Builder.h(bitmap);
            return;
        }
        Bitmap bitmap3 = this.f23262c;
        if (bitmap3 != null) {
            notificationCompat$Builder.h(bitmap3);
        }
    }
}
