package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl", f = "ImmersiveArticleViewModelImpl.kt", l = {725}, m = "reloadLiveSection", v = 2)
final class ImmersiveArticleViewModelImpl$reloadLiveSection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImmersiveArticleFashionShowSectionUiModel f58326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f58327c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleViewModelImpl f58328e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f58329f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$reloadLiveSection$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f58328e = immersiveArticleViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f58329f |= Integer.MIN_VALUE;
        return ImmersiveArticleViewModelImpl.Bc(this.f58328e, null, null, this);
    }
}
