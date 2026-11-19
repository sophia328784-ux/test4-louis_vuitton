package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.navigation3.runtime.NavBackStack;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;
import com.perfectcorp.perfectlib.CameraView;
import com.sightcall.advancedannotations.domain.drawer.annotation.PointerAnnotation;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.LongExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.cart.components.samples.ComposableSingletons$PerfumeSamplesScreenKt;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.onboarding.OnboardingActivity;
import com.vuitton.android.presentation.screen.onboarding.OnboardingNavHostKt;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.options.OptionsDestinations;
import com.vuitton.android.presentation.screen.options.OptionsDestinationsKt;
import com.vuitton.android.presentation.screen.options.OptionsViewModel;
import com.vuitton.android.presentation.screen.options.models.OptionsTrackingUiModel;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditorialContentUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionDetailRoutes;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.ProductListUiModelKt;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTrackingUiModelKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xg0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81124c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xg0(NavHostController navHostController, PersonalSelectionsCurationAdvisorViewModel personalSelectionsCurationAdvisorViewModel) {
        this.f81123b = 21;
        this.d = navHostController;
        this.f81124c = personalSelectionsCurationAdvisorViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81123b;
        Object obj2 = this.d;
        Object obj3 = this.f81124c;
        switch (i2) {
            case 0:
                OnboardingActivity onboardingActivity = (OnboardingActivity) obj3;
                NavHostController navHostController = (NavHostController) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                OnboardingActivity.Companion companion = OnboardingActivity.t;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    if (((OnboardingViewState) onboardingActivity.J().p.getValue()).f59600a) {
                        NavController.d(navHostController, OnboardingRoutes.StartNow.INSTANCE, null, 6);
                    } else {
                        NavController.d(navHostController, OnboardingNavHostKt.c((OnboardingViewState) onboardingActivity.J().p.getValue()), null, 6);
                    }
                }
                return Unit.f71739a;
            case 1:
                Context context = (Context) obj2;
                String str = (String) obj;
                str.getClass();
                ((OptionsViewModel) obj3).U0(OptionsTrackingUiModel.ContactScreen.f59852a);
                String strB = StringExtKt.b(str);
                if (strB != null) {
                    context.startActivity(OptionsDestinationsKt.a(new OptionsDestinations.ToContactPage(strB), context));
                } else {
                    LegacyLogger.f66205a.c("OptionsComposable", "Invalid URL : ".concat(str), null);
                }
                return Unit.f71739a;
            case 2:
                Function3 function3 = (Function3) obj3;
                OrderViewState orderViewState = (OrderViewState) obj2;
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                TransactionUiModel transactionUiModel = orderViewState.f60376c;
                String str2 = transactionUiModel != null ? transactionUiModel.f60421a : null;
                if (str2 == null) {
                    str2 = "";
                }
                function3.A(str2, orderViewState.d, bool);
                return Unit.f71739a;
            case 3:
                CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) obj;
                categoryOptionUiModel.getClass();
                ((Function3) obj3).A((ProductExchangeCategoryUiModel) obj2, categoryOptionUiModel, 0);
                return Unit.f71739a;
            case 4:
                TransactionItemUiModel transactionItemUiModel = (TransactionItemUiModel) obj;
                transactionItemUiModel.getClass();
                ((Function2) obj3).invoke((TransactionUiModel) obj2, transactionItemUiModel);
                return Unit.f71739a;
            case 5:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                ((Function2) obj3).invoke((OrderReturnOrExchangeItemUiModel) obj2, bool2);
                return Unit.f71739a;
            case 6:
                Context context2 = (Context) obj2;
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                OsaActivity.Companion companion2 = OsaActivity.u;
                contributionLinkUiModel.getClass();
                ContributionLinkNavigator contributionLinkNavigator = ((OsaActivity) obj3).p;
                if (contributionLinkNavigator == null) {
                    Intrinsics.h("contributionLinkNavigator");
                    throw null;
                }
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context2);
                appCompatActivityB.getClass();
                ContributionLinkNavigator.a(contributionLinkNavigator, appCompatActivityB, contributionLinkUiModel, null, null, null, 28);
                return Unit.f71739a;
            case 7:
                OsaActivity osaActivity = (OsaActivity) obj3;
                NavBackStack navBackStack = (NavBackStack) obj2;
                ActivityResult activityResult2 = (ActivityResult) obj;
                OsaActivity.Companion companion3 = OsaActivity.u;
                activityResult2.getClass();
                if (activityResult2.f731b == -1) {
                    osaActivity.J().e8();
                    OsaActivity.K(navBackStack, OsaRoutes.ContactForm.INSTANCE);
                }
                return Unit.f71739a;
            case 8:
                Function1 function1 = (Function1) obj3;
                OsaReasonUiModel osaReasonUiModel = (OsaReasonUiModel) obj2;
                if (((Boolean) obj).booleanValue()) {
                    function1.invoke(osaReasonUiModel);
                }
                return Unit.f71739a;
            case 9:
                Context context3 = (Context) obj3;
                MutableState mutableState = (MutableState) obj2;
                PlpSectionUiModel plpSectionUiModel = (PlpSectionUiModel) obj;
                plpSectionUiModel.getClass();
                String strB2 = ProductListUiModelKt.b(plpSectionUiModel);
                if (strB2 != null) {
                    context3.startActivity(PdpActivity.Companion.a(PdpActivity.D, context3, strB2, false, null, null, (String) mutableState.getF10755b(), false, 92));
                }
                return Unit.f71739a;
            case 10:
                PLPCategoryViewModel pLPCategoryViewModel = (PLPCategoryViewModel) obj3;
                Function0 function0 = (Function0) obj2;
                String f63026j = (String) obj;
                if (f63026j == null) {
                    f63026j = pLPCategoryViewModel.getF63026j();
                }
                pLPCategoryViewModel.l(f63026j, null);
                function0.mo47invoke();
                return Unit.f71739a;
            case 11:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                p6 p6Var = new p6(2, (ArrayList) obj2);
                placementScope.f9552b = true;
                p6Var.invoke(placementScope);
                placementScope.f9552b = false;
                ((MutableState) obj3).getF10755b();
                return Unit.f71739a;
            case 12:
                LinearGradient linearGradient = (LinearGradient) obj3;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.getClass();
                contentDrawScope.R1();
                if (((Boolean) ((MutableState) obj2).getF10755b()).booleanValue()) {
                    DrawScope.q1(contentDrawScope, linearGradient, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, 0, 126);
                }
                return Unit.f71739a;
            case 13:
                EditorialContentUiModel editorialContentUiModel = (EditorialContentUiModel) obj2;
                ((Long) obj).longValue();
                ((Function2) obj3).invoke(editorialContentUiModel.f61690f, editorialContentUiModel.f61687b);
                return Unit.f71739a;
            case 14:
                PdpTracker pdpTracker = (PdpTracker) obj2;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                ProductUiModel productUiModel = ((PdpViewState) obj3).f61566b;
                if (productUiModel != null) {
                    String str3 = productUiModel.f61735b;
                    pdpTracker.getClass();
                    str3.getClass();
                    pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnSwipeEvent(str3, zBooleanValue, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                }
                return Unit.f71739a;
            case 15:
                PdpTracker pdpTracker2 = (PdpTracker) obj3;
                String str4 = (String) obj;
                str4.getClass();
                String str5 = ((ProductUiModel) obj2).f61735b;
                pdpTracker2.getClass();
                str5.getClass();
                pdpTracker2.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnEditorialContentCarouselSwipedEvent(str5, str4, null), pdpTracker2.f61586b, pdpTracker2.f61587c, pdpTracker2.d));
                return Unit.f71739a;
            case 16:
                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj;
                reinsuranceUiModel.getClass();
                ((Function1) obj3).invoke(new PdpBottomSheetType.Reinsurance(reinsuranceUiModel));
                ((ReinsuranceTracker) obj2).f63415a.a(ReinsuranceTrackingUiModelKt.a(new ReinsuranceTrackingUiModel.OpenReinsurance(reinsuranceUiModel)));
                return Unit.f71739a;
            case 17:
                PdpTracker pdpTracker3 = (PdpTracker) obj3;
                PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues = (PdpVirtualStudioConfigValues) obj;
                pdpVirtualStudioConfigValues.getClass();
                pdpTracker3.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnAskForLivePresentationClickedEvent.f61598a, pdpTracker3.f61586b, pdpTracker3.f61587c, pdpTracker3.d));
                ((Function1) obj2).invoke(new PdpBottomSheetType.VirtualStudioConsents(pdpVirtualStudioConfigValues));
                return Unit.f71739a;
            case 18:
                VariationUiModel variationUiModel = (VariationUiModel) obj;
                variationUiModel.getClass();
                ((Function2) obj3).invoke(new SkuIdUiModel(variationUiModel.f61767b), null);
                ((Function0) obj2).mo47invoke();
                return Unit.f71739a;
            case 19:
                final Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                final CameraView cameraView = (CameraView) obj2;
                ((DisposableEffectScope) obj).getClass();
                return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                        SurfaceHolder.Callback callback = (SurfaceHolder.Callback) ref$ObjectRef2.f71921b;
                        if (callback != null) {
                            cameraView.getHolder().removeCallback(callback);
                        }
                        ref$ObjectRef2.f71921b = null;
                    }
                };
            case 20:
                final List list = (List) obj3;
                final Function2 function2 = (Function2) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$PerfumeSamplesScreenKt.f55104a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$PerfumeSamplesScreenKt.f55105b, 3);
                lazyListScope.h(list.size(), null, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.cart.components.samples.PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        list.get(((Number) obj4).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.cart.components.samples.PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj4;
                        final int iIntValue = ((Number) obj5).intValue();
                        Composer composer = (Composer) obj6;
                        int iIntValue2 = ((Number) obj7).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        boolean z = true;
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final PerfumeSampleUiModel perfumeSampleUiModel = (PerfumeSampleUiModel) list.get(iIntValue);
                            composer.L(-1062126558);
                            Modifier modifierK = PaddingKt.k(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                            if ((((i3 & 112) ^ 48) <= 32 || !composer.d(iIntValue)) && (i3 & 48) != 32) {
                                z = false;
                            }
                            Object objX = composer.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (z || objX == composer$Companion$Empty$1) {
                                objX = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.cart.components.samples.PerfumeSamplesScreenKt$PerfumeSamplesScreen$2$1$1$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj8) {
                                        SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj8;
                                        semanticsPropertyReceiver.getClass();
                                        SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(iIntValue, 1, 0, 1));
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            Modifier modifierB = SemanticsModifierKt.b(modifierK, false, (Function1) objX);
                            final Function2 function4 = function2;
                            boolean zK = composer.K(function4) | composer.y(perfumeSampleUiModel);
                            Object objX2 = composer.x();
                            if (zK || objX2 == composer$Companion$Empty$1) {
                                objX2 = new Function1<Boolean, Unit>() { // from class: com.vuitton.android.presentation.screen.cart.components.samples.PerfumeSamplesScreenKt$PerfumeSamplesScreen$2$1$1$2$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj8) {
                                        Boolean bool3 = (Boolean) obj8;
                                        bool3.booleanValue();
                                        function4.invoke(perfumeSampleUiModel, bool3);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX2);
                            }
                            PerfumeSamplesScreenKt.a(modifierB, perfumeSampleUiModel, (Function1) objX2, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                LazyListScope.f(lazyListScope, null, ComposableSingletons$PerfumeSamplesScreenKt.f55106c, 3);
                return Unit.f71739a;
            case 21:
                SelectionAssetUiModel selectionAssetUiModel = (SelectionAssetUiModel) obj;
                selectionAssetUiModel.getClass();
                NavController.d((NavHostController) obj2, PersonalSelectionDetailRoutes.Look.INSTANCE, null, 6);
                ((PersonalSelectionsCurationAdvisorViewModel) obj3).m9(selectionAssetUiModel);
                return Unit.f71739a;
            case 22:
                Set set = (Set) obj3;
                Function1 function4 = (Function1) obj2;
                PersonalSelectionsListTrackingUiModel personalSelectionsListTrackingUiModel = (PersonalSelectionsListTrackingUiModel) obj;
                personalSelectionsListTrackingUiModel.getClass();
                if (personalSelectionsListTrackingUiModel instanceof PersonalSelectionsListTrackingUiModel.ScrollPercentageReachedEvent) {
                    PersonalSelectionsListTrackingUiModel.ScrollPercentageReachedEvent scrollPercentageReachedEvent = (PersonalSelectionsListTrackingUiModel.ScrollPercentageReachedEvent) personalSelectionsListTrackingUiModel;
                    if (set.add(new Pair(scrollPercentageReachedEvent.f62641a, Integer.valueOf(scrollPercentageReachedEvent.f62642b)))) {
                        function4.invoke(personalSelectionsListTrackingUiModel);
                    }
                } else {
                    function4.invoke(personalSelectionsListTrackingUiModel);
                }
                return Unit.f71739a;
            case 23:
                MutableLongState mutableLongState = (MutableLongState) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                String string = ((Context) obj3).getString(R.string.alt_timestamp_passed, LongExtKt.a(mutableLongState.b()), LongExtKt.b(mutableLongState.b()));
                string.getClass();
                SemanticsPropertiesKt.i(semanticsPropertyReceiver, string);
                return Unit.f71739a;
            case 24:
                return PointerAnnotation.content$lambda$0$0((PointerAnnotation) obj3, (ViewGroup) obj2, (Canvas) obj);
            case 25:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                PreferenceDao_Impl.Companion companion4 = PreferenceDao_Impl.f20489c;
                sQLiteConnection.getClass();
                ((PreferenceDao_Impl) obj3).f20491b.c(sQLiteConnection, (Preference) obj2);
                return Unit.f71739a;
            case 26:
                Boolean bool3 = (Boolean) obj;
                bool3.getClass();
                ((Function2) obj3).invoke((ConsentUiModel.FunctionalConsentUiModel) obj2, bool3);
                return Unit.f71739a;
            case 27:
                Boolean bool4 = (Boolean) obj;
                bool4.getClass();
                ((Function2) obj3).invoke((ConsentUiModel.AnalyticsConsentUiModel) obj2, bool4);
                return Unit.f71739a;
            case 28:
                Boolean bool5 = (Boolean) obj;
                bool5.getClass();
                ((Function2) obj3).invoke((ConsentUiModel.CustomisationConsentUiModel) obj2, bool5);
                return Unit.f71739a;
            default:
                Boolean bool6 = (Boolean) obj;
                bool6.getClass();
                ((Function2) obj3).invoke((ConsentUiModel.SocialConsentUiModel) obj2, bool6);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ xg0(Object obj, Object obj2, int i2) {
        this.f81123b = i2;
        this.f81124c = obj;
        this.d = obj2;
    }
}
