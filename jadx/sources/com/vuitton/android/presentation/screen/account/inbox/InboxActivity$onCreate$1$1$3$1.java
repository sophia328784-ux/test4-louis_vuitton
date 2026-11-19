package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.screen.options.legaltext.LegalTextActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class InboxActivity$onCreate$1$1$3$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        InboxActivity inboxActivity = (InboxActivity) this.receiver;
        InboxActivity.Companion companion = InboxActivity.s;
        inboxActivity.getClass();
        LegalTextActivity.p.getClass();
        inboxActivity.startActivity(LegalTextActivity.Companion.a(inboxActivity, false));
        return Unit.f71739a;
    }
}
