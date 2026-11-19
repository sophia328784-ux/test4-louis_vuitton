package com.vuitton.android.presentation.screen.orders.viewmodels;

import com.github.druk.dnssd.NSType;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl", f = "OrderViewModelImpl.kt", l = {236, 236, NSType.TKEY}, m = "fetchOrdersFromRemote-IoAF18A", v = 2)
final class OrderViewModelImpl$fetchOrdersFromRemote$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f60515c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OrderViewModelImpl f60516e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60517f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$fetchOrdersFromRemote$1(OrderViewModelImpl orderViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f60516e = orderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f60517f |= Integer.MIN_VALUE;
        Object objCc = this.f60516e.Cc(this);
        return objCc == CoroutineSingletons.COROUTINE_SUSPENDED ? objCc : new Result(objCc);
    }
}
