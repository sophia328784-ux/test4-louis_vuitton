package com.sightcall.universal.scenario;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.content.ContextCompat;
import com.sightcall.graphik.R;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.Universal;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.scenario.steps.CallStep;
import com.sightcall.universal.ui.UniversalLoadingActivity;
import com.sightcall.universal.util.Feature;
import defpackage.fc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
class ScenarioNotification {
    private final NotificationCompat$Action action;
    private final NotificationCompat$Builder builder;
    private Bitmap largeIcon;
    private PendingIntent pendingIntentCall;
    private PendingIntent pendingIntentLoading;
    private final Updater updater = new Updater(0);

    public ScenarioNotification(ScenarioService scenarioService) {
        NotificationCompat$Action notificationCompat$Action = new NotificationCompat$Action(getNotificationActionIcon(null), getNotificationActionTitle(scenarioService, null), ScenarioService.stop(scenarioService));
        this.action = notificationCompat$Action;
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(scenarioService, getNotificationChannelId(scenarioService));
        notificationCompat$Builder.m = 1;
        notificationCompat$Builder.B = "call";
        notificationCompat$Builder.D = ContextCompat.getColor(scenarioService, R.color.universal_colorNotification);
        notificationCompat$Builder.o = true;
        notificationCompat$Builder.g(2, true);
        notificationCompat$Builder.g(16, false);
        notificationCompat$Builder.b(notificationCompat$Action);
        notificationCompat$Builder.y = true;
        notificationCompat$Builder.g(8, true);
        this.builder = notificationCompat$Builder;
    }

    private static void createNotificationChannel(Context context) {
        if (SdkUtilsKt.isAtLeastSdk26()) {
            ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(new NotificationChannel(getNotificationChannelId(context), context.getText(com.sightcall.universal.R.string.universal_service_notification_channel_name), 2));
        }
    }

    private static int getNotificationActionIcon(Step step) {
        return isInCall(step) ? com.sightcall.universal.R.drawable.universal_ic_call_end_red_24dp : com.sightcall.universal.R.drawable.universal_ic_clear_24dp;
    }

    private static CharSequence getNotificationActionTitle(Context context, Step step) {
        return isInCall(step) ? context.getText(com.sightcall.universal.R.string.universal_notification_action_hangup) : context.getText(com.sightcall.universal.R.string.universal_notification_action_abort);
    }

    private static String getNotificationChannelId(Context context) {
        return context.getString(com.sightcall.universal.R.string.universal_service_notification_channel_id);
    }

    private static CharSequence getNotificationContentInfo() {
        return null;
    }

    private PendingIntent getNotificationContentIntent(Step step) {
        return isInCall(step) ? this.pendingIntentCall : this.pendingIntentLoading;
    }

    private static CharSequence getNotificationContentText(Context context, Step step) {
        if (isInCall(step)) {
            return context.getText(com.sightcall.universal.R.string.universal_notification_text_active);
        }
        return null;
    }

    private static CharSequence getNotificationContentTitle(Context context, Step step) {
        return isInCall(step) ? context.getText(com.sightcall.universal.R.string.universal_notification_title_active) : context.getText(com.sightcall.universal.R.string.universal_notification_title_connecting);
    }

    private Bitmap getNotificationLargeIcon() {
        return this.largeIcon;
    }

    private static int getNotificationSmallIcon(Step step) {
        return isInCall(step) ? com.sightcall.universal.R.drawable.universal_ic_voice_chat_24dp : com.sightcall.universal.R.drawable.universal_ic_wifi_tethering_24dp;
    }

    private static CharSequence getNotificationSubText() {
        return getTrafficValues();
    }

    private static CharSequence getTrafficValues() {
        Call call;
        if (!Boolean.TRUE.equals(Universal.settings().networkTraffic().get()) || (call = Rtcc.instance().call().get()) == null || call.status() != Call.Status.ACTIVE) {
            return null;
        }
        Call.Traffic traffic = call.traffic();
        return fc.i("⬇", Call.Traffic.bytes2size(traffic.rx), "  ⬆", Call.Traffic.bytes2size(traffic.tx));
    }

    private static boolean isInCall(Step step) {
        return (step instanceof CallStep) && Rtcc.instance().call().get() != null;
    }

    private static boolean isIndeterminate(Step step) {
        return !isInCall(step);
    }

