package com.vuitton.android.presentation.screen.pdp.ar;

import com.vuitton.android.presentation.ar.arcore.ArCore;
import com.vuitton.android.presentation.ar.filament.Filament;
import com.vuitton.android.presentation.ar.renderer.ModelRenderer;
import com.vuitton.android.presentation.ar.renderer.PlaneRenderer;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity", f = "ProductArActivity.kt", l = {334, 336, 337, 373, 400}, m = "createUx", v = 2)
final class ProductArActivity$createUx$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Filament f61274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArCore f61275c;
    public PlaneRenderer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ModelRenderer f61276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f61277f;
    public final /* synthetic */ ProductArActivity g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f61278h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductArActivity$createUx$1(ProductArActivity productArActivity, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = productArActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f61277f = obj;
        this.f61278h |= Integer.MIN_VALUE;
        return ProductArActivity.H(this.g, this);
    }
}
