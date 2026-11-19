package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class InboxActivity$onCreate$1$1$7$1 extends FunctionReferenceImpl implements Function1<InboxNotificationUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) obj;
        inboxNotificationUiModel.getClass();
        ((InboxViewModel) this.receiver).q7(inboxNotificationUiModel);
        return Unit.f71739a;
    }
}
