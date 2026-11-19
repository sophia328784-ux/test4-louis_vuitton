package com.vuitton.android.presentation.screen.search.components;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.SearchScreenViewState;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.foundation.model.domain.model.analytics.ViewItemListTrackingValue;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.components.SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1", f = "SearchScreenComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchViewModel f64193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f64194c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1(SearchViewModel searchViewModel, State state, Continuation continuation) {
        super(2, continuation);
        this.f64193b = searchViewModel;
        this.f64194c = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1(this.f64193b, this.f64194c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v6, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        ?? arrayList;
        List list;
        List list2;
        Object next;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        State state = this.f64194c;
        SearchListState searchListState = ((SearchScreenViewState) state.getF10755b()).d;
        SearchListState.Result result = searchListState instanceof SearchListState.Result ? (SearchListState.Result) searchListState : null;
        if (result == null || (list2 = result.f64254b) == null) {
            str = null;
        } else {
            List list3 = list2;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                ProductShortPriceUiModel productShortPriceUiModel = ((SuggestionItemUiModel) it.next()).d;
                arrayList2.add(productShortPriceUiModel != null ? productShortPriceUiModel.d : null);
            }
            Iterator it2 = arrayList2.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (((String) next) == null);
            String str2 = (String) next;
            if (str2 == null) {
                str2 = null;
            }
            str = str2;
        }
        SearchListState searchListState2 = ((SearchScreenViewState) state.getF10755b()).d;
        SearchListState.Result result2 = searchListState2 instanceof SearchListState.Result ? (SearchListState.Result) searchListState2 : null;
        if (result2 == null || (list = result2.f64254b) == null) {
            arrayList = EmptyList.f71768b;
        } else {
            List list4 = list;
            arrayList = new ArrayList(CollectionsKt.t(list4, 10));
            int i2 = 0;
            for (Object obj2 : list4) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                SuggestionItemUiModel suggestionItemUiModel = (SuggestionItemUiModel) obj2;
                ProductShortPriceUiModel productShortPriceUiModel2 = suggestionItemUiModel.d;
                Double d = productShortPriceUiModel2 != null ? productShortPriceUiModel2.f62983c : null;
                String str3 = productShortPriceUiModel2 != null ? productShortPriceUiModel2.d : null;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                String str4 = suggestionItemUiModel.f64284a;
                companion.getClass();
                SkuId.Companion companion2 = SkuId.INSTANCE;
                arrayList.add(new ViewItemListTrackingValue("search_results", "Search results", str4, suggestionItemUiModel.f64285b, d, str3, i2, null));
                i2 = i3;
            }
        }
        this.f64193b.j(new GA4TrackingUiModel.ViewItemListLoaded("search", str, "search_results", "Search results", arrayList));
        return Unit.f71739a;
    }
}
