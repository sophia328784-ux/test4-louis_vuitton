package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters;

import com.vuitton.android.presentation.screen.filter.model.SearchParams;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;", "search", "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;", "page", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "showFilterBottomSheet", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$pspViewState$1", f = "PLPBySearchDelegate.kt", l = {}, m = "invokeSuspend", v = 2)
public final class PLPBySearchDelegate$pspViewState$1 extends SuspendLambda implements Function4<SearchParams, PlpPagination, Boolean, Continuation<? super PSPViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ SearchParams f63212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ PlpPagination f63213c;
    public /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f63214e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f63215f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPBySearchDelegate$pspViewState$1(boolean z, boolean z2, Continuation continuation) {
        super(4, continuation);
        this.f63214e = z;
        this.f63215f = z2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
        PLPBySearchDelegate$pspViewState$1 pLPBySearchDelegate$pspViewState$1 = new PLPBySearchDelegate$pspViewState$1(this.f63214e, this.f63215f, (Continuation) obj4);
        pLPBySearchDelegate$pspViewState$1.f63212b = (SearchParams) obj;
        pLPBySearchDelegate$pspViewState$1.f63213c = (PlpPagination) obj2;
        pLPBySearchDelegate$pspViewState$1.d = zBooleanValue;
        return pLPBySearchDelegate$pspViewState$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SearchParams searchParams = this.f63212b;
        PlpPagination plpPagination = this.f63213c;
        boolean z = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return new PSPViewState(searchParams != null ? searchParams.f57988a : null, plpPagination != null ? new Integer(plpPagination.f67824f) : null, this.f63214e, this.f63215f, z);
    }
}
