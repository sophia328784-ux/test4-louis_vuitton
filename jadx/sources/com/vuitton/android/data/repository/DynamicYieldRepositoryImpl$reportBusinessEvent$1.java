package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.dynamicyield.DYBusinessEvent;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {234, 237, 246, 255, 263}, m = "reportBusinessEvent-gIAlu-s", v = 2)
final class DynamicYieldRepositoryImpl$reportBusinessEvent$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DYBusinessEvent f47681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47682c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f47684f;
    public final /* synthetic */ DynamicYieldRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47685h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$reportBusinessEvent$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47684f = obj;
        this.f47685h |= Integer.MIN_VALUE;
        Object objE = this.g.e(null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
