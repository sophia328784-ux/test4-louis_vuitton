package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxTrackingUIModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class InboxActivity$onCreate$1$1$4$1 extends FunctionReferenceImpl implements Function1<InboxNotificationUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) obj;
        inboxNotificationUiModel.getClass();
        InboxActivity inboxActivity = (InboxActivity) this.receiver;
        InboxActivity.Companion companion = InboxActivity.s;
        inboxActivity.H().gc(InboxTrackingUIModel.NotificationClicked.f52417a);
        inboxActivity.H().Ua(inboxNotificationUiModel.f52412a);
        String str = inboxNotificationUiModel.f52415e;
        if (str != null) {
            LinkHandler linkHandler = inboxActivity.p;
            if (linkHandler == null) {
                Intrinsics.h("linkHandler");
                throw null;
            }
            int i2 = LinkHandler.f51604e;
            linkHandler.c(str, inboxActivity, null);
        }
        return Unit.f71739a;
    }
}
