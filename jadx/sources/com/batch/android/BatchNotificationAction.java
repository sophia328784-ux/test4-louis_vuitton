package com.batch.android;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat$Action;
import com.batch.android.json.JSONObject;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BatchNotificationAction {
    public JSONObject actionArguments;
    public String drawableName;
    public String label = "";
    public String actionIdentifier = "";
    public boolean hasUserInterface = true;
    public boolean shouldDismissNotification = true;

    public static List<NotificationCompat$Action> getSupportActions(Context context, List<BatchNotificationAction> list, BatchPushPayload batchPushPayload, Integer num) {
        PendingIntent service;
        if (context == null) {
            md.n("Context cannot be null");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            int i2 = 0;
            for (BatchNotificationAction batchNotificationAction : list) {
                i2++;
                Intent intent = new Intent(context, (Class<?>) (batchNotificationAction.hasUserInterface ? BatchActionActivity.class : BatchActionService.class));
                intent.setAction("com.batch.android.action.exec");
                intent.putExtra("actionID", batchNotificationAction.actionIdentifier);
                intent.putExtra("args", batchNotificationAction.actionArguments.toString());
                if (batchNotificationAction.shouldDismissNotification && num != null) {
                    intent.putExtra("dismissNotificationID", num);
                }
                if (batchPushPayload != null) {
                    batchPushPayload.writeToIntentExtras(intent);
                }
                if (batchNotificationAction.hasUserInterface) {
                    intent.addFlags(268435456);
                    int iCurrentTimeMillis = ((int) System.currentTimeMillis()) * i2;
                    PushAutoTrackHelper.hookIntentGetActivity(context, iCurrentTimeMillis, intent, 1140850688);
                    service = PendingIntent.getActivity(context, iCurrentTimeMillis, intent, 1140850688);
                    PushAutoTrackHelper.hookPendingIntentGetActivity(service, context, iCurrentTimeMillis, intent, 1140850688);
                } else {
                    int iCurrentTimeMillis2 = ((int) System.currentTimeMillis()) * i2;
                    PushAutoTrackHelper.hookIntentGetService(context, iCurrentTimeMillis2, intent, 1140850688);
                    service = PendingIntent.getService(context, iCurrentTimeMillis2, intent, 1140850688);
                    PushAutoTrackHelper.hookPendingIntentGetService(service, context, iCurrentTimeMillis2, intent, 1140850688);
                }
                arrayList.add(new NotificationCompat$Action.Builder(com.batch.android.n.a.a().a(context, batchNotificationAction.drawableName), batchNotificationAction.label, service).a());
            }
        }
        return arrayList;
    }
}
