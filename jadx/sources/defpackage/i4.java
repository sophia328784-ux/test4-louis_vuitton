package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigationevent.compose.NavigationEventHandlerKt;
import androidx.navigationevent.compose.NavigationEventState;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewState;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewType;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideTrackListKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleExpansionListViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleExpansionPanelUiModel;
import com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModel;
import com.vuitton.android.presentation.screen.livevideo.component.LiveVideoComposableKt;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoViewState;
import com.vuitton.android.presentation.screen.main.components.MainNavBarKt;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.options.appinfo.components.AppInfoScreenKt;
import com.vuitton.android.presentation.screen.options.appinfo.models.AppInfo;
import com.vuitton.android.presentation.screen.osa.form.kisa.OsaKisaComposableKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.SizeUnitSwitchKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeItemKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyAddToCartBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.AssessmentInformationKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.ImageFilterComponentKt;
import com.vuitton.android.presentation.screen.storemode.filters.components.ResetFilterTagListKt;
import com.vuitton.foundation.model.domain.model.place.PlaceAutocomplete;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class i4 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69866c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69868f;

    public /* synthetic */ i4(boolean z, ProductFilterValueUiModel productFilterValueUiModel, Function0 function0, Modifier modifier, int i2) {
        this.f69865b = 9;
        this.d = z;
        this.f69866c = productFilterValueUiModel;
        this.f69867e = function0;
        this.f69868f = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String strK;
        int i2 = this.f69865b;
        int i3 = 1;
        Object obj3 = this.f69867e;
        Object obj4 = this.f69868f;
        Object obj5 = this.f69866c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AddressAutocompleteComposableKt.c((LVColorScheme) obj5, this.d, (AddressEditorViewType) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                LVColorScheme lVColorScheme = (LVColorScheme) obj5;
                AddressEditorViewState addressEditorViewState = (AddressEditorViewState) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    AddressAutocompleteComposableKt.c(lVColorScheme, this.d, addressEditorViewState.f52271c, function0, composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                AppInfoScreenKt.a((Modifier) obj5, (AppInfo) obj4, this.d, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                AssessmentInformationKt.c((String) obj5, (Integer) obj4, (String) obj3, this.d, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                AudioGuideTrackListKt.b((AudioGuideUiModel) obj5, (String) obj4, this.d, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                BeautyAddToCartBottomSheetContentKt.e((Modifier) obj5, (BeautyAddToCartUiModel) obj4, this.d, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                BeautyColorSliderKt.b((Modifier) obj5, (TryOnProductUiModel) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                BookingPersonalInfoViewState bookingPersonalInfoViewState = (BookingPersonalInfoViewState) obj5;
                FocusManager focusManager = (FocusManager) obj4;
                Function0 function1 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (bookingPersonalInfoViewState.f54733c || bookingPersonalInfoViewState.d) {
                        composer2.L(1972352346);
                        composer2.F();
                    } else {
                        composer2.L(1970839732);
                        String strC = StringResources_androidKt.c(composer2, R.string.alt_loading_status);
                        Modifier modifierJ = PaddingKt.j(WindowInsetsPadding_androidKt.a(WindowInsetsPadding_androidKt.b(BackgroundKt.b(ShadowKt.c(SizeKt.d(new DTFunctionNameModifier("BookingInfoFormScreen$lambda$2"), 1.0f), composer2, 6, 3), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a))), LVAppDesignKitTheme.l(composer2).f48416e, LVAppDesignKitTheme.l(composer2).f48416e);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierJ);
                        ComposeUiNode.b0.getClass();
                        Function0 function2 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function2);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Modifier modifierC2 = n00.c(composer2, modifierC, ComposeUiNode.Companion.d, "BookingInfoFormScreen$lambda$2", 1.0f);
                        boolean z = this.d;
                        boolean zB = composer2.b(z) | composer2.K(strC);
                        Object objX = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zB || objX == composer$Companion$Empty$1) {
                            objX = new ka(z, strC, i3);
                            composer2.q(objX);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(modifierC2, false, (Function1) objX);
                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer2).f48446a;
                        boolean z2 = bookingPersonalInfoViewState.f54735f && !z;
                        if (z) {
                            composer2.L(-1634715529);
                            composer2.F();
                            strK = "";
                        } else {
                            strK = o60.k(composer2, -52732449, R.string.booking_form_cta_label, composer2);
                        }
                        String str = strK;
                        Integer numValueOf = z ? Integer.valueOf(LVAppDesignKitTheme.a(composer2).p) : null;
                        boolean zY = composer2.y(focusManager) | composer2.K(function1);
                        Object objX2 = composer2.x();
                        if (zY || objX2 == composer$Companion$Empty$1) {
                            objX2 = new ve(focusManager, function1, 1);
                            composer2.q(objX2);
                        }
                        LVButtonKt.b(0, 360, composer2, modifierB, configurationButton, null, numValueOf, str, (Function0) objX2, false, z2, false);
                        composer2.r();
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                ExposedDropdownMenuKt.a(this.d, (Function1) obj5, (Modifier) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(3073));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                ImageFilterComponentKt.b(this.d, (ProductFilterValueUiModel) obj5, (Function0) obj3, (Modifier) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                ImmersiveArticleExpansionListViewKt.a((ImmersiveArticleExpansionPanelUiModel) obj5, this.d, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                LiveVideoComposableKt.a((LiveVideoViewModel) obj5, (ExoPlayer) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                LiveVideoComposableKt.b((LiveVideoViewState) obj5, (ExoPlayer) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                MainNavBarKt.c((Modifier) obj5, (MainTopLevelDestination) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                ModelSizeItemKt.a((Modifier) obj5, (ModelSizeVariationUiModel) obj4, this.d, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                NavigationEventHandlerKt.a((NavigationEventState) obj5, this.d, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                OsaKisaComposableKt.a(this.d, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                PlaceSearchPageComposableKt.a((PlaceAutocomplete) obj5, (Function2) obj4, (PlaceSearchActivity.PlaceInfoType) obj3, this.d, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                ResetFilterTagListKt.b((List) obj5, this.d, (Function2) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                SizeUnitSwitchKt.a((String) obj5, (String) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ i4(Object obj, Object obj2, Object obj3, boolean z, int i2, int i3) {
        this.f69865b = i3;
        this.f69866c = obj;
        this.f69868f = obj2;
        this.f69867e = obj3;
        this.d = z;
    }

    public /* synthetic */ i4(Object obj, Object obj2, boolean z, Function function, int i2, int i3) {
        this.f69865b = i3;
        this.f69866c = obj;
        this.f69868f = obj2;
        this.d = z;
        this.f69867e = function;
    }

    public /* synthetic */ i4(Object obj, boolean z, Object obj2, Function0 function0, int i2) {
        this.f69865b = i2;
        this.f69866c = obj;
        this.d = z;
        this.f69868f = obj2;
        this.f69867e = function0;
    }

    public /* synthetic */ i4(Object obj, boolean z, Function0 function0, Function0 function1, int i2, int i3) {
        this.f69865b = i3;
        this.f69866c = obj;
        this.d = z;
        this.f69867e = function0;
        this.f69868f = function1;
    }

    public /* synthetic */ i4(int i2, int i3, Object obj, Object obj2, Function0 function0, boolean z) {
        this.f69865b = i3;
        this.f69866c = obj;
        this.d = z;
        this.f69868f = obj2;
        this.f69867e = function0;
    }

    public /* synthetic */ i4(boolean z, Function0 function0, Function0 function1, Function0 function2, int i2) {
        this.f69865b = 16;
        this.d = z;
        this.f69867e = function0;
        this.f69866c = function1;
        this.f69868f = function2;
    }

    public /* synthetic */ i4(boolean z, Function1 function1, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f69865b = 8;
        this.d = z;
        this.f69866c = function1;
        this.f69868f = modifier;
        this.f69867e = composableLambdaImpl;
    }
}
