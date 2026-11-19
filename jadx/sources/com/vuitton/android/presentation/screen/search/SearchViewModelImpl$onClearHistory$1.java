package com.vuitton.android.presentation.screen.search;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$onClearHistory$1", f = "SearchViewModelImpl.kt", l = {315, 316}, m = "invokeSuspend", v = 2)
final class SearchViewModelImpl$onClearHistory$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchViewModelImpl f64146c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModelImpl$onClearHistory$1(SearchViewModelImpl searchViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64146c = searchViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchViewModelImpl$onClearHistory$1(this.f64146c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchViewModelImpl$onClearHistory$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
    
        if (r9.a(r1, r8) == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f64145b
            r2 = 0
            r3 = 2
            r4 = 1
            com.vuitton.android.presentation.screen.search.SearchViewModelImpl r5 = r8.f64146c
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L13
            kotlin.ResultKt.b(r9)
            goto L51
        L13:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r2
        L19:
            kotlin.ResultKt.b(r9)
            goto L3f
        L1d:
            kotlin.ResultKt.b(r9)
            kotlinx.coroutines.flow.MutableStateFlow r9 = r5.x
        L22:
            java.lang.Object r1 = r9.getValue()
            r6 = r1
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            r6.getClass()
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            boolean r1 = r9.i(r1, r6)
            if (r1 == 0) goto L22
            r8.f64145b = r4
            r6 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r6, r8)
            if (r9 != r0) goto L3f
            goto L50
        L3f:
            com.vuitton.android.domain.usecase.search.UpdateSearchHistoryUseCase r9 = r5.f64118i
            com.vuitton.foundation.model.domain.model.search.History r1 = new com.vuitton.foundation.model.domain.model.search.History
            kotlin.collections.EmptyList r6 = kotlin.collections.EmptyList.f71768b
            r1.<init>(r6)
            r8.f64145b = r3
            java.lang.Object r8 = r9.a(r1, r8)
            if (r8 != r0) goto L51
        L50:
            return r0
        L51:
            kotlinx.coroutines.flow.MutableStateFlow r1 = r5.r
        L53:
            java.lang.Object r8 = r1.getValue()
            r9 = r8
            com.vuitton.android.presentation.screen.search.models.HistoryUiModel r9 = (com.vuitton.android.presentation.screen.search.models.HistoryUiModel) r9
            com.vuitton.android.presentation.screen.search.models.HistoryUiModel r9 = new com.vuitton.android.presentation.screen.search.models.HistoryUiModel
            r9.<init>(r2, r4, r2)
            boolean r8 = r1.i(r8, r9)
            if (r8 == 0) goto L53
            com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel$OnClearHistory r8 = com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel.OnClearHistory.f64266a
            r5.x7(r8)
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.search.SearchViewModelImpl$onClearHistory$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
