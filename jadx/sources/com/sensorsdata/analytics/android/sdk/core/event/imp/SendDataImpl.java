package com.sensorsdata.analytics.android.sdk.core.event.imp;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.AnalyticsMessages;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.business.instantevent.InstantEventUtils;
import com.sensorsdata.analytics.android.sdk.core.event.EventProcessor;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.internal.beans.InternalConfigOptions;

/* JADX INFO: loaded from: classes3.dex */
public class SendDataImpl implements EventProcessor.ISendData {
    private final Context mContext;
    private final InternalConfigOptions mInternalConfigs;

    public SendDataImpl(SAContextManager sAContextManager) {
        this.mInternalConfigs = sAContextManager.getInternalConfigs();
        this.mContext = sAContextManager.getContext();
    }

    @Override // com.sensorsdata.analytics.android.sdk.core.event.EventProcessor.ISendData
    public void sendData(InputData inputData, int i2) {
        try {
            boolean zIsInstantEvent = InstantEventUtils.isInstantEvent(inputData);
            Context context = this.mContext;
            if (zIsInstantEvent) {
                AnalyticsMessages.getInstance(context.getApplicationContext()).flushInstanceEvent();
            } else {
                AnalyticsMessages.getInstance(context.getApplicationContext()).flushEventMessage(i2 < 0 || i2 > this.mInternalConfigs.saConfigOptions.getFlushBulkSize() || this.mInternalConfigs.debugMode.isDebugMode() || inputData.getEventType() == EventType.TRACK_SIGNUP);
            }
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }
}
