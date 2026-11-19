package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core;

import androidx.paging.PagingData;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductListOptionMapperKt;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductListOption;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function6;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;", "<unused var>", "Landroidx/paging/PagingData;", "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;", "page", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "currentGridMode", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;", "changeGridVocalizationEnabled", "", "currentFocusedProduct", "Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$viewState$1", f = "PLPCoreDelegate.kt", l = {}, m = "invokeSuspend", v = 2)
public final class PLPCoreDelegate$viewState$1 extends SuspendLambda implements Function6<PagingData<PlpSectionUiModel>, PlpPagination, GridModes, Boolean, FocusedProductUiModel, Continuation<? super PLPViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ PlpPagination f63199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ GridModes f63200c;
    public /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ FocusedProductUiModel f63201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PLPCoreDelegate f63202f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPCoreDelegate$viewState$1(PLPCoreDelegate pLPCoreDelegate, Continuation continuation) {
        super(6, continuation);
        this.f63202f = pLPCoreDelegate;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ProductListOption productListOption;
        PlpPagination plpPagination = this.f63199b;
        GridModes gridModes = this.f63200c;
        boolean z = this.d;
        FocusedProductUiModel focusedProductUiModel = this.f63201e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        List list = null;
        String str = plpPagination != null ? plpPagination.f67821b : null;
        String str2 = plpPagination != null ? plpPagination.f67822c : null;
        PLPCoreDelegate pLPCoreDelegate = this.f63202f;
        Flow flow = pLPCoreDelegate.n;
        PlpPagination plpPagination2 = (PlpPagination) pLPCoreDelegate.q.getValue();
        int i2 = plpPagination2 != null ? plpPagination2.g : 0;
        boolean z2 = pLPCoreDelegate.f63171c;
        boolean z3 = pLPCoreDelegate.d;
        Integer num = plpPagination != null ? new Integer(plpPagination.f67824f) : null;
        if (plpPagination != null && (productListOption = plpPagination.f67823e) != null) {
            list = ProductListOptionMapperKt.a(productListOption).f62978c;
        }
        if (list == null) {
            list = EmptyList.f71768b;
        }
        return new PLPViewState(str, str2, flow, z2, z3, i2, gridModes, z, focusedProductUiModel, num, list);
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object l(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        boolean zBooleanValue = ((Boolean) obj4).booleanValue();
        PLPCoreDelegate$viewState$1 pLPCoreDelegate$viewState$1 = new PLPCoreDelegate$viewState$1(this.f63202f, (Continuation) obj6);
        pLPCoreDelegate$viewState$1.f63199b = (PlpPagination) obj2;
        pLPCoreDelegate$viewState$1.f63200c = (GridModes) obj3;
        pLPCoreDelegate$viewState$1.d = zBooleanValue;
        pLPCoreDelegate$viewState$1.f63201e = (FocusedProductUiModel) obj5;
        return pLPCoreDelegate$viewState$1.invokeSuspend(Unit.f71739a);
    }
}
