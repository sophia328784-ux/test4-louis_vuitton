package com.vuitton.android.presentation.screen.options.notifications.models;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationPreferencesTrackingUiModelKt {
    public static final Hit.EventHit.DefaultEventHit a(NotificationPreferencesTrackingUiModel notificationPreferencesTrackingUiModel) {
        if (notificationPreferencesTrackingUiModel instanceof NotificationPreferencesTrackingUiModel.NotificationsPreferencesEntryPointEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/profil", "notifications", "MyLV", "navigation", null, null, 97, null);
        }
        if (notificationPreferencesTrackingUiModel instanceof NotificationPreferencesTrackingUiModel.NotificationsPreferencesSaveEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications", "save", "MyLV", "notifications_consent", null, EmptyList.f71768b, 33, null);
        }
        if (notificationPreferencesTrackingUiModel instanceof NotificationPreferencesTrackingUiModel.NotificationsPreferencesSettingsEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications", "settings_device", "MyLV", "notifications_consent", null, null, 97, null);
        }
        if (notificationPreferencesTrackingUiModel instanceof NotificationPreferencesTrackingUiModel.EnableBackInStock) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications", "notify_me", "back_in_stock", "notifications", null, null, 97, null);
        }
        if (notificationPreferencesTrackingUiModel instanceof NotificationPreferencesTrackingUiModel.DisableBackInStock) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications", "confirm", "back_in_stock", "notifications", null, null, 97, null);
        }
        v40.g();
        return null;
    }
}
