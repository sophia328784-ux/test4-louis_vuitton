package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxTrackingUIModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface InboxViewModel {
    void G5();

    void I9(String str);

    void M();

    void R6(InboxNotificationUiModel inboxNotificationUiModel);

    void Ua(String str);

    StateFlow a();

    void a2();

    void gc(InboxTrackingUIModel inboxTrackingUIModel);

    void h3();

    void l3(InboxNotificationUiModel inboxNotificationUiModel);

    void q7(InboxNotificationUiModel inboxNotificationUiModel);
}
