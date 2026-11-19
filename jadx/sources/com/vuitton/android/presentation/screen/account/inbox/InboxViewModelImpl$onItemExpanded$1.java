package com.vuitton.android.presentation.screen.account.inbox;

import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxTrackingUIModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$onItemExpanded$1", f = "InboxViewModelImpl.kt", l = {129}, m = "invokeSuspend", v = 2)
final class InboxViewModelImpl$onItemExpanded$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InboxViewModelImpl f52367c;
    public final /* synthetic */ InboxNotificationUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InboxViewModelImpl$onItemExpanded$1(InboxViewModelImpl inboxViewModelImpl, InboxNotificationUiModel inboxNotificationUiModel, Continuation continuation) {
        super(2, continuation);
        this.f52367c = inboxViewModelImpl;
        this.d = inboxNotificationUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InboxViewModelImpl$onItemExpanded$1(this.f52367c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InboxViewModelImpl$onItemExpanded$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        InboxViewModelImpl inboxViewModelImpl = this.f52367c;
        MutableStateFlow mutableStateFlow = inboxViewModelImpl.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52366b;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (mutableStateFlow.getValue() != null) {
                mutableStateFlow.setValue(null);
                long j2 = inboxViewModelImpl.f52353i;
                this.f52366b = 1;
                if (DelayKt.b(j2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        mutableStateFlow.setValue(this.d);
        inboxViewModelImpl.gc(InboxTrackingUIModel.NotificationSwiped.f52421a);
        return Unit.f71739a;
    }
}
