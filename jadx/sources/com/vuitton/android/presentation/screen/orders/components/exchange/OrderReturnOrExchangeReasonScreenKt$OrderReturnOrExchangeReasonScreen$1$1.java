package com.vuitton.android.presentation.screen.orders.components.exchange;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableIntState;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$1$1", f = "OrderReturnOrExchangeReasonScreen.kt", l = {EACTags.ELEMENT_LIST}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f60154c;
    public final /* synthetic */ MutableIntState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$1$1(LazyListState lazyListState, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.f60154c = lazyListState;
        this.d = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$1$1(this.f60154c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeReasonScreenKt$OrderReturnOrExchangeReasonScreen$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60153b;
        MutableIntState mutableIntState = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (mutableIntState.f() != -1) {
                int iF = mutableIntState.f();
                this.f60153b = 1;
                LazyListState.Companion companion = LazyListState.y;
                if (this.f60154c.f(iF, 0, this) == coroutineSingletons) {
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
        mutableIntState.i(-1);
        return Unit.f71739a;
    }
}
