package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl", f = "PdpViewModelImpl.kt", l = {398, 402, 405, 406, 409, 412, 413, 414, 415}, m = "initFeatureFlags", v = 2)
final class PdpViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AppConfig f61209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MutableStateFlow f61210c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61211e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f61212f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f61213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f61214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f61215j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f61216k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public /* synthetic */ Object r;
    public final /* synthetic */ PdpViewModelImpl s;
    public int t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$initFeatureFlags$1(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.s = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.r = obj;
        this.t |= Integer.MIN_VALUE;
        return PdpViewModelImpl.Cc(this.s, this);
    }
}
