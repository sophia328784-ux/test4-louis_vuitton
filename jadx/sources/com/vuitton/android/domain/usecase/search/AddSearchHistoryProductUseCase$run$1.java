package com.vuitton.android.domain.usecase.search;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.search.AddSearchHistoryProductUseCase", f = "AddSearchHistoryProductUseCase.kt", l = {27}, m = "run", v = 2)
final class AddSearchHistoryProductUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddSearchHistoryProductUseCase f50361c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddSearchHistoryProductUseCase$run$1(AddSearchHistoryProductUseCase addSearchHistoryProductUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50361c = addSearchHistoryProductUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50360b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f50361c.a(null, this);
    }
}
