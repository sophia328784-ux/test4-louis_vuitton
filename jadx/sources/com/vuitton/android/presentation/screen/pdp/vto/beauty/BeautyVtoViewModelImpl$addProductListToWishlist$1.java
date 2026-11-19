package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.domain.monitoring.MonitorAction;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl", f = "BeautyVtoViewModelImpl.kt", l = {1140, 1156, 1164, 1176}, m = "addProductListToWishlist", v = 2)
final class BeautyVtoViewModelImpl$addProductListToWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f61855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f61856c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f61857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f61858f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61859h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f61860i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$addProductListToWishlist$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f61859h = beautyVtoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f61860i |= Integer.MIN_VALUE;
        return BeautyVtoViewModelImpl.yc(this.f61859h, null, this);
    }
}
