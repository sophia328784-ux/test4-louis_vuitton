package com.sightcall.universal.internal.ui;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.media.AudioAttributes;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public class UniversalNotificationChannel {
    private final int id;
    private final int importance;
    private final int name;
    public static final UniversalNotificationChannel RINGTONE = new AnonymousClass1(R.string.universal_incoming_call_notification_channel_id, R.string.universal_incoming_call_notification_channel_name);
    public static final UniversalNotificationChannel MEDIA_UPLOADER = new UniversalNotificationChannel("MEDIA_UPLOADER", 1, R.string.universal_media_uploader_notification_channel_id, R.string.universal_media_uploader_notification_channel_name, 2);
    public static final UniversalNotificationChannel OFFLINE_MEDIA_UPLOADER = new UniversalNotificationChannel("OFFLINE_MEDIA_UPLOADER", 2, R.string.universal_offline_media_uploader_notification_channel_id, R.string.universal_offline_media_uploader_notification_channel_name, 4);
    public static final UniversalNotificationChannel DEFAULT = new UniversalNotificationChannel("DEFAULT", 3, R.string.universal_default_notification_channel_id, R.string.universal_default_notification_channel_name, 3);
    public static final UniversalNotificationChannel DEFAULT_HIGH = new UniversalNotificationChannel("DEFAULT_HIGH", 4, R.string.universal_default_high_notification_channel_id, R.string.universal_default_high_notification_channel_name, 4);
    public static final UniversalNotificationChannel DEFAULT_LOW = new UniversalNotificationChannel("DEFAULT_LOW", 5, R.string.universal_default_low_notification_channel_id, R.string.universal_default_low_notification_channel_name, 2);
    private static final /* synthetic */ UniversalNotificationChannel[] $VALUES = $values();

    private static /* synthetic */ UniversalNotificationChannel[] $values() {
        return new UniversalNotificationChannel[]{RINGTONE, MEDIA_UPLOADER, OFFLINE_MEDIA_UPLOADER, DEFAULT, DEFAULT_HIGH, DEFAULT_LOW};
    }

    private UniversalNotificationChannel(String str, int i2, int i3, int i4, int i5) {
        super(str, i2);
        this.id = i3;
        this.name = i4;
        this.importance = i5;
    }

    private static void create(Context context, NotificationChannel notificationChannel) {
        if (SdkUtilsKt.isAtLeastSdk26()) {
            ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(notificationChannel);
        }
    }

    private CharSequence getName(Context context) {
        return context.getText(this.name);
    }

    public static UniversalNotificationChannel valueOf(String str) {
        return (UniversalNotificationChannel) Enum.valueOf(UniversalNotificationChannel.class, str);
    }

    public static UniversalNotificationChannel[] values() {
        return (UniversalNotificationChannel[]) $VALUES.clone();
    }

    public NotificationChannel channel(Context context) {
        return new NotificationChannel(id(context), getName(context), this.importance);
    }

    public String id(Context context) {
        return context.getString(this.id);
    }

    private int getName() {
        return this.name;
    }

    public int id() {
        return this.id;
    }

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.UniversalNotificationChannel$1, reason: invalid class name */
    public final enum AnonymousClass1 extends UniversalNotificationChannel {
        public /* synthetic */ AnonymousClass1(int i2, int i3) {
            this("RINGTONE", 0, i2, i3, 5);
        }

        @Override // com.sightcall.universal.internal.ui.UniversalNotificationChannel
        public NotificationChannel channel(Context context) {
            NotificationChannel notificationChannelChannel = super.channel(context);
            notificationChannelChannel.setSound(UniversalNotification.findDefaultRingtone(context), new AudioAttributes.Builder().setContentType(0).setUsage(6).build());
            notificationChannelChannel.enableVibration(true);
            return notificationChannelChannel;
        }

        private AnonymousClass1(String str, int i2, int i3, int i4, int i5) {
            super(i2, str, i3, i4, i5, 0);
        }
    }

    public /* synthetic */ UniversalNotificationChannel(int i2, String str, int i3, int i4, int i5, int i6) {
        this(str, i2, i3, i4, i5);
    }

    public void create(Context context) {
        if (SdkUtilsKt.isAtLeastSdk26()) {
            create(context, channel(context));
        }
    }
}
