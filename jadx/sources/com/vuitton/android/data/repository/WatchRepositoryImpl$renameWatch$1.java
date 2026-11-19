package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WatchRepositoryImpl", f = "WatchRepositoryImpl.kt", l = {222}, m = "renameWatch-0E7RQCE", v = 2)
final class WatchRepositoryImpl$renameWatch$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f48198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f48199c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ WatchRepositoryImpl f48200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f48201f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchRepositoryImpl$renameWatch$1(WatchRepositoryImpl watchRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48200e = watchRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f48201f |= Integer.MIN_VALUE;
        Object objE = this.f48200e.e(null, null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
