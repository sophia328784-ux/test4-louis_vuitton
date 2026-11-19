package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {294, 295, 302, 307, 311, 315}, m = "handleUserDyIdAssociation-gIAlu-s", v = 2)
final class DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f47673c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47675f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f47676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldRepositoryImpl f47677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f47678j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$handleUserDyIdAssociation$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47677i = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47676h = obj;
        this.f47678j |= Integer.MIN_VALUE;
        int i2 = DynamicYieldRepositoryImpl.f47651h;
        Object objN = this.f47677i.n(null, this);
        return objN == CoroutineSingletons.COROUTINE_SUSPENDED ? objN : new Result(objN);
    }
}
