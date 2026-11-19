package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.monitoring.MonitorAction;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", f = "PdpViewModelImpl.kt", l = {1124, 1128, 1135, 1138}, m = "removeFromWishlist-C1oCpJM", v = 2)
final class PdpViewModelImpl$removeFromWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f61250b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f61251c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f61252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61253f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$removeFromWishlist$1(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f61253f = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61252e = obj;
        this.g |= Integer.MIN_VALUE;
        return PdpViewModelImpl.Ec(this.f61253f, null, this);
    }
}
