package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVTextWithClickableLinkKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.FloatingTopBarType;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVFloatingTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVHeaderTopBarKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailListeningQueueKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateListItemsKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.CertificateTransferScreenKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleSliderKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSliderUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.mylv.MyLvViewModel;
import com.vuitton.android.presentation.screen.mylv.components.ComposableSingletons$MyLvComposableKt;
import com.vuitton.android.presentation.screen.mylv.models.MyLvViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpEditorialContentKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyAddToCartBottomSheetContentKt;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PSPHeaderKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PSPSearchHeaderKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductCellFullKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPViewModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.PLPListTrackingIds;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class od implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76752c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76754f;
    public final /* synthetic */ Object g;

    public /* synthetic */ od(Modifier modifier, List list, PagerState pagerState, UrlFactory urlFactory, boolean z, int i2) {
        this.f76751b = 10;
        this.d = modifier;
        this.f76754f = list;
        this.f76753e = pagerState;
        this.g = urlFactory;
        this.f76752c = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str;
        LVSwitchLegalState lVSwitchLegalState;
        int i2 = this.f76751b;
        boolean z = this.f76752c;
        Object obj3 = this.f76753e;
        Object obj4 = this.d;
        Object obj5 = this.f76754f;
        Object obj6 = this.g;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                BeautyAddToCartBottomSheetContentKt.c((List) obj5, this.f76752c, (Function1) obj4, (Function1) obj3, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                CertificateListItemsKt.g((Modifier) obj5, (CertificateVisionnaireUiModel) obj6, this.f76752c, (Function1) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                CertificateTransferScreenKt.a((Modifier) obj5, (InAppDispatch) obj3, (CertificateFormState) obj6, this.f76752c, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                ImmersiveArticleSliderKt.b((ImmersiveArticleSliderUiModel) obj5, this.f76752c, (Function1) obj4, (Function1) obj3, (ImmersiveArticleType) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                State state = (State) obj5;
                MyLvViewModel myLvViewModel = (MyLvViewModel) obj4;
                Context context = (Context) obj3;
                Function0 function0 = (Function0) obj6;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (z) {
                        composer.L(-1715467623);
                        LVHeaderTopBarKt.a(null, StringResources_androidKt.b(R.string.welcome_user, new Object[]{((MyLvViewState) state.getF10755b()).f59451f}, composer), ComposableLambdaKt.b(-1914489188, new s8(myLvViewModel, context, state, 6), composer), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer, KyberEngine.KyberPolyBytes, NSType.TKEY);
                        composer.F();
                    } else {
                        composer.L(-1714565461);
                        ComposableSingletons$MyLvComposableKt.f59385a.getClass();
                        ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$MyLvComposableKt.f59386b;
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-906167498, new kw(function0, 10), composer);
                        ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1755359315, new g1(myLvViewModel, context, state, 24), composer);
                        float f2 = TopAppBarDefaults.f7433a;
                        AppBarKt.a(composableLambdaImpl, null, composableLambdaImplB, composableLambdaImplB2, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, TopAppBarDefaults.d(LVAppDesignKitTheme.c(composer).f48361b.f48374a, 0L, composer, 62), composer, 3462, 178);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 5:
                OsaLocationFormViewState osaLocationFormViewState = (OsaLocationFormViewState) obj5;
                OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) obj4;
                Function0 function1 = (Function0) obj6;
                Function0 function2 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (z) {
                        composer2.L(1380874550);
                        composer2.F();
                    } else {
                        composer2.L(1380595860);
                        OsaLocationFormScreenKt.b(osaLocationFormViewState, osaReasonsFormViewState, function1, function2, composer2, 0);
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 6:
                Function1 function3 = (Function1) obj4;
                PLPListTrackingIds pLPListTrackingIds = (PLPListTrackingIds) obj5;
                PLPViewModel pLPViewModel = (PLPViewModel) obj3;
                Context context2 = (Context) obj6;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                plpProductUiModel.getClass();
                if (function3 != null) {
                    function3.invoke(plpProductUiModel);
                    str = null;
                } else {
                    str = null;
                    context2.startActivity(PLPDestinationsKt.a(new PLPDestinations.PageFromPlp(plpProductUiModel, null, 2, null), context2));
                }
                PlpProductUiModel.SkuDataUiModel skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b();
                String str2 = pLPListTrackingIds.f65829c;
                String str3 = pLPListTrackingIds.f65828b;
                String str4 = skuDataUiModel.f62943a;
                String str5 = skuDataUiModel.d;
                ProductShortPriceUiModel productShortPriceUiModel = plpProductUiModel.d;
                Double d = productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : str;
                if (productShortPriceUiModel != null) {
                    str = productShortPriceUiModel.d;
                }
                GA4TrackingUiModel.SelectItemClicked selectItemClicked = new GA4TrackingUiModel.SelectItemClicked("product_list", str, str2, str3, str4, str5, d, iIntValue3, null, null, 768, null);
                if (z) {
                    String str6 = pLPListTrackingIds.f65829c;
                    String str7 = pLPListTrackingIds.d;
                    String str8 = selectItemClicked.f65813a;
                    String str9 = selectItemClicked.f65815c;
                    String str10 = selectItemClicked.d;
                    String str11 = selectItemClicked.f65816e;
                    String str12 = selectItemClicked.f65817f;
                    pq0.z(str8, str9, str10, str11, str12);
                    str6.getClass();
                    str7.getClass();
                    selectItemClicked = new GA4TrackingUiModel.SelectItemClicked(str8, selectItemClicked.f65814b, str9, str10, str11, str12, selectItemClicked.g, selectItemClicked.f65818h, str6, str7, null);
                }
                pLPViewModel.j(selectItemClicked);
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                PSPHeaderKt.a((String) obj5, (Integer) obj3, this.f76752c, (Function1) obj4, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                PSPSearchHeaderKt.a((String) obj5, (Integer) obj4, this.f76752c, (LVColorScheme) obj3, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(24577));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                PdpEditorialContentKt.a((Modifier) obj3, this.f76752c, (List) obj5, (Function2) obj6, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                ProductCellFullKt.c((Modifier) obj4, (List) obj5, (PagerState) obj3, (UrlFactory) obj6, this.f76752c, (Composer) obj, RecomposeScopeImplKt.a(27649));
                return Unit.f71739a;
            case 11:
                Function0 function4 = (Function0) obj6;
                Boolean bool = (Boolean) obj5;
                Function1 function5 = (Function1) obj4;
                Function0 function6 = (Function0) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(tr.d("PersonalDataCard$lambda$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, composer3, 54);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function7 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function7);
                    } else {
                        composer3.o();
                    }
                    Function2 function8 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, rowMeasurePolicyA, function8);
                    Function2 function9 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN, function9);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function10 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf, function10);
                    Function1 function11 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function11);
                    Function2 function12 = ComposeUiNode.Companion.d;
                    Updater.c(composer3, modifierC, function12);
                    Modifier modifierM2 = PaddingKt.m(cj.b("PersonalDataCard$lambda$0", RowScopeInstance.f5040a, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer3, 0);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierM2);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function7);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA, function8);
                    Updater.c(composer3, persistentCompositionLocalMapN2, function9);
                    cj.s(iHashCode2, composer3, function10, composer3, function11);
                    Updater.c(composer3, modifierC2, function12);
                    LVTextWithClickableLinkKt.a(z ? R.string.mylv_settings_gcm_subtitle_with_variable_canada_fr : R.string.mylv_settings_gcm_subtitle_with_variable, R.string.mylv_settings_gcm_subtitle_2, LVAppDesignKitTheme.n(composer3).f48428i, LVAppDesignKitTheme.c(composer3).f48361b.f48382k, LVAppDesignKitTheme.c(composer3).f48361b.f48382k, "contactPrivacySettings_sharingThirdParty_button", function6, null, composer3, ImageMetadata.EDGE_MODE, 128);
                    composer3.r();
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PersonalDataCard$lambda$0");
                    Boolean bool2 = Boolean.TRUE;
                    Modifier modifierE = ModifierExtKt.e(dTFunctionNameModifier, Intrinsics.c(bool, bool2) ? "contactPrivacySettings_sharingPreferencesChecked_switch" : "contactPrivacySettings_sharingPreferencesUnchecked_switch");
                    if (Intrinsics.c(bool, bool2)) {
                        lVSwitchLegalState = LVSwitchLegalState.ACCEPTED;
                    } else {
                        lVSwitchLegalState = Intrinsics.c(bool, Boolean.FALSE) ? LVSwitchLegalState.DENIED : LVSwitchLegalState.BLANK;
                    }
                    LVSwitchLegalState lVSwitchLegalState2 = lVSwitchLegalState;
                    boolean zK = composer3.K(function5);
                    Object objX = composer3.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new jo0(function5, 4);
                        composer3.q(objX);
                    }
                    LVSwitchKt.c(modifierE, lVSwitchLegalState2, true, (Function1) objX, composer3, KyberEngine.KyberPolyBytes, 0);
                    composer3.r();
                    LVTextWithClickableLinkKt.a(z ? R.string.mylv_settings_gcm_description_with_variable_canada_fr : R.string.mylv_settings_gcm_description_with_variable, R.string.mylv_settings_gcm_description_2, LVAppDesignKitTheme.n(composer3).f48427h, LVAppDesignKitTheme.c(composer3).f48361b.l, LVAppDesignKitTheme.c(composer3).f48361b.f48382k, "contactPrivacySettings_sharingPreferencesDescription_text", function4, PaddingKt.m(new DTFunctionNameModifier("PersonalDataCard$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), composer3, ImageMetadata.EDGE_MODE, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                TrackDetailListeningQueueKt.a((List) obj5, (String) obj3, this.f76752c, (AudioGuideUiModel.AudioGuideColorsUiModel) obj6, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                Function0 function13 = (Function0) obj6;
                WelcomeViewState welcomeViewState = (WelcomeViewState) obj5;
                Function0 function14 = (Function0) obj4;
                Function0 function15 = (Function0) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                float f3 = WelcomeScreenKt.f54272a;
                if (composer4.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LVFloatingTopBarKt.a(null, z ? FloatingTopBarType.Close : FloatingTopBarType.None, null, null, StringResources_androidKt.c(composer4, R.string.alt_close), function13, ComposableLambdaKt.b(1398146911, new s8(welcomeViewState, function14, function15, 16), composer4), null, composer4, 1572864, 141);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ od(Modifier modifier, InAppDispatch inAppDispatch, CertificateFormState certificateFormState, boolean z, Function1 function1, int i2) {
        this.f76751b = 2;
        this.f76754f = modifier;
        this.f76753e = inAppDispatch;
        this.g = certificateFormState;
        this.f76752c = z;
        this.d = function1;
    }

    public /* synthetic */ od(Modifier modifier, CertificateVisionnaireUiModel certificateVisionnaireUiModel, boolean z, Function1 function1, Function1 function2, int i2) {
        this.f76751b = 1;
        this.f76754f = modifier;
        this.g = certificateVisionnaireUiModel;
        this.f76752c = z;
        this.d = function1;
        this.f76753e = function2;
    }

    public /* synthetic */ od(Modifier modifier, boolean z, List list, Function2 function2, Function1 function1, int i2) {
        this.f76751b = 9;
        this.f76753e = modifier;
        this.f76752c = z;
        this.f76754f = list;
        this.g = function2;
        this.d = function1;
    }

    public /* synthetic */ od(Object obj, boolean z, Function1 function1, Function1 function2, Object obj2, int i2, int i3) {
        this.f76751b = i3;
        this.f76754f = obj;
        this.f76752c = z;
        this.d = function1;
        this.f76753e = function2;
        this.g = obj2;
    }

    public /* synthetic */ od(String str, Integer num, boolean z, LVColorScheme lVColorScheme, Function0 function0, int i2) {
        this.f76751b = 8;
        this.f76754f = str;
        this.d = num;
        this.f76752c = z;
        this.f76753e = lVColorScheme;
        this.g = function0;
    }

    public /* synthetic */ od(String str, Integer num, boolean z, Function1 function1, Function0 function0, int i2) {
        this.f76751b = 7;
        this.f76754f = str;
        this.f76753e = num;
        this.f76752c = z;
        this.d = function1;
        this.g = function0;
    }

    public /* synthetic */ od(List list, String str, boolean z, AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel, Function1 function1, int i2) {
        this.f76751b = 12;
        this.f76754f = list;
        this.f76753e = str;
        this.f76752c = z;
        this.g = audioGuideColorsUiModel;
        this.d = function1;
    }

    public /* synthetic */ od(Function1 function1, PLPListTrackingIds pLPListTrackingIds, boolean z, PLPViewModel pLPViewModel, Context context) {
        this.f76751b = 6;
        this.d = function1;
        this.f76754f = pLPListTrackingIds;
        this.f76752c = z;
        this.f76753e = pLPViewModel;
        this.g = context;
    }

    public /* synthetic */ od(boolean z, MutableState mutableState, MyLvViewModel myLvViewModel, Context context, Function0 function0) {
        this.f76751b = 4;
        this.f76752c = z;
        this.f76754f = mutableState;
        this.d = myLvViewModel;
        this.f76753e = context;
        this.g = function0;
    }

    public /* synthetic */ od(boolean z, OsaLocationFormViewState osaLocationFormViewState, OsaReasonsFormViewState osaReasonsFormViewState, Function0 function0, Function0 function1) {
        this.f76751b = 5;
        this.f76752c = z;
        this.f76754f = osaLocationFormViewState;
        this.d = osaReasonsFormViewState;
        this.g = function0;
        this.f76753e = function1;
    }

    public /* synthetic */ od(boolean z, Function0 function0, Object obj, Function function, Function0 function1, int i2) {
        this.f76751b = i2;
        this.f76752c = z;
        this.g = function0;
        this.f76754f = obj;
        this.d = function;
        this.f76753e = function1;
    }
}
