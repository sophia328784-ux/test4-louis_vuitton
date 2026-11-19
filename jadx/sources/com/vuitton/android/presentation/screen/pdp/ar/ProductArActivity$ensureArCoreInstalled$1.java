package com.vuitton.android.presentation.screen.pdp.ar;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity", f = "ProductArActivity.kt", l = {425}, m = "ensureArCoreInstalled", v = 2)
final class ProductArActivity$ensureArCoreInstalled$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f61303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductArActivity f61304c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductArActivity$ensureArCoreInstalled$1(ProductArActivity productArActivity, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f61304c = productArActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61303b = obj;
        this.d |= Integer.MIN_VALUE;
        ProductArActivity.Companion companion = ProductArActivity.D;
        return this.f61304c.J(this);
    }
}
