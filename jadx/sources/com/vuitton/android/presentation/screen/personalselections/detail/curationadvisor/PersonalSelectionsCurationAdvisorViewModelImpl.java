package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import android.app.Application;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsDetailUseCase;
import com.vuitton.android.domain.usecase.personalselections.LikePersonalSelectionsUseCase;
import com.vuitton.android.domain.usecase.personalselections.UnlikePersonalSelectionsUseCase;
import com.vuitton.android.domain.usecase.products.GetProductShortUseCase;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorLookViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorProductState;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionPLPProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.mapper.PLPItemMapperKt;
import com.vuitton.android.presentation.utils.ArUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import defpackage.md;
import defpackage.os;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001%B\u0089\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "contactUsDelegate", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;", "passAppLinkBuilder", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/products/GetProductShortUseCase;", "getProductShortUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;", "getSkusProductsListUseCase", "Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;", "getPersonalSelections", "Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;", "likePersonalSelectionsUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;", "unlikePersonalSelectionsUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetProductShortUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PersonalSelectionsCurationAdvisorViewModelImpl extends AndroidViewModel implements PersonalSelectionsCurationAdvisorViewModel, ContactUsDelegate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f62428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f62429c;
    public final AppsFlyerTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContactUsDelegate f62430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UserSessionService f62431f;
    public final PassAppLinkBuilder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotificationBuilder f62432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f62433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetSkusProductsListUseCase f62434j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetPersonalSelectionsDetailUseCase f62435k;
    public final LikePersonalSelectionsUseCase l;
    public final RequireUserInAppDispatchUseCase m;
    public final UnlikePersonalSelectionsUseCase n;
    public final InAppDispatch o;
    public final String p;
    public final BufferedChannel q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final StateFlow u;
    public final MutableStateFlow v;
    public final StateFlow w;
    public final MutableStateFlow x;
    public final StateFlow y;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl$1", f = "PersonalSelectionsCurationAdvisorViewModelImpl.kt", l = {114}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f62436b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PersonalSelectionsCurationAdvisorViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f62436b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl = PersonalSelectionsCurationAdvisorViewModelImpl.this;
                StateFlow stateFlow = personalSelectionsCurationAdvisorViewModelImpl.f62431f.g;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        personalSelectionsCurationAdvisorViewModelImpl.r.setValue(Boolean.valueOf(((LoginState) obj2) == LoginState.LOGGED_IN));
                        return Unit.f71739a;
                    }
                };
                this.f62436b = 1;
                if (stateFlow.f(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            os.d();
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public PersonalSelectionsCurationAdvisorViewModelImpl(Application application, SavedStateHandle savedStateHandle, Logger logger, Monitor monitor, AppsFlyerTracker appsFlyerTracker, ContactUsDelegate contactUsDelegate, UserSessionService userSessionService, PassAppLinkBuilder passAppLinkBuilder, NotificationBuilder notificationBuilder, GetProductShortUseCase getProductShortUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetSkusProductsListUseCase getSkusProductsListUseCase, GetPersonalSelectionsDetailUseCase getPersonalSelectionsDetailUseCase, LikePersonalSelectionsUseCase likePersonalSelectionsUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, UnlikePersonalSelectionsUseCase unlikePersonalSelectionsUseCase) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        logger.getClass();
        monitor.getClass();
        appsFlyerTracker.getClass();
        contactUsDelegate.getClass();
        userSessionService.getClass();
        passAppLinkBuilder.getClass();
        notificationBuilder.getClass();
        getProductShortUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getSkusProductsListUseCase.getClass();
        getPersonalSelectionsDetailUseCase.getClass();
        likePersonalSelectionsUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        unlikePersonalSelectionsUseCase.getClass();
        this.f62428b = logger;
        this.f62429c = monitor;
        this.d = appsFlyerTracker;
        this.f62430e = contactUsDelegate;
        this.f62431f = userSessionService;
        this.g = passAppLinkBuilder;
        this.f62432h = notificationBuilder;
        this.f62433i = isFeatureAvailableUseCase;
        this.f62434j = getSkusProductsListUseCase;
        this.f62435k = getPersonalSelectionsDetailUseCase;
        this.l = likePersonalSelectionsUseCase;
        this.m = requireUserInAppDispatchUseCase;
        this.n = unlikePersonalSelectionsUseCase;
        this.o = requireUserInAppDispatchUseCase.f49912a.b();
        this.p = ((PersonalSelectionsRoute.AdvisorCurationDetail) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(PersonalSelectionsRoute.AdvisorCurationDetail.class), MapsKt.c())).f62394a;
        this.q = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        this.r = StateFlowKt.a(bool);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.s = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(PersonalSelectionsCurationAdvisorViewState.Loading.f62506a);
        this.t = mutableStateFlowA2;
        this.u = FlowKt.b(mutableStateFlowA2);
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(PersonalSelectionsCurationAdvisorProductState.Loading.f62501a);
        this.v = mutableStateFlowA3;
        this.w = FlowKt.b(mutableStateFlowA3);
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(PersonalSelectionsCurationAdvisorLookViewState.Loading.f62496a);
        this.x = mutableStateFlowA4;
        this.y = FlowKt.b(mutableStateFlowA4);
        Application application2 = this.f13405a;
        application2.getClass();
        mutableStateFlowA.setValue(Boolean.valueOf(ArUtils.a(application2)));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        h7();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsCurationAdvisorViewModelImpl$initContactUsDelegate$1(this, null), 3);
        contactUsDelegate.C(ScreenType.SERVICES);
    }

    public static final void Ac(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, String str, String str2, Boolean bool) {
        MutableState mutableState;
        PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel;
        MutableStateFlow mutableStateFlow = personalSelectionsCurationAdvisorViewModelImpl.v;
        PersonalSelectionsCurationAdvisorProductState success = (PersonalSelectionsCurationAdvisorProductState) mutableStateFlow.getValue();
        if (success instanceof PersonalSelectionsCurationAdvisorProductState.Success) {
            PersonalSelectionsCurationAdvisorProductState.Success success2 = (PersonalSelectionsCurationAdvisorProductState.Success) success;
            List<SelectionPLPProductUiModel> list = success2.f62503b;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (SelectionPLPProductUiModel selectionPLPProductUiModel : list) {
                String str3 = selectionPLPProductUiModel.f62579a;
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                if (str3.equals(str)) {
                    boolean zBooleanValue = bool.booleanValue();
                    String str4 = selectionPLPProductUiModel.f62579a;
                    str2.getClass();
                    selectionPLPProductUiModel = new SelectionPLPProductUiModel(str4, zBooleanValue, str2, null);
                }
                arrayList.add(selectionPLPProductUiModel);
            }
            List<PlpProductUiModel> list2 = success2.f62502a;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (PlpProductUiModel plpProductUiModel : list2) {
                MutableState mutableState2 = plpProductUiModel.f62934a;
                String str5 = ((PlpProductUiModel.SkuDataUiModel) mutableState2.getF10755b()).f62943a;
                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                if (str5.equals(str)) {
                    boolean zBooleanValue2 = bool.booleanValue();
                    MutableState mutableState3 = ((PlpProductUiModel.SkuDataUiModel) mutableState2.getF10755b()).f62948h;
                    if (mutableState3 != null && (mutableState = ((PlpProductUiModel.SkuDataUiModel) mutableState2.getF10755b()).f62948h) != null && (pLPWishlistStateUiModel = (PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()) != null) {
                        mutableState3.setValue(PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel.a(pLPWishlistStateUiModel, zBooleanValue2, 2));
                    }
                }
                arrayList2.add(plpProductUiModel);
            }
            success = new PersonalSelectionsCurationAdvisorProductState.Success(arrayList2, arrayList);
        }
        mutableStateFlow.setValue(success);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Serializable yc(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, List list, ContinuationImpl continuationImpl) {
        PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1 personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1;
        if (continuationImpl instanceof PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1) {
            personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1 = (PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1) continuationImpl;
            int i2 = personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1.d = i2 - Integer.MIN_VALUE;
            } else {
                personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1 = new PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1(personalSelectionsCurationAdvisorViewModelImpl, continuationImpl);
            }
        } else {
            personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1 = new PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1(personalSelectionsCurationAdvisorViewModelImpl, continuationImpl);
        }
        Object objK = personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1.f62449b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1.d;
        if (i3 == 0) {
            ResultKt.b(objK);
            GetSkusProductsListUseCase getSkusProductsListUseCase = personalSelectionsCurationAdvisorViewModelImpl.f62434j;
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                String str = ((SkuIdUiModel) it.next()).f61764b;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(str);
                arrayList.add(new SkuId(str));
            }
            personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1.d = 1;
            objK = getSkusProductsListUseCase.f50333a.k(arrayList, personalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1);
            if (objK == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objK);
        }
        Iterable<ProductShort> iterable = (Iterable) objK;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(iterable, 10));
        for (ProductShort productShort : iterable) {
            arrayList2.add(PLPItemMapperKt.a(productShort, true, productShort.n != null, true));
        }
        return arrayList2;
    }

    public static final void zc(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl) {
        BuildersKt.c(ViewModelKt.a(personalSelectionsCurationAdvisorViewModelImpl), null, null, new PersonalSelectionsCurationAdvisorViewModelImpl$showErrorNotification$1(personalSelectionsCurationAdvisorViewModelImpl, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f62430e.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f62430e.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f62430e.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f62430e.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f62430e.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    /* JADX INFO: renamed from: O5, reason: from getter */
    public final StateFlow getY() {
        return this.y;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f62430e.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f62430e.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    public final Flow b() {
        return FlowKt.y(this.q);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    public final void c() {
        this.f62430e.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f62430e.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    public final void h7() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsCurationAdvisorViewModelImpl$getPersonalSelection$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f62430e.i();
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    /* JADX INFO: renamed from: i1, reason: from getter */
    public final StateFlow getW() {
        return this.w;
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    public final String i6() {
        String host = DeepLink.ADVISOR_CURATION.getHost();
        Object value = this.t.getValue();
        value.getClass();
        return this.g.a(CollectionsKt.P(host, ((PersonalSelectionsCurationAdvisorViewState.Success) value).f62507a.f62568a));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f62430e.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    public final void m9(SelectionAssetUiModel selectionAssetUiModel) {
        selectionAssetUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsCurationAdvisorViewModelImpl$getLookRelatedProducts$1(this, selectionAssetUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f62430e.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f62430e.s();
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    public final void u3(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsCurationAdvisorViewModelImpl$postInteraction$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f62430e.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f62430e.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f62430e.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel
    public final void y7(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PersonalSelectionsCurationAdvisorViewModelImpl$deleteInteraction$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f62430e.z();
    }
}
