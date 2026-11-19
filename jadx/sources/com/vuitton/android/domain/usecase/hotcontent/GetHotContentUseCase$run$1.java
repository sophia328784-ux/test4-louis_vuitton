package com.vuitton.android.domain.usecase.hotcontent;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase", f = "GetHotContentUseCase.kt", l = {37, 38, 46}, m = "run-gIAlu-s", v = 2)
final class GetHotContentUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f50109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f50110c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f50111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f50112f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetHotContentUseCase f50113h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f50114i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHotContentUseCase$run$1(GetHotContentUseCase getHotContentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50113h = getHotContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f50114i |= Integer.MIN_VALUE;
        Object objD = this.f50113h.d(false, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
