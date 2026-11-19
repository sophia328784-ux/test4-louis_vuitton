package com.sightcall.universal.scenario;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.extensions.PendingIntents;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;

/* JADX INFO: loaded from: classes3.dex */
public class ScenarioService extends Service {
    private static final String ACTION_STOP = "ScenarioService.STOP";
    private final IBinder binder = new LocalBinder();
    private ScenarioNotification notification;

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public ScenarioService getService() {
            return ScenarioService.this;
        }
    }

    public static PendingIntent stop(Context context) {
        Intent intent = new Intent(context, (Class<?>) ScenarioService.class);
        intent.setAction(ACTION_STOP);
        return PendingIntents.getCompatPendingIntentService(context, 0, intent, 0);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Logger.INSTANCE.d("onCreate() called", null);
        Rtcc.instance().bus().register(this);
        ScenarioNotification scenarioNotification = new ScenarioNotification(this);
        this.notification = scenarioNotification;
        scenarioNotification.onCreate(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Logger.INSTANCE.d("onDestroy() called", null);
        Rtcc.instance().bus().unregister(this);
        this.notification.onDestroy(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        PushAutoTrackHelper.onServiceStartCommand(this, intent, i2, i3);
        super.onStartCommand(intent, i2, i3);
        Logger.INSTANCE.d("onStartCommand() called with: intent = [" + intent + "], flags = [" + i2 + "], startId = [" + i3 + "]", null);
        if (ACTION_STOP.equals(intent.getAction())) {
            Universal.scenario().interrupt();
        }
        stopSelfResult(i3);
        return 2;
    }

    @Event
    public void onStepStateEvent(Step.StateEvent stateEvent) {
        updateNotification();
    }

    public void updateNotification() {
        this.notification.update(this);
    }
}
