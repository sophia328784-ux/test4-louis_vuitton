package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.navigation.NavHostController;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.ProductTinyUiModel;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.LookSkuTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.BottomSheetScreen;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.search.SearchViewModel;
import com.vuitton.android.presentation.screen.search.models.SearchScreenViewState;
import com.vuitton.android.presentation.screen.search.models.SearchTrackingUiModel;
import com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeTrackingUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import com.vuitton.foundation.model.domain.model.place.PlaceAutocomplete;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sm0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79830c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79831e;

    public /* synthetic */ sm0(SpotlightViewModelImpl spotlightViewModelImpl, int i2, int i3, String str, Ref$IntRef ref$IntRef, SpotlightSlideUiModel spotlightSlideUiModel) {
        this.f79829b = 18;
        this.d = spotlightViewModelImpl;
        this.f79830c = ref$IntRef;
        this.f79831e = spotlightSlideUiModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f79829b) {
            case 0:
                PdpViewState pdpViewState = (PdpViewState) this.d;
                Function0 function0 = (Function0) this.f79830c;
                PdpTracker pdpTracker = (PdpTracker) this.f79831e;
                ProductUiModel productUiModel = pdpViewState.f61566b;
                if (productUiModel != null) {
                    String str = productUiModel.f61735b;
                    pdpTracker.getClass();
                    str.getClass();
                    pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnShadeFinderClickedEvent(str, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                }
                function0.mo47invoke();
                return Unit.f71739a;
            case 1:
                Function0 function1 = (Function0) this.f79830c;
                PdpBottomSheetType pdpBottomSheetType = (PdpBottomSheetType) this.d;
                Function1 function2 = (Function1) this.f79831e;
                function1.mo47invoke();
                if (pdpBottomSheetType instanceof PdpBottomSheetType.Permissions) {
                    function2.invoke(((PdpBottomSheetType.Permissions) pdpBottomSheetType).f61384a);
                }
                return Unit.f71739a;
            case 2:
                ((Function2) this.d).invoke((String) this.f79830c, (String) this.f79831e);
                return Unit.f71739a;
            case 3:
                Function2 function3 = (Function2) this.d;
                PlaceAutocomplete placeAutocomplete = (PlaceAutocomplete) this.f79830c;
                function3.invoke(placeAutocomplete.f67817a, (PlaceSearchActivity.PlaceInfoType) this.f79831e);
                return Unit.f71739a;
            case 4:
                ((Function1) this.d).invoke(new ImmersiveArticleTrackingUiModel.OnCollapsedPlayerPlayEvent((String) this.f79830c, (ImmersiveArticleType) this.f79831e));
                return Unit.f71739a;
            case 5:
                AudioPlayerControllerUiState audioPlayerControllerUiState = (AudioPlayerControllerUiState) this.d;
                Function1 function4 = (Function1) this.f79831e;
                Function0 function5 = (Function0) this.f79830c;
                if (audioPlayerControllerUiState.f53245b == PlayerState.PLAYING) {
                    function4.invoke(AudioPlayerEvent.Pause.f53250a);
                } else {
                    function4.invoke(AudioPlayerEvent.Resume.f53254a);
                    function5.mo47invoke();
                }
                return Unit.f71739a;
            case 6:
                HapticFeedback hapticFeedback = (HapticFeedback) this.d;
                Function1 function6 = (Function1) this.f79830c;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) this.f79831e;
                HapticFeedbackType.f9193b.getClass();
                int i2 = PlatformHapticFeedbackType.f9196a;
                hapticFeedback.a(0);
                function6.invoke(plpProductUiModel);
                return Unit.f71739a;
            case 7:
                Function1 function7 = (Function1) this.d;
                ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) this.f79830c;
                MutableState mutableState = (MutableState) this.f79831e;
                function7.invoke(productFiltersCategoryUiModel.f62970a);
                mutableState.setValue(Boolean.FALSE);
                return Unit.f71739a;
            case 8:
                Function1 function8 = (Function1) this.d;
                Function1 function9 = (Function1) this.f79831e;
                Function0 function10 = (Function0) this.f79830c;
                function8.invoke(FiltersButtonState.Visible);
                function9.invoke(Boolean.FALSE);
                function10.mo47invoke();
                return Unit.f71739a;
            case 9:
                HapticFeedback hapticFeedback2 = (HapticFeedback) this.d;
                Function0 function11 = (Function0) this.f79830c;
                Job job = (Job) ((MutableState) this.f79831e).getF10755b();
                if (job != null) {
                    job.cancel(null);
                }
                HapticFeedbackType.f9193b.getClass();
                int i3 = PlatformHapticFeedbackType.f9196a;
                hapticFeedback2.a(0);
                function11.mo47invoke();
                return Unit.f71739a;
            case 10:
                RepairsBffViewState repairsBffViewState = (RepairsBffViewState) this.d;
                Function0 function12 = (Function0) this.f79830c;
                Function1 function13 = (Function1) this.f79831e;
                if (repairsBffViewState.f64091k.f64011c) {
                    function12.mo47invoke();
                } else {
                    function13.invoke(BottomSheetScreen.BottomSheetCancel.f63785a);
                }
                return Unit.f71739a;
            case 11:
                RepairsViewState repairsViewState = (RepairsViewState) this.d;
                Function0 function14 = (Function0) this.f79830c;
                Function1 function15 = (Function1) this.f79831e;
                if (repairsViewState.m.f64011c) {
                    function14.mo47invoke();
                } else {
                    function15.invoke(BottomSheetScreen.BottomSheetCancel.f63785a);
                }
                return Unit.f71739a;
            case 12:
                Function1 function16 = (Function1) this.d;
                Function1 function17 = (Function1) this.f79830c;
                RepairsViewState repairsViewState2 = (RepairsViewState) this.f79831e;
                function16.invoke(DistantRepairTrackingUiModel.RepairDetailsRescheduleAppointmentClickedEvent.f57449a);
                function17.invoke(repairsViewState2.f64018h);
                return Unit.f71739a;
            case 13:
                ((Function2) this.d).invoke((ContributionLinkUiModel) this.f79830c, (String) this.f79831e);
                return Unit.f71739a;
            case 14:
                SearchViewModel searchViewModel = (SearchViewModel) this.d;
                Function1 function18 = (Function1) this.f79830c;
                State state = (State) this.f79831e;
                searchViewModel.x7(new SearchTrackingUiModel.OnHitOnSearch(((SearchScreenViewState) state.getF10755b()).g));
                function18.invoke(((SearchScreenViewState) state.getF10755b()).g);
                return Unit.f71739a;
            case 15:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) this.d;
                PrivacyViewModel privacyViewModel = (PrivacyViewModel) this.f79830c;
                NavHostController navHostController = (NavHostController) this.f79831e;
                lVModalBottomSheetState.b(new k40(28));
                privacyViewModel.O4();
                navHostController.e();
                return Unit.f71739a;
            case 16:
                ShadeFinderViewState shadeFinderViewState = (ShadeFinderViewState) this.d;
                RecommendationUiModel recommendationUiModel = (RecommendationUiModel) this.f79830c;
                Function2 function19 = (Function2) this.f79831e;
                if (!shadeFinderViewState.f62179b) {
                    ProductTinyUiModel productTinyUiModel = recommendationUiModel.f62170a;
                    function19.invoke(new SkuIdUiModel(productTinyUiModel.d), productTinyUiModel.f51791b);
                }
                return Unit.f71739a;
            case 17:
                SpotlightContainerStateUiModel spotlightContainerStateUiModel = (SpotlightContainerStateUiModel) this.d;
                Function0 function20 = (Function0) this.f79830c;
                Function0 function21 = (Function0) this.f79831e;
                if (spotlightContainerStateUiModel.g) {
                    function20.mo47invoke();
                } else if (spotlightContainerStateUiModel.f64638i) {
                    function21.mo47invoke();
                }
                return Unit.f71739a;
            case 18:
                SpotlightViewModelImpl spotlightViewModelImpl = (SpotlightViewModelImpl) this.d;
                Ref$IntRef ref$IntRef = (Ref$IntRef) this.f79830c;
                SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) this.f79831e;
                spotlightViewModelImpl.f64536c.getClass();
                synchronized (spotlightViewModelImpl) {
                    int i4 = ref$IntRef.f71919b + 1;
                    ref$IntRef.f71919b = i4;
                    if (i4 == spotlightSlideUiModel.g.size()) {
                        spotlightViewModelImpl.f64536c.getClass();
                        MutableStateFlow mutableStateFlow = spotlightViewModelImpl.y;
                        LinkedHashSet linkedHashSetA0 = CollectionsKt.A0((Iterable) mutableStateFlow.getValue());
                        linkedHashSetA0.add(spotlightSlideUiModel.f64650a);
                        mutableStateFlow.setValue(linkedHashSetA0);
                    }
                    break;
                }
                return Unit.f71739a;
            case 19:
                Function0 function22 = (Function0) this.f79830c;
                MutableState mutableState2 = (MutableState) this.d;
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) this.f79831e;
                String str2 = ((StoreModeViewState) mutableState2.getF10755b()).f65086h;
                if (str2 != null) {
                    storeModeViewModel.S6(new StoreModeTrackingUiModel.ConfirmExitClickedEvent(str2));
                }
                function22.mo47invoke();
                return Unit.f71739a;
            case 20:
                Function2 function23 = (Function2) this.d;
                String str3 = (String) this.f79830c;
                function23.invoke(new SkuIdUiModel(str3), (LookSkuTypeUiModel) this.f79831e);
                return Unit.f71739a;
            case 21:
                ThematicPlpThemesOverlayKt.c((CoroutineScope) this.d, (MutableState) this.f79830c, (Function1) this.f79831e);
                return Unit.f71739a;
            default:
                ((st0) this.d).invoke((LPDevice) this.f79830c, (List) this.f79831e);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ sm0(int i2, Object obj, Object obj2, Function0 function0) {
        this.f79829b = i2;
        this.f79830c = function0;
        this.d = obj;
        this.f79831e = obj2;
    }

    public /* synthetic */ sm0(Object obj, Object obj2, Object obj3, int i2) {
        this.f79829b = i2;
        this.d = obj;
        this.f79830c = obj2;
        this.f79831e = obj3;
    }

    public /* synthetic */ sm0(Object obj, Function1 function1, Function0 function0, int i2) {
        this.f79829b = i2;
        this.d = obj;
        this.f79831e = function1;
        this.f79830c = function0;
    }
}
