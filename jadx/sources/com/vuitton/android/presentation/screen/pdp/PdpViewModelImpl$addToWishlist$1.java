package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", f = "PdpViewModelImpl.kt", l = {1071, 1083, 1085, 1093, 1097, 1104}, m = "addToWishlist-C1oCpJM", v = 2)
final class PdpViewModelImpl$addToWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f61164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f61165c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f61167f;
    public final /* synthetic */ PdpViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f61168h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$addToWishlist$1(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61167f = obj;
        this.f61168h |= Integer.MIN_VALUE;
        return PdpViewModelImpl.yc(this.g, null, this);
    }
}
