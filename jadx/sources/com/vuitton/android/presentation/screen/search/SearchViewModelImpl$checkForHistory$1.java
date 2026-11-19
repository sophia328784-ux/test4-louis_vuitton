package com.vuitton.android.presentation.screen.search;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.ProductShortMapperKt;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModelKt;
import com.vuitton.android.presentation.screen.search.models.SearchState;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShortPrice;
import com.vuitton.foundation.model.domain.model.search.HistoryItem;
import defpackage.md;
import defpackage.v40;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$checkForHistory$1", f = "SearchViewModelImpl.kt", l = {366}, m = "invokeSuspend", v = 2)
final class SearchViewModelImpl$checkForHistory$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SearchViewModelImpl f64123c;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.search.SearchViewModelImpl$checkForHistory$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "historyItems", "", "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$checkForHistory$1$1", f = "SearchViewModelImpl.kt", l = {245}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<List<? extends HistoryItem>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f64125c;
        public final /* synthetic */ SearchViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SearchViewModelImpl searchViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.d = searchViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, continuation);
            anonymousClass1.f64125c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((List) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object value;
            ProductShortPriceUiModel productShortPriceUiModel;
            Object historyResearchUiModel;
            Object value2;
            SearchViewModelImpl searchViewModelImpl = this.d;
            MutableStateFlow mutableStateFlow = searchViewModelImpl.q;
            List list = (List) this.f64125c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64124b;
            ProductShortPriceUiModel productShortPriceUiModel2 = null;
            if (i2 == 0) {
                ResultKt.b(obj);
                List list2 = list;
                if (list2 != null && !list2.isEmpty()) {
                    MutableStateFlow mutableStateFlow2 = searchViewModelImpl.x;
                    do {
                        value = mutableStateFlow2.getValue();
                        ((Boolean) value).getClass();
                    } while (!mutableStateFlow2.i(value, Boolean.FALSE));
                    if (mutableStateFlow.getValue() != SearchState.SUCCESS_SEARCH && mutableStateFlow.getValue() != SearchState.NO_RESULT_SEARCH) {
                        do {
                            value2 = mutableStateFlow.getValue();
                        } while (!mutableStateFlow.i(value2, SearchState.HISTORY));
                    }
                    MutableStateFlow mutableStateFlow3 = searchViewModelImpl.r;
                    while (true) {
                        Object value3 = mutableStateFlow3.getValue();
                        HistoryUiModel historyUiModel = (HistoryUiModel) value3;
                        List<HistoryItem> list3 = list;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                        for (HistoryItem historyItem : list3) {
                            historyItem.getClass();
                            if (historyItem instanceof HistoryItem.HistoryProduct) {
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                HistoryItem.HistoryProduct historyProduct = (HistoryItem.HistoryProduct) historyItem;
                                String str = historyProduct.f68186a;
                                companion.getClass();
                                SkuIdUiModel.Companion.c(str);
                                String str2 = historyProduct.f68187b;
                                String str3 = historyProduct.f68188c;
                                productShortPriceUiModel = productShortPriceUiModel2;
                                int iB = HistoryUiModelKt.b(historyProduct.d);
                                LocalDateTime localDateTime = historyProduct.f68189e;
                                ProductShortPrice productShortPrice = historyProduct.f68190f;
                                historyResearchUiModel = new HistoryItemUiModel.HistoryProductUiModel(str, str2, str3, productShortPrice != null ? ProductShortMapperKt.c(productShortPrice) : productShortPriceUiModel, iB, localDateTime, null);
                            } else {
                                productShortPriceUiModel = productShortPriceUiModel2;
                                if (!(historyItem instanceof HistoryItem.HistoryTextResearch)) {
                                    v40.g();
                                    return productShortPriceUiModel;
                                }
                                HistoryItem.HistoryTextResearch historyTextResearch = (HistoryItem.HistoryTextResearch) historyItem;
                                historyResearchUiModel = new HistoryItemUiModel.HistoryResearchUiModel(historyTextResearch.f68191a, historyTextResearch.f68192b);
                            }
                            arrayList.add(historyResearchUiModel);
                            productShortPriceUiModel2 = productShortPriceUiModel;
                        }
                        ProductShortPriceUiModel productShortPriceUiModel3 = productShortPriceUiModel2;
                        historyUiModel.getClass();
                        if (mutableStateFlow3.i(value3, new HistoryUiModel(arrayList))) {
                            ArrayList arrayList2 = new ArrayList();
                            for (Object obj2 : list3) {
                                if (obj2 instanceof HistoryItem.HistoryProduct) {
                                    arrayList2.add(obj2);
                                }
                            }
                            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
                            Iterator it = arrayList2.iterator();
                            while (it.hasNext()) {
                                arrayList3.add(new SkuId(((HistoryItem.HistoryProduct) it.next()).f68186a));
                            }
                            this.f64125c = productShortPriceUiModel3;
                            this.f64124b = 1;
                            if (SearchViewModelImpl.Ac(searchViewModelImpl, arrayList3, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } else {
                            productShortPriceUiModel2 = null;
                        }
                    }
                } else if (list != null) {
                    BuildersKt.c(ViewModelKt.a(searchViewModelImpl), null, null, new SearchViewModelImpl$getTrending$1(searchViewModelImpl, null), 3);
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModelImpl$checkForHistory$1(SearchViewModelImpl searchViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f64123c = searchViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SearchViewModelImpl$checkForHistory$1(this.f64123c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchViewModelImpl$checkForHistory$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64122b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SearchViewModelImpl searchViewModelImpl = this.f64123c;
            StateFlow stateFlowB = searchViewModelImpl.f64116f.f50371a.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(searchViewModelImpl, null);
            stateFlowB.getClass();
            this.f64122b = 1;
            if (FlowKt.g(stateFlowB, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        md.k("SharedFlow never completes, this call should never return.");
        return null;
    }
}
