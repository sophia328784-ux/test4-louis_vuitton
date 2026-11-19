package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.InAppDispatchRepositoryImpl", f = "InAppDispatchRepositoryImpl.kt", l = {57, 60, 64}, m = "migrateLegacyDispatchIdentifierFormat-IoAF18A", v = 2)
final class InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InAppDispatchRepositoryImpl f47737c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InAppDispatchRepositoryImpl$migrateLegacyDispatchIdentifierFormat$1(InAppDispatchRepositoryImpl inAppDispatchRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47737c = inAppDispatchRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47736b = obj;
        this.d |= Integer.MIN_VALUE;
        int i2 = InAppDispatchRepositoryImpl.d;
        Object objF = this.f47737c.f(this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
