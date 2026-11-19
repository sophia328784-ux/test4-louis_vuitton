package com.vuitton.android.presentation.screen.orders.viewmodels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl", f = "OrderViewModelImpl.kt", l = {159, 162, 163, 165}, m = "initFeatureFlags", v = 2)
final class OrderViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f60538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f60539c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60541f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f60542h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f60543i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f60544j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ OrderViewModelImpl f60545k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OrderViewModelImpl$initFeatureFlags$1(OrderViewModelImpl orderViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f60545k = orderViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60544j = obj;
        this.l |= Integer.MIN_VALUE;
        return OrderViewModelImpl.Bc(this.f60545k, this);
    }
}
