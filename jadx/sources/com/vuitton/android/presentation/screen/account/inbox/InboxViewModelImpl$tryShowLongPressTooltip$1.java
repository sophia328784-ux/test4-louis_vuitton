package com.vuitton.android.presentation.screen.account.inbox;

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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$tryShowLongPressTooltip$1", f = "InboxViewModelImpl.kt", l = {214}, m = "invokeSuspend", v = 2)
final class InboxViewModelImpl$tryShowLongPressTooltip$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InboxViewModelImpl f52382c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InboxViewModelImpl$tryShowLongPressTooltip$1(Continuation continuation, InboxViewModelImpl inboxViewModelImpl) {
        super(2, continuation);
        this.f52382c = inboxViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InboxViewModelImpl$tryShowLongPressTooltip$1(continuation, this.f52382c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InboxViewModelImpl$tryShowLongPressTooltip$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52381b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f52381b = 1;
            if (DelayKt.b(1000L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.f52382c.h3();
        return Unit.f71739a;
    }
}
