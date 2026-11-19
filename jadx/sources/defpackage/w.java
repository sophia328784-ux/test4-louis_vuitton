package defpackage;

import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.window.DialogWindowProvider;
import androidx.navigation.NavHostController;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResult;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVTooltipKt;
import com.vuitton.android.designkit.components.components.TooltipGravity;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorNavHostKt;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.editavatar.EditAvatarScreenKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.components.history.AICompanionHistoryScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreen;
import com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.list.components.BookingListComposableKt;
import com.vuitton.android.presentation.screen.booking.list.components.ExtendExperienceCardKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingLegalSectionKt;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryComposableKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageScreenKt;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateRubyUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentPreliminaryBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.CountryUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber;
import com.vuitton.android.presentation.screen.feed.components.bottomsheets.CalendarEventBottomSheetContentKt;
import com.vuitton.android.presentation.screen.feed.components.c;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleEventViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleFashionShowViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleEventSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import com.vuitton.android.presentation.screen.options.accessibility.components.AccessibilityPreferencesScreenKt;
import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesViewState;
import com.vuitton.android.presentation.screen.options.notifications.components.ExpandableHeaderKt;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailComposableKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeReviewScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreSearchBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.CountrySelectorKt;
import com.vuitton.android.presentation.screen.pdp.models.FindInStoreViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyLooksBottomBarKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import com.vuitton.foundation.model.domain.model.cart.GiftDraftUiModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80710c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80712f;
    public final /* synthetic */ Object g;

    public /* synthetic */ w(Function2 function2, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4) {
        this.f80709b = 17;
        this.g = function2;
        this.f80711e = mutableState;
        this.f80710c = mutableState2;
        this.d = mutableState3;
        this.f80712f = mutableState4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2;
        boolean z;
        int i3 = this.f80709b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i4 = 7;
        Object obj3 = this.g;
        Object obj4 = this.f80712f;
        Object obj5 = this.d;
        Object obj6 = this.f80710c;
        Object obj7 = this.f80711e;
        switch (i3) {
            case 0:
                ((Integer) obj2).getClass();
                AICompanionChatMessagesKt.c((ChatMessageUiModel) obj7, (Function1) obj6, (Function2) obj3, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AICompanionHistoryScreenKt.a((AICompanionViewState) obj7, (Function0) obj4, (Function1) obj6, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                AccessibilityPreferencesScreenKt.a((Modifier) obj7, (AccessibilityPreferencesViewState) obj3, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                AddressEditorNavHostKt.a((NavHostController) obj7, (AddressEditorViewModel) obj6, (AddressAutocompleteViewModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                AssessmentPreliminaryBffComponentKt.c((CareServiceDetailUiModel.Assessment) obj7, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                BeautyLooksBottomBarKt.a((TryOnProductUiModel) obj7, (LookUiModel) obj5, (Function0) obj4, (Function1) obj6, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                BookingConfirmationScreenKt.c((List) obj7, (Function1) obj6, (Function1) obj5, (Function2) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                BookingLegalSectionKt.a((BookingExternalContent) obj7, (Function1) obj6, (Function0) obj4, (Function1) obj5, (Modifier) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                BookingListComposableKt.a((BookingListViewModelImpl) obj7, (SnackbarHostState) obj4, (Function1) obj6, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                BookingSummaryComposableKt.a((PrebookSummaryViewModel) obj7, (SnackbarHostState) obj5, (Function0) obj4, (Function2) obj3, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                CalendarEventBottomSheetContentKt.a((CalendarEventUiModel) obj7, (FeedTab) obj6, (c) obj5, (c) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                CertificateListItemsKt.b((Modifier) obj7, (CertificateDiamondUiModel) obj4, (Function2) obj3, (Function1) obj6, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                CertificateListItemsKt.f((Modifier) obj7, (CertificateRubyUiModel) obj3, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                CountrySelectorKt.a((Modifier) obj7, (List) obj5, (Integer) obj4, (String) obj3, (Function1) obj6, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 14:
                Function3 function3 = (Function3) obj6;
                PhoneNumber phoneNumber = (PhoneNumber) obj5;
                MutableState mutableState = (MutableState) obj4;
                MutableState mutableState2 = (MutableState) obj3;
                int iIntValue = ((Integer) obj).intValue();
                ListPickerItem listPickerItem = (ListPickerItem) obj2;
                listPickerItem.getClass();
                mutableState.setValue(listPickerItem);
                mutableState2.setValue((CountryUiModel) ((ArrayList) obj7).get(iIntValue));
                ListPickerItem listPickerItem2 = (ListPickerItem) mutableState.getF10755b();
                String str = listPickerItem2 != null ? listPickerItem2.f51015c : null;
                CountryUiModel countryUiModel = (CountryUiModel) mutableState2.getF10755b();
                String str2 = countryUiModel != null ? countryUiModel.f57372b : null;
                String str3 = phoneNumber != null ? phoneNumber.f57394c : null;
                if (str3 == null) {
                    str3 = "";
                }
                function3.A(str, str2, str3);
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                EditAvatarScreenKt.a((EditAvatarViewState) obj7, (Function0) obj5, (Function0) obj4, (Function1) obj6, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                EditMyInfoComposableKt.a((MyInformationViewModel) obj7, (String) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                Function2 function2 = (Function2) obj3;
                MutableState mutableState3 = (MutableState) obj7;
                MutableState mutableState4 = (MutableState) obj6;
                MutableState mutableState5 = (MutableState) obj5;
                MutableState mutableState6 = (MutableState) obj4;
                Composer composer = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer).f48446a;
                    Modifier modifierJ = PaddingKt.j(WindowInsetsPadding_androidKt.b(SizeKt.d(new DTFunctionNameModifier("EditPasswordScreen$lambda$14"), 1.0f)), LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48417f);
                    String strC = StringResources_androidKt.c(composer, R.string.mylv_myprofile_myinfos_logininformation_editmail_savemodifications);
                    boolean zK = composer.K(function2);
                    Object objX = composer.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        yh yhVar = new yh(mutableState3, mutableState4, mutableState5, mutableState6, function2, 5);
                        composer.q(yhVar);
                        objX = yhVar;
                    }
                    LVButtonKt.b(0, 504, composer, modifierJ, configurationButton, null, null, strC, (Function0) objX, false, false, false);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                ExpandableHeaderKt.b((Modifier) obj7, (String) obj6, (String) obj5, (String) obj4, (CollapsingState) obj3, (Composer) obj, RecomposeScopeImplKt.a(385));
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                ExtendExperienceCardKt.a((Modifier) obj7, (String) obj6, (String) obj5, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                FindInStoreSearchBottomSheetKt.a((Modifier) obj7, (FindInStoreViewState) obj4, (Function1) obj6, (Function1) obj5, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                GiftMessageScreenKt.a((Modifier) obj7, (GiftDraftUiModel) obj4, (Function1) obj6, (Function1) obj5, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                ImmersiveArticleEventViewKt.a((ImmersiveArticleEventSectionUiModel) obj7, (A11ySettings) obj6, (Function0) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                ImmersiveArticleFashionShowViewKt.a((ImmersiveArticleFashionShowSectionUiModel) obj7, (A11ySettings) obj6, (Function2) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                TooltipGravity tooltipGravity = (TooltipGravity) obj7;
                Function0 function0 = (Function0) obj6;
                LottieCompositionResult lottieCompositionResult = (LottieCompositionResult) obj5;
                String str4 = (String) obj4;
                String str5 = (String) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ViewParent parent = ((View) composer2.k(AndroidCompositionLocals_androidKt.f9939f)).getParent();
                    parent.getClass();
                    Window l = ((DialogWindowProvider) parent).getL();
                    tooltipGravity.getClass();
                    int i5 = LVTooltipKt.WhenMappings.f48271a[tooltipGravity.ordinal()];
                    if (i5 == 1) {
                        i2 = 48;
                    } else if (i5 == 2) {
                        i2 = 80;
                    } else {
                        if (i5 != 3) {
                            v40.g();
                            return null;
                        }
                        i2 = 17;
                    }
                    l.setGravity(i2);
                    Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(SizeKt.d(PaddingKt.k(new DTFunctionNameModifier("LVTooltip$lambda$1"), LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 1.0f), LVAppDesignKitTheme.j(composer2).f48411c), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer2).f48416e);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e);
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, composer2, 48);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierI);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Function2 function4 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer2, rowMeasurePolicyA, function4);
                    Function2 function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function5);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function6 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf, function6);
                    Function1 function7 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function7);
                    Function2 function8 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC, function8);
                    RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                    Modifier modifierB = cj.b("LVTooltip$lambda$1", rowScopeInstance, 1.0f, true);
                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e), Alignment.Companion.l, composer2, 48);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, rowMeasurePolicyA2, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function5);
                    cj.s(iHashCode2, composer2, function6, composer2, function7);
                    Updater.c(composer2, modifierC2, function8);
                    LottieAnimationKt.a((LottieComposition) lottieCompositionResult.getF10755b(), SizeKt.o(new DTFunctionNameModifier("LVTooltip$lambda$1"), LVAppDesignKitTheme.d(composer2).A), false, Integer.MAX_VALUE, null, composer2, 1572864, 0, 4194236);
                    Modifier modifierB2 = cj.b("LVTooltip$lambda$1", rowScopeInstance, 1.0f, true);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer2).f48415c), Alignment.Companion.n, composer2, 0);
                    int iHashCode3 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierB2);
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN3, function5);
                    cj.s(iHashCode3, composer2, function6, composer2, function7);
                    Updater.c(composer2, modifierC3, function8);
                    TextKt.c(str4, null, LVAppDesignKitTheme.c(composer2).f48361b.u, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48426f, composer2, 0, 0, 131066);
                    TextKt.c(str5, null, LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).f48427h, composer2, 0, 0, 131066);
                    composer2.r();
                    composer2.r();
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).q, composer2, 0), null, ModifierExtKt.c(new DTFunctionNameModifier("LVTooltip$lambda$1"), false, null, null, function0, 31), LVAppDesignKitTheme.c(composer2).f48361b.u, composer2, 56, 0);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                NativeRegisterBottomSheetScreenKt.c((NativeRegisterBottomSheetScreen) obj7, (String) obj6, (Function0) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                OrderDetailComposableKt.a((OrderViewModel) obj7, (Function0) obj6, (Function4) obj5, (Function3) obj4, (Function4) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).getClass();
                OrderExchangeReviewScreenKt.a((Modifier) obj7, (ExchangeSetupUiModel) obj6, (OrderReturnOrExchangeItemUiModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                OrderExchangeVariantSelectionScreenKt.c((Modifier) obj7, (ProductExchangeCategoryUiModel) obj4, (CategoryOptionUiModel) obj3, (Function1) obj6, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj7;
                Function0 function9 = (Function0) obj6;
                MutableIntState mutableIntState = (MutableIntState) obj5;
                Function0 function10 = (Function0) obj4;
                Function0 function11 = (Function0) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    boolean z2 = orderReturnOrExchangeViewState.p;
                    List list = orderReturnOrExchangeViewState.f60310e;
                    if ((list instanceof Collection) && list.isEmpty()) {
                        z = false;
                    } else {
                        Iterator it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                            } else if (((OrderReturnOrExchangeItemUiModel) it.next()).d) {
                                z = true;
                            }
                        }
                    }
                    boolean zY = composer3.y(orderReturnOrExchangeViewState) | composer3.K(mutableIntState) | composer3.K(function10);
                    Object objX2 = composer3.x();
                    if (zY || objX2 == composer$Companion$Empty$1) {
                        objX2 = new of0(orderReturnOrExchangeViewState, function10, mutableIntState, i4);
                        composer3.q(objX2);
                    }
                    OrderReturnOrExchangeReasonScreenKt.a(z2, z, function9, (Function0) objX2, function11, composer3, 0);
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ w(Modifier modifier, Object obj, Function1 function1, Function1 function2, Function1 function3, int i2, int i3) {
        this.f80709b = i3;
        this.f80711e = modifier;
        this.g = obj;
        this.f80710c = function1;
        this.d = function2;
        this.f80712f = function3;
    }

    public /* synthetic */ w(BookingExternalContent bookingExternalContent, Function1 function1, Function0 function0, Function1 function2, Modifier modifier, int i2) {
        this.f80709b = 7;
        this.f80711e = bookingExternalContent;
        this.f80710c = function1;
        this.f80712f = function0;
        this.d = function2;
        this.g = modifier;
    }

    public /* synthetic */ w(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2, int i3) {
        this.f80709b = i3;
        this.f80711e = obj;
        this.f80710c = obj2;
        this.d = obj3;
        this.f80712f = obj4;
        this.g = obj5;
    }

    public /* synthetic */ w(Object obj, Object obj2, Object obj3, Object obj4, Function1 function1, int i2, int i3) {
        this.f80709b = i3;
        this.f80711e = obj;
        this.d = obj2;
        this.f80712f = obj3;
        this.g = obj4;
        this.f80710c = function1;
    }

    public /* synthetic */ w(Object obj, Object obj2, Function0 function0, Function1 function1, Function0 function2, int i2, int i3) {
        this.f80709b = i3;
        this.f80711e = obj;
        this.d = obj2;
        this.f80712f = function0;
        this.f80710c = function1;
        this.g = function2;
    }

    public /* synthetic */ w(Object obj, Object obj2, Function1 function1, Function1 function2, Object obj3, int i2, int i3) {
        this.f80709b = i3;
        this.f80711e = obj;
        this.f80712f = obj2;
        this.f80710c = function1;
        this.d = function2;
        this.g = obj3;
    }

    public /* synthetic */ w(Object obj, Object obj2, Function2 function2, Function function, Function function3, int i2, int i3) {
        this.f80709b = i3;
        this.f80711e = obj;
        this.f80710c = obj2;
        this.g = function2;
        this.d = function;
        this.f80712f = function3;
    }

    public /* synthetic */ w(Object obj, Function function, Object obj2, Object obj3, Object obj4, int i2) {
        this.f80709b = i2;
        this.f80711e = obj;
        this.f80710c = function;
        this.d = obj2;
        this.f80712f = obj3;
        this.g = obj4;
    }

    public /* synthetic */ w(List list, Function1 function1, Function1 function2, Function2 function3, Function1 function4, int i2) {
        this.f80709b = 6;
        this.f80711e = list;
        this.f80710c = function1;
        this.d = function2;
        this.g = function3;
        this.f80712f = function4;
    }

    public /* synthetic */ w(Modifier modifier, Object obj, Object obj2, Function1 function1, Function1 function2, int i2, int i3) {
        this.f80709b = i3;
        this.f80711e = modifier;
        this.f80712f = obj;
        this.g = obj2;
        this.f80710c = function1;
        this.d = function2;
    }
}
