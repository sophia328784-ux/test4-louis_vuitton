package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.personalselections.PersonalSelectionsMonitoring;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsDetailUseCase;
import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.PersonalSelectionsDetailUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.mappers.PersonalSelectionsDetailUiModelMapperKt;
import com.vuitton.android.presentation.tracking.PersonalSelectionActions;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.common.editorial.EditorialModule;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelectionsDetail;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionAsset;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionProduct;
import com.vuitton.foundation.model.domain.model.personalselections.SelectionStore;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.time.Duration;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1", f = "PersonalSelectionsCurationAdvisorViewModelImpl.kt", l = {145}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f62447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f62448c;
    public final /* synthetic */ PersonalSelectionsCurationAdvisorViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = personalSelectionsCurationAdvisorViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        MonitorAction monitorAction;
        Object value;
        PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl = this.d;
        String str = personalSelectionsCurationAdvisorViewModelImpl.p;
        MutableStateFlow mutableStateFlow = personalSelectionsCurationAdvisorViewModelImpl.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62448c;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(PersonalSelectionsCurationAdvisorViewState.Loading.f62506a);
            DynatraceMonitorAction dynatraceMonitorActionA = personalSelectionsCurationAdvisorViewModelImpl.f62429c.a(personalSelectionsCurationAdvisorViewModelImpl.o, PersonalSelectionsMonitoring.Action.OpenDiscoverAdvisorCuration.f48981a);
            dynatraceMonitorActionA.c(str, "personalSelectionsId");
            GetPersonalSelectionsDetailUseCase getPersonalSelectionsDetailUseCase = personalSelectionsCurationAdvisorViewModelImpl.f62435k;
            this.f62447b = dynatraceMonitorActionA;
            this.f62448c = 1;
            objA = getPersonalSelectionsDetailUseCase.a(str, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f62447b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            PersonalSelectionsDetail personalSelectionsDetail = (PersonalSelectionsDetail) objA;
            personalSelectionsDetail.getClass();
            SelectionStore selectionStore = personalSelectionsDetail.g;
            String str2 = personalSelectionsDetail.d;
            List list = personalSelectionsDetail.f67797i;
            try {
                if (Duration.between(OffsetDateTime.parse(str2).toLocalDate().atStartOfDay(), LocalDate.now().atStartOfDay()).toDays() > 366) {
                    mutableStateFlow.setValue(PersonalSelectionsCurationAdvisorViewState.Expired.f62505a);
                } else {
                    IsFeatureAvailableUseCase isFeatureAvailableUseCase = personalSelectionsCurationAdvisorViewModelImpl.f62433i;
                    Locale locale = personalSelectionsCurationAdvisorViewModelImpl.m.f49912a.b().m;
                    locale.getClass();
                    String str3 = personalSelectionsDetail.f67791a;
                    String str4 = personalSelectionsDetail.f67792b;
                    SelectionTypeUiModel selectionTypeUiModelB = PersonalSelectionsDetailUiModelMapperKt.b(personalSelectionsDetail.f67793c);
                    String strD = DateTimeUtils.d(locale, StringsKt.V(10, str2), "yyyy-MM-dd", FormatStyle.LONG);
                    if (strD == null) {
                        strD = "";
                    }
                    String str5 = strD;
                    String str6 = personalSelectionsDetail.f67794e;
                    String str7 = personalSelectionsDetail.f67795f;
                    selectionStore.getClass();
                    String str8 = selectionStore.f67814a;
                    SelectionStoreUiModel selectionStoreUiModel = new SelectionStoreUiModel(str8, selectionStore.f67815b, selectionStore.f67816c);
                    List list2 = personalSelectionsDetail.f67796h;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        SelectionAsset selectionAsset = (SelectionAsset) it.next();
                        selectionAsset.getClass();
                        AssetUiModel assetUiModelB = AssetMapperKt.b(selectionAsset.f67806a);
                        Iterator it2 = it;
                        String str9 = selectionAsset.f67807b;
                        List list3 = selectionAsset.f67808c;
                        List list4 = list;
                        SelectionStoreUiModel selectionStoreUiModel2 = selectionStoreUiModel;
                        String str10 = str3;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                        Iterator it3 = list3.iterator();
                        while (it3.hasNext()) {
                            String str11 = ((SkuId) it3.next()).f67933a;
                            SkuIdUiModel.f61763c.getClass();
                            SkuIdUiModel.Companion.c(str11);
                            arrayList2.add(new SkuIdUiModel(str11));
                        }
                        arrayList.add(new SelectionAssetUiModel(assetUiModelB, str9, arrayList2));
                        it = it2;
                        selectionStoreUiModel = selectionStoreUiModel2;
                        str3 = str10;
                        list = list4;
                    }
                    List list5 = list;
                    SelectionStoreUiModel selectionStoreUiModel3 = selectionStoreUiModel;
                    String str12 = str3;
                    List list6 = list5;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list6, 10));
                    Iterator it4 = list6.iterator();
                    while (it4.hasNext()) {
                        arrayList3.add(PersonalSelectionsDetailUiModelMapperKt.a((SelectionProduct) it4.next()));
                    }
                    List list7 = personalSelectionsDetail.f67798j;
                    ArrayList arrayList4 = new ArrayList(CollectionsKt.t(list7, 10));
                    Iterator it5 = list7.iterator();
                    while (it5.hasNext()) {
                        arrayList4.add(EditorialModuleUiModelMapperKt.b((EditorialModule) it5.next()));
                    }
                    mutableStateFlow.setValue(new PersonalSelectionsCurationAdvisorViewState.Success(new PersonalSelectionsDetailUiModel(str12, str4, selectionTypeUiModelB, str5, str6, str7, selectionStoreUiModel3, arrayList, arrayList3, arrayList4), isFeatureAvailableUseCase.b(new Feature[]{Feature.PLP_V3_GRID_VIEW}), isFeatureAvailableUseCase.b(new Feature[]{Feature.AI_COMPANION}), ((Boolean) personalSelectionsCurationAdvisorViewModelImpl.r.getValue()).booleanValue(), ((Boolean) personalSelectionsCurationAdvisorViewModelImpl.s.getValue()).booleanValue()));
                    if (!list5.isEmpty()) {
                        ArrayList arrayList5 = new ArrayList(CollectionsKt.t(list6, 10));
                        Iterator it6 = list6.iterator();
                        while (it6.hasNext()) {
                            arrayList5.add(PersonalSelectionsDetailUiModelMapperKt.a((SelectionProduct) it6.next()));
                        }
                        BuildersKt.c(ViewModelKt.a(personalSelectionsCurationAdvisorViewModelImpl), null, null, new PersonalSelectionsCurationAdvisorViewModelImpl$enrichProductList$1(personalSelectionsCurationAdvisorViewModelImpl, arrayList5, null), 3);
                    }
                    AppsFlyerTracker appsFlyerTracker = personalSelectionsCurationAdvisorViewModelImpl.d;
                    MapBuilder mapBuilder = new MapBuilder();
                    mapBuilder.put("action", PersonalSelectionActions.OPENED.getValue());
                    if (str8 != null) {
                        mapBuilder.put("origin_store_id", str8);
                    }
                    appsFlyerTracker.a("PersonalSelectionsDetailViewModelImpl", new AppsFlyerEvent.InteractiveWardrobing(mapBuilder.c()));
                }
            } catch (Exception unused) {
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, PersonalSelectionsCurationAdvisorViewState.Error.f62504a));
            monitorAction.d(new PersonalSelectionsMonitoring.Error.DiscoverAdvisorCurationError(thA));
            personalSelectionsCurationAdvisorViewModelImpl.f62428b.c("PersonalSelectionsDetailViewModelImpl", "Unable to retrieve the private advisor curation", thA);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
