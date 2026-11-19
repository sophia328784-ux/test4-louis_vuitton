package com.vuitton.android.presentation.broadcast;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.vuitton.android.presentation.broadcast.models.ShareTrackingUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ShareBroadcastReceiver extends Hilt_ShareBroadcastReceiver {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnalyticsTracker f50667c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver$Companion;", "", "", "KEY_PAGE_NAME", "Ljava/lang/String;", "KEY_PAGE_POSITION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Override // com.vuitton.android.presentation.broadcast.Hilt_ShareBroadcastReceiver, android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        context.getClass();
        intent.getClass();
        String stringExtra = intent.getStringExtra("PAGE_NAME");
        if (stringExtra == null) {
            stringExtra = "";
        }
        String stringExtra2 = intent.getStringExtra("PAGE_POSITION");
        String str = stringExtra2 != null ? stringExtra2 : "";
        Bundle extras = intent.getExtras();
        Object obj = extras != null ? extras.get("android.intent.extra.CHOSEN_COMPONENT") : null;
        ShareTrackingUiModel.ShareChannelSelectionEvent shareChannelSelectionEvent = new ShareTrackingUiModel.ShareChannelSelectionEvent(stringExtra, str, obj instanceof ComponentName ? context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(((ComponentName) obj).getPackageName(), 128)).toString() : null);
        AnalyticsTracker analyticsTracker = this.f50667c;
        if (analyticsTracker == null) {
            Intrinsics.h("tracker");
            throw null;
        }
        ListBuilder listBuilderV = CollectionsKt.v();
        String str2 = shareChannelSelectionEvent.f50670c;
        if (str2 != null) {
            listBuilderV.add(new AdditionalProperty.ChannelId(str2));
        }
        analyticsTracker.a(new Hit.EventHit.DefaultEventHit(null, shareChannelSelectionEvent.f50668a, "share_channel_id_selection", shareChannelSelectionEvent.f50669b, "share", null, CollectionsKt.r(listBuilderV), 33, null));
    }
}
