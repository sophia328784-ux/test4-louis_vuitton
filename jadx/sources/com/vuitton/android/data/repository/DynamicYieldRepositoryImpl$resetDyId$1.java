package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {279, 282}, m = "resetDyId-IoAF18A", v = 2)
final class DynamicYieldRepositoryImpl$resetDyId$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47703c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldRepositoryImpl f47705f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$resetDyId$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47705f = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47704e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objJ = this.f47705f.j(this);
        return objJ == CoroutineSingletons.COROUTINE_SUSPENDED ? objJ : new Result(objJ);
    }
}
