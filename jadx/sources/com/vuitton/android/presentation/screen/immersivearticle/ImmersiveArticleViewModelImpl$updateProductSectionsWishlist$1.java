package com.vuitton.android.presentation.screen.immersivearticle;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl", f = "ImmersiveArticleViewModelImpl.kt", l = {506}, m = "updateProductSectionsWishlist", v = 2)
final class ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SnapshotStateList f58344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProductsArticleSectionUiModel f58345c;
    public SnapshotStateList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Collection f58346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Iterator f58347f;
    public Collection g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProductsArticleSectionUiModel.ProductInfoUiModel f58348h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ProductsArticleSectionUiModel.ImmersiveProductUiModel f58349i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f58350j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f58351k;
    public int l;
    public int m;
    public int n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ ImmersiveArticleViewModelImpl q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.q = immersiveArticleViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        return ImmersiveArticleViewModelImpl.Dc(this.q, this);
    }
}
