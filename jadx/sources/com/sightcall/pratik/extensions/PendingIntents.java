package com.sightcall.pratik.extensions;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.utils.SdkUtilsKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u001a\"\u0010\b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u001a\"\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u001a\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002¨\u0006\u000b"}, d2 = {"getCompatPendingIntentActivity", "Landroid/app/PendingIntent;", "Landroid/content/Context;", "requestCode", "", "intent", "Landroid/content/Intent;", "flags", "getCompatPendingIntentService", "getCompatPendingIntentBroadcast", "getFlags", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class PendingIntents {
    public static final PendingIntent getCompatPendingIntentActivity(Context context, int i2, Intent intent, int i3) {
        context.getClass();
        intent.getClass();
        int flags = getFlags(i3);
        PushAutoTrackHelper.hookIntentGetActivity(context, i2, intent, flags);
        PendingIntent activity = PendingIntent.getActivity(context, i2, intent, flags);
        PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context, i2, intent, flags);
        activity.getClass();
        return activity;
    }

    public static final PendingIntent getCompatPendingIntentBroadcast(Context context, int i2, Intent intent, int i3) {
        context.getClass();
        intent.getClass();
        int flags = getFlags(i3);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, i2, intent, flags);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, i2, intent, flags);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, context, i2, intent, flags);
        broadcast.getClass();
        return broadcast;
    }

    public static final PendingIntent getCompatPendingIntentService(Context context, int i2, Intent intent, int i3) {
        context.getClass();
        intent.getClass();
        int flags = getFlags(i3);
        PushAutoTrackHelper.hookIntentGetService(context, i2, intent, flags);
        PendingIntent service = PendingIntent.getService(context, i2, intent, flags);
        PushAutoTrackHelper.hookPendingIntentGetService(service, context, i2, intent, flags);
        service.getClass();
        return service;
    }

    private static final int getFlags(int i2) {
        return SdkUtilsKt.isAtLeastSdk23() ? i2 | 67108864 : i2;
    }
}
