package defpackage;

import android.app.RemoteAction;
import android.content.Context;
import android.os.Bundle;
import android.view.textclassifier.TextClassification;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.SnackbarDuration;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import androidx.navigation3.scene.SinglePaneScene;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarConfiguration;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.compose.components.PushCardImageLoaderKt;
import com.vuitton.android.presentation.compose.components.compositionlocalprovider.LVSearchCompositionLocalProviderKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity;
import com.vuitton.android.presentation.screen.authentication.social.a;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.OverlayConstants;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerScanFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.options.settings.SettingsActivity;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorScreenKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.portal.PortalSliderActivity;
import com.vuitton.android.presentation.screen.portal.components.PortalSliderComposableKt;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.repairs.components.RepairDetailAddressBookComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairShippingConfirmationComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.RepairShippingConfirmationFragment;
import com.vuitton.android.presentation.screen.repairs.detail.addressbook.RepairDetailAddressBookFragment;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.AppointmentInformationUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.HeaderUiModel;
import com.vuitton.android.presentation.screen.search.SearchActivity;
import com.vuitton.android.presentation.screen.search.components.SearchNavDisplayKt;
import com.vuitton.android.presentation.screen.search.components.SearchRoutes;
import com.vuitton.android.presentation.screen.search.components.StoreModeSearchScreenComposableKt;
import com.vuitton.android.presentation.screen.search.components.SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.story.StoryActivity;
import com.vuitton.android.presentation.screen.story.components.StoryComposableKt;
import com.vuitton.android.presentation.screen.story.models.StoryCloseUiModel;
import com.vuitton.android.presentation.screen.story.models.StoryViewState;
import com.vuitton.android.presentation.screen.thankyou.ThankYouActivity;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouFeedbackBottomSheetKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouBottomSheet;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import defpackage.hv0;
import defpackage.m21;
import defpackage.md;
import defpackage.mu0;
import defpackage.nu0;
import defpackage.o60;
import defpackage.p01;
import defpackage.pq0;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Lazy;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.internal.SafeCollector;
import kotlinx.coroutines.internal.ScopeCoroutine;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ll0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76051c;

    public /* synthetic */ ll0(Object obj, int i2) {
        this.f76050b = i2;
        this.f76051c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0313  */
    /* JADX WARN: Code duplicated, block: B:130:0x0328 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x032f  */
    /* JADX WARN: Code duplicated, block: B:187:0x0488 A[Catch: all -> 0x0486, TryCatch #0 {all -> 0x0486, blocks: (B:167:0x042a, B:169:0x043a, B:171:0x0440, B:174:0x044d, B:176:0x045c, B:178:0x0468, B:180:0x0471, B:182:0x047a, B:187:0x0488, B:188:0x048b, B:191:0x0494, B:201:0x04bc, B:192:0x0498, B:193:0x049e, B:195:0x04a4, B:197:0x04ac, B:200:0x04b8), top: B:235:0x042a }] */
    /* JADX WARN: Code duplicated, block: B:190:0x0492 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:191:0x0494 A[Catch: all -> 0x0486, LOOP:3: B:174:0x044d->B:191:0x0494, LOOP_END, TryCatch #0 {all -> 0x0486, blocks: (B:167:0x042a, B:169:0x043a, B:171:0x0440, B:174:0x044d, B:176:0x045c, B:178:0x0468, B:180:0x0471, B:182:0x047a, B:187:0x0488, B:188:0x048b, B:191:0x0494, B:201:0x04bc, B:192:0x0498, B:193:0x049e, B:195:0x04a4, B:197:0x04ac, B:200:0x04b8), top: B:235:0x042a }] */
    /* JADX WARN: Code duplicated, block: B:246:0x04bc A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:133:0x032f, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object objY;
        int i2 = this.f76050b;
        int i3 = 7;
        CancellableContinuation cancellableContinuationD = null;
        Job job = null;
        boolean z = false;
        Object obj3 = this.f76051c;
        switch (i2) {
            case 0:
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                String str = (String) obj2;
                plpProductUiModel.getClass();
                str.getClass();
                ((PSPViewModel) obj3).u5(plpProductUiModel, new PLPAddToWishlistTrackingMode.Revamp(str), new PLPRemoveFromWishlistTrackingMode.Revamp(str));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorScreenKt.a((PersonalSelectionsCurationAdvisorViewState.Success) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                final PlaceSearchActivity placeSearchActivity = (PlaceSearchActivity) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1806122624, new Function2() { // from class: com.vuitton.android.presentation.screen.placesearch.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            PlaceSearchActivity placeSearchActivity2 = placeSearchActivity;
                            ViewModelLazy viewModelLazy = placeSearchActivity2.s;
                            Composer composer2 = (Composer) obj4;
                            int iIntValue2 = ((Integer) obj5).intValue();
                            PlaceSearchActivity.Companion companion2 = PlaceSearchActivity.t;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                MutableLiveData d = ((PlaceSearchViewModel) viewModelLazy.getF71699b()).getD();
                                boolean zY = composer2.y(placeSearchActivity2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new PlaceSearchActivity$onCreate$1$1$1$1(1, placeSearchActivity2, PlaceSearchActivity.class, "managePlaceGeocoding", "managePlaceGeocoding(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V", 0);
                                    composer2.q(objX);
                                }
                                d.observe(placeSearchActivity2, new PlaceSearchActivity$sam$androidx_lifecycle_Observer$0((Function1) ((KFunction) objX)));
                                MutableLiveData f62663f = ((PlaceSearchViewModel) viewModelLazy.getF71699b()).getF62663f();
                                boolean zY2 = composer2.y(placeSearchActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new PlaceSearchActivity$onCreate$1$1$2$1(1, placeSearchActivity2, PlaceSearchActivity.class, "managePlaceGeocoding", "managePlaceGeocoding(Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V", 0);
                                    composer2.q(objX2);
                                }
                                f62663f.observe(placeSearchActivity2, new PlaceSearchActivity$sam$androidx_lifecycle_Observer$0((Function1) ((KFunction) objX2)));
                                PlaceSearchViewModel placeSearchViewModel = (PlaceSearchViewModel) viewModelLazy.getF71699b();
                                AutocompleteContext autocompleteContext = (AutocompleteContext) placeSearchActivity2.r.getF71699b();
                                PlaceSearchActivity.PlaceInfoType placeInfoType = (PlaceSearchActivity.PlaceInfoType) placeSearchActivity2.p.getF71699b();
                                String str2 = (String) placeSearchActivity2.q.getF71699b();
                                if (str2 == null) {
                                    str2 = "";
                                }
                                String str3 = str2;
                                boolean zY3 = composer2.y(placeSearchActivity2);
                                Object objX3 = composer2.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    PlaceSearchActivity$onCreate$1$1$3$1 placeSearchActivity$onCreate$1$1$3$1 = new PlaceSearchActivity$onCreate$1$1$3$1(0, placeSearchActivity2, PlaceSearchActivity.class, "finish", "finish()V", 0);
                                    composer2.q(placeSearchActivity$onCreate$1$1$3$1);
                                    objX3 = placeSearchActivity$onCreate$1$1$3$1;
                                }
                                PlaceSearchPageComposableKt.b(placeSearchViewModel, autocompleteContext, placeInfoType, str3, (Function0) ((KFunction) objX3), composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 3:
                final PortalSliderActivity portalSliderActivity = (PortalSliderActivity) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                PortalSliderActivity.Companion companion2 = PortalSliderActivity.s;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(695774515, new Function2() { // from class: com.vuitton.android.presentation.screen.portal.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer3 = (Composer) obj4;
                            int iIntValue3 = ((Integer) obj5).intValue();
                            PortalSliderActivity.Companion companion3 = PortalSliderActivity.s;
                            if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                PortalSliderActivity portalSliderActivity2 = portalSliderActivity;
                                PortalSliderViewModel portalSliderViewModel = (PortalSliderViewModel) portalSliderActivity2.r.getF71699b();
                                PermissionsViewModelImpl permissionsViewModelImpl = (PermissionsViewModelImpl) portalSliderActivity2.q.getF71699b();
                                boolean zY = composer3.y(portalSliderActivity2);
                                Object objX = composer3.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    PortalSliderActivity$onCreate$1$1$1$1 portalSliderActivity$onCreate$1$1$1$1 = new PortalSliderActivity$onCreate$1$1$1$1(0, portalSliderActivity2, PortalSliderActivity.class, "handlePrivacyLink", "handlePrivacyLink()V", 0);
                                    composer3.q(portalSliderActivity$onCreate$1$1$1$1);
                                    objX = portalSliderActivity$onCreate$1$1$1$1;
                                }
                                KFunction kFunction = (KFunction) objX;
                                boolean zY2 = composer3.y(portalSliderActivity2);
                                Object objX2 = composer3.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    PortalSliderActivity$onCreate$1$1$2$1 portalSliderActivity$onCreate$1$1$2$1 = new PortalSliderActivity$onCreate$1$1$2$1(1, portalSliderActivity2, PortalSliderActivity.class, "handleLink", "handleLink(Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", 0);
                                    composer3.q(portalSliderActivity$onCreate$1$1$2$1);
                                    objX2 = portalSliderActivity$onCreate$1$1$2$1;
                                }
                                KFunction kFunction2 = (KFunction) objX2;
                                boolean zY3 = composer3.y(portalSliderActivity2);
                                Object objX3 = composer3.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    PortalSliderActivity$onCreate$1$1$3$1 portalSliderActivity$onCreate$1$1$3$1 = new PortalSliderActivity$onCreate$1$1$3$1(0, portalSliderActivity2, PortalSliderActivity.class, "finish", "finish()V", 0);
                                    composer3.q(portalSliderActivity$onCreate$1$1$3$1);
                                    objX3 = portalSliderActivity$onCreate$1$1$3$1;
                                }
                                PortalSliderComposableKt.a(portalSliderViewModel, permissionsViewModelImpl, (Function1) kFunction2, (Function0) kFunction, (Function0) ((KFunction) objX3), composer3, 0);
                            } else {
                                composer3.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer2), composer2, 48);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 4:
                PowerManagementBottomSheet powerManagementBottomSheet = (PowerManagementBottomSheet) obj3;
                LVLightUpPowerMode lVLightUpPowerMode = (LVLightUpPowerMode) obj;
                LVLightUpPowerMode lVLightUpPowerMode2 = (LVLightUpPowerMode) obj2;
                PowerManagementBottomSheet.Companion companion3 = PowerManagementBottomSheet.S;
                lVLightUpPowerMode.getClass();
                lVLightUpPowerMode2.getClass();
                powerManagementBottomSheet.R.invoke(lVLightUpPowerMode, lVLightUpPowerMode2);
                powerManagementBottomSheet.dismiss();
                return Unit.f71739a;
            case 5:
                Integer num = (Integer) obj3;
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(358171985);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PushCardImageLoader$lambda$0");
                num.getClass();
                Painter painterA = PainterResources_androidKt.a(num.intValue(), composer3, 0);
                ContentScale.f9447a.getClass();
                Modifier modifierA = PainterModifierKt.a(dTFunctionNameModifier, painterA, null, ContentScale.Companion.f9451e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
                composer3.F();
                return modifierA;
            case 6:
                Recomposer recomposer = (Recomposer) obj3;
                Set set = (Set) obj;
                synchronized (recomposer.f8083c) {
                    try {
                        if (((Recomposer.State) recomposer.u.getValue()).compareTo(Recomposer.State.Idle) >= 0) {
                            MutableScatterSet mutableScatterSet = recomposer.f8086h;
                            if (set instanceof ScatterSetWrapper) {
                                ScatterSet scatterSet = ((ScatterSetWrapper) set).f8172b;
                                Object[] objArr = scatterSet.f3368b;
                                long[] jArr = scatterSet.f3367a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i4 = 0;
                                    while (true) {
                                        long j2 = jArr[i4];
                                        if ((((~j2) << i3) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i5 = 8 - ((~(i4 - length)) >>> 31);
                                            for (int i6 = 0; i6 < i5; i6++) {
                                                if ((255 & j2) < 128) {
                                                    Object obj4 = objArr[(i4 << 3) + i6];
                                                    if (obj4 instanceof StateObjectImpl) {
                                                        int i7 = ReaderKind.f8460a;
                                                        if (((StateObjectImpl) obj4).j(1)) {
                                                            mutableScatterSet.d(obj4);
                                                        }
                                                    } else {
                                                        mutableScatterSet.d(obj4);
                                                    }
                                                }
                                                j2 >>= 8;
                                            }
                                            if (i5 == 8) {
                                                if (i4 != length) {
                                                    i4++;
                                                    i3 = 7;
                                                }
                                            }
                                        } else if (i4 != length) {
                                            i4++;
                                            i3 = 7;
                                        }
                                    }
                                }
                            } else {
                                for (Object obj5 : set) {
                                    if (obj5 instanceof StateObjectImpl) {
                                        int i8 = ReaderKind.f8460a;
                                        if (!((StateObjectImpl) obj5).j(1)) {
                                        }
                                    }
                                    mutableScatterSet.d(obj5);
                                }
                            }
                            cancellableContinuationD = recomposer.D();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                if (cancellableContinuationD != null) {
                    Result.Companion companion4 = Result.INSTANCE;
                    cancellableContinuationD.resumeWith(Unit.f71739a);
                }
                return Unit.f71739a;
            case 7:
                Saver saver = (Saver) obj3;
                SaverScope saverScope = (SaverScope) obj;
                MutableState mutableState = (MutableState) obj2;
                if (!(mutableState instanceof SnapshotMutableState)) {
                    md.n("If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()");
                    return null;
                }
                SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
                Object objA = saver.a(saverScope, snapshotMutableState.getF10755b());
                if (objA == null) {
                    return null;
                }
                SnapshotMutationPolicy snapshotMutationPolicyE = snapshotMutableState.getF8133c();
                snapshotMutationPolicyE.getClass();
                return SnapshotStateKt.f(objA, snapshotMutationPolicyE);
            case 8:
                final RepairDetailAddressBookFragment repairDetailAddressBookFragment = (RepairDetailAddressBookFragment) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                RepairDetailAddressBookFragment.Companion companion5 = RepairDetailAddressBookFragment.L;
                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-2137420769, new Function2() { // from class: com.vuitton.android.presentation.screen.repairs.detail.addressbook.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            Composer composer5 = (Composer) obj6;
                            int iIntValue4 = ((Integer) obj7).intValue();
                            RepairDetailAddressBookFragment.Companion companion6 = RepairDetailAddressBookFragment.L;
                            if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                RepairDetailAddressBookFragment repairDetailAddressBookFragment2 = repairDetailAddressBookFragment;
                                DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = (DistantRepairAssessmentViewModel) repairDetailAddressBookFragment2.F.getF71699b();
                                CareServiceTransactionIdUiModel careServiceTransactionIdUiModel = (CareServiceTransactionIdUiModel) repairDetailAddressBookFragment2.I.getF71699b();
                                String str2 = careServiceTransactionIdUiModel != null ? careServiceTransactionIdUiModel.f64072b : null;
                                boolean zY = composer5.y(repairDetailAddressBookFragment2);
                                Object objX = composer5.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    RepairDetailAddressBookFragment$onCreateView$1$1$1$1$1 repairDetailAddressBookFragment$onCreateView$1$1$1$1$1 = new RepairDetailAddressBookFragment$onCreateView$1$1$1$1$1(0, repairDetailAddressBookFragment2, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                                    composer5.q(repairDetailAddressBookFragment$onCreateView$1$1$1$1$1);
                                    objX = repairDetailAddressBookFragment$onCreateView$1$1$1$1$1;
                                }
                                KFunction kFunction = (KFunction) objX;
                                boolean zY2 = composer5.y(repairDetailAddressBookFragment2);
                                Object objX2 = composer5.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    RepairDetailAddressBookFragment$onCreateView$1$1$1$2$1 repairDetailAddressBookFragment$onCreateView$1$1$1$2$1 = new RepairDetailAddressBookFragment$onCreateView$1$1$1$2$1(1, repairDetailAddressBookFragment2, RepairDetailAddressBookFragment.class, "openAddressEditorForm", "openAddressEditorForm(Ljava/lang/String;)V", 0);
                                    composer5.q(repairDetailAddressBookFragment$onCreateView$1$1$1$2$1);
                                    objX2 = repairDetailAddressBookFragment$onCreateView$1$1$1$2$1;
                                }
                                KFunction kFunction2 = (KFunction) objX2;
                                boolean zY3 = composer5.y(repairDetailAddressBookFragment2);
                                Object objX3 = composer5.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    RepairDetailAddressBookFragment$onCreateView$1$1$1$3$1 repairDetailAddressBookFragment$onCreateView$1$1$1$3$1 = new RepairDetailAddressBookFragment$onCreateView$1$1$1$3$1(1, repairDetailAddressBookFragment2, RepairDetailAddressBookFragment.class, "validateAddressSelection", "validateAddressSelection(Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)V", 0);
                                    composer5.q(repairDetailAddressBookFragment$onCreateView$1$1$1$3$1);
                                    objX3 = repairDetailAddressBookFragment$onCreateView$1$1$1$3$1;
                                }
                                RepairDetailAddressBookComposableKt.a(distantRepairAssessmentViewModel, str2, (Function1) kFunction2, (Function1) ((KFunction) objX3), (Function0) kFunction, composer5, 0);
                            } else {
                                composer5.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer4), composer4, 48);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                RepairDetailBffScreenKt.a((AppointmentInformationUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                RepairDetailBffScreenKt.f((HeaderUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                final RepairShippingConfirmationFragment repairShippingConfirmationFragment = (RepairShippingConfirmationFragment) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                RepairShippingConfirmationFragment.Companion companion6 = RepairShippingConfirmationFragment.J;
                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-168318356, new Function2() { // from class: com.vuitton.android.presentation.screen.repairs.detail.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            Composer composer6 = (Composer) obj6;
                            int iIntValue5 = ((Integer) obj7).intValue();
                            RepairShippingConfirmationFragment.Companion companion7 = RepairShippingConfirmationFragment.J;
                            if (composer6.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                RepairShippingConfirmationFragment repairShippingConfirmationFragment2 = repairShippingConfirmationFragment;
                                DistantRepairAssessmentViewModel distantRepairAssessmentViewModel = (DistantRepairAssessmentViewModel) repairShippingConfirmationFragment2.F.getF71699b();
                                CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) repairShippingConfirmationFragment2.I.getF71699b();
                                String str2 = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
                                boolean zY = composer6.y(repairShippingConfirmationFragment2);
                                Object objX = composer6.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    RepairShippingConfirmationFragment$onCreateView$1$1$1$1$1 repairShippingConfirmationFragment$onCreateView$1$1$1$1$1 = new RepairShippingConfirmationFragment$onCreateView$1$1$1$1$1(0, repairShippingConfirmationFragment2, RepairShippingConfirmationFragment.class, "goToCareServices", "goToCareServices()V", 0);
                                    composer6.q(repairShippingConfirmationFragment$onCreateView$1$1$1$1$1);
                                    objX = repairShippingConfirmationFragment$onCreateView$1$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer6.y(repairShippingConfirmationFragment2);
                                Object objX2 = composer6.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    RepairShippingConfirmationFragment$onCreateView$1$1$1$2$1 repairShippingConfirmationFragment$onCreateView$1$1$1$2$1 = new RepairShippingConfirmationFragment$onCreateView$1$1$1$2$1(0, repairShippingConfirmationFragment2, RepairShippingConfirmationFragment.class, "goToCareServices", "goToCareServices()V", 0);
                                    composer6.q(repairShippingConfirmationFragment$onCreateView$1$1$1$2$1);
                                    objX2 = repairShippingConfirmationFragment$onCreateView$1$1$1$2$1;
                                }
                                Function0 function1 = (Function0) ((KFunction) objX2);
                                boolean zY3 = composer6.y(repairShippingConfirmationFragment2);
                                Object objX3 = composer6.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    RepairShippingConfirmationFragment$onCreateView$1$1$1$3$1 repairShippingConfirmationFragment$onCreateView$1$1$1$3$1 = new RepairShippingConfirmationFragment$onCreateView$1$1$1$3$1(0, repairShippingConfirmationFragment2, RepairShippingConfirmationFragment.class, "goToCareServices", "goToCareServices()V", 0);
                                    composer6.q(repairShippingConfirmationFragment$onCreateView$1$1$1$3$1);
                                    objX3 = repairShippingConfirmationFragment$onCreateView$1$1$1$3$1;
                                }
                                RepairShippingConfirmationComposableKt.c(distantRepairAssessmentViewModel, str2, function0, function1, (Function0) ((KFunction) objX3), composer6, 0);
                            } else {
                                composer6.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer5), composer5, 48);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 12:
                int iIntValue5 = ((Integer) obj).intValue();
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                CoroutineContext.Key key = element.getKey();
                CoroutineContext.Element element2 = ((SafeCollector) obj3).f75089c.get(key);
                if (key == Job.Key.f74677b) {
                    Job job2 = (Job) element2;
                    for (Job parent = (Job) element; parent != null; parent = ((ScopeCoroutine) parent).getParent()) {
                        if (parent == job2 || !(parent instanceof ScopeCoroutine)) {
                            job = parent;
                            if (job == job2) {
                                throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + job + ", expected child of " + job2 + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
                            }
                            if (job2 != null) {
                                iIntValue5++;
                            }
                        }
                    }
                    if (job == job2) {
                        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + job + ", expected child of " + job2 + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
                    }
                    if (job2 != null) {
                        iIntValue5++;
                    }
                } else if (element != element2) {
                    iIntValue5 = Integer.MIN_VALUE;
                } else {
                    iIntValue5++;
                }
                return Integer.valueOf(iIntValue5);
            case 13:
                final SearchActivity searchActivity = (SearchActivity) obj3;
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                SearchActivity.Companion companion7 = SearchActivity.y;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-240770665, new Function2() { // from class: com.vuitton.android.presentation.screen.search.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            final SearchActivity searchActivity2 = searchActivity;
                            Lazy lazy = searchActivity2.p;
                            ViewModelLazy viewModelLazy = searchActivity2.u;
                            Lazy lazy2 = searchActivity2.q;
                            Composer composer7 = (Composer) obj6;
                            int iIntValue7 = ((Integer) obj7).intValue();
                            SearchActivity.Companion companion8 = SearchActivity.y;
                            if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                MutableState mutableStateC = FlowExtKt.c(((PSPViewModel) viewModelLazy.getF71699b()).a(), null, composer7, 0, 7);
                                MutableState mutableStateC2 = FlowExtKt.c(((PSPViewModel) viewModelLazy.getF71699b()).M0(), null, composer7, 0, 7);
                                String str2 = ((PLPViewState) mutableStateC.getF10755b()).f63005a;
                                boolean zK = composer7.K(mutableStateC2) | composer7.y(searchActivity2);
                                Object objX = composer7.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new SearchActivity$onCreate$2$1$1$1(mutableStateC2, searchActivity2, null);
                                    composer7.q(objX);
                                }
                                EffectsKt.e(composer7, str2, (Function2) objX);
                                String str3 = (String) lazy.getF71699b();
                                if (str3 == null || str3.length() == 0) {
                                    composer7.L(-202834719);
                                    final NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{((String) lazy2.getF71699b()) != null ? SearchRoutes.PSP.INSTANCE : SearchRoutes.Search.INSTANCE}, composer7);
                                    String str4 = (String) lazy2.getF71699b();
                                    boolean zY = composer7.y(searchActivity2);
                                    Object objX2 = composer7.x();
                                    if (zY || objX2 == composer$Companion$Empty$1) {
                                        objX2 = new SearchActivity$onCreate$2$1$2$1(searchActivity2, null);
                                        composer7.q(objX2);
                                    }
                                    EffectsKt.e(composer7, str4, (Function2) objX2);
                                    LVSearchCompositionLocalProviderKt.a(ComposableLambdaKt.b(-983434389, new Function2() { // from class: com.vuitton.android.presentation.screen.search.b
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj8, Object obj9) {
                                            Composer composer8 = (Composer) obj8;
                                            int iIntValue8 = ((Integer) obj9).intValue();
                                            SearchActivity.Companion companion9 = SearchActivity.y;
                                            if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                                final SearchActivity searchActivity3 = searchActivity2;
                                                boolean z2 = searchActivity3.s;
                                                SearchViewModel searchViewModel = (SearchViewModel) searchActivity3.t.getF71699b();
                                                PSPViewModel pSPViewModel = (PSPViewModel) searchActivity3.u.getF71699b();
                                                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) searchActivity3.v.getF71699b();
                                                ContributionLinkNavigator contributionLinkNavigator = searchActivity3.w;
                                                if (contributionLinkNavigator == null) {
                                                    Intrinsics.h("contributionLinkNavigator");
                                                    throw null;
                                                }
                                                String str5 = (String) searchActivity3.q.getF71699b();
                                                boolean zY2 = composer8.y(searchActivity3);
                                                Object objX3 = composer8.x();
                                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                                if (zY2 || objX3 == composer$Companion$Empty$2) {
                                                    objX3 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.search.SearchActivity$onCreate$2$1$3$1$1
                                                        @Override // kotlin.jvm.functions.Function1
                                                        public final Object invoke(Object obj10) {
                                                            String str6 = ((SkuIdUiModel) obj10).f61764b;
                                                            str6.getClass();
                                                            PdpActivity.Companion companion10 = PdpActivity.D;
                                                            SearchActivity.Companion companion11 = SearchActivity.y;
                                                            SearchActivity searchActivity4 = searchActivity3;
                                                            searchActivity4.startActivity(PdpActivity.Companion.a(companion10, searchActivity4, str6, false, (String) searchActivity4.p.getF71699b(), null, null, false, 96));
                                                            return Unit.f71739a;
                                                        }
                                                    };
                                                    composer8.q(objX3);
                                                }
                                                Function1 function1 = (Function1) objX3;
                                                boolean zY3 = composer8.y(searchActivity3);
                                                Object objX4 = composer8.x();
                                                if (zY3 || objX4 == composer$Companion$Empty$2) {
                                                    objX4 = new mu0(searchActivity3, 7);
                                                    composer8.q(objX4);
                                                }
                                                Function0 function0 = (Function0) objX4;
                                                boolean zY4 = composer8.y(searchActivity3);
                                                Object objX5 = composer8.x();
                                                if (zY4 || objX5 == composer$Companion$Empty$2) {
                                                    objX5 = new mu0(searchActivity3, 1);
                                                    composer8.q(objX5);
                                                }
                                                Function0 function2 = (Function0) objX5;
                                                boolean zY5 = composer8.y(searchActivity3);
                                                Object objX6 = composer8.x();
                                                if (zY5 || objX6 == composer$Companion$Empty$2) {
                                                    objX6 = new mu0(searchActivity3, 2);
                                                    composer8.q(objX6);
                                                }
                                                Function0 function3 = (Function0) objX6;
                                                boolean zY6 = composer8.y(searchActivity3);
                                                Object objX7 = composer8.x();
                                                if (zY6 || objX7 == composer$Companion$Empty$2) {
                                                    objX7 = new mu0(searchActivity3, 3);
                                                    composer8.q(objX7);
                                                }
                                                Function0 function4 = (Function0) objX7;
                                                boolean zY7 = composer8.y(searchActivity3);
                                                Object objX8 = composer8.x();
                                                if (zY7 || objX8 == composer$Companion$Empty$2) {
                                                    objX8 = new mu0(searchActivity3, 4);
                                                    composer8.q(objX8);
                                                }
                                                NavBackStack.Companion companion10 = NavBackStack.INSTANCE;
                                                SearchNavDisplayKt.a(navBackStackA, z2, searchViewModel, pSPViewModel, quickAccessFiltersViewModel, contributionLinkNavigator, function1, function0, function2, function3, function4, str5, (Function0) objX8, composer8, 0);
                                            } else {
                                                composer8.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer7), composer7, 6);
                                    composer7.F();
                                } else {
                                    Modifier modifierO = pq0.j(-199559321, composer7, "onCreate$lambda$1$0").o(SizeKt.f5052c);
                                    SearchViewModel searchViewModel = (SearchViewModel) searchActivity2.t.getF71699b();
                                    String str5 = (String) lazy.getF71699b();
                                    boolean z2 = searchActivity2.s;
                                    String str6 = (String) lazy2.getF71699b();
                                    boolean zY2 = composer7.y(searchActivity2);
                                    Object objX3 = composer7.x();
                                    if (zY2 || objX3 == composer$Companion$Empty$1) {
                                        objX3 = new nu0(searchActivity2, 1);
                                        composer7.q(objX3);
                                    }
                                    Function1 function1 = (Function1) objX3;
                                    boolean zY3 = composer7.y(searchActivity2);
                                    Object objX4 = composer7.x();
                                    if (zY3 || objX4 == composer$Companion$Empty$1) {
                                        objX4 = new nu0(searchActivity2, 2);
                                        composer7.q(objX4);
                                    }
                                    StoreModeSearchScreenComposableKt.a(modifierO, searchViewModel, str5, z2, str6, function1, (Function1) objX4, composer7, 6);
                                    composer7.F();
                                }
                            } else {
                                composer7.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer6), composer6, 48);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 14:
                ((PointerInputChange) obj).a();
                ((Ref$LongRef) obj3).f71920b = ((Offset) obj2).f8808a;
                return Unit.f71739a;
            case 15:
                final SettingsActivity settingsActivity = (SettingsActivity) obj3;
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                SettingsActivity.Companion companion8 = SettingsActivity.p;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-564397364, new Function2() { // from class: com.vuitton.android.presentation.screen.options.settings.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj6, Object obj7) {
                            Composer composer8 = (Composer) obj6;
                            int iIntValue8 = ((Integer) obj7).intValue();
                            SettingsActivity.Companion companion9 = SettingsActivity.p;
                            if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer8);
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer8);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                HiltViewModelFactory hiltViewModelFactoryA = HiltViewModelKt.a(viewModelStoreOwnerA, composer8);
                                CreationExtras defaultViewModelCreationExtras = viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
                                ReflectionFactory reflectionFactory = Reflection.f71922a;
                                SettingsViewModel settingsViewModel = (SettingsViewModel) ViewModelKt.a(reflectionFactory.b(SettingsViewModelImpl.class), viewModelStoreOwnerA, null, hiltViewModelFactoryA, defaultViewModelCreationExtras, composer8);
                                ViewModelStoreOwner viewModelStoreOwnerA2 = LocalViewModelStoreOwner.a(composer8);
                                if (viewModelStoreOwnerA2 == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                PrivacyViewModel privacyViewModel = (PrivacyViewModel) ViewModelKt.a(reflectionFactory.b(PrivacyViewModelImpl.class), viewModelStoreOwnerA2, null, HiltViewModelKt.a(viewModelStoreOwnerA2, composer8), viewModelStoreOwnerA2 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA2).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer8);
                                ViewModelStoreOwner viewModelStoreOwnerA3 = LocalViewModelStoreOwner.a(composer8);
                                if (viewModelStoreOwnerA3 == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                MyInformationViewModel myInformationViewModel = (MyInformationViewModel) ViewModelKt.a(reflectionFactory.b(MyInformationViewModelImpl.class), viewModelStoreOwnerA3, null, HiltViewModelKt.a(viewModelStoreOwnerA3, composer8), viewModelStoreOwnerA3 instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA3).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer8);
                                SettingsActivity settingsActivity2 = settingsActivity;
                                boolean zY = composer8.y(settingsActivity2);
                                Object objX = composer8.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    SettingsActivity$onCreate$1$1$1$1 settingsActivity$onCreate$1$1$1$1 = new SettingsActivity$onCreate$1$1$1$1(0, settingsActivity2, SettingsActivity.class, "finish", "finish()V", 0);
                                    composer8.q(settingsActivity$onCreate$1$1$1$1);
                                    objX = settingsActivity$onCreate$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer8.y(settingsActivity2);
                                Object objX2 = composer8.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new hv0(settingsActivity2, 0);
                                    composer8.q(objX2);
                                }
                                SettingsNavHostKt.a(navHostControllerA, settingsViewModel, privacyViewModel, myInformationViewModel, function0, (Function0) objX2, composer8, 0);
                            } else {
                                composer8.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer7), composer7, 48);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 16:
                SinglePaneScene singlePaneScene = (SinglePaneScene) obj3;
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    singlePaneScene.f18418b.a(composer8, 0);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 17:
                final SnapshotStateObserver snapshotStateObserver = (SnapshotStateObserver) obj3;
                Set set2 = (Set) obj;
                AtomicReference atomicReference = snapshotStateObserver.f8499b;
                while (true) {
                    Object obj6 = atomicReference.get();
                    if (obj6 == null) {
                        objY = set2;
                    } else if (obj6 instanceof Set) {
                        objY = CollectionsKt.P(obj6, set2);
                    } else {
                        if (!(obj6 instanceof List)) {
                            ComposerKt.b("Unexpected notification");
                            os.d();
                            return null;
                        }
                        objY = CollectionsKt.Y((Collection) obj6, CollectionsKt.O(set2));
                    }
                    do {
                        if (atomicReference.compareAndSet(obj6, objY)) {
                            if (snapshotStateObserver.d()) {
                                snapshotStateObserver.f8498a.invoke(new Function0() { // from class: androidx.compose.runtime.snapshots.b
                                    /* JADX WARN: Code duplicated, block: B:24:0x006a A[DONT_INVERT] */
                                    /* JADX WARN: Code duplicated, block: B:25:0x006c A[Catch: all -> 0x0077, LOOP:2: B:13:0x0029->B:25:0x006c, LOOP_END, TryCatch #0 {all -> 0x0077, blocks: (B:8:0x000e, B:10:0x0017, B:13:0x0029, B:15:0x003c, B:17:0x0048, B:19:0x0052, B:21:0x0060, B:25:0x006c, B:26:0x006f), top: B:44:0x000e, outer: #1 }] */
                                    /* JADX WARN: Code duplicated, block: B:52:0x006f A[EDGE_INSN: B:52:0x006f->B:26:0x006f BREAK  A[LOOP:2: B:13:0x0029->B:25:0x006c], SYNTHETIC] */
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        SnapshotStateObserver snapshotStateObserver2 = snapshotStateObserver;
                                        do {
                                            synchronized (snapshotStateObserver2.g) {
                                                try {
                                                    if (!snapshotStateObserver2.f8500c) {
                                                        snapshotStateObserver2.f8500c = true;
                                                        try {
                                                            MutableVector mutableVector = snapshotStateObserver2.f8502f;
                                                            Object[] objArr2 = mutableVector.f8165b;
                                                            int i9 = mutableVector.d;
                                                            for (int i10 = 0; i10 < i9; i10++) {
                                                                SnapshotStateObserver.ObservedScopeMap observedScopeMap = (SnapshotStateObserver.ObservedScopeMap) objArr2[i10];
                                                                MutableScatterSet mutableScatterSet2 = observedScopeMap.g;
                                                                Function1 function1 = observedScopeMap.f8506a;
                                                                Object[] objArr3 = mutableScatterSet2.f3368b;
                                                                long[] jArr2 = mutableScatterSet2.f3367a;
                                                                int length2 = jArr2.length - 2;
                                                                if (length2 >= 0) {
                                                                    int i11 = 0;
                                                                    while (true) {
                                                                        long j3 = jArr2[i11];
                                                                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) == -9187201950435737472L) {
                                                                            if (i11 != length2) {
                                                                                break;
                                                                                break;
                                                                            }
                                                                            i11++;
                                                                        } else {
                                                                            int i12 = 8;
                                                                            int i13 = 8 - ((~(i11 - length2)) >>> 31);
                                                                            int i14 = 0;
                                                                            while (i14 < i13) {
                                                                                if ((j3 & 255) < 128) {
                                                                                    function1.invoke(objArr3[(i11 << 3) + i14]);
                                                                                }
                                                                                j3 >>= i12;
                                                                                i14++;
                                                                                i12 = i12;
                                                                            }
                                                                            if (i13 != i12) {
                                                                                break;
                                                                            }
                                                                            if (i11 != length2) {
                                                                                break;
                                                                            }
                                                                            i11++;
                                                                        }
                                                                    }
                                                                }
                                                                mutableScatterSet2.f();
                                                            }
                                                            snapshotStateObserver2.f8500c = false;
                                                        } catch (Throwable th2) {
                                                            snapshotStateObserver2.f8500c = false;
                                                            throw th2;
                                                        }
                                                    }
                                                } catch (Throwable th3) {
                                                    throw th3;
                                                }
                                            }
                                        } while (snapshotStateObserver2.d());
                                        return Unit.f71739a;
                                    }
                                });
                            }
                            return Unit.f71739a;
                        }
                    } while (atomicReference.get() == obj6);
                }
                break;
            case 18:
                SneakerDetailFragment sneakerDetailFragment = (SneakerDetailFragment) obj3;
                LVLightUpPowerMode lVLightUpPowerMode3 = (LVLightUpPowerMode) obj;
                SneakerDetailFragment.Companion companion9 = SneakerDetailFragment.Z;
                lVLightUpPowerMode3.getClass();
                sneakerDetailFragment.p0(lVLightUpPowerMode3, (LVLightUpPowerMode) obj2);
                sneakerDetailFragment.j0().f56133f.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.OnModeClickedEvent(lVLightUpPowerMode3.name(), LVLightUpDeviceType.X408PAIR)));
                return Unit.f71739a;
            case 19:
                SneakerScanFragment.Companion companion10 = SneakerScanFragment.O;
                ((String) obj).getClass();
                ((Bundle) obj2).getClass();
                ((SneakerScanFragment) obj3).T().Cc();
                return Unit.f71739a;
            case 20:
                SocialRegisterActivity socialRegisterActivity = (SocialRegisterActivity) obj3;
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                SocialRegisterActivity.Companion companion11 = SocialRegisterActivity.s;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-781913142, new a(socialRegisterActivity, z ? 1 : 0), composer9), composer9, 48);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 21:
                WishlistSummaryUiModel wishlistSummaryUiModel = (WishlistSummaryUiModel) obj3;
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                float f2 = StoreModeLevel1ScreenKt.f64871a;
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    String str2 = wishlistSummaryUiModel.f65746b;
                    if (str2 == null) {
                        str2 = "";
                    }
                    PushCardImageLoaderKt.a(null, str2, null, composer10, 0, 5);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 22:
                final StoryActivity storyActivity = (StoryActivity) obj3;
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                StoryActivity.Companion companion12 = StoryActivity.t;
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-370991162, new Function2() { // from class: com.vuitton.android.presentation.screen.story.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj7, Object obj8) {
                            StoryActivity storyActivity2;
                            Composer composer12 = (Composer) obj7;
                            int iIntValue12 = ((Integer) obj8).intValue();
                            StoryActivity.Companion companion13 = StoryActivity.t;
                            if (composer12.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                StoryActivity storyActivity3 = storyActivity;
                                EdgeToEdgeKt.b(storyActivity3, false, false, 3);
                                MutableState mutableStateB = SnapshotStateKt.b(storyActivity3.I().getP(), composer12);
                                Unit unit = Unit.f71739a;
                                boolean zY = composer12.y(storyActivity3);
                                Object objX = composer12.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new StoryActivity$onCreate$1$1$1$1(storyActivity3, null);
                                    composer12.q(objX);
                                }
                                EffectsKt.e(composer12, unit, (Function2) objX);
                                StoryCloseUiModel storyCloseUiModel = ((StoryViewState) mutableStateB.getF10755b()).f65177f;
                                boolean zK = composer12.K(mutableStateB) | composer12.y(storyActivity3);
                                Object objX2 = composer12.x();
                                if (zK || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new StoryActivity$onCreate$1$1$2$1(storyActivity3, mutableStateB, null);
                                    composer12.q(objX2);
                                }
                                EffectsKt.e(composer12, storyCloseUiModel, (Function2) objX2);
                                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("onCreate$lambda$0$0");
                                FillElement fillElement = SizeKt.f5052c;
                                Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier2.o(fillElement), LVAppDesignKitTheme.c(composer12).f48361b.u, RectangleShapeKt.f8913a);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer12.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer12.n();
                                Modifier modifierC = ComposedModifierKt.c(composer12, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function0 = ComposeUiNode.Companion.f9641b;
                                if (composer12.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer12.B();
                                if (composer12.getS()) {
                                    composer12.C(function0);
                                } else {
                                    composer12.o();
                                }
                                Updater.c(composer12, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer12, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer12, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer12, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer12, modifierC, ComposeUiNode.Companion.d);
                                Modifier modifierO = new DTFunctionNameModifier("onCreate$lambda$0$0").o(fillElement);
                                boolean z2 = ((StoryViewState) mutableStateB.getF10755b()).f65174b || ((StoryViewState) mutableStateB.getF10755b()).f65173a;
                                boolean z3 = ((StoryViewState) mutableStateB.getF10755b()).f65173a;
                                boolean zY2 = composer12.y(storyActivity3) | composer12.K(mutableStateB);
                                Object objX3 = composer12.x();
                                if (zY2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new p01(storyActivity3, mutableStateB, 5);
                                    composer12.q(objX3);
                                }
                                LvLoadingKt.b(modifierO, z2, null, z3, 0L, (Function0) objX3, composer12, 6, 20);
                                if (((StoryViewState) mutableStateB.getF10755b()).d.isEmpty()) {
                                    composer12.L(626611190);
                                    composer12.F();
                                } else {
                                    composer12.L(626253016);
                                    StoryViewState storyViewState = (StoryViewState) mutableStateB.getF10755b();
                                    StoryViewModel storyViewModelI = storyActivity3.I();
                                    boolean zY3 = composer12.y(storyViewModelI);
                                    Object objX4 = composer12.x();
                                    if (zY3 || objX4 == composer$Companion$Empty$1) {
                                        StoryActivity$onCreate$1$1$3$2$1 storyActivity$onCreate$1$1$3$2$1 = new StoryActivity$onCreate$1$1$3$2$1(1, storyViewModelI, StoryViewModel.class, "onClose", "onClose(Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;)V", 0);
                                        composer12.q(storyActivity$onCreate$1$1$3$2$1);
                                        objX4 = storyActivity$onCreate$1$1$3$2$1;
                                    }
                                    KFunction kFunction = (KFunction) objX4;
                                    boolean zY4 = composer12.y(storyActivity3);
                                    Object objX5 = composer12.x();
                                    if (zY4 || objX5 == composer$Companion$Empty$1) {
                                        storyActivity2 = storyActivity3;
                                        StoryActivity$onCreate$1$1$3$3$1 storyActivity$onCreate$1$1$3$3$1 = new StoryActivity$onCreate$1$1$3$3$1(1, storyActivity2, StoryActivity.class, "openCtaStoryUrl", "openCtaStoryUrl(Ljava/lang/String;)V", 0);
                                        composer12.q(storyActivity$onCreate$1$1$3$3$1);
                                        objX5 = storyActivity$onCreate$1$1$3$3$1;
                                    } else {
                                        storyActivity2 = storyActivity3;
                                    }
                                    KFunction kFunction2 = (KFunction) objX5;
                                    StoryViewModel storyViewModelI2 = storyActivity2.I();
                                    boolean zY5 = composer12.y(storyViewModelI2);
                                    Object objX6 = composer12.x();
                                    if (zY5 || objX6 == composer$Companion$Empty$1) {
                                        StoryActivity$onCreate$1$1$3$4$1 storyActivity$onCreate$1$1$3$4$1 = new StoryActivity$onCreate$1$1$3$4$1(0, storyViewModelI2, StoryViewModel.class, "storyOnNext", "storyOnNext()V", 0);
                                        composer12.q(storyActivity$onCreate$1$1$3$4$1);
                                        objX6 = storyActivity$onCreate$1$1$3$4$1;
                                    }
                                    KFunction kFunction3 = (KFunction) objX6;
                                    StoryViewModel storyViewModelI3 = storyActivity2.I();
                                    boolean zY6 = composer12.y(storyViewModelI3);
                                    Object objX7 = composer12.x();
                                    if (zY6 || objX7 == composer$Companion$Empty$1) {
                                        StoryActivity$onCreate$1$1$3$5$1 storyActivity$onCreate$1$1$3$5$1 = new StoryActivity$onCreate$1$1$3$5$1(0, storyViewModelI3, StoryViewModel.class, "storyOnPrev", "storyOnPrev()V", 0);
                                        composer12.q(storyActivity$onCreate$1$1$3$5$1);
                                        objX7 = storyActivity$onCreate$1$1$3$5$1;
                                    }
                                    StoryComposableKt.a(storyViewState, (Function1) kFunction2, (Function1) kFunction, (Function0) kFunction3, (Function0) ((KFunction) objX7), composer12, 0);
                                    composer12.F();
                                }
                                composer12.r();
                            } else {
                                composer12.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer11), composer11, 48);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                SuggestionCarouselComposableKt.b((LazyListState) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                Composer composer12 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer12.L(950061013);
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                String strValueOf = String.valueOf(((TextClassification) obj3).getLabel());
                composer12.F();
                return strValueOf;
            case 25:
                Composer composer13 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer13.L(-1376593684);
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                String string = ((RemoteAction) obj3).getTitle().toString();
                composer13.F();
                return string;
            case 26:
                ((Integer) obj2).getClass();
                ((TextLinkScope) obj3).a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                final ThankYouActivity thankYouActivity = (ThankYouActivity) obj3;
                Composer composer14 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                ThankYouActivity.Companion companion13 = ThankYouActivity.q;
                if (composer14.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1340074806, new Function2() { // from class: com.vuitton.android.presentation.screen.thankyou.a
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj7, Object obj8) {
                            ThankYouViewState.Success success;
                            ThankYouViewState.Error error;
                            ThankYouFeedbackUiModel thankYouFeedbackUiModel;
                            ThankYouViewState.Error error2;
                            Composer composer15 = (Composer) obj7;
                            int iIntValue13 = ((Integer) obj8).intValue();
                            ThankYouActivity.Companion companion14 = ThankYouActivity.q;
                            if (composer15.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                Context context = (Context) composer15.k(AndroidCompositionLocals_androidKt.f9936b);
                                ThankYouActivity thankYouActivity2 = thankYouActivity;
                                MutableState mutableStateB = SnapshotStateKt.b(thankYouActivity2.H().getN(), composer15);
                                MutableState mutableStateB2 = SnapshotStateKt.b(thankYouActivity2.H().getT(), composer15);
                                Object objX = composer15.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (objX == composer$Companion$Empty$1) {
                                    objX = new SnackbarHostState();
                                    composer15.q(objX);
                                }
                                SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
                                LVSnackbarVisuals lVSnackbarVisuals = new LVSnackbarVisuals(StringResources_androidKt.c(composer15, R.string.checkout_confirmation_feedback_toast_message), SnackbarDuration.Indefinite, false, StringResources_androidKt.c(composer15, R.string.checkout_confirmation_feedback_toast_link), false, LVSnackbarConfiguration.FEEDBACK, 20, null);
                                Unit unit = Unit.f71739a;
                                boolean zY = composer15.y(thankYouActivity2) | composer15.K(lVSnackbarVisuals);
                                Object objX2 = composer15.x();
                                if (zY || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new ThankYouActivity$onCreate$2$1$1$1(snackbarHostState, lVSnackbarVisuals, thankYouActivity2, null);
                                    composer15.q(objX2);
                                }
                                EffectsKt.e(composer15, unit, (Function2) objX2);
                                boolean zY2 = composer15.y(thankYouActivity2) | composer15.y(context);
                                Object objX3 = composer15.x();
                                if (zY2 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new ThankYouActivity$onCreate$2$1$2$1(thankYouActivity2, snackbarHostState, context, null);
                                    composer15.q(objX3);
                                }
                                EffectsKt.e(composer15, unit, (Function2) objX3);
                                ThankYouViewState thankYouViewState = (ThankYouViewState) mutableStateB.getF10755b();
                                boolean zY3 = composer15.y(thankYouActivity2);
                                Object objX4 = composer15.x();
                                if (zY3 || objX4 == composer$Companion$Empty$1) {
                                    success = null;
                                    objX4 = new ThankYouActivity$onCreate$2$1$3$1(0, thankYouActivity2, ThankYouActivity.class, "navigateToFeed", "navigateToFeed()V", 0);
                                    composer15.q(objX4);
                                } else {
                                    success = null;
                                }
                                KFunction kFunction = (KFunction) objX4;
                                boolean zY4 = composer15.y(thankYouActivity2) | composer15.y(context);
                                Object objX5 = composer15.x();
                                if (zY4 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new m21(thankYouActivity2, context, 9);
                                    composer15.q(objX5);
                                }
                                ThankYouScreenKt.m(null, snackbarHostState, thankYouViewState, (Function1) objX5, (Function0) kFunction, composer15, 48, 1);
                                ThankYouBottomSheet thankYouBottomSheet = (ThankYouBottomSheet) mutableStateB2.getF10755b();
                                if (thankYouBottomSheet == null) {
                                    composer15.L(-445282624);
                                    composer15.F();
                                } else {
                                    composer15.L(-445282623);
                                    if (!(thankYouBottomSheet instanceof ThankYouBottomSheet.Feedback)) {
                                        throw o60.v(composer15, 42871675);
                                    }
                                    composer15.L(1329089476);
                                    ThankYouViewState thankYouViewState2 = (ThankYouViewState) mutableStateB.getF10755b();
                                    ThankYouViewState.Success success2 = thankYouViewState2 instanceof ThankYouViewState.Success ? (ThankYouViewState.Success) thankYouViewState2 : success;
                                    if (success2 == null || (thankYouFeedbackUiModel = success2.f65303c) == null) {
                                        ThankYouViewState thankYouViewState3 = (ThankYouViewState) mutableStateB.getF10755b();
                                        if (thankYouViewState3 instanceof ThankYouViewState.Error) {
                                            error2 = (ThankYouViewState.Error) thankYouViewState3;
                                        } else {
                                            error = success;
                                        }
                                        if (error != 0) {
                                            error = error2;
                                            thankYouFeedbackUiModel = error.f65298a;
                                        } else {
                                            error = error2;
                                            thankYouFeedbackUiModel = new ThankYouFeedbackUiModel(null, null, 0, false, 15, null);
                                        }
                                    }
                                    ThankYouViewModel thankYouViewModelH = thankYouActivity2.H();
                                    boolean zY5 = composer15.y(thankYouViewModelH);
                                    Object objX6 = composer15.x();
                                    if (zY5 || objX6 == composer$Companion$Empty$1) {
                                        ThankYouActivity$onCreate$2$1$5$1$1 thankYouActivity$onCreate$2$1$5$1$1 = new ThankYouActivity$onCreate$2$1$5$1$1(1, thankYouViewModelH, ThankYouViewModel.class, "onFeedbackChange", "onFeedbackChange(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;)V", 0);
                                        composer15.q(thankYouActivity$onCreate$2$1$5$1$1);
                                        objX6 = thankYouActivity$onCreate$2$1$5$1$1;
                                    }
                                    Function1 function1 = (Function1) ((KFunction) objX6);
                                    ThankYouViewModel thankYouViewModelH2 = thankYouActivity2.H();
                                    boolean zY6 = composer15.y(thankYouViewModelH2);
                                    Object objX7 = composer15.x();
                                    if (zY6 || objX7 == composer$Companion$Empty$1) {
                                        ThankYouActivity$onCreate$2$1$5$2$1 thankYouActivity$onCreate$2$1$5$2$1 = new ThankYouActivity$onCreate$2$1$5$2$1(0, thankYouViewModelH2, ThankYouViewModel.class, "submitFeedback", "submitFeedback()V", 0);
                                        composer15.q(thankYouActivity$onCreate$2$1$5$2$1);
                                        objX7 = thankYouActivity$onCreate$2$1$5$2$1;
                                    }
                                    Function0 function0 = (Function0) ((KFunction) objX7);
                                    boolean zY7 = composer15.y(thankYouActivity2);
                                    Object objX8 = composer15.x();
                                    if (zY7 || objX8 == composer$Companion$Empty$1) {
                                        objX8 = new hv0(thankYouActivity2, 16);
                                        composer15.q(objX8);
                                    }
                                    ThankYouFeedbackBottomSheetKt.b(thankYouFeedbackUiModel, function1, function0, (Function0) objX8, composer15, 0);
                                    composer15.F();
                                    composer15.F();
                                }
                            } else {
                                composer15.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer14), composer14, 48);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 28:
                ((TheLookImmersiveArticleViewModel) obj3).w2(new TheLookImmersiveArticleTrackingUiModel.LookScreenImmersiveArticle((String) obj, (String) obj2));
                return Unit.f71739a;
            default:
                OverlayConstants overlayConstants = (OverlayConstants) obj3;
                Composer composer15 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer15.L(-276477461);
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ThematicPlpHeader$lambda$2");
                boolean zK = composer15.K(overlayConstants);
                Object objX = composer15.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new p11(overlayConstants, i3);
                    composer15.q(objX);
                }
                Modifier modifierD = DrawModifierKt.d(dTFunctionNameModifier2, (Function1) objX);
                composer15.F();
                return modifierD;
        }
    }

    public /* synthetic */ ll0(Object obj, int i2, int i3) {
        this.f76050b = i3;
        this.f76051c = obj;
    }
}
