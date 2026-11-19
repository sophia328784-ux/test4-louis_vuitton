package com.batch.android.e1;

import android.graphics.Bitmap;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$DecoratedCustomViewStyle;
import androidx.core.app.NotificationCompat$Style;
import com.batch.android.R;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends b implements c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23253f = "apen_layout_type";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private EnumC0048a f23254e;

    /* JADX INFO: renamed from: com.batch.android.e1.a$a, reason: collision with other inner class name */
    public enum EnumC0048a {
        CENTER_CROP_MP(0, false),
        CENTER_CROP_200(0, true),
        FIT_CENTER_MP(1, false),
        FIT_CENTER_200(1, true);


        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f23258b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f23259c;

        EnumC0048a(int i2, boolean z) {
            this.f23258b = i2;
            this.f23259c = z;
        }

        public boolean b() {
            return this.f23258b == 1;
        }

        public boolean c() {
            return this.f23259c;
        }
    }

    public a(String str, String str2, Bitmap bitmap, Bitmap bitmap2) {
        super(str, str2, bitmap, bitmap2);
        this.f23254e = EnumC0048a.FIT_CENTER_200;
    }

    @Override // com.batch.android.e1.c
    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            String strOptString = jSONObject.optString(f23253f);
            int iHashCode = strOptString.hashCode();
            if (iHashCode != -1274273647) {
                if (iHashCode != -854791713) {
                    if (iHashCode == -847836028) {
                        strOptString.equals("fit_200");
                    } else if (iHashCode == -728797962 && strOptString.equals("fill_200")) {
                        this.f23254e = EnumC0048a.CENTER_CROP_200;
                        return;
                    }
                } else if (strOptString.equals("fill_mp")) {
                    this.f23254e = EnumC0048a.CENTER_CROP_MP;
                    return;
                }
            } else if (strOptString.equals("fit_mp")) {
                this.f23254e = EnumC0048a.FIT_CENTER_MP;
                return;
            }
            this.f23254e = EnumC0048a.FIT_CENTER_200;
        }
    }

    @Override // com.batch.android.e1.c
    public RemoteViews b(String str) {
        RemoteViews remoteViews = new RemoteViews(str, R.layout.com_batchsdk_notification_layout_apen_collapsed);
        remoteViews.setTextViewText(R.id.com_batchsdk_notification_title, this.f23260a);
        remoteViews.setTextViewText(R.id.com_batchsdk_notification_body, this.f23261b);
        Bitmap bitmap = this.f23262c;
        if (bitmap == null) {
            bitmap = this.d;
        }
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(R.id.com_batchsdk_notification_icon1, bitmap);
            return remoteViews;
        }
        remoteViews.setViewVisibility(R.id.com_batchsdk_notification_icon1, 8);
        return remoteViews;
    }

    public EnumC0048a b() {
        return this.f23254e;
    }

    @Override // com.batch.android.e1.c
    public RemoteViews a(String str) {
        RemoteViews remoteViews;
        int i2;
        if (this.f23254e.c() && this.d != null) {
            remoteViews = new RemoteViews(str, R.layout.com_batchsdk_notification_layout_apen_expanded_200dp);
        } else {
            remoteViews = new RemoteViews(str, R.layout.com_batchsdk_notification_layout_apen_expanded);
        }
        remoteViews.setTextViewText(R.id.com_batchsdk_notification_title, this.f23260a);
        remoteViews.setTextViewText(R.id.com_batchsdk_notification_body, this.f23261b);
        remoteViews.setViewVisibility(R.id.com_batchsdk_notification_icon_centercrop, 8);
        remoteViews.setViewVisibility(R.id.com_batchsdk_notification_icon_fitcenter, 8);
        if (this.f23254e.b()) {
            i2 = R.id.com_batchsdk_notification_icon_fitcenter;
        } else {
            i2 = R.id.com_batchsdk_notification_icon_centercrop;
        }
        Bitmap bitmap = this.d;
        if (bitmap != null) {
            remoteViews.setImageViewBitmap(i2, bitmap);
            remoteViews.setViewVisibility(i2, 0);
        }
        return remoteViews;
    }

    @Override // com.batch.android.e1.c
    public NotificationCompat$Style a() {
        return new NotificationCompat$DecoratedCustomViewStyle();
    }

    @Override // com.batch.android.e1.c
    public void a(NotificationCompat$Builder notificationCompat$Builder) {
    }
}
