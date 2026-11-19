package com.sightcall.universal.internal.ui;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.Settings;
import android.text.Html;
import android.text.Spanned;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$BigTextStyle;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.content.ContextCompat;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.InstantAppWrapper;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.UniversalAgentCallPendingActivity;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.fcm.messages.Ping;
import com.sightcall.universal.fcm.messages.Test;
import com.sightcall.universal.scenario.steps.ConnectionStep;
import defpackage.fc;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import net.rtccloud.sdk.util.OldLogger;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class UniversalNotification {
    private final int id;
    public static final UniversalNotification OVERLAY_PERMISSION_REQUIRED = new AnonymousClass1(R.id.universal_overlay_permission_notification_id);
    public static final UniversalNotification PING = new AnonymousClass2(R.id.universal_ping_notification_id);
    public static final UniversalNotification GUEST_READY = new AnonymousClass3(R.id.universal_guest_ready_notification_id);
    private static final /* synthetic */ UniversalNotification[] $VALUES = $values();

    private static /* synthetic */ UniversalNotification[] $values() {
        return new UniversalNotification[]{OVERLAY_PERMISSION_REQUIRED, PING, GUEST_READY};
    }

    private UniversalNotification(String str, int i2, int i3) {
        super(str, i2);
        this.id = i3;
    }

    public static Uri findDefaultRingtone(Context context) {
        Uri uri = Settings.System.DEFAULT_RINGTONE_URI;
        if (uri != null) {
            return uri;
        }
        Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(context, 1);
        if (actualDefaultRingtoneUri != null) {
            return actualDefaultRingtoneUri;
        }
        Uri uri2 = Settings.System.DEFAULT_ALARM_ALERT_URI;
        if (uri2 != null) {
            return uri2;
        }
        Uri actualDefaultRingtoneUri2 = RingtoneManager.getActualDefaultRingtoneUri(context, 4);
        if (actualDefaultRingtoneUri2 != null) {
            return actualDefaultRingtoneUri2;
        }
        Uri uri3 = Settings.System.DEFAULT_NOTIFICATION_URI;
        return uri3 != null ? uri3 : RingtoneManager.getActualDefaultRingtoneUri(context, 2);
    }

    public static Bitmap getLargeIcon(Context context) {
        return null;
    }

    private static NotificationManager getNotificationManager(Context context) {
        return (NotificationManager) context.getSystemService("notification");
    }

    public static UniversalNotification valueOf(String str) {
        return (UniversalNotification) Enum.valueOf(UniversalNotification.class, str);
    }

    public static UniversalNotification[] values() {
        return (UniversalNotification[]) $VALUES.clone();
    }

    public void cancel(Context context) {
        OldLogger oldLoggerLogger = Universal.logger();
        Locale locale = Locale.US;
        oldLoggerLogger.d("Notification cancel(" + name() + ", id:" + id() + ")");
        getNotificationManager(context).cancel(id());
    }

    public int id() {
        return this.id;
    }

    public final void notify(Context context, Notification notification) {
        if (InstantAppWrapper.isInstantApp(context)) {
            OldLogger oldLoggerLogger = Universal.logger();
            Locale locale = Locale.US;
            oldLoggerLogger.d("Notification skipped(Instant App)(" + name() + ", id:" + id() + ")");
            return;
        }
        OldLogger oldLoggerLogger2 = Universal.logger();
        Locale locale2 = Locale.US;
        oldLoggerLogger2.d("Notification notify(" + name() + ", id:" + id() + ")");
        NotificationManager notificationManager = getNotificationManager(context);
        int iId = id();
        notificationManager.notify(iId, notification);
        PushAutoTrackHelper.onNotify(notificationManager, iId, notification);
    }

    public abstract void show(Context context, Object... objArr);

    public /* synthetic */ UniversalNotification(String str, int i2, int i3, int i4) {
        this(str, i2, i3);
    }

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.UniversalNotification$1, reason: invalid class name */
    public final enum AnonymousClass1 extends UniversalNotification {
        private final UniversalNotificationChannel CHANNEL;

        private AnonymousClass1(String str, int i2, int i3) {
            super(str, i2, i3, 0);
            this.CHANNEL = UniversalNotificationChannel.DEFAULT_LOW;
        }

        @Override // com.sightcall.universal.internal.ui.UniversalNotification
        public void show(Context context, Object... objArr) {
            this.CHANNEL.create(context);
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
            NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, this.CHANNEL.id(context));
            notificationCompat$Builder.h(UniversalNotification.getLargeIcon(context));
            notificationCompat$Builder.Q.icon = R.drawable.universal_ic_voice_chat_24dp;
            notificationCompat$Builder.m = 2;
            notificationCompat$Builder.D = ContextCompat.getColor(context, com.sightcall.graphik.R.color.universal_colorNotification);
            notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(context.getText(R.string.universal_notification_overlay_title));
            notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(context.getText(R.string.universal_notification_overlay_text));
            notificationCompat$Builder.f11912h = PendingIntents.getCompatPendingIntentActivity(context, 0, intent, 0);
            notificationCompat$Builder.g(16, true);
            notificationCompat$Builder.y = true;
            notificationCompat$Builder.B = "status";
            notify(context, notificationCompat$Builder.c());
        }

        public /* synthetic */ AnonymousClass1(int i2) {
            this("OVERLAY_PERMISSION_REQUIRED", 0, i2);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.UniversalNotification$2, reason: invalid class name */
    public final enum AnonymousClass2 extends UniversalNotification {
        private final UniversalNotificationChannel CHANNEL;

        private AnonymousClass2(String str, int i2, int i3) {
            super(str, i2, i3, 0);
            this.CHANNEL = UniversalNotificationChannel.DEFAULT_HIGH;
        }

        private Spanned fromHtml(String str) {
            if (str == null) {
                return null;
            }
            return Html.fromHtml(str, 0);
        }

        @Override // com.sightcall.universal.internal.ui.UniversalNotification
        public void show(Context context, Object... objArr) {
            int i2;
            CharSequence charSequenceTitle;
            CharSequence charSequenceText;
            Object obj = (objArr == null || objArr.length <= 0) ? null : objArr[0];
            if (obj instanceof Ping) {
                i2 = R.drawable.universal_ic_cloud_done_white_24dp;
                Ping ping = (Ping) obj;
                charSequenceTitle = fromHtml(ping.title());
                charSequenceText = fromHtml(ping.text());
            } else {
                if (!(obj instanceof Test)) {
                    return;
                }
                i2 = R.drawable.universal_ic_whatshot_24dp;
                Test test = (Test) obj;
                charSequenceTitle = test.title();
                charSequenceText = test.text();
            }
            this.CHANNEL.create(context);
            NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, this.CHANNEL.id(context));
            notificationCompat$Builder.h(UniversalNotification.getLargeIcon(context));
            notificationCompat$Builder.Q.icon = i2;
            notificationCompat$Builder.D = ContextCompat.getColor(context, com.sightcall.graphik.R.color.universal_colorNotification);
            notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(charSequenceTitle);
            notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(charSequenceText);
            NotificationCompat$BigTextStyle notificationCompat$BigTextStyle = new NotificationCompat$BigTextStyle();
            notificationCompat$BigTextStyle.f11896e = NotificationCompat$Builder.e(charSequenceText);
            notificationCompat$Builder.i(notificationCompat$BigTextStyle);
            notificationCompat$Builder.B = "status";
            notificationCompat$Builder.m = 1;
            notificationCompat$Builder.E = 1;
            notificationCompat$Builder.f(-1);
            notificationCompat$Builder.g(16, true);
            notificationCompat$Builder.y = true;
            notify(context, notificationCompat$Builder.c(), String.valueOf(obj.hashCode()));
        }

        public /* synthetic */ AnonymousClass2(int i2) {
            this("PING", 1, i2);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.UniversalNotification$3, reason: invalid class name */
    public final enum AnonymousClass3 extends UniversalNotification {
        private final UniversalNotificationChannel CHANNEL;
        private final long TIMEOUT_MILLIS;
        private final Map<String, Runnable> runnables;

        private AnonymousClass3(String str, int i2, int i3) {
            super(str, i2, i3, 0);
            this.CHANNEL = UniversalNotificationChannel.RINGTONE;
            this.TIMEOUT_MILLIS = 60000L;
            this.runnables = new HashMap();
        }

        private String createTag(GuestReady guestReady) {
            return guestReady.pincode();
        }

        private void scheduleCancel(final Context context, final GuestReady guestReady) {
            final String strCreateTag = createTag(guestReady);
            Runnable runnable = new Runnable() { // from class: com.sightcall.universal.internal.ui.UniversalNotification.3.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass3.this.cancel(context, strCreateTag);
                    ConnectionStep.declined = true;
                    Universal.agent().onGuestReadyDenied(guestReady);
                }
            };
            this.runnables.put(strCreateTag, runnable);
            Universal.uiHandler().postDelayed(runnable, this.TIMEOUT_MILLIS);
        }

        @Override // com.sightcall.universal.internal.ui.UniversalNotification
        public void cancel(Context context, Object obj) {
            if (!(obj instanceof GuestReady)) {
                super.cancel(context, obj);
                return;
            }
            GuestReady guestReady = (GuestReady) obj;
            String strCreateTag = createTag(guestReady);
            UniversalAgentCallPendingActivity.finish(context, guestReady);
            super.cancel(context, strCreateTag);
            Universal.uiHandler().removeCallbacks(this.runnables.remove(strCreateTag));
        }

        @Override // com.sightcall.universal.internal.ui.UniversalNotification
        public void show(Context context, Object... objArr) {
            Object obj = (objArr == null || objArr.length <= 0) ? null : objArr[0];
            if (obj instanceof GuestReady) {
                GuestReady guestReady = (GuestReady) obj;
                this.CHANNEL.create(context);
                PendingIntent pendingIntentAsk = UniversalAgentCallPendingActivity.ask(context, guestReady, UniversalAgentCallPendingActivity.ACTION_ASK);
                PendingIntent pendingIntentAsk2 = UniversalAgentCallPendingActivity.ask(context, guestReady, UniversalAgentCallPendingActivity.ACTION_ACCEPT);
                PendingIntent pendingIntentAsk3 = UniversalAgentCallPendingActivity.ask(context, guestReady, UniversalAgentCallPendingActivity.ACTION_DENY);
                NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, this.CHANNEL.id(context));
                notificationCompat$Builder.h(UniversalNotification.getLargeIcon(context));
                int i2 = R.drawable.universal_icon_agent_notification_guest_ready;
                Notification notification = notificationCompat$Builder.Q;
                notification.icon = i2;
                notificationCompat$Builder.D = ContextCompat.getColor(context, com.sightcall.graphik.R.color.universal_colorNotification);
                notification.tickerText = NotificationCompat$Builder.e(context.getText(R.string.universal_agent_notification_guest_ready_title));
                notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(context.getText(R.string.universal_agent_notification_guest_ready_title));
                notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(context.getText(R.string.universal_agent_notification_guest_ready_text));
                notificationCompat$Builder.B = "call";
                notificationCompat$Builder.m = 2;
                notificationCompat$Builder.f(6);
                notification.sound = UniversalNotification.findDefaultRingtone(context);
                notification.audioStreamType = 2;
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(2).build();
                notificationCompat$Builder.b(new NotificationCompat$Action(R.drawable.universal_icon_agent_notification_guest_ready_deny, context.getText(R.string.universal_agent_notification_guest_ready_deny), pendingIntentAsk3));
                notificationCompat$Builder.b(new NotificationCompat$Action(R.drawable.universal_icon_agent_notification_guest_ready_accept, context.getText(R.string.universal_agent_notification_guest_ready_accept), pendingIntentAsk2));
                notificationCompat$Builder.f11912h = pendingIntentAsk;
                notificationCompat$Builder.y = true;
                notificationCompat$Builder.g(2, true);
                notificationCompat$Builder.E = 1;
                notificationCompat$Builder.g(16, false);
                Notification notificationC = notificationCompat$Builder.c();
                notificationC.flags |= 4;
                notify(context, notificationC, createTag(guestReady));
                scheduleCancel(context.getApplicationContext(), guestReady);
            }
        }

        public /* synthetic */ AnonymousClass3(int i2) {
            this("GUEST_READY", 2, i2);
        }

        @Override // com.sightcall.universal.internal.ui.UniversalNotification
        public void cancel(Context context) {
            super.cancel(context);
            Universal.uiHandler().removeCallbacksAndMessages(null);
        }
    }

    public void cancel(Context context, Object obj) {
        String strValueOf = String.valueOf(obj);
        OldLogger oldLoggerLogger = Universal.logger();
        Locale locale = Locale.US;
        String strName = name();
        int iId = id();
        StringBuilder sbS = fc.s("Notification cancel(", strName, ", tag:", strValueOf, ", id:");
        sbS.append(iId);
        sbS.append(")");
        oldLoggerLogger.d(sbS.toString());
        getNotificationManager(context).cancel(strValueOf, id());
    }

    public final void notify(Context context, Notification notification, String str) {
        if (!InstantAppWrapper.isInstantApp(context)) {
            OldLogger oldLoggerLogger = Universal.logger();
            Locale locale = Locale.US;
            String strName = name();
            int iId = id();
            StringBuilder sbS = fc.s("Notification notify(", strName, ", tag:", str, ", id:");
            sbS.append(iId);
            sbS.append(")");
            oldLoggerLogger.d(sbS.toString());
            NotificationManager notificationManager = getNotificationManager(context);
            int iId2 = id();
            notificationManager.notify(str, iId2, notification);
            PushAutoTrackHelper.onNotify(notificationManager, str, iId2, notification);
            return;
        }
        OldLogger oldLoggerLogger2 = Universal.logger();
        Locale locale2 = Locale.US;
        String strName2 = name();
        int iId3 = id();
        StringBuilder sbS2 = fc.s("Notification skipped(Instant App)(", strName2, ", tag:", str, ", id:");
        sbS2.append(iId3);
        sbS2.append(")");
        oldLoggerLogger2.d(sbS2.toString());
    }
}
