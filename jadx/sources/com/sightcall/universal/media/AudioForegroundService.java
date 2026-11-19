package com.sightcall.universal.media;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.content.ContextCompat;
import com.batch.android.e.x;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.R;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.AudioModule;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\"\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0007H\u0002J\b\u0010\u0013\u001a\u00020\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/sightcall/universal/media/AudioForegroundService;", "Landroid/app/Service;", "<init>", "()V", "audioModule", "Lnet/rtccloud/sdk/AudioModule;", "onCreate", "", "onStartCommand", "", "intent", "Landroid/content/Intent;", "flags", "startId", "onBind", "Landroid/os/IBinder;", "createNotification", "Landroid/app/Notification;", "createNotificationChannel", "startAudioModule", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioForegroundService extends Service {
    public static final String CHANNEL_ID = "AudioForegroundChannel";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int PIP_SYSTEM_NOTIFICATION_ID = 9999;
    private final AudioModule audioModule;

    public AudioForegroundService() {
        Call call = Rtcc.instance().call().get();
        this.audioModule = call != null ? call.audio() : null;
    }

    private final Notification createNotification() {
        Intent intent = new Intent(this, Class.forName("com.sightcall.digitalflow.ui.DigitalFlowActivity"));
        PushAutoTrackHelper.hookIntentGetActivity(this, 0, intent, 201326592);
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 201326592);
        PushAutoTrackHelper.hookPendingIntentGetActivity(activity, this, 0, intent, 201326592);
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this, "9999");
        notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(getString(R.string.universal_video_call));
        notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(getString(R.string.universal_tap_to_return_to_call));
        notificationCompat$Builder.Q.icon = R.drawable.universal_icon_notification;
        notificationCompat$Builder.m = 1;
        notificationCompat$Builder.f11912h = activity;
        Notification notificationC = notificationCompat$Builder.c();
        notificationC.getClass();
        return notificationC;
    }

    private final void createNotificationChannel() {
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel(CHANNEL_ID, "Audio Foreground Service Channel", 3));
    }

    private final void startAudioModule() {
        AudioModule audioModule = this.audioModule;
        if (audioModule != null) {
            audioModule.onStart();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        createNotificationChannel();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        PushAutoTrackHelper.onServiceStartCommand(this, intent, flags, startId);
        Notification notificationCreateNotification = createNotification();
        if (ContextCompat.checkSelfPermission(this, x.d) != 0) {
            Logger.INSTANCE.getTag();
            return 2;
        }
        startForeground(9999, notificationCreateNotification);
        startAudioModule();
        return 2;
    }

    @kotlin.Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/sightcall/universal/media/AudioForegroundService$Companion;", "", "<init>", "()V", "PIP_SYSTEM_NOTIFICATION_ID", "", "CHANNEL_ID", "", "startService", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "stopService", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void startService(Context context) {
            context.getClass();
            ContextCompat.startForegroundService(context, new Intent(context, (Class<?>) AudioForegroundService.class));
        }

        public final void stopService(Context context) {
            context.getClass();
            context.stopService(new Intent(context, (Class<?>) AudioForegroundService.class));
        }

        private Companion() {
        }
    }
}
