package defpackage;

import android.content.Context;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.window.PopupProperties;
import androidx.lifecycle.ViewModelLazy;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.DialogHostKt;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import androidx.navigation3.runtime.RememberNavBackStackKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.perfectcorp.perfectlib.SkuInfo;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.compose.components.PushCardImageLoaderKt;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookActivity;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookComposableKt;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorActivity;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel;
import com.vuitton.android.presentation.screen.booking.BookingActivity;
import com.vuitton.android.presentation.screen.booking.a;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.components.ComposableSingletons$CatalogSubcategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.MocksKt;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.model.AddCertificateInfoUiModel;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentTermsFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.TermsAndConditionsComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyUiModel;
import com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesActivity;
import com.vuitton.android.presentation.screen.exclusivesales.components.ExclusiveSalesComposableKt;
import com.vuitton.android.presentation.screen.feed.components.card.FeedNotifyIconButtonsKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.FiltersOverlayScreenKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FilterOverlayViewState;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperArticleSectionUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryActivity;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ColorUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.utils.CameraController;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsActivity;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffActivity;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeDataUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screenshot.observer.ScreenshotListenerKt;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import defpackage.be;
import defpackage.c1;
import defpackage.ce;
import defpackage.ef;
import defpackage.f0;
import defpackage.gv;
import defpackage.j6;
import defpackage.k;
import defpackage.l0;
import defpackage.l00;
import defpackage.u20;
import defpackage.w1;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20998c;

    public /* synthetic */ c(Object obj, int i2) {
        this.f20997b = i2;
        this.f20998c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e4  */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AssetImageUiModel assetImageUiModel;
        long j2;
        ProductListOptionUiModel productListOptionUiModel;
        ProductListOptionUiModel productListOptionUiModel2;
        ProductFiltersUiModel productFiltersUiModel;
        ProductListOptionUiModel productListOptionUiModel3;
        ProductFiltersUiModel productFiltersUiModel2;
        int i2 = this.f20997b;
        String str = null;
        boolean z = false;
        z = false;
        final boolean z2 = false;
        Object obj3 = this.f20998c;
        switch (i2) {
            case 0:
                final AICompanionActivity aICompanionActivity = (AICompanionActivity) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                AICompanionActivity.Companion companion = AICompanionActivity.v;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1563096533, new Function2() { // from class: com.vuitton.android.presentation.screen.aicompanion.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer2 = (Composer) obj4;
                            int iIntValue2 = ((Integer) obj5).intValue();
                            AICompanionActivity.Companion companion2 = AICompanionActivity.v;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                AICompanionActivity aICompanionActivity2 = aICompanionActivity;
                                AICompanionViewModel aICompanionViewModel = (AICompanionViewModel) aICompanionActivity2.p.getF71699b();
                                ContributionLinkNavigator contributionLinkNavigator = aICompanionActivity2.u;
                                if (contributionLinkNavigator == null) {
                                    Intrinsics.h("contributionLinkNavigator");
                                    throw null;
                                }
                                SharedFlowImpl sharedFlowImpl = aICompanionActivity2.q;
                                boolean zY = composer2.y(aICompanionActivity2);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    AICompanionActivity$onCreate$1$1$1$1 aICompanionActivity$onCreate$1$1$1$1 = new AICompanionActivity$onCreate$1$1$1$1(0, aICompanionActivity2, AICompanionActivity.class, "finish", "finish()V", 0);
                                    composer2.q(aICompanionActivity$onCreate$1$1$1$1);
                                    objX = aICompanionActivity$onCreate$1$1$1$1;
                                }
                                KFunction kFunction = (KFunction) objX;
                                boolean zY2 = composer2.y(aICompanionActivity2);
                                Object objX2 = composer2.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    AICompanionActivity$onCreate$1$1$2$1 aICompanionActivity$onCreate$1$1$2$1 = new AICompanionActivity$onCreate$1$1$2$1(0, aICompanionActivity2, AICompanionActivity.class, "launchSpeechRecognizer", "launchSpeechRecognizer()V", 0);
                                    composer2.q(aICompanionActivity$onCreate$1$1$2$1);
                                    objX2 = aICompanionActivity$onCreate$1$1$2$1;
                                }
                                KFunction kFunction2 = (KFunction) objX2;
                                boolean zY3 = composer2.y(aICompanionActivity2);
                                Object objX3 = composer2.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    AICompanionActivity$onCreate$1$1$3$1 aICompanionActivity$onCreate$1$1$3$1 = new AICompanionActivity$onCreate$1$1$3$1(1, aICompanionActivity2, AICompanionActivity.class, "onProductClicked", "onProductClicked-1Zqi3gk(Ljava/lang/String;)V", 0);
                                    composer2.q(aICompanionActivity$onCreate$1$1$3$1);
                                    objX3 = aICompanionActivity$onCreate$1$1$3$1;
                                }
                                KFunction kFunction3 = (KFunction) objX3;
                                boolean zY4 = composer2.y(aICompanionActivity2);
                                Object objX4 = composer2.x();
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    AICompanionActivity$onCreate$1$1$4$1 aICompanionActivity$onCreate$1$1$4$1 = new AICompanionActivity$onCreate$1$1$4$1(3, aICompanionActivity2, AICompanionActivity.class, "onWishlistToggled", "onWishlistToggled-5tQGX2Y(Ljava/lang/String;ZZ)V", 0);
                                    composer2.q(aICompanionActivity$onCreate$1$1$4$1);
                                    objX4 = aICompanionActivity$onCreate$1$1$4$1;
                                }
                                AICompanionNavDisplayKt.a(aICompanionViewModel, contributionLinkNavigator, sharedFlowImpl, (Function0) kFunction2, (Function1) kFunction3, (Function3) ((KFunction) objX4), (Function0) kFunction, composer2, 0);
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
            case 1:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                obj2.getClass();
                ((AccountActivationViewModel) obj3).f(formSectionTypeUiModel, obj2);
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.b((AddCertificateInfoUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                final AddressBookActivity addressBookActivity = (AddressBookActivity) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                AddressBookActivity.Companion companion2 = AddressBookActivity.q;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-8930451, new Function2() { // from class: com.vuitton.android.presentation.screen.account.addressbook.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer3 = (Composer) obj4;
                            int iIntValue3 = ((Integer) obj5).intValue();
                            AddressBookActivity.Companion companion3 = AddressBookActivity.q;
                            if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
                                AddressBookActivity addressBookActivity2 = addressBookActivity;
                                boolean zY = composer3.y(addressBookActivity2);
                                Object objX = composer3.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    objX = new c1(addressBookActivity2, 7);
                                    composer3.q(objX);
                                }
                                ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX, composer3, 0);
                                Unit unit = Unit.f71739a;
                                boolean zY2 = composer3.y(addressBookActivity2);
                                Object objX2 = composer3.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new AddressBookActivity$onCreate$1$1$1$1(addressBookActivity2, null);
                                    composer3.q(objX2);
                                }
                                EffectsKt.e(composer3, unit, (Function2) objX2);
                                AddressBookViewModel addressBookViewModelH = addressBookActivity2.H();
                                boolean zY3 = composer3.y(addressBookActivity2);
                                Object objX3 = composer3.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    AddressBookActivity$onCreate$1$1$2$1 addressBookActivity$onCreate$1$1$2$1 = new AddressBookActivity$onCreate$1$1$2$1(0, addressBookActivity2, AddressBookActivity.class, "finish", "finish()V", 0);
                                    composer3.q(addressBookActivity$onCreate$1$1$2$1);
                                    objX3 = addressBookActivity$onCreate$1$1$2$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX3);
                                boolean zY4 = composer3.y(addressBookActivity2) | composer3.y(managedActivityResultLauncherA);
                                Object objX4 = composer3.x();
                                int i3 = 3;
                                if (zY4 || objX4 == composer$Companion$Empty$1) {
                                    objX4 = new l0(addressBookActivity2, managedActivityResultLauncherA, i3);
                                    composer3.q(objX4);
                                }
                                Function0 function1 = (Function0) objX4;
                                boolean zY5 = composer3.y(addressBookActivity2) | composer3.y(managedActivityResultLauncherA);
                                Object objX5 = composer3.x();
                                if (zY5 || objX5 == composer$Companion$Empty$1) {
                                    objX5 = new f0(addressBookActivity2, managedActivityResultLauncherA, i3);
                                    composer3.q(objX5);
                                }
                                AddressBookComposableKt.a(addressBookViewModelH, function0, function1, (Function2) objX5, composer3, 0);
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
                final AddressEditorActivity addressEditorActivity = (AddressEditorActivity) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                AddressEditorActivity.Companion companion3 = AddressEditorActivity.r;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1904190577, new Function2() { // from class: com.vuitton.android.presentation.screen.account.addresseditor.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer4 = (Composer) obj4;
                            int iIntValue4 = ((Integer) obj5).intValue();
                            AddressEditorActivity.Companion companion4 = AddressEditorActivity.r;
                            if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer4);
                                AddressEditorActivity addressEditorActivity2 = addressEditorActivity;
                                AddressEditorViewModel addressEditorViewModel = (AddressEditorViewModel) addressEditorActivity2.p.getF71699b();
                                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) addressEditorActivity2.q.getF71699b();
                                boolean zY = composer4.y(addressEditorActivity2);
                                Object objX = composer4.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$1) {
                                    AddressEditorActivity$onCreate$1$1$1$1 addressEditorActivity$onCreate$1$1$1$1 = new AddressEditorActivity$onCreate$1$1$1$1(0, addressEditorActivity2, AddressEditorActivity.class, "openAddressBookAfterEdition", "openAddressBookAfterEdition()V", 0);
                                    composer4.q(addressEditorActivity$onCreate$1$1$1$1);
                                    objX = addressEditorActivity$onCreate$1$1$1$1;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX);
                                boolean zY2 = composer4.y(addressEditorActivity2);
                                Object objX2 = composer4.x();
                                if (zY2 || objX2 == composer$Companion$Empty$1) {
                                    AddressEditorActivity$onCreate$1$1$2$1 addressEditorActivity$onCreate$1$1$2$1 = new AddressEditorActivity$onCreate$1$1$2$1(0, addressEditorActivity2, AddressEditorActivity.class, "finish", "finish()V", 0);
                                    composer4.q(addressEditorActivity$onCreate$1$1$2$1);
                                    objX2 = addressEditorActivity$onCreate$1$1$2$1;
                                }
                                AddressEditorNavHostKt.a(navHostControllerA, addressEditorViewModel, addressAutocompleteViewModel, function0, (Function0) ((KFunction) objX2), composer4, 0);
                            } else {
                                composer4.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer3), composer3, 48);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                return Boolean.valueOf(((TextInclusionStrategy) obj3).i(RectHelper_androidKt.c((RectF) obj), RectHelper_androidKt.c((RectF) obj2)));
            case 6:
                Long l = (Long) obj2;
                if (SelectionRegistrarKt.a((SelectionRegistrar) obj3, l.longValue())) {
                    return l;
                }
                return null;
            case 7:
                TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                float f2 = BeautyDualColorComparatorKt.f62002a;
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ColorUiModel colorUiModel = tryOnProductUiModel.g;
                    if (colorUiModel != null && (assetImageUiModel = colorUiModel.f62160b) != null) {
                        str = assetImageUiModel.f51778b;
                    }
                    BeautyDualColorComparatorKt.c(str == null ? "" : str, false, null, composer4, 48, 4);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 8:
                final BeautyVtoActivity beautyVtoActivity = (BeautyVtoActivity) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                BeautyVtoActivity.Companion companion4 = BeautyVtoActivity.D;
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1950503588, new Function2() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            ShadeFinder shadeFinder;
                            Object beautyVtoActivity$onCreate$1$1$2$1;
                            MutableFloatState mutableFloatState;
                            Object beautyVtoActivity$onCreate$1$1$5$1;
                            Composer composer6 = (Composer) obj4;
                            int iIntValue6 = ((Integer) obj5).intValue();
                            BeautyVtoActivity.Companion companion5 = BeautyVtoActivity.D;
                            if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                Object objX = composer6.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (objX == composer$Companion$Empty$1) {
                                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, composer6);
                                    composer6.q(objX);
                                }
                                CoroutineScope coroutineScope = (CoroutineScope) objX;
                                Context context = (Context) composer6.k(AndroidCompositionLocals_androidKt.f9936b);
                                final BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                                Bundle extras = beautyVtoActivity2.getIntent().getExtras();
                                boolean z3 = extras != null ? extras.getBoolean("isShadeFinder") : false;
                                Object objX2 = composer6.x();
                                if (objX2 == composer$Companion$Empty$1) {
                                    objX2 = SnapshotStateKt.g(Boolean.FALSE);
                                    composer6.q(objX2);
                                }
                                MutableState mutableState = (MutableState) objX2;
                                Object objX3 = composer6.x();
                                if (objX3 == composer$Companion$Empty$1) {
                                    objX3 = SnapshotStateKt.g(Boolean.FALSE);
                                    composer6.q(objX3);
                                }
                                MutableState mutableState2 = (MutableState) objX3;
                                Object objX4 = composer6.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = SnapshotStateKt.g(null);
                                    composer6.q(objX4);
                                }
                                MutableState mutableState3 = (MutableState) objX4;
                                boolean zK = composer6.K(context);
                                Object objX5 = composer6.x();
                                if (zK || objX5 == composer$Companion$Empty$1) {
                                    float fC = ContextExtKt.c(context);
                                    Object systemService = context.getSystemService("window");
                                    systemService.getClass();
                                    Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
                                    DisplayMetrics displayMetrics = new DisplayMetrics();
                                    defaultDisplay.getMetrics(displayMetrics);
                                    float f3 = displayMetrics.widthPixels;
                                    objX5 = PrimitiveSnapshotStateKt.a(f3 / ((0.5625f * f3) / fC));
                                    composer6.q(objX5);
                                }
                                MutableFloatState mutableFloatState2 = (MutableFloatState) objX5;
                                boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                                boolean zBooleanValue2 = ((Boolean) mutableState2.getF10755b()).booleanValue();
                                CameraView cameraView = (CameraView) mutableState3.getF10755b();
                                boolean z4 = z3;
                                MakeupCam makeupCam = beautyVtoActivity2.s;
                                ShadeFinder shadeFinder2 = beautyVtoActivity2.u;
                                BeautyVtoViewModel beautyVtoViewModelM = beautyVtoActivity2.M();
                                boolean zY = composer6.y(beautyVtoViewModelM);
                                Object objX6 = composer6.x();
                                if (zY || objX6 == composer$Companion$Empty$1) {
                                    objX6 = new BeautyVtoActivity$onCreate$1$1$1$1(0, beautyVtoViewModelM, BeautyVtoViewModel.class, "onMakeupCamDisplayed", "onMakeupCamDisplayed()V", 0);
                                    composer6.q(objX6);
                                }
                                KFunction kFunction = (KFunction) objX6;
                                boolean zY2 = composer6.y(beautyVtoActivity2);
                                Object objX7 = composer6.x();
                                if (zY2 || objX7 == composer$Companion$Empty$1) {
                                    shadeFinder = shadeFinder2;
                                    mutableFloatState = mutableFloatState2;
                                    beautyVtoActivity$onCreate$1$1$2$1 = new BeautyVtoActivity$onCreate$1$1$2$1(0, beautyVtoActivity2, BeautyVtoActivity.class, "initShadeFinder", "initShadeFinder()V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$2$1);
                                } else {
                                    beautyVtoActivity$onCreate$1$1$2$1 = objX7;
                                    shadeFinder = shadeFinder2;
                                    mutableFloatState = mutableFloatState2;
                                }
                                KFunction kFunction2 = (KFunction) beautyVtoActivity$onCreate$1$1$2$1;
                                boolean zY3 = composer6.y(beautyVtoActivity2);
                                Object objX8 = composer6.x();
                                if (zY3 || objX8 == composer$Companion$Empty$1) {
                                    BeautyVtoActivity$onCreate$1$1$3$1 beautyVtoActivity$onCreate$1$1$3$1 = new BeautyVtoActivity$onCreate$1$1$3$1(2, beautyVtoActivity2, BeautyVtoActivity.class, "createVtoApplier", "createVtoApplier(Lcom/perfectcorp/perfectlib/MakeupCam;Lkotlin/jvm/functions/Function1;)V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$3$1);
                                    objX8 = beautyVtoActivity$onCreate$1$1$3$1;
                                }
                                KFunction kFunction3 = (KFunction) objX8;
                                BeautyVtoViewModel beautyVtoViewModelM2 = beautyVtoActivity2.M();
                                boolean zY4 = composer6.y(beautyVtoViewModelM2);
                                Object objX9 = composer6.x();
                                if (zY4 || objX9 == composer$Companion$Empty$1) {
                                    objX9 = new BeautyVtoActivity$onCreate$1$1$4$1(0, beautyVtoViewModelM2, BeautyVtoViewModel.class, "initEffectHandler", "initEffectHandler()V", 0);
                                    composer6.q(objX9);
                                }
                                KFunction kFunction4 = (KFunction) objX9;
                                boolean zY5 = composer6.y(beautyVtoActivity2);
                                Object objX10 = composer6.x();
                                if (zY5 || objX10 == composer$Companion$Empty$1) {
                                    beautyVtoActivity$onCreate$1$1$5$1 = new BeautyVtoActivity$onCreate$1$1$5$1(0, beautyVtoActivity2, BeautyVtoActivity.class, "configureSkinSmoothEffect", "configureSkinSmoothEffect()V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$5$1);
                                } else {
                                    beautyVtoActivity$onCreate$1$1$5$1 = objX10;
                                }
                                KFunction kFunction5 = (KFunction) beautyVtoActivity$onCreate$1$1$5$1;
                                Object objX11 = composer6.x();
                                if (objX11 == composer$Companion$Empty$1) {
                                    objX11 = new j6(7, mutableState);
                                    composer6.q(objX11);
                                }
                                Function1 function1 = (Function1) objX11;
                                Object objX12 = composer6.x();
                                if (objX12 == composer$Companion$Empty$1) {
                                    objX12 = new j6(8, mutableState2);
                                    composer6.q(objX12);
                                }
                                Function1 function2 = (Function1) objX12;
                                Object objX13 = composer6.x();
                                if (objX13 == composer$Companion$Empty$1) {
                                    objX13 = new j6(9, mutableState3);
                                    composer6.q(objX13);
                                }
                                Function1 function3 = (Function1) objX13;
                                boolean zY6 = composer6.y(beautyVtoActivity2);
                                Object objX14 = composer6.x();
                                if (zY6 || objX14 == composer$Companion$Empty$1) {
                                    final int i3 = 0;
                                    objX14 = new Function1() { // from class: ae
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj6) {
                                            int i4 = i3;
                                            BeautyVtoActivity beautyVtoActivity3 = beautyVtoActivity2;
                                            switch (i4) {
                                                case 0:
                                                    MakeupCam makeupCam2 = (MakeupCam) obj6;
                                                    BeautyVtoActivity.Companion companion6 = BeautyVtoActivity.D;
                                                    makeupCam2.getClass();
                                                    beautyVtoActivity3.s = makeupCam2;
                                                    break;
                                                default:
                                                    CameraController cameraController = (CameraController) obj6;
                                                    BeautyVtoActivity.Companion companion7 = BeautyVtoActivity.D;
                                                    cameraController.getClass();
                                                    beautyVtoActivity3.v = cameraController;
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer6.q(objX14);
                                }
                                Function1 function4 = (Function1) objX14;
                                Function0 function0 = (Function0) kFunction;
                                Function0 function5 = (Function0) kFunction2;
                                Function2 function6 = (Function2) kFunction3;
                                Function0 function7 = (Function0) kFunction4;
                                boolean zY7 = composer6.y(beautyVtoActivity2);
                                Object objX15 = composer6.x();
                                if (zY7 || objX15 == composer$Companion$Empty$1) {
                                    final int i4 = 1;
                                    objX15 = new Function1() { // from class: ae
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj6) {
                                            int i5 = i4;
                                            BeautyVtoActivity beautyVtoActivity3 = beautyVtoActivity2;
                                            switch (i5) {
                                                case 0:
                                                    MakeupCam makeupCam2 = (MakeupCam) obj6;
                                                    BeautyVtoActivity.Companion companion6 = BeautyVtoActivity.D;
                                                    makeupCam2.getClass();
                                                    beautyVtoActivity3.s = makeupCam2;
                                                    break;
                                                default:
                                                    CameraController cameraController = (CameraController) obj6;
                                                    BeautyVtoActivity.Companion companion7 = BeautyVtoActivity.D;
                                                    cameraController.getClass();
                                                    beautyVtoActivity3.v = cameraController;
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer6.q(objX15);
                                }
                                MutableFloatState mutableFloatState3 = mutableFloatState;
                                PerfectCameraComposableKt.a(context, z4, zBooleanValue, zBooleanValue2, cameraView, makeupCam, shadeFinder, function1, function2, function3, function4, function0, function5, function6, function7, (Function1) objX15, (Function0) kFunction5, composer6, 918552576);
                                MutableState mutableStateB = SnapshotStateKt.b(beautyVtoActivity2.M().getK0(), composer6);
                                Object objX16 = composer6.x();
                                if (objX16 == composer$Companion$Empty$1) {
                                    TryOnProductUiModel tryOnProductUiModel2 = ((BeautyVtoViewState) mutableStateB.getF10755b()).f62155i;
                                    objX16 = SnapshotStateKt.g(tryOnProductUiModel2 != null ? tryOnProductUiModel2.d : null);
                                    composer6.q(objX16);
                                }
                                MutableState mutableState4 = (MutableState) objX16;
                                TryOnProductUiModel tryOnProductUiModel3 = ((BeautyVtoViewState) mutableStateB.getF10755b()).f62155i;
                                SkuInfo skuInfo = ((BeautyVtoViewState) mutableStateB.getF10755b()).m;
                                LookInfo lookInfo = ((BeautyVtoViewState) mutableStateB.getF10755b()).n;
                                boolean zK2 = composer6.K(mutableStateB) | composer6.y(beautyVtoActivity2) | composer6.y(coroutineScope);
                                Object objX17 = composer6.x();
                                if (zK2 || objX17 == composer$Companion$Empty$1) {
                                    objX17 = new BeautyVtoActivity$onCreate$1$1$11$1(beautyVtoActivity2, mutableStateB, mutableState4, coroutineScope, null);
                                    composer6.q(objX17);
                                }
                                EffectsKt.f(tryOnProductUiModel3, skuInfo, lookInfo, (Function2) objX17, composer6);
                                BeautyVtoMode beautyVtoMode = ((BeautyVtoViewState) mutableStateB.getF10755b()).f62149a;
                                SkuInfo skuInfo2 = ((BeautyVtoViewState) mutableStateB.getF10755b()).o;
                                boolean zK3 = composer6.K(mutableStateB) | composer6.y(beautyVtoActivity2) | composer6.y(coroutineScope);
                                Object objX18 = composer6.x();
                                if (zK3 || objX18 == composer$Companion$Empty$1) {
                                    objX18 = new BeautyVtoActivity$onCreate$1$1$12$1(beautyVtoActivity2, mutableStateB, coroutineScope, null);
                                    composer6.q(objX18);
                                }
                                EffectsKt.g(beautyVtoMode, skuInfo2, (Function2) objX18, composer6);
                                Object[] objArr = {((BeautyVtoViewState) mutableStateB.getF10755b()).f62149a, ((BeautyVtoViewState) mutableStateB.getF10755b()).p, ((BeautyVtoViewState) mutableStateB.getF10755b()).q, ((BeautyVtoViewState) mutableStateB.getF10755b()).f62156j};
                                boolean zK4 = composer6.K(mutableStateB) | composer6.y(beautyVtoActivity2) | composer6.y(coroutineScope) | composer6.y(context);
                                Object objX19 = composer6.x();
                                if (zK4 || objX19 == composer$Companion$Empty$1) {
                                    BeautyVtoActivity$onCreate$1$1$13$1 beautyVtoActivity$onCreate$1$1$13$1 = new BeautyVtoActivity$onCreate$1$1$13$1(beautyVtoActivity2, mutableStateB, mutableState4, coroutineScope, context, null);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$13$1);
                                    objX19 = beautyVtoActivity$onCreate$1$1$13$1;
                                }
                                EffectsKt.h(objArr, (Function2) objX19, composer6);
                                int i5 = 1;
                                int i6 = 0;
                                NavBackStack navBackStackA = RememberNavBackStackKt.a(new NavKey[]{beautyVtoActivity2.M().z6()}, composer6);
                                BeautyVtoViewModel beautyVtoViewModelM3 = beautyVtoActivity2.M();
                                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) beautyVtoActivity2.r.getF71699b();
                                boolean zY8 = composer6.y(beautyVtoActivity2);
                                Object objX20 = composer6.x();
                                if (zY8 || objX20 == composer$Companion$Empty$1) {
                                    BeautyVtoActivity$onCreate$1$1$14$1 beautyVtoActivity$onCreate$1$1$14$1 = new BeautyVtoActivity$onCreate$1$1$14$1(0, beautyVtoActivity2, BeautyVtoActivity.class, "finish", "finish()V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$14$1);
                                    objX20 = beautyVtoActivity$onCreate$1$1$14$1;
                                }
                                Function0 function8 = (Function0) ((KFunction) objX20);
                                boolean zY9 = composer6.y(beautyVtoActivity2);
                                Object objX21 = composer6.x();
                                if (zY9 || objX21 == composer$Companion$Empty$1) {
                                    BeautyVtoActivity$onCreate$1$1$15$1 beautyVtoActivity$onCreate$1$1$15$1 = new BeautyVtoActivity$onCreate$1$1$15$1(0, beautyVtoActivity2, BeautyVtoActivity.class, "startShadeFinderQualityCheck", "startShadeFinderQualityCheck()V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$15$1);
                                    objX21 = beautyVtoActivity$onCreate$1$1$15$1;
                                }
                                Function0 function9 = (Function0) ((KFunction) objX21);
                                boolean zY10 = composer6.y(beautyVtoActivity2);
                                Object objX22 = composer6.x();
                                if (zY10 || objX22 == composer$Companion$Empty$1) {
                                    objX22 = new BeautyVtoActivity$onCreate$1$1$16$1(0, beautyVtoActivity2, BeautyVtoActivity.class, "takePicture", "takePicture()V", 0);
                                    composer6.q(objX22);
                                }
                                Function0 function10 = (Function0) ((KFunction) objX22);
                                boolean zY11 = composer6.y(beautyVtoActivity2);
                                Object objX23 = composer6.x();
                                if (zY11 || objX23 == composer$Companion$Empty$1) {
                                    BeautyVtoActivity$onCreate$1$1$17$1 beautyVtoActivity$onCreate$1$1$17$1 = new BeautyVtoActivity$onCreate$1$1$17$1(0, beautyVtoActivity2, BeautyVtoActivity.class, "startFaceAnalysis", "startFaceAnalysis()V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$17$1);
                                    objX23 = beautyVtoActivity$onCreate$1$1$17$1;
                                }
                                Function0 function11 = (Function0) ((KFunction) objX23);
                                boolean zY12 = composer6.y(beautyVtoActivity2);
                                Object objX24 = composer6.x();
                                if (zY12 || objX24 == composer$Companion$Empty$1) {
                                    BeautyVtoActivity$onCreate$1$1$18$1 beautyVtoActivity$onCreate$1$1$18$1 = new BeautyVtoActivity$onCreate$1$1$18$1(1, beautyVtoActivity2, BeautyVtoActivity.class, "handleWishListButtonClick", "handleWishListButtonClick(Z)V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$18$1);
                                    objX24 = beautyVtoActivity$onCreate$1$1$18$1;
                                }
                                Function1 function12 = (Function1) ((KFunction) objX24);
                                boolean zY13 = composer6.y(beautyVtoActivity2);
                                Object objX25 = composer6.x();
                                if (zY13 || objX25 == composer$Companion$Empty$1) {
                                    objX25 = new be(beautyVtoActivity2, 0);
                                    composer6.q(objX25);
                                }
                                Function0 function13 = (Function0) objX25;
                                boolean zY14 = composer6.y(beautyVtoActivity2) | composer6.K(mutableStateB);
                                Object objX26 = composer6.x();
                                if (zY14 || objX26 == composer$Companion$Empty$1) {
                                    objX26 = new ce(beautyVtoActivity2, mutableStateB, i6);
                                    composer6.q(objX26);
                                }
                                Function0 function14 = (Function0) objX26;
                                boolean zY15 = composer6.y(beautyVtoActivity2);
                                Object objX27 = composer6.x();
                                if (zY15 || objX27 == composer$Companion$Empty$1) {
                                    objX27 = new be(beautyVtoActivity2, 1);
                                    composer6.q(objX27);
                                }
                                Function0 function15 = (Function0) objX27;
                                boolean zY16 = composer6.y(beautyVtoActivity2) | composer6.K(mutableStateB);
                                Object objX28 = composer6.x();
                                if (zY16 || objX28 == composer$Companion$Empty$1) {
                                    objX28 = new ce(beautyVtoActivity2, mutableStateB, i5);
                                    composer6.q(objX28);
                                }
                                Function0 function16 = (Function0) objX28;
                                boolean zY17 = composer6.y(beautyVtoActivity2) | composer6.K(mutableStateB);
                                Object objX29 = composer6.x();
                                if (zY17 || objX29 == composer$Companion$Empty$1) {
                                    objX29 = new ce(beautyVtoActivity2, mutableStateB, 2);
                                    composer6.q(objX29);
                                }
                                Function0 function17 = (Function0) objX29;
                                boolean zY18 = composer6.y(beautyVtoActivity2) | composer6.K(mutableFloatState3);
                                Object objX30 = composer6.x();
                                if (zY18 || objX30 == composer$Companion$Empty$1) {
                                    objX30 = new k(beautyVtoActivity2, mutableFloatState3, 11);
                                    composer6.q(objX30);
                                }
                                Function1 function18 = (Function1) objX30;
                                boolean zY19 = composer6.y(beautyVtoActivity2);
                                Object objX31 = composer6.x();
                                if (zY19 || objX31 == composer$Companion$Empty$1) {
                                    objX31 = new be(beautyVtoActivity2, 5);
                                    composer6.q(objX31);
                                }
                                Function0 function19 = (Function0) objX31;
                                boolean zY20 = composer6.y(beautyVtoActivity2);
                                Object objX32 = composer6.x();
                                if (zY20 || objX32 == composer$Companion$Empty$1) {
                                    objX32 = new be(beautyVtoActivity2, 6);
                                    composer6.q(objX32);
                                }
                                Function0 function20 = (Function0) objX32;
                                BeautyVtoViewModel beautyVtoViewModelM4 = beautyVtoActivity2.M();
                                boolean zY21 = composer6.y(beautyVtoViewModelM4);
                                Object objX33 = composer6.x();
                                if (zY21 || objX33 == composer$Companion$Empty$1) {
                                    objX33 = new BeautyVtoActivity$onCreate$1$1$27$1(0, beautyVtoViewModelM4, BeautyVtoViewModel.class, "onAddToCartClick", "onAddToCartClick()V", 0);
                                    composer6.q(objX33);
                                }
                                Function0 function21 = (Function0) ((KFunction) objX33);
                                boolean zY22 = composer6.y(beautyVtoActivity2);
                                Object objX34 = composer6.x();
                                if (zY22 || objX34 == composer$Companion$Empty$1) {
                                    BeautyVtoActivity$onCreate$1$1$28$1 beautyVtoActivity$onCreate$1$1$28$1 = new BeautyVtoActivity$onCreate$1$1$28$1(1, beautyVtoActivity2, BeautyVtoActivity.class, "openPDP", "openPDP-1Zqi3gk(Ljava/lang/String;)V", 0);
                                    composer6.q(beautyVtoActivity$onCreate$1$1$28$1);
                                    objX34 = beautyVtoActivity$onCreate$1$1$28$1;
                                }
                                NavBackStack.Companion companion6 = NavBackStack.INSTANCE;
                                BeautyVtoNavDisplayKt.a(navBackStackA, beautyVtoViewModelM3, permissionsViewModel, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, function19, function20, function21, (Function1) ((KFunction) objX34), composer6, 0);
                                boolean z5 = (((Boolean) mutableState.getF10755b()).booleanValue() && ((Boolean) mutableState2.getF10755b()).booleanValue() && ((CameraView) mutableState3.getF10755b()) != null) ? false : true;
                                ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                ComposableSingletons$BeautyVtoActivityKt.f61964a.getClass();
                                AnimatedVisibilityKt.e(z5, null, null, exitTransitionH, null, ComposableSingletons$BeautyVtoActivityKt.f61965b, composer6, 199680, 22);
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
            case 9:
                BookingActivity bookingActivity = (BookingActivity) obj3;
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                BookingActivity.Companion companion5 = BookingActivity.r;
                if (composer6.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1369377494, new a(bookingActivity, z ? 1 : 0), composer6), composer6, 48);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 10:
                BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl = (BookingPersonalInfoViewModelImpl) obj3;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj2;
                if (!(formFieldGenericUiModel instanceof FormFieldUiModel)) {
                    return formFieldGenericUiModel;
                }
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) formFieldGenericUiModel;
                return formFieldUiModel.d == FormSectionTypeUiModel.EMAIL ? FormFieldUiModel.c(formFieldUiModel, false, null, new FormFieldReadOnlyUiModel((String) bookingPersonalInfoViewModelImpl.m.getValue(), false), null, null, null, null, false, false, 1019) : formFieldGenericUiModel;
            case 11:
                final CancellationReasonsActivity cancellationReasonsActivity = (CancellationReasonsActivity) obj3;
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                CancellationReasonsActivity.Companion companion6 = CancellationReasonsActivity.q;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-557252651, new Function2() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer$Companion$Empty$1 composer$Companion$Empty$1;
                            CancellationReasonsActivity cancellationReasonsActivity2 = cancellationReasonsActivity;
                            ViewModelLazy viewModelLazy = cancellationReasonsActivity2.p;
                            Composer composer8 = (Composer) obj4;
                            int iIntValue8 = ((Integer) obj5).intValue();
                            CancellationReasonsActivity.Companion companion7 = CancellationReasonsActivity.q;
                            if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                CancellationReasonsViewModel cancellationReasonsViewModel = (CancellationReasonsViewModel) viewModelLazy.getF71699b();
                                CancellationReasonsViewModel cancellationReasonsViewModel2 = (CancellationReasonsViewModel) viewModelLazy.getF71699b();
                                boolean zY = composer8.y(cancellationReasonsViewModel2);
                                Object objX = composer8.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    CancellationReasonsActivity$onCreate$1$1$1$1 cancellationReasonsActivity$onCreate$1$1$1$1 = new CancellationReasonsActivity$onCreate$1$1$1$1(1, cancellationReasonsViewModel2, CancellationReasonsViewModel.class, "onCancellationReasonSelected", "onCancellationReasonSelected(Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;)V", 0);
                                    composer8.q(cancellationReasonsActivity$onCreate$1$1$1$1);
                                    objX = cancellationReasonsActivity$onCreate$1$1$1$1;
                                }
                                Function1 function1 = (Function1) ((KFunction) objX);
                                boolean zY2 = composer8.y(cancellationReasonsActivity2);
                                Object objX2 = composer8.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                    CancellationReasonsActivity$onCreate$1$1$2$1 cancellationReasonsActivity$onCreate$1$1$2$1 = new CancellationReasonsActivity$onCreate$1$1$2$1(0, cancellationReasonsActivity2, CancellationReasonsActivity.class, "onBackPressed", "onBackPressed()V", 0);
                                    composer8.q(cancellationReasonsActivity$onCreate$1$1$2$1);
                                    objX2 = cancellationReasonsActivity$onCreate$1$1$2$1;
                                } else {
                                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX2);
                                boolean zY3 = composer8.y(cancellationReasonsActivity2);
                                Object objX3 = composer8.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new w1(cancellationReasonsActivity2, 15);
                                    composer8.q(objX3);
                                }
                                CancellationReasonsComposableKt.a(cancellationReasonsViewModel, function1, function0, (Function0) objX3, composer8, 0);
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
            case 12:
                final CancellationReasonsBffActivity cancellationReasonsBffActivity = (CancellationReasonsBffActivity) obj3;
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                CancellationReasonsBffActivity.Companion companion7 = CancellationReasonsBffActivity.q;
                if (composer8.p(iIntValue8 & 1, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1436430505, new Function2() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer$Companion$Empty$1 composer$Companion$Empty$1;
                            CancellationReasonsBffActivity cancellationReasonsBffActivity2 = cancellationReasonsBffActivity;
                            ViewModelLazy viewModelLazy = cancellationReasonsBffActivity2.p;
                            Composer composer9 = (Composer) obj4;
                            int iIntValue9 = ((Integer) obj5).intValue();
                            CancellationReasonsBffActivity.Companion companion8 = CancellationReasonsBffActivity.q;
                            if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                CancellationReasonsBffViewModel cancellationReasonsBffViewModel = (CancellationReasonsBffViewModel) viewModelLazy.getF71699b();
                                CancellationReasonsBffViewModel cancellationReasonsBffViewModel2 = (CancellationReasonsBffViewModel) viewModelLazy.getF71699b();
                                boolean zY = composer9.y(cancellationReasonsBffViewModel2);
                                Object objX = composer9.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX == composer$Companion$Empty$2) {
                                    CancellationReasonsBffActivity$onCreate$1$1$1$1 cancellationReasonsBffActivity$onCreate$1$1$1$1 = new CancellationReasonsBffActivity$onCreate$1$1$1$1(1, cancellationReasonsBffViewModel2, CancellationReasonsBffViewModel.class, "onCancellationReasonSelected", "onCancellationReasonSelected(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$CancellationReason;)V", 0);
                                    composer9.q(cancellationReasonsBffActivity$onCreate$1$1$1$1);
                                    objX = cancellationReasonsBffActivity$onCreate$1$1$1$1;
                                }
                                Function1 function1 = (Function1) ((KFunction) objX);
                                boolean zY2 = composer9.y(cancellationReasonsBffActivity2);
                                Object objX2 = composer9.x();
                                if (zY2 || objX2 == composer$Companion$Empty$2) {
                                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                    CancellationReasonsBffActivity$onCreate$1$1$2$1 cancellationReasonsBffActivity$onCreate$1$1$2$1 = new CancellationReasonsBffActivity$onCreate$1$1$2$1(0, cancellationReasonsBffActivity2, CancellationReasonsBffActivity.class, "onBackPressed", "onBackPressed()V", 0);
                                    composer9.q(cancellationReasonsBffActivity$onCreate$1$1$2$1);
                                    objX2 = cancellationReasonsBffActivity$onCreate$1$1$2$1;
                                } else {
                                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                }
                                Function0 function0 = (Function0) ((KFunction) objX2);
                                boolean zY3 = composer9.y(cancellationReasonsBffActivity2);
                                Object objX3 = composer9.x();
                                if (zY3 || objX3 == composer$Companion$Empty$1) {
                                    objX3 = new w1(cancellationReasonsBffActivity2, 16);
                                    composer9.q(objX3);
                                }
                                CancellationReasonsBffComposableKt.a(cancellationReasonsBffViewModel, function1, function0, (Function0) objX3, composer9, 0);
                            } else {
                                composer9.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer8), composer8, 48);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 13:
                StoreModeDataUiModel storeModeDataUiModel = (StoreModeDataUiModel) obj3;
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                float f3 = CatalogStoreModeKt.f64850a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    PushCardImageLoaderKt.a(null, ((StoreModeDataUiModel.StoreModeSimpleUiModel) storeModeDataUiModel).f65054c.f51778b, null, composer9, 0, 5);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 14:
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj3;
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                float f4 = CatalogStoreModeKt.f64850a;
                if (composer10.p(iIntValue10 & 1, (iIntValue10 & 3) != 2)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    String str2 = storeModeViewState.f65085f.f65746b;
                    PushCardImageLoaderKt.a(null, str2 == null ? "" : str2, null, composer10, 0, 5);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 15:
                ChatLifecycleObserver chatLifecycleObserver = (ChatLifecycleObserver) obj3;
                chatLifecycleObserver.f50689b.b(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                chatLifecycleObserver.d.a(ContactUsTrackingUiModelKt.a(ContactUsTrackingUiModel.OnPowerfrontNotificationClickEvent.f51151a));
                return Unit.f71739a;
            case 16:
                CategoryUiModel categoryUiModel = (CategoryUiModel) obj3;
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                ComposableSingletons$CatalogSubcategoryScreenKt composableSingletons$CatalogSubcategoryScreenKt = ComposableSingletons$CatalogSubcategoryScreenKt.f55307a;
                if (composer11.p(iIntValue11 & 1, (iIntValue11 & 3) != 2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    CatalogViewState catalogViewState = (CatalogViewState) MocksKt.f55371e.getF71699b();
                    Object objX = composer11.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new nn(27);
                        composer11.q(objX);
                    }
                    Function0 function0 = (Function0) objX;
                    Object objX2 = composer11.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new rn(6);
                        composer11.q(objX2);
                    }
                    Function1 function1 = (Function1) objX2;
                    Object objX3 = composer11.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new rn(7);
                        composer11.q(objX3);
                    }
                    Function1 function2 = (Function1) objX3;
                    Object objX4 = composer11.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new rn(8);
                        composer11.q(objX4);
                    }
                    Function1 function3 = (Function1) objX4;
                    Object objX5 = composer11.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new rn(9);
                        composer11.q(objX5);
                    }
                    Function1 function4 = (Function1) objX5;
                    Object objX6 = composer11.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new nn(28);
                        composer11.q(objX6);
                    }
                    CatalogSubcategoryScreenKt.a(null, catalogViewState, categoryUiModel, function0, function1, function2, function3, function4, (Function0) objX6, composer11, 115043328);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 17:
                RememberManager rememberManager = (RememberManager) obj3;
                ((Integer) obj).getClass();
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                if (obj2 instanceof ComposeNodeLifecycleCallback) {
                    rememberManager.b((ComposeNodeLifecycleCallback) obj2);
                }
                if (obj2 instanceof RememberObserverHolder) {
                    rememberManager.g((RememberObserverHolder) obj2);
                }
                if (obj2 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj2).c();
                }
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                CoreTextFieldKt.d((TextFieldSelectionManager) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                FiniteAnimationSpec finiteAnimationSpec = (FiniteAnimationSpec) obj3;
                float f5 = DatePickerKt.f6780a;
                return finiteAnimationSpec;
            case 20:
                Composer composer12 = (Composer) obj;
                ((Integer) obj2).getClass();
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.f6100a;
                composer12.L(666084174);
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                String str3 = ((TextContextMenuItem) obj3).f6069b;
                composer12.F();
                return str3;
            case 21:
                ((Integer) obj2).getClass();
                DialogHostKt.a((DialogNavigator) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                final DispatchCountryActivity dispatchCountryActivity = (DispatchCountryActivity) obj3;
                Composer composer13 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                DispatchCountryActivity.Companion companion8 = DispatchCountryActivity.q;
                if (composer13.p(iIntValue12 & 1, (iIntValue12 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1564631723, new Function2() { // from class: com.vuitton.android.presentation.screen.options.dispatch.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer14 = (Composer) obj4;
                            int iIntValue13 = ((Integer) obj5).intValue();
                            DispatchCountryActivity.Companion companion9 = DispatchCountryActivity.q;
                            if (composer14.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                DispatchCountryActivity dispatchCountryActivity2 = dispatchCountryActivity;
                                DispatchCountryViewModel dispatchCountryViewModel = (DispatchCountryViewModel) dispatchCountryActivity2.p.getF71699b();
                                boolean zY = composer14.y(dispatchCountryActivity2);
                                Object objX7 = composer14.x();
                                if (zY || objX7 == Composer.Companion.f7939a) {
                                    DispatchCountryActivity$onCreate$1$1$1$1 dispatchCountryActivity$onCreate$1$1$1$1 = new DispatchCountryActivity$onCreate$1$1$1$1(0, dispatchCountryActivity2, DispatchCountryActivity.class, "finish", "finish()V", 0);
                                    composer14.q(dispatchCountryActivity$onCreate$1$1$1$1);
                                    objX7 = dispatchCountryActivity$onCreate$1$1$1$1;
                                }
                                DispatchComposableKt.a(dispatchCountryViewModel, (Function0) ((KFunction) objX7), composer14, 0);
                            } else {
                                composer14.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer13), composer13, 48);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 23:
                final DistantRepairAssessmentTermsFragment distantRepairAssessmentTermsFragment = (DistantRepairAssessmentTermsFragment) obj3;
                Composer composer14 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                DistantRepairAssessmentTermsFragment.Companion companion9 = DistantRepairAssessmentTermsFragment.F;
                if (composer14.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(2122071422, new Function2() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer15 = (Composer) obj4;
                            int iIntValue14 = ((Integer) obj5).intValue();
                            DistantRepairAssessmentTermsFragment.Companion companion10 = DistantRepairAssessmentTermsFragment.F;
                            if (composer15.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                                DistantRepairAssessmentTermsFragment distantRepairAssessmentTermsFragment2 = distantRepairAssessmentTermsFragment;
                                boolean zY = composer15.y(distantRepairAssessmentTermsFragment2);
                                Object objX7 = composer15.x();
                                if (zY || objX7 == Composer.Companion.f7939a) {
                                    DistantRepairAssessmentTermsFragment$onCreateView$1$1$1$1$1 distantRepairAssessmentTermsFragment$onCreateView$1$1$1$1$1 = new DistantRepairAssessmentTermsFragment$onCreateView$1$1$1$1$1(0, distantRepairAssessmentTermsFragment2, FragmentExtKt.class, "onNavigateBackPressed", "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V", 1);
                                    composer15.q(distantRepairAssessmentTermsFragment$onCreateView$1$1$1$1$1);
                                    objX7 = distantRepairAssessmentTermsFragment$onCreateView$1$1$1$1$1;
                                }
                                TermsAndConditionsComposableKt.a((Function0) ((KFunction) objX7), composer15, 0);
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
            case 24:
                float fFloatValue = ((Float) obj2).floatValue();
                ((PointerInputChange) obj).a();
                ((Ref$FloatRef) obj3).f71918b = fFloatValue;
                return Unit.f71739a;
            case 25:
                final ExclusiveSalesActivity exclusiveSalesActivity = (ExclusiveSalesActivity) obj3;
                Composer composer15 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                ExclusiveSalesActivity.Companion companion10 = ExclusiveSalesActivity.q;
                if (composer15.p(iIntValue14 & 1, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1915728657, new Function2() { // from class: com.vuitton.android.presentation.screen.exclusivesales.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            Composer composer16 = (Composer) obj4;
                            int iIntValue15 = ((Integer) obj5).intValue();
                            ExclusiveSalesActivity.Companion companion11 = ExclusiveSalesActivity.q;
                            if (composer16.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                                OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                                ExclusiveSalesActivity exclusiveSalesActivity2 = exclusiveSalesActivity;
                                ExclusiveSalesViewModel exclusiveSalesViewModel = (ExclusiveSalesViewModel) exclusiveSalesActivity2.p.getF71699b();
                                boolean zY = composer16.y(exclusiveSalesActivity2);
                                Object objX7 = composer16.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX7 == composer$Companion$Empty$2) {
                                    ExclusiveSalesActivity$onCreate$1$1$1$1 exclusiveSalesActivity$onCreate$1$1$1$1 = new ExclusiveSalesActivity$onCreate$1$1$1$1(0, exclusiveSalesActivity2, ExclusiveSalesActivity.class, "finish", "finish()V", 0);
                                    composer16.q(exclusiveSalesActivity$onCreate$1$1$1$1);
                                    objX7 = exclusiveSalesActivity$onCreate$1$1$1$1;
                                }
                                Function0 function5 = (Function0) ((KFunction) objX7);
                                boolean zY2 = composer16.y(exclusiveSalesActivity2);
                                Object objX8 = composer16.x();
                                if (zY2 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new ExclusiveSalesActivity$onCreate$1$1$2$1(1, exclusiveSalesActivity2, ExclusiveSalesActivity.class, "routeToProductList", "routeToProductList(Ljava/lang/String;)V", 0);
                                    composer16.q(objX8);
                                }
                                ExclusiveSalesComposableKt.a(exclusiveSalesViewModel, function5, (Function1) ((KFunction) objX8), composer16, 0);
                            } else {
                                composer16.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer15), composer15, 48);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 26:
                LVLightUpDeviceType lVLightUpDeviceType = (LVLightUpDeviceType) obj2;
                FaqCategoriesActivity.Companion companion11 = FaqCategoriesActivity.s;
                lVLightUpDeviceType.getClass();
                ((FaqCategoriesActivity) obj3).I().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.FaqCategoryClickEvent((String) obj, lVLightUpDeviceType)));
                return Unit.f71739a;
            case 27:
                LVColorScheme lVColorScheme = (LVColorScheme) obj3;
                Composer composer16 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                if (composer16.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("FeedLiveCalendarIconButton$lambda$0"), LVAppDesignKitTheme.d(composer16).o);
                    Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer16).I0, composer16, 0);
                    int i3 = FeedNotifyIconButtonsKt.WhenMappings.f57873a[lVColorScheme.ordinal()];
                    if (i3 == 1) {
                        composer16.L(1430072858);
                        j2 = LVAppDesignKitTheme.c(composer16).f48361b.f48382k;
                        composer16.F();
                    } else {
                        if (i3 != 2) {
                            throw o60.v(composer16, 1430070081);
                        }
                        composer16.L(1430075616);
                        j2 = LVAppDesignKitTheme.c(composer16).f48361b.m;
                        composer16.F();
                    }
                    IconKt.a(painterA, StringResources_androidKt.c(composer16, R.string.feed_calendar_add_cta), modifierO, j2, composer16, 8, 0);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 28:
                final FiltersOverlayActivity filtersOverlayActivity = (FiltersOverlayActivity) obj3;
                Composer composer17 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                FiltersOverlayActivity.Companion companion12 = FiltersOverlayActivity.s;
                if (composer17.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    final MutableState mutableStateB = SnapshotStateKt.b(filtersOverlayActivity.H().getD(), composer17);
                    Map map = ((FilterOverlayViewState) mutableStateB.getF10755b()).f58147a;
                    List list = (map == null || (productListOptionUiModel3 = (ProductListOptionUiModel) map.get(filtersOverlayActivity.I())) == null || (productFiltersUiModel2 = productListOptionUiModel3.f62977b) == null) ? null : productFiltersUiModel2.f62974b;
                    if (list == null || list.isEmpty()) {
                        Map map2 = ((FilterOverlayViewState) mutableStateB.getF10755b()).f58147a;
                        List list2 = (map2 == null || (productListOptionUiModel2 = (ProductListOptionUiModel) map2.get(filtersOverlayActivity.I())) == null || (productFiltersUiModel = productListOptionUiModel2.f62977b) == null) ? null : productFiltersUiModel.f62975c;
                        if (list2 == null || list2.isEmpty()) {
                            z2 = true;
                        } else {
                            Map map3 = ((FilterOverlayViewState) mutableStateB.getF10755b()).f58147a;
                            List list3 = (map3 == null || (productListOptionUiModel = (ProductListOptionUiModel) map3.get(filtersOverlayActivity.I())) == null) ? null : productListOptionUiModel.f62976a;
                            if (list3 == null || list3.isEmpty()) {
                                z2 = true;
                            }
                        }
                    }
                    ThemeKt.a(null, ComposableLambdaKt.b(686865252, new Function2() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            ProductListOptionUiModel productListOptionUiModel4;
                            ProductFiltersUiModel productFiltersUiModel3;
                            ProductListOptionUiModel productListOptionUiModel5;
                            Composer composer18 = (Composer) obj4;
                            int iIntValue17 = ((Integer) obj5).intValue();
                            FiltersOverlayActivity.Companion companion13 = FiltersOverlayActivity.s;
                            if (composer18.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                                OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                FiltersOverlayActivity filtersOverlayActivity2 = filtersOverlayActivity;
                                boolean zY = composer18.y(filtersOverlayActivity2);
                                Object objX7 = composer18.x();
                                List list4 = null;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY || objX7 == composer$Companion$Empty$2) {
                                    objX7 = new FiltersOverlayActivity$onCreate$2$1$1$1(filtersOverlayActivity2, null);
                                    composer18.q(objX7);
                                }
                                EffectsKt.e(composer18, unit, (Function2) objX7);
                                boolean z3 = filtersOverlayActivity2.o;
                                MutableState mutableState = mutableStateB;
                                Map map4 = ((FilterOverlayViewState) mutableState.getF10755b()).f58147a;
                                List list5 = (map4 == null || (productListOptionUiModel5 = (ProductListOptionUiModel) map4.get(filtersOverlayActivity2.I())) == null) ? null : productListOptionUiModel5.f62976a;
                                if (list5 == null) {
                                    list5 = EmptyList.f71768b;
                                }
                                List list6 = list5;
                                Map map5 = ((FilterOverlayViewState) mutableState.getF10755b()).f58147a;
                                if (map5 != null && (productListOptionUiModel4 = (ProductListOptionUiModel) map5.get(filtersOverlayActivity2.I())) != null && (productFiltersUiModel3 = productListOptionUiModel4.f62977b) != null) {
                                    list4 = productFiltersUiModel3.f62975c;
                                }
                                if (list4 == null) {
                                    list4 = EmptyList.f71768b;
                                }
                                List list7 = list4;
                                boolean z4 = ((FilterOverlayViewState) mutableState.getF10755b()).f58148b;
                                FiltersDropDownType filtersDropDownType = (FiltersDropDownType) filtersOverlayActivity2.q.getF71699b();
                                boolean zY2 = composer18.y(filtersOverlayActivity2);
                                Object objX8 = composer18.x();
                                if (zY2 || objX8 == composer$Companion$Empty$2) {
                                    FiltersOverlayActivity$onCreate$2$1$2$1 filtersOverlayActivity$onCreate$2$1$2$1 = new FiltersOverlayActivity$onCreate$2$1$2$1(0, filtersOverlayActivity2, FiltersOverlayActivity.class, "finish", "finish()V", 0);
                                    composer18.q(filtersOverlayActivity$onCreate$2$1$2$1);
                                    objX8 = filtersOverlayActivity$onCreate$2$1$2$1;
                                }
                                Function0 function5 = (Function0) ((KFunction) objX8);
                                boolean zY3 = composer18.y(filtersOverlayActivity2) | composer18.K(mutableState);
                                Object objX9 = composer18.x();
                                if (zY3 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new gv(filtersOverlayActivity2, mutableState, 12);
                                    composer18.q(objX9);
                                }
                                Function1 function6 = (Function1) objX9;
                                boolean zY4 = composer18.y(filtersOverlayActivity2);
                                Object objX10 = composer18.x();
                                if (zY4 || objX10 == composer$Companion$Empty$2) {
                                    FiltersOverlayActivity$onCreate$2$1$4$1 filtersOverlayActivity$onCreate$2$1$4$1 = new FiltersOverlayActivity$onCreate$2$1$4$1(1, filtersOverlayActivity2, FiltersOverlayActivity.class, "handleFilterClick", "handleFilterClick(Ljava/lang/String;)V", 0);
                                    composer18.q(filtersOverlayActivity$onCreate$2$1$4$1);
                                    objX10 = filtersOverlayActivity$onCreate$2$1$4$1;
                                }
                                FiltersOverlayScreenKt.b(z3, list6, list7, z4, filtersDropDownType, z2, function5, function6, (Function1) ((KFunction) objX10), composer18, 0);
                            } else {
                                composer18.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer17), composer17, 48);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            default:
                final ImmersiveArticleActivity immersiveArticleActivity = (ImmersiveArticleActivity) obj3;
                Composer composer18 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                ImmersiveArticleActivity.Companion companion13 = ImmersiveArticleActivity.H;
                if (composer18.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(1464866404, new Function2() { // from class: com.vuitton.android.presentation.screen.immersivearticle.a
                        /* JADX WARN: Code duplicated, block: B:80:0x02a4  */
                        /* JADX WARN: Code duplicated, block: B:84:0x02bb  */
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj4, Object obj5) {
                            String str4;
                            Composer$Companion$Empty$1 composer$Companion$Empty$2;
                            boolean z3;
                            boolean zY;
                            Object objX7;
                            Composer composer19 = (Composer) obj4;
                            int iIntValue18 = ((Integer) obj5).intValue();
                            ImmersiveArticleActivity.Companion companion14 = ImmersiveArticleActivity.H;
                            int i4 = 1;
                            int i5 = 0;
                            if (composer19.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                                OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                                final ImmersiveArticleActivity immersiveArticleActivity2 = immersiveArticleActivity;
                                MutableState mutableStateB2 = SnapshotStateKt.b(immersiveArticleActivity2.M().J, composer19);
                                Object objX8 = composer19.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                if (objX8 == composer$Companion$Empty$3) {
                                    objX8 = EffectsKt.j(EmptyCoroutineContext.f71840b, composer19);
                                    composer19.q(objX8);
                                }
                                final CoroutineScope coroutineScope = (CoroutineScope) objX8;
                                Context context = (Context) composer19.k(AndroidCompositionLocals_androidKt.f9936b);
                                if (((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58804h) {
                                    composer19.L(-1327423194);
                                    boolean zY2 = composer19.y(immersiveArticleActivity2);
                                    Object objX9 = composer19.x();
                                    if (zY2 || objX9 == composer$Companion$Empty$3) {
                                        objX9 = new u20(immersiveArticleActivity2, i5);
                                        composer19.q(objX9);
                                    }
                                    ScreenshotListenerKt.a((Function0) objX9, composer19, 0);
                                    composer19.F();
                                } else {
                                    composer19.L(-1327215618);
                                    composer19.F();
                                }
                                Unit unit = Unit.f71739a;
                                boolean zY3 = composer19.y(immersiveArticleActivity2);
                                Object objX10 = composer19.x();
                                if (zY3 || objX10 == composer$Companion$Empty$3) {
                                    objX10 = new ImmersiveArticleActivity$onCreate$1$1$2$1(immersiveArticleActivity2, null);
                                    composer19.q(objX10);
                                }
                                EffectsKt.e(composer19, unit, (Function2) objX10);
                                ImmersiveArticleUiModel immersiveArticleUiModel = ((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58801c;
                                boolean zK = composer19.K(mutableStateB2) | composer19.y(immersiveArticleActivity2);
                                Object objX11 = composer19.x();
                                if (zK || objX11 == composer$Companion$Empty$3) {
                                    objX11 = new ImmersiveArticleActivity$onCreate$1$1$3$1(immersiveArticleActivity2, mutableStateB2, null);
                                    composer19.q(objX11);
                                }
                                EffectsKt.e(composer19, immersiveArticleUiModel, (Function2) objX11);
                                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("onCreate$lambda$0$0");
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iHashCode = Long.hashCode(composer19.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer19.n();
                                Modifier modifierC = ComposedModifierKt.c(composer19, dTFunctionNameModifier);
                                ComposeUiNode.b0.getClass();
                                Function0 function5 = ComposeUiNode.Companion.f9641b;
                                if (composer19.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer19.B();
                                if (composer19.getS()) {
                                    composer19.C(function5);
                                } else {
                                    composer19.o();
                                }
                                Updater.c(composer19, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer19, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer19, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer19, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer19, modifierC, ComposeUiNode.Companion.d);
                                ImmersiveArticleUiModel immersiveArticleUiModel2 = ((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58801c;
                                SnapshotStateList snapshotStateList = immersiveArticleUiModel2 != null ? immersiveArticleUiModel2.f58793c : null;
                                if (snapshotStateList == null) {
                                    composer19.L(2017578037);
                                    composer19.F();
                                    str4 = "onCreate$lambda$0$0";
                                } else {
                                    composer19.L(2017578038);
                                    ImmersiveArticleViewModelImpl immersiveArticleViewModelImplM = immersiveArticleActivity2.M();
                                    PermissionsViewModel permissionsViewModel = (PermissionsViewModel) immersiveArticleActivity2.u.getF71699b();
                                    AudioPlayerViewModel audioPlayerViewModel = (AudioPlayerViewModel) immersiveArticleActivity2.t.getF71699b();
                                    String strK = immersiveArticleActivity2.K();
                                    if (strK == null) {
                                        strK = "";
                                    }
                                    String str5 = strK;
                                    boolean zBooleanValue = ((Boolean) immersiveArticleActivity2.A.getF71699b()).booleanValue();
                                    ImmersiveArticleType immersiveArticleTypeL = immersiveArticleActivity2.L();
                                    boolean zY4 = composer19.y(immersiveArticleActivity2);
                                    Object objX12 = composer19.x();
                                    if (zY4 || objX12 == composer$Companion$Empty$3) {
                                        ImmersiveArticleActivity$onCreate$1$1$4$1$1$1 immersiveArticleActivity$onCreate$1$1$4$1$1$1 = new ImmersiveArticleActivity$onCreate$1$1$4$1$1$1(0, immersiveArticleActivity2, ImmersiveArticleActivity.class, "exitWithFade", "exitWithFade()V", 0);
                                        composer19.q(immersiveArticleActivity$onCreate$1$1$4$1$1$1);
                                        objX12 = immersiveArticleActivity$onCreate$1$1$4$1$1$1;
                                    }
                                    Function0 function6 = (Function0) ((KFunction) objX12);
                                    boolean zY5 = composer19.y(immersiveArticleActivity2);
                                    Object objX13 = composer19.x();
                                    if (zY5 || objX13 == composer$Companion$Empty$3) {
                                        objX13 = new u20(immersiveArticleActivity2, i4);
                                        composer19.q(objX13);
                                    }
                                    Function0 function7 = (Function0) objX13;
                                    boolean zY6 = composer19.y(immersiveArticleActivity2);
                                    Object objX14 = composer19.x();
                                    if (zY6 || objX14 == composer$Companion$Empty$3) {
                                        objX14 = new l00(immersiveArticleActivity2, 7);
                                        composer19.q(objX14);
                                    }
                                    Function1 function8 = (Function1) objX14;
                                    boolean zY7 = composer19.y(coroutineScope) | composer19.y(immersiveArticleActivity2);
                                    Object objX15 = composer19.x();
                                    if (zY7 || objX15 == composer$Companion$Empty$3) {
                                        objX15 = new Function1() { // from class: com.vuitton.android.presentation.screen.immersivearticle.b
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj6) {
                                                WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel = (WallpaperArticleSectionUiModel) obj6;
                                                ImmersiveArticleActivity.Companion companion15 = ImmersiveArticleActivity.H;
                                                wallpaperArticleSectionUiModel.getClass();
                                                BuildersKt.c(coroutineScope, null, null, new ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1(immersiveArticleActivity2, wallpaperArticleSectionUiModel, null), 3);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer19.q(objX15);
                                    }
                                    Function1 function9 = (Function1) objX15;
                                    boolean zY8 = composer19.y(immersiveArticleActivity2);
                                    Object objX16 = composer19.x();
                                    if (zY8 || objX16 == composer$Companion$Empty$3) {
                                        ImmersiveArticleActivity$onCreate$1$1$4$1$5$1 immersiveArticleActivity$onCreate$1$1$4$1$5$1 = new ImmersiveArticleActivity$onCreate$1$1$4$1$5$1(1, immersiveArticleActivity2, ImmersiveArticleActivity.class, "onNavigateFromImmersiveArticle", "onNavigateFromImmersiveArticle(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;)V", 0);
                                        composer19.q(immersiveArticleActivity$onCreate$1$1$4$1$5$1);
                                        objX16 = immersiveArticleActivity$onCreate$1$1$4$1$5$1;
                                    }
                                    Function1 function10 = (Function1) ((KFunction) objX16);
                                    boolean zY9 = composer19.y(immersiveArticleActivity2);
                                    Object objX17 = composer19.x();
                                    if (zY9 || objX17 == composer$Companion$Empty$3) {
                                        ImmersiveArticleActivity$onCreate$1$1$4$1$6$1 immersiveArticleActivity$onCreate$1$1$4$1$6$1 = new ImmersiveArticleActivity$onCreate$1$1$4$1$6$1(1, immersiveArticleActivity2, ImmersiveArticleActivity.class, "onProductWishlistClick", "onProductWishlistClick(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;)V", 0);
                                        composer19.q(immersiveArticleActivity$onCreate$1$1$4$1$6$1);
                                        objX17 = immersiveArticleActivity$onCreate$1$1$4$1$6$1;
                                    }
                                    str4 = "onCreate$lambda$0$0";
                                    ImmersiveArticleComposableKt.a(immersiveArticleViewModelImplM, permissionsViewModel, audioPlayerViewModel, str5, zBooleanValue, immersiveArticleTypeL, snapshotStateList, function6, function7, function8, function9, function10, (Function1) ((KFunction) objX17), composer19, 0);
                                    composer19.F();
                                }
                                Modifier modifierO2 = new DTFunctionNameModifier(str4).o(SizeKt.f5052c);
                                boolean zY10 = composer19.y(context);
                                Object objX18 = composer19.x();
                                if (zY10) {
                                    composer$Companion$Empty$2 = composer$Companion$Empty$3;
                                } else {
                                    composer$Companion$Empty$2 = composer$Companion$Empty$3;
                                    if (objX18 == composer$Companion$Empty$2) {
                                    }
                                    Modifier modifierA = ModifierExtKt.a(modifierO2, null, (Function1) objX18, 3);
                                    if (!((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58799a || ((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58800b) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    boolean z4 = ((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58800b;
                                    zY = composer19.y(immersiveArticleActivity2);
                                    objX7 = composer19.x();
                                    if (zY || objX7 == composer$Companion$Empty$2) {
                                        objX7 = new ImmersiveArticleActivity$onCreate$1$1$4$3$1(0, immersiveArticleActivity2, ImmersiveArticleActivity.class, "exitWithFade", "exitWithFade()V", 0);
                                        composer19.q(objX7);
                                    }
                                    LvLoadingKt.b(modifierA, z3, null, z4, 0L, (Function0) ((KFunction) objX7), composer19, 0, 20);
                                    composer19.r();
                                }
                                objX18 = new ef(context, 6);
                                composer19.q(objX18);
                                Modifier modifierA2 = ModifierExtKt.a(modifierO2, null, (Function1) objX18, 3);
                                if (((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58799a) {
                                    z3 = true;
                                } else {
                                    z3 = true;
                                }
                                boolean z5 = ((ImmersiveArticleViewState) mutableStateB2.getF10755b()).f58800b;
                                zY = composer19.y(immersiveArticleActivity2);
                                objX7 = composer19.x();
                                if (zY) {
                                    objX7 = new ImmersiveArticleActivity$onCreate$1$1$4$3$1(0, immersiveArticleActivity2, ImmersiveArticleActivity.class, "exitWithFade", "exitWithFade()V", 0);
                                    composer19.q(objX7);
                                } else {
                                    objX7 = new ImmersiveArticleActivity$onCreate$1$1$4$3$1(0, immersiveArticleActivity2, ImmersiveArticleActivity.class, "exitWithFade", "exitWithFade()V", 0);
                                    composer19.q(objX7);
                                }
                                LvLoadingKt.b(modifierA2, z3, null, z5, 0L, (Function0) ((KFunction) objX7), composer19, 0, 20);
                                composer19.r();
                            } else {
                                composer19.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer18), composer18, 48);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ c(Object obj, int i2, int i3) {
        this.f20997b = i3;
        this.f20998c = obj;
    }
}
