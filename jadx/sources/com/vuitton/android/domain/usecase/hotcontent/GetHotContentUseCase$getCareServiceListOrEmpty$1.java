package com.vuitton.android.domain.usecase.hotcontent;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase", f = "GetHotContentUseCase.kt", l = {102}, m = "getCareServiceListOrEmpty", v = 2)
final class GetHotContentUseCase$getCareServiceListOrEmpty$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetHotContentUseCase f50104c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHotContentUseCase$getCareServiceListOrEmpty$1(GetHotContentUseCase getHotContentUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50104c = getHotContentUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50103b = obj;
        this.d |= Integer.MIN_VALUE;
        return GetHotContentUseCase.a(this.f50104c, this);
    }
}
