package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.sightcall.core.consent.compose.ConsentDeclineViewKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressEditorComposableKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.ManualConfirmType;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteViewState;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.AddressAutocompleteTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModel;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookComposableKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.editavatar.components.AvatarSectionItemKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.details.components.bottomsheets.CancelWarningBottomSheetContentKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingLegalSectionKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.BookingAccountStatusComposableKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormField;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanBottomSheetKt;
import com.vuitton.android.presentation.screen.certificates.components.nfc.CertificateNfcScanScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireContentKt;
import com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairContactComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ContextualSizingScreenKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoHtmlItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoNativeItem;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PanelInfoSectionsItem;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyAddToCartBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyPictureComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModel;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.cancellationreasons.components.CancellationReasonsComposableKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Country;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class z implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81473c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81475f;

    public /* synthetic */ z(String str, String str2, Context context, Function0 function0) {
        this.f81472b = 26;
        this.f81474e = str;
        this.d = str2;
        this.f81475f = context;
        this.f81473c = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f81472b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = 1;
        Object obj3 = this.f81475f;
        Object obj4 = this.f81473c;
        Object obj5 = this.d;
        Object obj6 = this.f81474e;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AICompanionChatMessagesKt.d((ChatMessageUiModel) obj6, (Function0) obj4, (Function0) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AICompanionOnboardingScreenKt.a((Modifier) obj6, (AICompanionViewState) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.c((AddCertificateViewModel) obj6, (Function1) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                AddressAutocompleteViewModel addressAutocompleteViewModel = (AddressAutocompleteViewModel) obj6;
                AddressEditorViewModel addressEditorViewModel = (AddressEditorViewModel) obj5;
                Function0 function0 = (Function0) obj4;
                MutableState mutableState = (MutableState) obj3;
                String str = (String) obj;
                ManualConfirmType manualConfirmType = (ManualConfirmType) obj2;
                str.getClass();
                manualConfirmType.getClass();
                int i4 = AddressAutocompleteComposableKt.WhenMappings.f52091a[manualConfirmType.ordinal()];
                if (i4 == 1) {
                    addressAutocompleteViewModel.N1(new AddressAutocompleteTrackingUiModel.AutocompleteManualConfirmClickedEvent(((AddressAutocompleteViewState) mutableState.getF10755b()).f52118c.length()));
                } else {
                    if (i4 != 2) {
                        v40.g();
                        return null;
                    }
                    addressAutocompleteViewModel.N1(new AddressAutocompleteTrackingUiModel.AutocompleteManualAddressClickedEvent(((AddressAutocompleteViewState) mutableState.getF10755b()).f52118c.length()));
                }
                addressEditorViewModel.w8(new AutocompleteAddressResultUiModel(str, null, null, null, null, null, 62, null), false);
                function0.mo47invoke();
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                AddressBookComposableKt.a((AddressBookViewModel) obj6, (Function0) obj4, (Function0) obj5, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                AddressBookContentKt.b((Modifier) obj6, (InAppDispatch) obj5, (AccountAddressUiModel) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                AddressEditorComposableKt.a((AddressEditorViewModel) obj6, (Function0) obj4, (Function0) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                AudioGuideUiModel audioGuideUiModel = (AudioGuideUiModel) obj6;
                AudioGuideTracker audioGuideTracker = (AudioGuideTracker) obj5;
                Function0 function1 = (Function0) obj4;
                Function1 function2 = (Function1) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    FloatingTopBarType floatingTopBarType = FloatingTopBarType.Close;
                    LVColorScheme lVColorSchemeA = FeatureThemeMapperKt.a(audioGuideUiModel.f53199f);
                    String strC = StringResources_androidKt.c(composer, R.string.alt_close);
                    boolean zY = composer.y(audioGuideTracker) | composer.K(function1);
                    Object objX = composer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new ga(audioGuideTracker, function1, 5);
                        composer.q(objX);
                    }
                    LVFloatingTopBarKt.a(null, floatingTopBarType, null, lVColorSchemeA, strC, (Function0) objX, ComposableLambdaKt.b(1082999256, new s8(audioGuideUiModel, audioGuideTracker, function2, i3), composer), null, composer, 1572912, 133);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                AvatarSectionItemKt.a((Modifier) obj6, (AvatarSectionUiModel) obj4, (String) obj5, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                Modifier modifierE = (Modifier) obj6;
                MutableState mutableState2 = (MutableState) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj5;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "ProvideBasicTextContextMenu$lambda$4");
                }
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Object objX2 = composer2.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new j6(4, mutableState2);
                        composer2.q(objX2);
                    }
                    Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierE, (Function1) objX2);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function3);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    composableLambdaImpl.invoke(composer2, 0);
                    Object objX3 = composer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new d0(11, mutableState2);
                        composer2.q(objX3);
                    }
                    basicTextContextMenuProvider.b((Function0) objX3, composer2, 6);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                BeautyAddToCartBottomSheetContentKt.g((Modifier) obj6, (BeautyAddToCartUiModel) obj5, (String) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                BeautyDualColorComparatorKt.b((Modifier) obj6, (TryOnProductUiModel) obj5, (TryOnProductUiModel) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                BeautyPictureComposableKt.b((BeautyVtoViewModel) obj6, (Function0) obj4, (Function0) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                BeautyPictureComposableKt.c((BeautyVtoViewState) obj6, (Function0) obj4, (Function0) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                BookingAccountStatusComposableKt.a((BookingPersonalInfoViewModel) obj6, (SnackbarHostState) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                BookingPersonalInfoViewState bookingPersonalInfoViewState = (BookingPersonalInfoViewState) obj6;
                Function1 function4 = (Function1) obj5;
                Function0 function5 = (Function0) obj4;
                Function1 function6 = (Function1) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    BookingLegalSectionKt.a(bookingPersonalInfoViewState.g, function4, function5, function6, null, composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                CancelWarningBottomSheetContentKt.a((BookingUiModel) obj6, (BookingCTAState) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                CancellationReasonsBffComposableKt.a((CancellationReasonsBffViewModel) obj6, (Function1) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                CancellationReasonsComposableKt.a((CancellationReasonsViewModel) obj6, (Function1) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                CertificateFormField certificateFormField = (CertificateFormField) obj6;
                MutableState mutableState3 = (MutableState) obj3;
                int iIntValue4 = ((Integer) obj).intValue();
                ListPickerItem listPickerItem = (ListPickerItem) obj2;
                Regex regex = CertificateFormField.l;
                listPickerItem.getClass();
                ((MutableState) obj4).setValue(listPickerItem);
                mutableState3.setValue((Country) ((List) ((MutableState) obj5).getF10755b()).get(iIntValue4));
                Country country = (Country) mutableState3.getF10755b();
                ((SnapshotMutableStateImpl) certificateFormField.f55667j).setValue(country != null ? country.f68160a : null);
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                CertificateListItemsKt.a((Modifier) obj6, (CertificateCapucineUiModel) obj4, (Function1) obj5, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                CertificateNfcScanBottomSheetKt.b((NfcScanState) obj6, (Function0) obj4, (Function0) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                CertificateNfcScanScreenKt.b((Modifier) obj6, (ContactUsUiModel) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                CertificateVisionnaireContentKt.a((CertificateVisionnaireUiModel) obj6, (String) obj3, (Function0) obj4, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                CertificateVisionnaireContentKt.b((String) obj6, (String) obj4, (String) obj5, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                PanelInfoItem panelInfoItem = (PanelInfoItem) obj6;
                Function3 function7 = (Function3) obj4;
                Function3 function8 = (Function3) obj5;
                Function3 function9 = (Function3) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    if (panelInfoItem instanceof PanelInfoHtmlItem) {
                        composer4.L(456106348);
                        function7.A(panelInfoItem, composer4, 0);
                        composer4.F();
                    } else if (panelInfoItem instanceof PanelInfoNativeItem) {
                        composer4.L(456108526);
                        function8.A(panelInfoItem, composer4, 0);
                        composer4.F();
                    } else {
                        if (!(panelInfoItem instanceof PanelInfoSectionsItem)) {
                            throw o60.v(composer4, 456104592);
                        }
                        composer4.L(456110832);
                        function9.A(panelInfoItem, composer4, 0);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 26:
                return ConsentDeclineViewKt.ConsentDeclineView$lambda$0((String) obj6, (String) obj5, (Context) obj3, (Function0) obj4, (Composer) obj, ((Integer) obj2).intValue());
            case 27:
                ((Integer) obj2).getClass();
                ContextualSizingScreenKt.a((ArrayList) obj6, (ContextualSizingTracker) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                DistantRepairContactComponentKt.a((String) obj6, (FormUiModel) obj4, (Function2) obj5, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                DistantRepairInitiateComponentKt.c((DistantRepairContactMethod) obj6, (String) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ z(Modifier modifier, Object obj, Object obj2, Function0 function0, int i2, int i3) {
        this.f81472b = i3;
        this.f81474e = modifier;
        this.d = obj;
        this.f81475f = obj2;
        this.f81473c = function0;
    }

    public /* synthetic */ z(Serializable serializable, Object obj, Function0 function0, Function1 function1, int i2, int i3) {
        this.f81472b = i3;
        this.f81474e = serializable;
        this.d = obj;
        this.f81473c = function0;
        this.f81475f = function1;
    }

    public /* synthetic */ z(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f81472b = i2;
        this.f81474e = obj;
        this.f81473c = obj2;
        this.d = obj3;
        this.f81475f = obj4;
    }

    public /* synthetic */ z(Object obj, Object obj2, Object obj3, Object obj4, int i2, int i3) {
        this.f81472b = i3;
        this.f81474e = obj;
        this.f81473c = obj2;
        this.d = obj3;
        this.f81475f = obj4;
    }

    public /* synthetic */ z(Object obj, Object obj2, Function0 function0, Function0 function1, int i2, int i3) {
        this.f81472b = i3;
        this.f81474e = obj;
        this.f81475f = obj2;
        this.f81473c = function0;
        this.d = function1;
    }

    public /* synthetic */ z(int i2, Object obj, Object obj2, Object obj3, Function0 function0) {
        this.f81472b = i2;
        this.f81474e = obj;
        this.d = obj2;
        this.f81473c = function0;
        this.f81475f = obj3;
    }
}
