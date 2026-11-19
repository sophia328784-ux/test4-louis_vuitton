package com.sightcall.universal.media;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.Iterator;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public class UploadReceiver extends BroadcastReceiver {
    private boolean isMyServiceRunning(Context context, Class<?> cls) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a);
        if (activityManager == null) {
            return false;
        }
        Iterator<ActivityManager.RunningServiceInfo> it = activityManager.getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (cls.getName().equals(it.next().service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (Rtcc.instance().call().get() != null) {
            UploaderService.setupAlarm(context);
            return;
        }
        if ((!isMyServiceRunning(context, UploaderService.class)) && MediaStorage.hasUploadMedia(context)) {
            UploaderService.start(context);
        }
    }
}
