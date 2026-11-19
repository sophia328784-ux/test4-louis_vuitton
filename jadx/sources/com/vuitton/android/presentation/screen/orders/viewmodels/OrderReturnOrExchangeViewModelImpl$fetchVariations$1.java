package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$fetchVariations$1", f = "OrderReturnOrExchangeViewModelImpl.kt", l = {295}, m = "invokeSuspend", v = 2)
final class OrderReturnOrExchangeViewModelImpl$fetchVariations$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f60450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OrderReturnOrExchangeViewModelImpl f60451c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MonitorAction f60452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60453f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ OrderReturnOrExchangeViewModelImpl f60454h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderReturnOrExchangeViewModelImpl$fetchVariations$1(Continuation continuation, OrderReturnOrExchangeViewModelImpl orderReturnOrExchangeViewModelImpl) {
        super(2, continuation);
        this.f60454h = orderReturnOrExchangeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OrderReturnOrExchangeViewModelImpl$fetchVariations$1(continuation, this.f60454h);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OrderReturnOrExchangeViewModelImpl$fetchVariations$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0042  */
    /* JADX WARN: Code duplicated, block: B:13:0x008a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x008b  */
    /* JADX WARN: Code duplicated, block: B:24:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:27:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e8  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x008b -> B:15:0x0090). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00d1 -> B:25:0x00df). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:24:0x00d1
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$fetchVariations$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
