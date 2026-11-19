package defpackage;

import android.app.Activity;
import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.gestures.AnchoredDragScope;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillNode;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.core.consent.ConsentDialogFragment;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressEditorComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookActivity;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinations;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookDestinationsKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewType;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.booking.components.BookingImageSize;
import com.vuitton.android.presentation.screen.booking.components.BookingLoadingOverviewKt;
import com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationHeaderKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingLoadingModuleKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingLoadingModuleType;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleMultipleTextKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceHeaderUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModel;
import com.vuitton.android.presentation.screen.booking.pass.components.BookingPassComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationInformationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewState;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewState;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68989c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f0(AudioGuideTracker audioGuideTracker, Function1 function1) {
        this.f68988b = 10;
        this.d = audioGuideTracker;
        this.f68989c = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AssetImageUiModel assetImageUiModel;
        int i2 = this.f68988b;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.d;
        Object obj4 = this.f68989c;
        switch (i2) {
            case 0:
                GA4Tracker gA4Tracker = (GA4Tracker) obj3;
                ProductCarouselItemUiModel productCarouselItemUiModel = (ProductCarouselItemUiModel) obj;
                int iIntValue = ((Integer) obj2).intValue();
                productCarouselItemUiModel.getClass();
                ((Function1) obj4).invoke(new SkuIdUiModel(productCarouselItemUiModel.f50867a));
                ProductShortPriceUiModel productShortPriceUiModel = productCarouselItemUiModel.f50870e;
                gA4Tracker.a("my_companion", "my_companion_results", "My companion results", productCarouselItemUiModel.f50867a, productCarouselItemUiModel.f50868b, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, productShortPriceUiModel != null ? productShortPriceUiModel.d : null, iIntValue);
                return Unit.f71739a;
            case 1:
                AccessibilityPreferencesViewModel accessibilityPreferencesViewModel = (AccessibilityPreferencesViewModel) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierG = n00.g("AccessibilityPreferencesComposable$lambda$6", "accessibilityPreference_viewTitle_text");
                    String strC = StringResources_androidKt.c(composer, R.string.accessibility_settings_menu);
                    boolean zY = composer.y(accessibilityPreferencesViewModel) | composer.K(function0);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new j2(accessibilityPreferencesViewModel, function0, 0);
                        composer.q(objX);
                    }
                    LVStandardTopBarKt.a(modifierG, null, false, strC, null, null, (Function0) objX, null, null, null, null, composer, 0, 0, 4022);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 2:
                MutableState mutableState = (MutableState) obj3;
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(-894989358);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AddressAutocompleteScreen$lambda$10$0$0");
                AutofillNode autofillNode = ((AddressAutocompleteViewState) obj4).f52119e;
                Autofill autofill = (Autofill) composer2.k(CompositionLocalsKt.f10027b);
                Object objX2 = composer2.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new d0(4, mutableState);
                    composer2.q(objX2);
                }
                Function0 function1 = (Function0) objX2;
                function1.getClass();
                Modifier modifierA = ComposedModifierKt.a(dTFunctionNameModifier, InspectableValueKt.f10100a, new g1(23, autofillNode, autofill, function1));
                composer2.F();
                return modifierA;
            case 3:
                AddressBookActivity addressBookActivity = (AddressBookActivity) obj4;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj3;
                AccountAddressUiModel accountAddressUiModel = (AccountAddressUiModel) obj;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                AddressBookActivity.Companion companion = AddressBookActivity.q;
                addressBookActivity.H().Z4(AddressBookTrackingUiModel.EditAddressEvent.f52195a);
                managedActivityResultLauncher.a(AddressBookDestinationsKt.a(new AddressBookDestinations.ToAddressEditorPage(zBooleanValue, accountAddressUiModel != null ? accountAddressUiModel.f52184a : null), addressBookActivity));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                AddressBookContentKt.d((String) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                AddressEditorComposableKt.c((AddressEditorViewType) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                float fFloatValue = ((Float) obj).floatValue();
                float fFloatValue2 = ((Float) obj2).floatValue();
                p pVar = AnchoredDraggableKt.f4345a;
                ((AnchoredDragScope) obj4).a(fFloatValue, fFloatValue2);
                ((Ref$FloatRef) obj3).f71918b = fFloatValue;
                return Unit.f71739a;
            case 7:
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) obj4;
                Function0 function2 = (Function0) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    boolean z = assessmentBffViewState.f57346c.d == FormState.CONFIRM && !assessmentBffViewState.f57345b;
                    Object objX3 = composer3.x();
                    int i3 = 18;
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new x20(i3);
                        composer3.q(objX3);
                    }
                    EnterTransition enterTransitionR = EnterExitTransitionKt.r((Function1) objX3);
                    TweenSpec tweenSpecC = AnimationSpecKt.c(150, 0, EasingKt.f3864c, 2);
                    Object objX4 = composer3.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new x20(i3);
                        composer3.q(objX4);
                    }
                    AnimatedVisibilityKt.e(z, null, enterTransitionR, EnterExitTransitionKt.u((Function1) objX4, tweenSpecC), null, ComposableLambdaKt.b(1913153861, new a3(function2, 3), composer3), composer3, 196992, 18);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                AssessmentPreliminaryComponentKt.c((CareServiceDetailUiModel) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                AssessmentReceiveComponentKt.d((InAppDispatch) obj4, (AddressUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj3;
                String str = (String) obj;
                String str2 = (String) obj2;
                str.getClass();
                str2.getClass();
                audioGuideTracker.getClass();
                audioGuideTracker.f52976a.a(AudioGuideTrackingUiModelKt.a(new AudioGuideTrackingUiModel.OnHitTrackListItemEvent(str2)));
                ((Function1) obj4).invoke(str);
                return Unit.f71739a;
            case 11:
                PlayerSpeed playerSpeed = (PlayerSpeed) obj4;
                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel = (AudioGuideUiModel.AudioGuideColorsUiModel) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    TextKt.c(playerSpeed.getDisplayName(), n00.g("AudioPlayerControls$lambda$22$0$3$1", "audioGuide_trackDetailSpeed_text"), audioGuideColorsUiModel.f53207a, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).f48428i, composer4, 0, 0, 131064);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 12:
                TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) obj4;
                Function0 function3 = (Function0) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                float f2 = BeautyDualColorComparatorKt.f62002a;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ColorUiModel colorUiModel = tryOnProductUiModel.g;
                    String str3 = (colorUiModel == null || (assetImageUiModel = colorUiModel.f62160b) == null) ? null : assetImageUiModel.f51778b;
                    if (str3 == null) {
                        str3 = "";
                    }
                    BeautyDualColorComparatorKt.c(str3, true, function3, composer5, 48, 0);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 13:
                MutableFloatState mutableFloatState = (MutableFloatState) obj3;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                pointerInputChange.getClass();
                mutableFloatState.w(Float.intBitsToFloat((int) (((Offset) obj2).f8808a >> 32)) + mutableFloatState.a());
                ((Function1) obj4).invoke(Float.valueOf(mutableFloatState.a()));
                pointerInputChange.a();
                return Unit.f71739a;
            case 14:
                Context context = (Context) obj3;
                String str4 = (String) obj;
                String str5 = (String) obj2;
                str4.getClass();
                str5.getClass();
                ((BookingConfirmationViewModel) obj4).ya(new BookingConfirmationTrackingUiModel.OpenDirectionEvent(str4));
                Activity activity = context instanceof Activity ? (Activity) context : null;
                if (activity != null) {
                    ActivityExtKt.k(activity, str5);
                }
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                BookingLoadingModuleKt.a((Modifier) obj4, (BookingLoadingModuleType) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                BookingLoadingOverviewKt.a((Modifier) obj4, (BookingImageSize) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                BookingModuleMultipleTextKt.b((BookingFormModuleDataUiModel.MultipleTextCategory) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                BookingPassComposableKt.a((BookingPassViewModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                BookingReservationHeaderKt.a((Modifier) obj4, (BookingExperienceHeaderUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                BookingReservationScreenKt.b((LazyListState) obj4, (Integer) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                Function0 function4 = (Function0) obj4;
                State state = (State) obj3;
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, ((CancellationReasonsBffViewState) state.getF10755b()).f63614c ? o60.k(composer6, 527767982, R.string.dr_decline_title_bottom_sheet, composer6) : o60.k(composer6, 527875862, R.string.dr_cancel_appointment, composer6), null, null, function4, null, null, null, null, composer6, 0, 0, 4023);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 22:
                CancellationReasonsBffViewState cancellationReasonsBffViewState = (CancellationReasonsBffViewState) obj4;
                Function0 function5 = (Function0) obj3;
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("CancellationReasonsBffScreen$lambda$0", 1.0f), LVAppDesignKitTheme.c(composer7).f48361b.f48374a, rectangleShapeKt$RectangleShape$1));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer7.n();
                    Modifier modifierC = ComposedModifierKt.c(composer7, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function6 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function6);
                    } else {
                        composer7.o();
                    }
                    Updater.c(composer7, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer7, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer7, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer7, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer7, modifierC, ComposeUiNode.Companion.d);
                    LVButtonKt.b(0, 376, composer7, PaddingKt.l(ModifierExtKt.e(BackgroundKt.b(boxScopeInstance.g(tr.d("CancellationReasonsBffScreen$lambda$0", 1.0f), Alignment.Companion.f8589i), LVAppDesignKitTheme.c(composer7).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), "careservicesCancellation_confirm_button"), LVAppDesignKitTheme.l(composer7).f48417f, LVAppDesignKitTheme.l(composer7).f48415c, LVAppDesignKitTheme.l(composer7).f48417f, LVAppDesignKitTheme.l(composer7).f48417f), LVAppDesignKitTheme.b(composer7).f48446a, null, null, StringResources_androidKt.c(composer7, R.string.dr_cancel_cta_confirm), function5, false, cancellationReasonsBffViewState.f63615e != null, false);
                    composer7.r();
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 23:
                CancellationReasonsViewModel cancellationReasonsViewModel = (CancellationReasonsViewModel) obj4;
                Function0 function7 = (Function0) obj3;
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    RepairStatusUiModel f63576c = cancellationReasonsViewModel.getF63576c();
                    LVStandardTopBarKt.a(null, null, false, (f63576c == null ? -1 : CancellationReasonsComposableKt.WhenMappings.f63620a[f63576c.ordinal()]) == 1 ? o60.k(composer8, -1637779806, R.string.dr_decline_title_bottom_sheet, composer8) : o60.k(composer8, -1637776870, R.string.dr_cancel_appointment, composer8), null, null, function7, null, null, null, null, composer8, 0, 0, 4023);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 24:
                CancellationReasonsViewState cancellationReasonsViewState = (CancellationReasonsViewState) obj4;
                Function0 function8 = (Function0) obj3;
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Modifier modifierB2 = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("CancellationReasonsScreen$lambda$0", 1.0f), LVAppDesignKitTheme.c(composer9).f48361b.f48374a, rectangleShapeKt$RectangleShape$1));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode2 = Long.hashCode(composer9.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer9.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer9, modifierB2);
                    ComposeUiNode.b0.getClass();
                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                    if (composer9.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer9.B();
                    if (composer9.getS()) {
                        composer9.C(function9);
                    } else {
                        composer9.o();
                    }
                    Updater.c(composer9, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer9, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer9, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer9, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer9, modifierC2, ComposeUiNode.Companion.d);
                    LVButtonKt.b(0, 376, composer9, ModifierExtKt.e(PaddingKt.l(BackgroundKt.b(boxScopeInstance.g(tr.d("CancellationReasonsScreen$lambda$0", 1.0f), Alignment.Companion.f8589i), LVAppDesignKitTheme.c(composer9).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(composer9).f48417f, LVAppDesignKitTheme.l(composer9).f48415c, LVAppDesignKitTheme.l(composer9).f48417f, LVAppDesignKitTheme.l(composer9).f48417f), "careservicesCancellation_confirm_button"), LVAppDesignKitTheme.b(composer9).f48446a, null, null, StringResources_androidKt.c(composer9, R.string.dr_cancel_cta_confirm), function8, false, cancellationReasonsViewState.d != null, false);
                    composer9.r();
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 25:
                NavHostController navHostController = (NavHostController) obj3;
                String str6 = (String) obj;
                String str7 = (String) obj2;
                float f3 = CatalogStoreModeKt.f64850a;
                str6.getClass();
                str7.getClass();
                if (((StoreModeViewModel) obj4).F()) {
                    float f4 = CatalogStoreModeKt.f64850a;
                    NavController.d(navHostController, new StoreModeRoute.Plp(str6, str7), null, 6);
                }
                return Unit.f71739a;
            case 26:
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj3;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                ((Unit) obj).getClass();
                element.getClass();
                int i4 = ref$IntRef.f71919b;
                ref$IntRef.f71919b = i4 + 1;
                ((CoroutineContext[]) obj4)[i4] = element;
                return Unit.f71739a;
            case 27:
                return ConsentDialogFragment.onCreateView$lambda$5$0((ConsentDialogFragment) obj4, (AnnotatedString) obj3, (Composer) obj, ((Integer) obj2).intValue());
            case 28:
                ((Integer) obj2).getClass();
                ((ContextMenuScope) obj4).a((ContextMenuColors) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                CustomizationConfigurationCardKt.b((Modifier) obj4, (CustomizationInformationUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ f0(Object obj, Object obj2, int i2) {
        this.f68988b = i2;
        this.f68989c = obj;
        this.d = obj2;
    }

    public /* synthetic */ f0(Object obj, Object obj2, int i2, int i3) {
        this.f68988b = i3;
        this.f68989c = obj;
        this.d = obj2;
    }

    public /* synthetic */ f0(Object obj, Function1 function1, int i2, int i3) {
        this.f68988b = i3;
        this.d = obj;
        this.f68989c = function1;
    }
}