    private static void updateAction(ScenarioService scenarioService, NotificationCompat$Builder notificationCompat$Builder, NotificationCompat$Action notificationCompat$Action, Step step) {
        ArrayList arrayList = notificationCompat$Builder.f11908b;
        if (Rtcc.instance().status() == Rtcc.Status.DISCONNECTING) {
            arrayList.clear();
            return;
        }
        notificationCompat$Action.f11882i = getNotificationActionTitle(scenarioService, step);
        notificationCompat$Action.f11881h = getNotificationActionIcon(step);
        if (arrayList.isEmpty()) {
            notificationCompat$Builder.b(notificationCompat$Action);
        }
    }

    public void onCreate(ScenarioService scenarioService) {
        Intent intent = UniversalLoadingActivity.intent(scenarioService);
        this.pendingIntentLoading = (!Feature.LOADING_ACTIVITY.isEnabled(scenarioService) || intent == null) ? null : PendingIntents.getCompatPendingIntentActivity(scenarioService, 0, intent, 0);
        this.pendingIntentCall = PendingIntents.getCompatPendingIntentActivity(scenarioService, 0, CallActivity.startIntent(scenarioService), 0);
        this.largeIcon = null;
        createNotificationChannel(scenarioService);
        update(scenarioService);
    }

    public void onDestroy(ScenarioService scenarioService) {
        this.updater.stop();
        scenarioService.stopForeground(true);
        PendingIntent pendingIntent = this.pendingIntentLoading;
        if (pendingIntent != null) {
            pendingIntent.cancel();
        }
        PendingIntent pendingIntent2 = this.pendingIntentCall;
        if (pendingIntent2 != null) {
            pendingIntent2.cancel();
        }
        if (this.largeIcon != null) {
            this.largeIcon = null;
        }
    }

    public void update(ScenarioService scenarioService) {
        Step step = Universal.scenario().step();
        NotificationCompat$Builder notificationCompat$Builder = this.builder;
        notificationCompat$Builder.h(getNotificationLargeIcon());
        notificationCompat$Builder.Q.icon = getNotificationSmallIcon(step);
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(getNotificationContentTitle(scenarioService, step));
        notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(getNotificationContentText(scenarioService, step));
        notificationCompat$Builder.f11915k = NotificationCompat$Builder.e(getNotificationContentInfo());
        notificationCompat$Builder.q = NotificationCompat$Builder.e(getNotificationSubText());
        notificationCompat$Builder.f11912h = getNotificationContentIntent(step);
        boolean zIsIndeterminate = isIndeterminate(step);
        notificationCompat$Builder.s = 0;
        notificationCompat$Builder.t = 0;
        notificationCompat$Builder.u = zIsIndeterminate;
        updateAction(scenarioService, notificationCompat$Builder, this.action, step);
        scenarioService.startForeground(1, notificationCompat$Builder.c());
        this.updater.check(scenarioService);
    }

    public static class Updater {
        private Timer refreshTimer;
        private TimerTask refreshTimerTask;

        public /* synthetic */ Updater(int i2) {
            this();
        }

        private void start(ScenarioService scenarioService) {
            if (this.refreshTimer == null && this.refreshTimerTask == null) {
                final WeakReference weakReference = new WeakReference(scenarioService);
                this.refreshTimerTask = new TimerTask() { // from class: com.sightcall.universal.scenario.ScenarioNotification.Updater.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        ScenarioService scenarioService2 = (ScenarioService) weakReference.get();
                        if (scenarioService2 != null) {
                            scenarioService2.updateNotification();
                        } else {
                            Updater.this.stop();
                        }
                    }
                };
                Timer timer = new Timer("UniversalNotificationTimer");
                this.refreshTimer = timer;
                timer.scheduleAtFixedRate(this.refreshTimerTask, LiveTranslationEntity.DefaultSentenceTimeOut, LiveTranslationEntity.DefaultSentenceTimeOut);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stop() {
            TimerTask timerTask = this.refreshTimerTask;
            if (timerTask != null) {
                timerTask.cancel();
                this.refreshTimerTask = null;
            }
            Timer timer = this.refreshTimer;
            if (timer != null) {
                timer.cancel();
                this.refreshTimer.purge();
                this.refreshTimer = null;
            }
        }

        public void check(ScenarioService scenarioService) {
            if (!Boolean.TRUE.equals(Universal.settings().networkTraffic().get()) || Rtcc.instance().call().get() == null) {
                stop();
            } else {
                start(scenarioService);
            }
        }

        private Updater() {
        }
    }
}
