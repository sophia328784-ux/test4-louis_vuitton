package com.vuitton.android.presentation.screen.authentication.accountactivation.components;

import androidx.compose.foundation.pager.PagerState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt$AccountActivationComposable$4$1$1", f = "AccountActivationComposable.kt", l = {85}, m = "invokeSuspend", v = 2)
final class AccountActivationComposableKt$AccountActivationComposable$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f53380c;
    public final /* synthetic */ Function1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountActivationComposableKt$AccountActivationComposable$4$1$1(PagerState pagerState, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f53380c = pagerState;
        this.d = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountActivationComposableKt$AccountActivationComposable$4$1$1(this.f53380c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountActivationComposableKt$AccountActivationComposable$4$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53379b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PagerState pagerState = this.f53380c;
            if (pagerState.k() != 0) {
                int iK = pagerState.k() - 1;
                this.f53379b = 1;
                if (PagerState.g(pagerState, iK, null, this, 6) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                this.d.invoke(new Integer(pagerState.k()));
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
