package com.vuitton.android.presentation.screen.pdp.ar;

import com.vuitton.android.presentation.ar.arcore.ArCore;
import com.vuitton.android.presentation.ar.renderer.FrameCallback;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity", f = "ProductArActivity.kt", l = {465, 471, 491}, m = "startUx", v = 2)
final class ProductArActivity$startUx$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArCore f61322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FrameCallback f61323c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ProductArActivity f61324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f61325f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductArActivity$startUx$1(ProductArActivity productArActivity, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f61324e = productArActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f61325f |= Integer.MIN_VALUE;
        return ProductArActivity.I(this.f61324e, this);
    }
}
