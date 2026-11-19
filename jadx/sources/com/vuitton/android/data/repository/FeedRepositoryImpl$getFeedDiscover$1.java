package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.FeedRepositoryImpl", f = "FeedRepositoryImpl.kt", l = {12}, m = "getFeedDiscover-IoAF18A", v = 2)
final class FeedRepositoryImpl$getFeedDiscover$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedRepositoryImpl f47714c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedRepositoryImpl$getFeedDiscover$1(FeedRepositoryImpl feedRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47714c = feedRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47713b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47714c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
