package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl", f = "BeautyVtoViewModelImpl.kt", l = {1185, 1187, 1194, 1196}, m = "removeFromWishlist-C1oCpJM", v = 2)
final class BeautyVtoViewModelImpl$removeFromWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f61935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61936c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f61938f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$removeFromWishlist$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f61937e = beautyVtoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f61938f |= Integer.MIN_VALUE;
        return BeautyVtoViewModelImpl.Dc(this.f61937e, null, this);
    }
}
