package com.vuitton.android.presentation.screen.options.notifications;

import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesBottomSheet;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesTrackingUiModel;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NotificationsPreferencesViewModel {
    void K3(NotificationsPreferencesTrackingUiModel notificationsPreferencesTrackingUiModel);

    void M();

    void O7();

    StateFlow a();

    Flow b();

    void h5();

    StateFlow j2();

    void m3(NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet);

    void m8();

    void q8();

    void s2(NotificationPreferenceType notificationPreferenceType, boolean z);

    Flow w1();

    void z9();
}
