package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.internal.AccessibilityServiceStateProvider_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarNavIcon;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarComposableKt;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackingUiModelKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModel;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideComposableKt;
import com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModel;
import com.vuitton.android.presentation.screen.authentication.accountactivation.components.AccountActivationComposableKt;
import com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt;
import com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModel;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationComposableKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.list.components.BookingListScreenKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingListViewState;
import com.vuitton.android.presentation.screen.booking.pass.components.BookingPassScreenKt;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassViewState;
import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.CertificateTransferComposableKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateStatusUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairContactComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.ContactabilitySectionKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityUiModel;
import com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.accessibility.components.AccessibilityPreferencesComposableKt;
import com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModel;
import com.vuitton.android.presentation.screen.options.appinfo.components.AppInfoComposableKt;
import com.vuitton.android.presentation.screen.options.appinfo.components.AppInfoScreenKt;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfoViewState;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.EditCustomizationBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingComposableKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyAddToCartBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80184c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80185e;

    public /* synthetic */ u(int i2, int i3, Object obj, Object obj2, Object obj3) {
        this.f80183b = i3;
        this.f80184c = obj;
        this.d = obj2;
        this.f80185e = obj3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80183b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.f80185e;
        Object obj4 = this.d;
        Object obj5 = this.f80184c;
        switch (i2) {
            case 0:
                AICompanionTracker aICompanionTracker = (AICompanionTracker) obj4;
                ((Integer) obj2).getClass();
                ((Function1) obj5).invoke((ContributionLinkUiModel) obj);
                String str = ((EditorialModuleUiModel.CarouselMUiModel) ((ChatMessageSectionUiModel.EditorialSection) obj3).f52901a).f50825a;
                aICompanionTracker.getClass();
                str.getClass();
                aICompanionTracker.f52910a.a(AICompanionTrackingUiModelKt.a(new AICompanionTrackingUiModel.OnHitRedirectCardEvent(str)));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AccessibilityPreferencesComposableKt.a((AccessibilityPreferencesViewModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                AccessibilityServiceStateProvider_androidKt.a((LifecycleOwner) obj4, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                AccountActivationComposableKt.a((AccountActivationViewModel) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                AddressAutocompleteComposableKt.d((AddressAutocompleteViewState) obj4, (AddressAutocompleteScreenContext) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                Modifier modifierE = (Modifier) obj5;
                MutableState mutableState = (MutableState) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "ProvidePlatformTextContextMenuToolbar$lambda$5");
                }
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new j6(false ? 1 : 0, mutableState);
                        composer.q(objX);
                    }
                    Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierE, (Function1) objX);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    composableLambdaImpl.invoke(composer, 0);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                AppInfoComposableKt.a((AppInfoViewModel) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                AppInfoScreenKt.b((AppInfoViewState) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                AssessmentBottomSheetScreenKt.b((AssessmentBottomSheetScreen) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                AudioGuideComposableKt.a((AudioGuideViewModel) obj4, (ContributionLinkNavigator) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                BeautyAddToCartBottomSheetContentKt.b((List) obj4, (Function1) obj5, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                BeautyAddToCartBottomSheetContentKt.d((Modifier) obj5, (BeautyAddToCartUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                BookingConfirmationComposableKt.a((BookingConfirmationViewModel) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                BookingListScreenKt.a((BookingListViewState) obj4, (Function2) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                BookingNavDisplayKt.a((NavBackStack) obj4, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                BookingPassScreenKt.a((BookingPassViewState) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                String str2 = (String) obj5;
                TopBarNavIcon topBarNavIcon = (TopBarNavIcon) obj4;
                Function0 function1 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                int i3 = BookingReservationScreenKt.f54457b;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, str2, null, topBarNavIcon, function1, null, null, null, null, composer2, 0, 0, 3991);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 17:
                CatalogTracker catalogTracker = (CatalogTracker) obj4;
                String str3 = (String) obj3;
                PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) obj;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                pLPEntryUiModel.getClass();
                String str4 = pLPEntryUiModel.f55374c;
                String str5 = pLPEntryUiModel.f55373b;
                ((Function2) obj5).invoke(str4, str5);
                catalogTracker.getClass();
                str3.getClass();
                str4.getClass();
                str5.getClass();
                catalogTracker.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnPlpClickEvent(str3, str4, str5, zBooleanValue)));
                return Unit.f71739a;
            case 18:
                StoreModeViewState storeModeViewState = (StoreModeViewState) obj4;
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj3;
                Function1 function2 = (Function1) obj5;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                float f2 = CatalogStoreModeKt.f64850a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    String str6 = storeModeViewState.f65089k;
                    boolean zY = composer3.y(storeModeViewModel) | composer3.K(function2) | composer3.y(storeModeViewState);
                    Object objX2 = composer3.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new q(storeModeViewModel, function2, storeModeViewState, 20);
                        composer3.q(objX2);
                    }
                    SearchBottomBarKt.a(0, 3, composer3, null, str6, (Function0) objX2, false);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 19:
                CatalogTracker catalogTracker2 = (CatalogTracker) obj4;
                String str7 = (String) obj3;
                Function1 function3 = (Function1) obj5;
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                catalogTracker2.getClass();
                str7.getClass();
                catalogTracker2.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.OnHitCarouselItemEvent(str7, iIntValue4)));
                if (contributionLinkUiModel != null) {
                    function3.invoke(contributionLinkUiModel);
                }
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                CertificateComposableKt.d((CertificateUiModel) obj4, (Function1) obj5, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                CertificateListItemsKt.c((Modifier) obj5, (CertificateStatusUiModel) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                CertificateTransferComposableKt.a((CertificateTransferViewModel) obj5, (Function0) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                ContactabilitySectionKt.b((ContactabilityUiModel) obj4, (Function1) obj5, (Modifier) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                ContextualSizingComposableKt.a((ArrayList) obj4, (Function0) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                CoreTextFieldKt.b((Modifier) obj5, (TextFieldSelectionManager) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(385));
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                DistantRepairContactComponentKt.c((String) obj5, (String) obj4, (PhoneNumber) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).getClass();
                EditAvatarComposableKt.a((EditAvatarViewModel) obj5, (Function0) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                EditCustomizationBottomSheetKt.a((CustomizationType) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                String str8 = (String) obj5;
                Function0 function4 = (Function0) obj4;
                FocusManager focusManager = (FocusManager) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer4.p(1 & iIntValue5, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    boolean zK = composer4.K(function4) | composer4.y(focusManager);
                    Object objX3 = composer4.x();
                    if (zK || objX3 == composer$Companion$Empty$1) {
                        objX3 = new ve(focusManager, function4);
                        composer4.q(objX3);
                    }
                    EditMyInfoComposableKt.b(str8, (Function0) objX3, composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ u(Object obj, Object obj2, Object obj3, int i2) {
        this.f80183b = i2;
        this.f80184c = obj;
        this.d = obj2;
        this.f80185e = obj3;
    }

    public /* synthetic */ u(Object obj, Object obj2, Function1 function1, int i2, int i3) {
        this.f80183b = i3;
        this.d = obj;
        this.f80185e = obj2;
        this.f80184c = function1;
    }

    public /* synthetic */ u(Object obj, Function1 function1, Object obj2, int i2) {
        this.f80183b = i2;
        this.d = obj;
        this.f80185e = obj2;
        this.f80184c = function1;
    }

    public /* synthetic */ u(Object obj, Function1 function1, Object obj2, int i2, int i3) {
        this.f80183b = i3;
        this.d = obj;
        this.f80184c = function1;
        this.f80185e = obj2;
    }
}
