package com.vuitton.android.presentation.screen.orders.components.list;

import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListState;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$1$1", f = "OrderListScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class OrderListScreenKt$OrderList$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LazyListState f60204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Set f60205c;
    public final /* synthetic */ List d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderListScreenKt$OrderList$1$1(LazyListState lazyListState, Set set, List list, Continuation continuation) {
        super(2, continuation);
        this.f60204b = lazyListState;
        this.f60205c = set;
        this.d = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderListScreenKt$OrderList$1$1(this.f60204b, this.f60205c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderListScreenKt$OrderList$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        List f5211k = this.f60204b.j().getF5211k();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(f5211k, 10));
        Iterator it = f5211k.iterator();
        while (it.hasNext()) {
            arrayList.add(((LazyListItemInfo) it.next()).getL());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (obj2 instanceof String) {
                arrayList2.add(obj2);
            }
        }
        List list = this.d;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((PurchasedOrderUiModel) it2.next()).f60396e);
        }
        this.f60205c.addAll(CollectionsKt.T(arrayList3, CollectionsKt.B0(arrayList2)));
        return Unit.f71739a;
    }
}
