package com.batch.android;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.net.Uri;
import android.text.TextUtils;
import com.batch.android.e.t;
import com.batch.android.n.y;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final class BatchNotificationChannelsManager {
    public static final String DEFAULT_CHANNEL_ID = "_BATCHSDK_DEFAULT";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22820a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ChannelNameProvider f22821b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NotificationChannelIdInterceptor f22822c = null;
    private com.batch.android.v0.j d;

    public interface ChannelNameProvider {
        String getDefaultChannelName();
    }

    public interface NotificationChannelIdInterceptor {
        String getChannelId(BatchPushPayload batchPushPayload, String str);
    }

    public static final class StringResChannelNameProvider implements ChannelNameProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f22823a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f22824b;

        public StringResChannelNameProvider(Context context, int i2) {
            this.f22823a = context.getApplicationContext();
            this.f22824b = i2;
        }

        @Override // com.batch.android.BatchNotificationChannelsManager.ChannelNameProvider
        public String getDefaultChannelName() {
            return this.f22823a.getResources().getString(this.f22824b);
        }
    }

    private BatchNotificationChannelsManager(com.batch.android.v0.j jVar) {
        this.d = jVar;
    }

    private boolean b() {
        return this.f22820a != null;
    }

    public static boolean openSystemChannelSettings(Context context, String str) {
        if (context == null) {
            md.n("Context is mandatory");
            return false;
        }
        if (str == null) {
            md.n("ChannelId is mandatory");
            return false;
        }
        try {
            Intent intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
            intent.setFlags(268435456);
            intent.putExtra("android.provider.extra.CHANNEL_ID", str);
            intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
            context.startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static BatchNotificationChannelsManager provide() {
        return new BatchNotificationChannelsManager(y.a());
    }

    public void a(Context context) {
        if (b()) {
            t.c(com.batch.android.v0.j.m, "Channel ID overridden, not registering Batch's channel.");
            return;
        }
        t.c(com.batch.android.v0.j.m, "Registering default Batch notification channel");
        NotificationChannel notificationChannel = new NotificationChannel(DEFAULT_CHANNEL_ID, a(), 3);
        notificationChannel.setShowBadge(true);
        notificationChannel.enableLights(true);
        notificationChannel.enableVibration(true);
        Uri uriR = this.d.r();
        if (uriR != null) {
            notificationChannel.setSound(uriR, new AudioAttributes.Builder().setUsage(5).build());
        }
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
    }

    public void setChannelIdInterceptor(NotificationChannelIdInterceptor notificationChannelIdInterceptor) {
        this.f22822c = notificationChannelIdInterceptor;
    }

    public void setChannelIdOverride(String str) {
        this.f22820a = str;
    }

    public void setChannelName(Context context, int i2) {
        setChannelNameProvider(new StringResChannelNameProvider(context, i2));
    }

    public void setChannelNameProvider(ChannelNameProvider channelNameProvider) {
        this.f22821b = channelNameProvider;
    }

    public static boolean openSystemChannelSettings(Context context) {
        return openSystemChannelSettings(context, DEFAULT_CHANNEL_ID);
    }

    public String a(BatchPushPayload batchPushPayload) {
        NotificationChannelIdInterceptor notificationChannelIdInterceptor;
        String str = this.f22820a;
        if (str == null) {
            str = DEFAULT_CHANNEL_ID;
        }
        if (batchPushPayload != null && (notificationChannelIdInterceptor = this.f22822c) != null) {
            try {
                String channelId = notificationChannelIdInterceptor.getChannelId(batchPushPayload, str);
                if (channelId != null) {
                    return channelId;
                }
            } catch (Exception e2) {
                t.a(com.batch.android.v0.j.m, "An exception occurred while calling the specified channel id interceptor. Falling back on '" + str + "'", e2);
            }
        }
        return str;
    }

    public String a() {
        String defaultChannelName;
        ChannelNameProvider channelNameProvider = this.f22821b;
        if (channelNameProvider != null) {
            try {
                defaultChannelName = channelNameProvider.getDefaultChannelName();
            } catch (Exception e2) {
                t.a(com.batch.android.v0.j.m, "An exception occurred while calling the specified channel id interceptor. Falling back on the default name.", e2);
                defaultChannelName = null;
            }
        } else {
            defaultChannelName = null;
        }
        return TextUtils.isEmpty(defaultChannelName) ? "Notifications" : defaultChannelName;
    }
}
