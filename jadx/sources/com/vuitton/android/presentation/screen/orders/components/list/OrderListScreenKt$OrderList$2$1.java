package com.vuitton.android.presentation.screen.orders.components.list;

import androidx.compose.runtime.MutableState;
import defpackage.md;
import java.util.List;
import java.util.Set;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$2$1", f = "OrderListScreen.kt", l = {115}, m = "invokeSuspend", v = 2)
final class OrderListScreenKt$OrderList$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Set f60207c;
    public final /* synthetic */ Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f60208e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderListScreenKt$OrderList$2$1(Set set, Set set2, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f60207c = set;
        this.d = set2;
        this.f60208e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderListScreenKt$OrderList$2$1(this.f60207c, this.d, this.f60208e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderListScreenKt$OrderList$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60206b;
        Set set = this.f60207c;
        if (i2 == 0) {
            ResultKt.b(obj);
            set.addAll((List) this.f60208e.getF10755b());
            this.f60206b = 1;
            if (DelayKt.b(1200L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        this.d.addAll(set);
        set.clear();
        return Unit.f71739a;
    }
}
