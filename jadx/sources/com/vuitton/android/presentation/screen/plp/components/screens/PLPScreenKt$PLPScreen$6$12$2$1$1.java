package com.vuitton.android.presentation.screen.plp.components.screens;

import androidx.compose.runtime.MutableState;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.presentation.screen.plp.models.plp.ProductListUiModelKt;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.components.screens.PLPScreenKt$PLPScreen$6$12$2$1$1", f = "PLPScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class PLPScreenKt$PLPScreen$6$12$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LazyPagingItems f62752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f62753c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPScreenKt$PLPScreen$6$12$2$1$1(LazyPagingItems lazyPagingItems, Function1 function1, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f62752b = lazyPagingItems;
        this.f62753c = function1;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPScreenKt$PLPScreen$6$12$2$1$1(this.f62752b, this.f62753c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPScreenKt$PLPScreen$6$12$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.d;
        if (!((Boolean) mutableState.getF10755b()).booleanValue()) {
            LazyPagingItems lazyPagingItems = this.f62752b;
            if ((lazyPagingItems.d().f18562a instanceof LoadState.NotLoading) && lazyPagingItems.b() > 0) {
                mutableState.setValue(Boolean.TRUE);
                this.f62753c.invoke(ProductListUiModelKt.a(lazyPagingItems.c().f18632e));
            }
        }
        return Unit.f71739a;
    }
}
