package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.screen.account.inbox.models.InboxTrackingUIModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$hideLongPressTooltip$1", f = "InboxViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class InboxViewModelImpl$hideLongPressTooltip$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InboxViewModelImpl f52365b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InboxViewModelImpl$hideLongPressTooltip$1(Continuation continuation, InboxViewModelImpl inboxViewModelImpl) {
        super(2, continuation);
        this.f52365b = inboxViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InboxViewModelImpl$hideLongPressTooltip$1(continuation, this.f52365b);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InboxViewModelImpl$hideLongPressTooltip$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        InboxTrackingUIModel.TooltipClosed tooltipClosed = InboxTrackingUIModel.TooltipClosed.f52423a;
        InboxViewModelImpl inboxViewModelImpl = this.f52365b;
        inboxViewModelImpl.gc(tooltipClosed);
        inboxViewModelImpl.q.setValue(Boolean.FALSE);
        inboxViewModelImpl.g.f50380a.a();
        return Unit.f71739a;
    }
}
