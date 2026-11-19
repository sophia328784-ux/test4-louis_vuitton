package com.vuitton.android.presentation.screen.storemode.delegates;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$pspViewState$1", f = "StoreModeSearchDelegate.kt", l = {}, m = "invokeSuspend", v = 2)
public final class StoreModeSearchDelegate$pspViewState$1 extends SuspendLambda implements Function4<SearchParams, PlpPagination, Boolean, Continuation<? super PSPViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ SearchParams f64949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ PlpPagination f64950c;
    public /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f64951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f64952f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeSearchDelegate$pspViewState$1(boolean z, boolean z2, Continuation continuation) {
        super(4, continuation);
        this.f64951e = z;
        this.f64952f = z2;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
        StoreModeSearchDelegate$pspViewState$1 storeModeSearchDelegate$pspViewState$1 = new StoreModeSearchDelegate$pspViewState$1(this.f64951e, this.f64952f, (Continuation) obj4);
        storeModeSearchDelegate$pspViewState$1.f64949b = (SearchParams) obj;
        storeModeSearchDelegate$pspViewState$1.f64950c = (PlpPagination) obj2;
        storeModeSearchDelegate$pspViewState$1.d = zBooleanValue;
        return storeModeSearchDelegate$pspViewState$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SearchParams searchParams = this.f64949b;
        PlpPagination plpPagination = this.f64950c;
        boolean z = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return new PSPViewState(searchParams != null ? searchParams.f57988a : null, plpPagination != null ? new Integer(plpPagination.f67824f) : null, this.f64951e, this.f64952f, z);
    }
}
