package com.vuitton.android.domain.usecase.wishlist;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase", f = "ShareWishlistContentUseCase.kt", l = {18, 20}, m = "run-yxL6bBk", v = 2)
final class ShareWishlistContentUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f50452c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f50453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f50454f;
    public final /* synthetic */ ShareWishlistContentUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f50455h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareWishlistContentUseCase$run$1(ShareWishlistContentUseCase shareWishlistContentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = shareWishlistContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50454f = obj;
        this.f50455h |= Integer.MIN_VALUE;
        Object objA = this.g.a(null, null, null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
