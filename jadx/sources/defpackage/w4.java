package defpackage;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$FillHeight$1;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.compose.RememberLifecycleOwnerKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import androidx.navigation.NavHostController;
import androidx.navigation3.scene.Scene;
import androidx.navigation3.scene.SceneSetupNavEntryDecoratorKt;
import androidx.navigation3.scene.SharedEntryInSceneNavEntryDecoratorKt;
import androidx.navigation3.ui.AnimatedSceneKey;
import androidx.navigation3.ui.LocalNavAnimatedContentScopeKt;
import androidx.paging.compose.LazyPagingItems;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.domain.monitoring.address.MonitorActionHolder;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.contact.compose.ContactUsIconKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressEditorComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentConfirmationComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairConfirmationComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.options.notifications.components.ExpandableHeaderKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListComposableKt;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl;
import com.vuitton.android.presentation.screen.privacy.components.PiplCbdtComposableKt;
import com.vuitton.android.presentation.screen.privacy.components.PrivacyComposableKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel3ScreenKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w4 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80750c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80752f;

    public /* synthetic */ w4(LazyPagingItems lazyPagingItems, StoreModePLPFiltersViewState storeModePLPFiltersViewState, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0) {
        this.f80749b = 9;
        this.f80750c = lazyPagingItems;
        this.f80752f = storeModePLPFiltersViewState;
        this.d = lVModalBottomSheetState;
        this.f80751e = function0;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        String str;
        int i2;
        int i3 = this.f80749b;
        boolean z = false;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj5 = this.d;
        Object obj6 = this.f80752f;
        Object obj7 = this.f80751e;
        Object obj8 = this.f80750c;
        switch (i3) {
            case 0:
                AddressEditorViewModel addressEditorViewModel = (AddressEditorViewModel) obj8;
                Function0 function0 = (Function0) obj7;
                Function0 function1 = (Function0) obj6;
                NavHostController navHostController = (NavHostController) obj5;
                Composer composer = (Composer) obj3;
                a.x((Integer) obj4, (AnimatedContentScope) obj, (NavBackStackEntry) obj2);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                boolean zY = composer.y(addressEditorViewModel) | composer.y(navHostController);
                Object objX = composer.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new l0(addressEditorViewModel, navHostController, 6);
                    composer.q(objX);
                }
                AddressEditorComposableKt.a(addressEditorViewModel, function0, function1, (Function0) objX, composer, 0);
                return Unit.f71739a;
            case 1:
                AddressEditorViewModel addressEditorViewModel2 = (AddressEditorViewModel) obj8;
                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) obj7;
                NavHostController navHostController2 = (NavHostController) obj5;
                Map map = (Map) obj6;
                Composer composer2 = (Composer) obj3;
                a.x((Integer) obj4, (AnimatedContentScope) obj, (NavBackStackEntry) obj2);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                addressAutocompleteViewModel.l1(MonitorActionHolder.f48817a);
                boolean zY2 = composer2.y(addressAutocompleteViewModel) | composer2.y(navHostController2) | composer2.y(map);
                Object objX2 = composer2.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new q(addressAutocompleteViewModel, navHostController2, map, 5);
                    composer2.q(objX2);
                }
                AddressAutocompleteComposableKt.a(addressEditorViewModel2, addressAutocompleteViewModel, (Function0) objX2, null, null, AddressAutocompleteScreenContext.PROFILE_ADDRESS, null, null, null, composer2, ImageMetadata.EDGE_MODE, 472);
                return Unit.f71739a;
            case 2:
                a.x((Integer) obj4, (AnimatedContentScope) obj, (NavBackStackEntry) obj2);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                AssessmentConfirmationComponentKt.b((AssessmentViewState) obj8, (String) ((MutableState) obj5).getF10755b(), (Function0) obj7, (Function0) obj6, (Composer) obj3, 0);
                return Unit.f71739a;
            case 3:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj8;
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj6;
                Function0 function2 = (Function0) obj7;
                NavHostController navHostController3 = (NavHostController) obj5;
                Composer composer3 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f2 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                boolean zY3 = composer3.y(storeModeViewModel) | composer3.y(navHostController3);
                Object objX3 = composer3.x();
                if (zY3 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new vg(storeModeViewModel, navHostController3, 7);
                    composer3.q(objX3);
                }
                Function1 function3 = (Function1) objX3;
                boolean zY4 = composer3.y(storeModeViewModel) | composer3.y(navHostController3);
                Object objX4 = composer3.x();
                if (zY4 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new ok(storeModeViewModel, navHostController3, 6);
                    composer3.q(objX4);
                }
                StoreModeLevel1ScreenKt.b(storeModeViewModel, storeModeViewState, function2, function3, (Function0) objX4, composer3, 0);
                return Unit.f71739a;
            case 4:
                StoreModeViewModel storeModeViewModel2 = (StoreModeViewModel) obj8;
                StoreModeViewState storeModeViewState2 = (StoreModeViewState) obj7;
                Function2 function4 = (Function2) obj6;
                NavHostController navHostController4 = (NavHostController) obj5;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                Composer composer4 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f3 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentScope) obj).getClass();
                navBackStackEntry.getClass();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                StoreModeRoute.Level3 level3 = (StoreModeRoute.Level3) NavBackStackEntryKt.a(navBackStackEntry, Reflection.f71922a.b(StoreModeRoute.Level3.class));
                String str2 = level3.f64777a;
                String str3 = level3.f64778b;
                boolean zK = composer4.K(function4) | composer4.y(storeModeViewModel2);
                Object objX5 = composer4.x();
                if (zK || objX5 == composer$Companion$Empty$1) {
                    objX5 = new vg(function4, storeModeViewModel2, 6);
                    composer4.q(objX5);
                }
                Function1 function5 = (Function1) objX5;
                boolean zY5 = composer4.y(storeModeViewModel2) | composer4.y(navHostController4);
                Object objX6 = composer4.x();
                if (zY5 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new ok(storeModeViewModel2, navHostController4, 3);
                    composer4.q(objX6);
                }
                Function0 function6 = (Function0) objX6;
                boolean zY6 = composer4.y(storeModeViewModel2) | composer4.y(navHostController4);
                Object objX7 = composer4.x();
                if (zY6 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new ok(storeModeViewModel2, navHostController4, 4);
                    composer4.q(objX7);
                }
                StoreModeLevel3ScreenKt.a(storeModeViewModel2, storeModeViewState2, str2, str3, function5, function6, (Function0) objX7, composer4, 0);
                return Unit.f71739a;
            case 5:
                ((Integer) obj4).intValue();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                DistantRepairConfirmationComponentKt.b((DistantRepairFormViewState) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Composer) obj3, 0);
                return Unit.f71739a;
            case 6:
                String str4 = (String) obj8;
                String str5 = (String) obj7;
                Function1 function7 = (Function1) obj6;
                CollapsingState collapsingState = (CollapsingState) obj5;
                AnimatedContentScope animatedContentScope = (AnimatedContentScope) obj;
                CollapsingState collapsingState2 = (CollapsingState) obj2;
                Composer composer5 = (Composer) obj3;
                ((Integer) obj4).getClass();
                animatedContentScope.getClass();
                collapsingState2.getClass();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(animatedContentScope.b(new DTFunctionNameModifier("AnimatedLVLink$lambda$1"), EnterExitTransitionKt.i(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7), EnterExitTransitionKt.j(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7)), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer5).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                int i4 = ExpandableHeaderKt.WhenMappings.f59905a[collapsingState2.ordinal()];
                if (i4 == 1) {
                    str = str4;
                } else {
                    if (i4 != 2) {
                        v40.g();
                        return null;
                    }
                    str = str5;
                }
                boolean zK2 = composer5.K(function7) | composer5.d(collapsingState.ordinal());
                Object objX8 = composer5.x();
                if (zK2 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new dt(function7, collapsingState, 10);
                    composer5.q(objX8);
                }
                LVLinkKt.a(modifierM, str, false, null, false, (Function0) objX8, composer5, 0, 28);
                return Unit.f71739a;
            case 7:
                Transition transition = (Transition) obj8;
                SnapshotStateList snapshotStateList = (SnapshotStateList) obj7;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj6;
                Map map2 = (Map) obj5;
                Object obj9 = (AnimatedContentScope) obj;
                Scene scene = (Scene) obj2;
                Composer composer6 = (Composer) obj3;
                ((Integer) obj4).getClass();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                LifecycleOwner lifecycleOwnerA = RememberLifecycleOwnerKt.a((Intrinsics.c(transition.f3988a.a(), ((SnapshotMutableStateImpl) transition.d).getF10755b()) && snapshotStateList.isEmpty()) ? Lifecycle.State.RESUMED : Lifecycle.State.STARTED, composer6);
                Object objX9 = composer6.x();
                if (objX9 == composer$Companion$Empty$1) {
                    composer6.q(obj9);
                } else {
                    obj9 = objX9;
                }
                ref$ObjectRef.f71921b = (AnimatedContentScope) obj9;
                ProvidedValue providedValueC = LocalLifecycleOwnerKt.f13562a.c(lifecycleOwnerA);
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalNavAnimatedContentScopeKt.f18423a;
                Object obj10 = ref$ObjectRef.f71921b;
                if (obj10 != null) {
                    CompositionLocalKt.b(new ProvidedValue[]{providedValueC, dynamicProvidableCompositionLocal.c((AnimatedContentScope) obj10), SharedEntryInSceneNavEntryDecoratorKt.f18416a.c(scene), SceneSetupNavEntryDecoratorKt.f18411a.c(MapsKt.d(map2, new AnimatedSceneKey(scene)))}, ComposableLambdaKt.b(-1734941436, new w20(scene, 20), composer6), composer6, 56);
                    return Unit.f71739a;
                }
                Intrinsics.h("animatedContentScope");
                throw null;
            case 8:
                OrderViewModel orderViewModel = (OrderViewModel) obj8;
                Function0 function8 = (Function0) obj7;
                NavHostController navHostController5 = (NavHostController) obj5;
                Function1 function9 = (Function1) obj6;
                Composer composer7 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                boolean zY7 = composer7.y(orderViewModel) | composer7.y(navHostController5);
                Object objX10 = composer7.x();
                if (zY7 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new si0(orderViewModel, navHostController5, 1);
                    composer7.q(objX10);
                }
                Function3 function10 = (Function3) objX10;
                boolean zK3 = composer7.K(function9);
                Object objX11 = composer7.x();
                if (zK3 || objX11 == composer$Companion$Empty$1) {
                    objX11 = new tf0(function9, 3);
                    composer7.q(objX11);
                }
                OrderListComposableKt.a(orderViewModel, function8, function10, (Function0) objX11, composer7, 0);
                return Unit.f71739a;
            case 9:
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj8;
                StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) obj6;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                Function0 function11 = (Function0) obj7;
                LVColorScheme lVColorScheme = (LVColorScheme) obj2;
                Composer composer8 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((TopBarActionScope) obj).getClass();
                lVColorScheme.getClass();
                OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                boolean zD = composer8.d(lazyPagingItems.b()) | composer8.K(storeModePLPFiltersViewState);
                Object objX12 = composer8.x();
                if (zD || objX12 == composer$Companion$Empty$1) {
                    if (storeModePLPFiltersViewState != null && storeModePLPFiltersViewState.d && (storeModePLPFiltersViewState.f65035e || lazyPagingItems.b() > 0)) {
                        z = true;
                    }
                    objX12 = Boolean.valueOf(z);
                    composer8.q(objX12);
                }
                if (((Boolean) objX12).booleanValue()) {
                    composer8.L(1039163714);
                    boolean zY8 = composer8.y(lVModalBottomSheetState) | composer8.K(function11);
                    Object objX13 = composer8.x();
                    if (zY8 || objX13 == composer$Companion$Empty$1) {
                        objX13 = new t3(lVModalBottomSheetState, function11, 14);
                        composer8.q(objX13);
                    }
                    IconButtonKt.a((Function0) objX13, null, false, null, null, ComposableLambdaKt.b(-2023192149, new wd0(lVColorScheme, storeModePLPFiltersViewState, 18), composer8), composer8, 1572864, 62);
                    composer8.F();
                } else {
                    composer8.L(1040468752);
                    composer8.F();
                }
                return Unit.f71739a;
            case 10:
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj8;
                Function0 function12 = (Function0) obj6;
                Function1 function13 = (Function1) obj5;
                TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme2 = (LVColorScheme) obj2;
                Composer composer9 = (Composer) obj3;
                int iIntValue = ((Integer) obj4).intValue();
                topBarActionScope.getClass();
                lVColorScheme2.getClass();
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                TopBarActionScope.ComposeDefaultImpls.a(null, LVAppDesignKitTheme.g(composer9).u, StringResources_androidKt.c(composer9, R.string.alt_share), (Function0) obj7, lVColorScheme2, null, "personalSelectionsDetail_share_button", false, topBarActionScope, composer9, ((iIntValue << 9) & 57344) | 1572864 | ((iIntValue << 24) & 234881024), 161);
                if (contactUsUiModel.f51154a) {
                    composer9.L(752187914);
                    boolean zK4 = composer9.K(function13);
                    Object objX14 = composer9.x();
                    if (zK4 || objX14 == composer$Companion$Empty$1) {
                        objX14 = new tf0(function13, 7);
                        composer9.q(objX14);
                    }
                    ContactUsIconKt.a(null, contactUsUiModel, function12, (Function0) objX14, false, "personalSelectionsDetail_contactUs_button", composer9, ImageMetadata.EDGE_MODE, 17);
                    composer9.F();
                } else {
                    composer9.L(752527147);
                    composer9.F();
                }
                return Unit.f71739a;
            case 11:
                PrivacyViewModelImpl privacyViewModelImpl = (PrivacyViewModelImpl) obj8;
                NavHostController navHostController6 = (NavHostController) obj5;
                Function0 function14 = (Function0) obj7;
                Function1 function15 = (Function1) obj6;
                Composer composer10 = (Composer) obj3;
                a.x((Integer) obj4, (AnimatedContentScope) obj, (NavBackStackEntry) obj2);
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                boolean zY9 = composer10.y(privacyViewModelImpl) | composer10.y(navHostController6);
                Object objX15 = composer10.x();
                if (zY9 || objX15 == composer$Companion$Empty$1) {
                    objX15 = new fh0(privacyViewModelImpl, navHostController6, 1);
                    composer10.q(objX15);
                }
                PiplCbdtComposableKt.a((Function0) objX15, function14, function15, composer10, 0);
                return Unit.f71739a;
            case 12:
                PrivacyViewModel privacyViewModel = (PrivacyViewModel) obj8;
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj6;
                Function0 function16 = (Function0) obj7;
                NavHostController navHostController7 = (NavHostController) obj5;
                Composer composer11 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                boolean zY10 = composer11.y(navHostController7);
                Object objX16 = composer11.x();
                if (zY10 || objX16 == composer$Companion$Empty$1) {
                    objX16 = new yj(navHostController7, 16);
                    composer11.q(objX16);
                }
                Function0 function17 = (Function0) objX16;
                boolean zY11 = composer11.y(lVModalBottomSheetState2) | composer11.y(privacyViewModel) | composer11.y(navHostController7);
                Object objX17 = composer11.x();
                if (zY11 || objX17 == composer$Companion$Empty$1) {
                    objX17 = new sm0(lVModalBottomSheetState2, privacyViewModel, navHostController7, 15);
                    composer11.q(objX17);
                }
                PrivacyComposableKt.a(privacyViewModel, false, false, lVModalBottomSheetState2, function16, function17, (Function0) objX17, composer11, (LVModalBottomSheetState.f48797e << 9) | 432);
                return Unit.f71739a;
            default:
                Density density = (Density) obj8;
                MutableState mutableState = (MutableState) obj7;
                MutableState mutableState2 = (MutableState) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                BoxScope boxScope = (BoxScope) obj;
                Painter painter = (Painter) obj2;
                Composer composer12 = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                float f4 = SpotlightHotspotsKt.f64588a;
                boxScope.getClass();
                painter.getClass();
                if ((iIntValue2 & 6) == 0) {
                    i2 = (composer12.K(boxScope) ? 4 : 2) | iIntValue2;
                } else {
                    i2 = iIntValue2;
                }
                if ((iIntValue2 & 48) == 0) {
                    i2 |= (iIntValue2 & 64) == 0 ? composer12.K(painter) : composer12.y(painter) ? 32 : 16;
                }
                if (composer12.p(i2 & 1, (i2 & 147) != 146)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$FillHeight$1 contentScale$Companion$FillHeight$1 = ContentScale.Companion.d;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SpotlightHotSpots$lambda$27$3");
                    Alignment.f8582a.getClass();
                    Modifier modifierC = SizeKt.c(boxScope.g(dTFunctionNameModifier, Alignment.Companion.f8587f), 1.0f);
                    boolean zK5 = composer12.K(density);
                    Object objX18 = composer12.x();
                    if (zK5 || objX18 == composer$Companion$Empty$1) {
                        objX18 = new u30(density, mutableState, mutableState2, 2);
                        composer12.q(objX18);
                    }
                    ImageKt.a(painter, null, OnGloballyPositionedModifierKt.a(modifierC, (Function1) objX18), null, contentScale$Companion$FillHeight$1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer12, 24632 | ((i2 >> 3) & 14), 104);
                    mutableState3.setValue(Boolean.TRUE);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ w4(PrivacyViewModelImpl privacyViewModelImpl, NavHostController navHostController, Function0 function0, Function1 function1) {
        this.f80749b = 11;
        this.f80750c = privacyViewModelImpl;
        this.d = navHostController;
        this.f80751e = function0;
        this.f80752f = function1;
    }

    public /* synthetic */ w4(Object obj, Object obj2, NavHostController navHostController, Object obj3, int i2) {
        this.f80749b = i2;
        this.f80750c = obj;
        this.f80751e = obj2;
        this.d = navHostController;
        this.f80752f = obj3;
    }

    public /* synthetic */ w4(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f80749b = i2;
        this.f80750c = obj;
        this.f80751e = obj2;
        this.f80752f = obj3;
        this.d = obj4;
    }

    public /* synthetic */ w4(Object obj, Object obj2, Function0 function0, NavHostController navHostController, int i2) {
        this.f80749b = i2;
        this.f80750c = obj;
        this.f80752f = obj2;
        this.f80751e = function0;
        this.d = navHostController;
    }

    public /* synthetic */ w4(Function0 function0, ContactUsUiModel contactUsUiModel, Function0 function1, Function1 function2) {
        this.f80749b = 10;
        this.f80751e = function0;
        this.f80750c = contactUsUiModel;
        this.f80752f = function1;
        this.d = function2;
    }
}
