package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.dynamicyield.DYUserEventType;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {216, 219, 220, 221, 225}, m = "reportUserEvent-0E7RQCE", v = 2)
final class DynamicYieldRepositoryImpl$reportUserEvent$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DYUserEventType f47696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f47697c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47698e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47699f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldRepositoryImpl f47700h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f47701i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$reportUserEvent$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47700h = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f47701i |= Integer.MIN_VALUE;
        Object objB = this.f47700h.b(null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
