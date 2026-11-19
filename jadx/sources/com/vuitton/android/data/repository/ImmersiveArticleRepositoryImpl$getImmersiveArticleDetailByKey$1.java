package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ImmersiveArticleRepositoryImpl", f = "ImmersiveArticleRepositoryImpl.kt", l = {14}, m = "getImmersiveArticleDetailByKey-gIAlu-s", v = 2)
final class ImmersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleRepositoryImpl f47726c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleRepositoryImpl$getImmersiveArticleDetailByKey$1(ImmersiveArticleRepositoryImpl immersiveArticleRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47726c = immersiveArticleRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47725b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47726c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
