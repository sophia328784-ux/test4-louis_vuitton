package defpackage;

import androidx.compose.animation.SharedTransitionScopeKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.AlphaKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.contact.compose.ComposableSingletons$TermsAndConditionsBottomSheetKt;
import com.vuitton.android.presentation.contact.compose.TermsAndConditionsBottomSheetKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ComposableSingletons$TrackDetailTranscriptKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideExtKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideMockKt;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import com.vuitton.android.presentation.screen.authentication.base.ComposableSingletons$WebViewTopBarKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import com.vuitton.android.presentation.screen.authentication.welcome.components.ComposableSingletons$WelcomeScreenKt;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.certificates.components.ComposableSingletons$TransferCertificateCardKt;
import com.vuitton.android.presentation.screen.certificates.components.TransferCertificateCardKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.ComposableSingletons$TermsAndConditionsComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.TermsAndConditionsComposableKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.ComposableSingletons$TableSizeKt;
import com.vuitton.android.presentation.screen.pdp.components.sizeguide.TableSizeKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.search.components.ComposableSingletons$TrendingComposableKt;
import com.vuitton.android.presentation.screen.search.components.SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.search.components.TrendingComposableKt;
import com.vuitton.android.presentation.screen.search.mocks.SuggestionListMockKt;
import com.vuitton.android.presentation.screen.search.mocks.TrendingMockKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.screen.search.models.TrendingItemUiModel;
import com.vuitton.android.presentation.screen.thankyou.components.ComposableSingletons$ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistLoadingScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistProductItemKt;
import com.vuitton.android.presentation.screen.wishlist.components.ComposableSingletons$WishlistScreenKt;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistLoadingScreenKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class po implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78899b;

    public /* synthetic */ po(int i2) {
        this.f78899b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f78899b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i3 = 3;
        int i4 = 2;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableSingletons$SuggestionCarouselComposableKt composableSingletons$SuggestionCarouselComposableKt = ComposableSingletons$SuggestionCarouselComposableKt.f64164a;
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer, R.string.search_live_suggestion);
                    SearchListState.Result result = new SearchListState.Result((List) SuggestionListMockKt.f64236a.getF71699b());
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new po(i3);
                        composer.q(objX);
                    }
                    Function2 function2 = (Function2) objX;
                    Object objX2 = composer.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new oo(6);
                        composer.q(objX2);
                    }
                    SuggestionCarouselComposableKt.a(strC, result, function2, (Function0) objX2, composer, 3456);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                ComposableSingletons$SuggestionCarouselComposableKt composableSingletons$SuggestionCarouselComposableKt2 = ComposableSingletons$SuggestionCarouselComposableKt.f64164a;
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String strC2 = StringResources_androidKt.c(composer2, R.string.search_live_suggestion);
                    SearchListState.Loading loading = new SearchListState.Loading();
                    Object objX3 = composer2.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new po(i4);
                        composer2.q(objX3);
                    }
                    Function2 function3 = (Function2) objX3;
                    Object objX4 = composer2.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new oo(5);
                        composer2.q(objX4);
                    }
                    SuggestionCarouselComposableKt.a(strC2, loading, function3, (Function0) objX4, composer2, 3456);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).intValue();
                ComposableSingletons$SuggestionCarouselComposableKt composableSingletons$SuggestionCarouselComposableKt3 = ComposableSingletons$SuggestionCarouselComposableKt.f64164a;
                ((SuggestionItemUiModel) obj).getClass();
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).intValue();
                ComposableSingletons$SuggestionCarouselComposableKt composableSingletons$SuggestionCarouselComposableKt4 = ComposableSingletons$SuggestionCarouselComposableKt.f64164a;
                ((SuggestionItemUiModel) obj).getClass();
                return Unit.f71739a;
            case 4:
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                ComposableSingletons$TableSizeKt composableSingletons$TableSizeKt = ComposableSingletons$TableSizeKt.f61428a;
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    TableSizeKt.a(6, composer3, CollectionsKt.P(CollectionsKt.P("a1", "b1", "c1"), CollectionsKt.P("a2", "b2", "c3"), CollectionsKt.P("a3", "b2", "c3")));
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                ComposableSingletons$TermsAndConditionsBottomSheetKt composableSingletons$TermsAndConditionsBottomSheetKt = ComposableSingletons$TermsAndConditionsBottomSheetKt.f51128a;
                if (composer4.p(1 & iIntValue4, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    TermsAndConditionsBottomSheetKt.a(null, composer4, 0);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 6:
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                ComposableSingletons$TermsAndConditionsComposableKt composableSingletons$TermsAndConditionsComposableKt = ComposableSingletons$TermsAndConditionsComposableKt.f57076a;
                if (composer5.p(1 & iIntValue5, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Object objX5 = composer5.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new oo(7);
                        composer5.q(objX5);
                    }
                    TermsAndConditionsComposableKt.a((Function0) objX5, composer5, 6);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 7:
                Composer composer6 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt = ComposableSingletons$ThankYouScreenKt.f65236a;
                if (composer6.p(1 & iIntValue6, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer6).q, composer6, 0), StringResources_androidKt.c(composer6, R.string.alt_close), n00.g("lambda__1577241260$lambda$0", "thankYou_closeIcon_icon"), LVAppDesignKitTheme.c(composer6).f48361b.f48382k, composer6, 8, 0);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
            case 8:
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt2 = ComposableSingletons$ThankYouScreenKt.f65236a;
                if (composer7.p(1 & iIntValue7, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    SharedTransitionScopeKt.a(null, ComposableSingletons$ThankYouScreenKt.d, composer7, 48);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 9:
                Composer composer8 = (Composer) obj;
                int iIntValue8 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt3 = ComposableSingletons$ThankYouScreenKt.f65236a;
                if (composer8.p(1 & iIntValue8, (iIntValue8 & 3) != 2)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("lambda_1898300961$lambda$0", 1.0f);
                    ThankYouViewState.Success success = ThankYouScreenKt.f65244b;
                    ThankYouScreenKt.l(modifierD, success.f65301a, success.d.f65282a, composer8, 438);
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 10:
                Composer composer9 = (Composer) obj;
                int iIntValue9 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt4 = ComposableSingletons$ThankYouScreenKt.f65236a;
                if (composer9.p(iIntValue9 & 1, (iIntValue9 & 3) != 2)) {
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    Object objX6 = composer9.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new oo(8);
                        composer9.q(objX6);
                    }
                    ThankYouScreenKt.a(48, 1, composer9, null, (Function0) objX6);
                } else {
                    composer9.D();
                }
                return Unit.f71739a;
            case 11:
                boolean z = false;
                Composer composer10 = (Composer) obj;
                int iIntValue10 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt5 = ComposableSingletons$ThankYouScreenKt.f65236a;
                if ((iIntValue10 & 3) != 2) {
                    z = true;
                }
                if (composer10.p(1 & iIntValue10, z)) {
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    ThankYouScreenKt.c(null, "Parfum Louis Vuitton", "", 0, null, composer10, 432, 25);
                } else {
                    composer10.D();
                }
                return Unit.f71739a;
            case 12:
                boolean z2 = false;
                Composer composer11 = (Composer) obj;
                int iIntValue11 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt6 = ComposableSingletons$ThankYouScreenKt.f65236a;
                if ((iIntValue11 & 3) != 2) {
                    z2 = true;
                }
                if (composer11.p(1 & iIntValue11, z2)) {
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    ThankYouScreenKt.c(null, "Carte cadeau", null, 2131231578, "Joyeux anniversaire !", composer11, 24624, 5);
                } else {
                    composer11.D();
                }
                return Unit.f71739a;
            case 13:
                boolean z3 = false;
                Composer composer12 = (Composer) obj;
                int iIntValue12 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt7 = ComposableSingletons$ThankYouScreenKt.f65236a;
                if ((iIntValue12 & 3) != 2) {
                    z3 = true;
                }
                if (composer12.p(1 & iIntValue12, z3)) {
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    ThankYouScreenKt.c(null, "Sac shopping", null, 2131231320, "Sélectionné", composer12, 24624, 5);
                } else {
                    composer12.D();
                }
                return Unit.f71739a;
            case 14:
                Composer composer13 = (Composer) obj;
                int iIntValue13 = ((Integer) obj2).intValue();
                ComposableSingletons$ThankYouScreenKt composableSingletons$ThankYouScreenKt8 = ComposableSingletons$ThankYouScreenKt.f65236a;
                if (composer13.p(iIntValue13 & 1, (iIntValue13 & 3) != 2)) {
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    ThankYouScreenKt.d(null, "Échantillons", "Gratuit", CollectionsKt.P(ComposableSingletons$ThankYouScreenKt.f65239e, ComposableSingletons$ThankYouScreenKt.f65240f, ComposableSingletons$ThankYouScreenKt.g), composer13, 3504);
                } else {
                    composer13.D();
                }
                return Unit.f71739a;
            case 15:
                Composer composer14 = (Composer) obj;
                int iIntValue14 = ((Integer) obj2).intValue();
                ComposableSingletons$TrackDetailTranscriptKt composableSingletons$TrackDetailTranscriptKt = ComposableSingletons$TrackDetailTranscriptKt.f53104a;
                if (composer14.p(1 & iIntValue14, (iIntValue14 & 3) != 2)) {
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    List list = AudioGuideMockKt.f53160a.f53233e;
                    AudioGuideUiModel audioGuideUiModel = AudioGuideMockKt.f53161b;
                    TrackDetailTranscriptKt.a(list, LiveTranslationEntity.DefaultSentenceTimeOut, AudioGuideExtKt.a(audioGuideUiModel.f53199f, composer14).f53207a, AudioGuideExtKt.a(audioGuideUiModel.f53199f, composer14).f53208b, composer14, 48);
                } else {
                    composer14.D();
                }
                return Unit.f71739a;
            case 16:
                Composer composer15 = (Composer) obj;
                int iIntValue15 = ((Integer) obj2).intValue();
                ComposableSingletons$TransferCertificateCardKt composableSingletons$TransferCertificateCardKt = ComposableSingletons$TransferCertificateCardKt.f55686a;
                if (composer15.p(iIntValue15 & 1, (iIntValue15 & 3) != 2)) {
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    Object objX7 = composer15.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new oo(9);
                        composer15.q(objX7);
                    }
                    TransferCertificateCardKt.a(48, 1, composer15, null, (Function0) objX7);
                } else {
                    composer15.D();
                }
                return Unit.f71739a;
            case 17:
                Composer composer16 = (Composer) obj;
                int iIntValue16 = ((Integer) obj2).intValue();
                ComposableSingletons$TrendingComposableKt composableSingletons$TrendingComposableKt = ComposableSingletons$TrendingComposableKt.f64166a;
                if (composer16.p(iIntValue16 & 1, (iIntValue16 & 3) != 2)) {
                    OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                    LVSkeletonKt.e(PaddingKt.m(tr.d("lambda__2013894651$lambda$0", 0.6666667f), LVAppDesignKitTheme.l(composer16).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), null, null, composer16, 0, 6);
                } else {
                    composer16.D();
                }
                return Unit.f71739a;
            case 18:
                Composer composer17 = (Composer) obj;
                int iIntValue17 = ((Integer) obj2).intValue();
                ComposableSingletons$TrendingComposableKt composableSingletons$TrendingComposableKt2 = ComposableSingletons$TrendingComposableKt.f64166a;
                if (composer17.p(iIntValue17 & 1, (iIntValue17 & 3) != 2)) {
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    TrendingComposableKt.b(null, (TrendingItemUiModel) TrendingMockKt.f64238a.getF71699b(), composer17, 0, 1);
                } else {
                    composer17.D();
                }
                return Unit.f71739a;
            case 19:
                Composer composer18 = (Composer) obj;
                int iIntValue18 = ((Integer) obj2).intValue();
                ComposableSingletons$TrendingComposableKt composableSingletons$TrendingComposableKt3 = ComposableSingletons$TrendingComposableKt.f64166a;
                if (composer18.p(iIntValue18 & 1, (iIntValue18 & 3) != 2)) {
                    OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                    TrendingComposableKt.d(composer18, 0);
                } else {
                    composer18.D();
                }
                return Unit.f71739a;
            case 20:
                Composer composer19 = (Composer) obj;
                int iIntValue19 = ((Integer) obj2).intValue();
                ComposableSingletons$WebViewTopBarKt composableSingletons$WebViewTopBarKt = ComposableSingletons$WebViewTopBarKt.f53448a;
                if (composer19.p(iIntValue19 & 1, (iIntValue19 & 3) != 2)) {
                    OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                    Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer19).f48399j, composer19, 0);
                    String strC3 = StringResources_androidKt.c(composer19, R.string.content_description_my_lv);
                    Color.f8866b.getClass();
                    IconKt.a(painterA, strC3, SizeKt.o(new DTFunctionNameModifier("lambda_1420729432$lambda$0"), IconSize.d), Color.f8871i, composer19, 3080, 0);
                } else {
                    composer19.D();
                }
                return Unit.f71739a;
            case 21:
                Composer composer20 = (Composer) obj;
                int iIntValue20 = ((Integer) obj2).intValue();
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt = ComposableSingletons$WelcomeScreenKt.f54269a;
                if (composer20.p(iIntValue20 & 1, (iIntValue20 & 3) != 2)) {
                    OpaqueKey opaqueKey20 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer20).x, composer20, 0), StringResources_androidKt.c(composer20, R.string.manage_privacy_settings), n00.g("lambda__377844666$lambda$0", "mylvAuthentication_yourPrivacySettings_button"), LVAppDesignKitTheme.c(composer20).f48361b.m, composer20, 8, 0);
                } else {
                    composer20.D();
                }
                return Unit.f71739a;
            case 22:
                Composer composer21 = (Composer) obj;
                int iIntValue21 = ((Integer) obj2).intValue();
                ComposableSingletons$WelcomeScreenKt composableSingletons$WelcomeScreenKt2 = ComposableSingletons$WelcomeScreenKt.f54269a;
                if (composer21.p(iIntValue21 & 1, (iIntValue21 & 3) != 2)) {
                    OpaqueKey opaqueKey21 = ComposerKt.f7940a;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                    boolean z4 = false;
                    boolean z5 = false;
                    boolean z6 = false;
                    WelcomeViewState welcomeViewState = new WelcomeViewState(null, new AssetVideoUiModel(null, "https://example.com/video.mp4", "https://example.com/placeholder.jpg", null, null, null, null, 121, null), z4, z5, true, true, z6, 73, defaultConstructorMarker);
                    SocialLoginViewState socialLoginViewState = new SocialLoginViewState(null, z4, z5, false, false, z6, 63, defaultConstructorMarker);
                    Object objX8 = composer21.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new SnackbarHostState();
                        composer21.q(objX8);
                    }
                    SnackbarHostState snackbarHostState = (SnackbarHostState) objX8;
                    Object objX9 = composer21.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new oo(10);
                        composer21.q(objX9);
                    }
                    Function0 function0 = (Function0) objX9;
                    Object objX10 = composer21.x();
                    if (objX10 == composer$Companion$Empty$1) {
                        objX10 = new oo(11);
                        composer21.q(objX10);
                    }
                    Function0 function1 = (Function0) objX10;
                    Object objX11 = composer21.x();
                    if (objX11 == composer$Companion$Empty$1) {
                        objX11 = new oo(12);
                        composer21.q(objX11);
                    }
                    Function0 function4 = (Function0) objX11;
                    Object objX12 = composer21.x();
                    if (objX12 == composer$Companion$Empty$1) {
                        objX12 = new oo(13);
                        composer21.q(objX12);
                    }
                    Function0 function5 = (Function0) objX12;
                    Object objX13 = composer21.x();
                    if (objX13 == composer$Companion$Empty$1) {
                        objX13 = new oo(14);
                        composer21.q(objX13);
                    }
                    Function0 function6 = (Function0) objX13;
                    Object objX14 = composer21.x();
                    if (objX14 == composer$Companion$Empty$1) {
                        objX14 = new oo(15);
                        composer21.q(objX14);
                    }
                    Function0 function7 = (Function0) objX14;
                    Object objX15 = composer21.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new oo(16);
                        composer21.q(objX15);
                    }
                    WelcomeScreenKt.b(null, welcomeViewState, socialLoginViewState, false, function0, function1, function4, function5, function6, function7, snackbarHostState, (Function0) objX15, composer21, 920346624, 54, 9);
                } else {
                    composer21.D();
                }
                return Unit.f71739a;
            case 23:
                Composer composer22 = (Composer) obj;
                int iIntValue22 = ((Integer) obj2).intValue();
                ComposableSingletons$WishlistLoadingScreenKt composableSingletons$WishlistLoadingScreenKt = ComposableSingletons$WishlistLoadingScreenKt.f65681a;
                if (composer22.p(iIntValue22 & 1, (iIntValue22 & 3) != 2)) {
                    OpaqueKey opaqueKey22 = ComposerKt.f7940a;
                } else {
                    composer22.D();
                }
                return Unit.f71739a;
            case 24:
                Composer composer23 = (Composer) obj;
                int iIntValue23 = ((Integer) obj2).intValue();
                ComposableSingletons$WishlistLoadingScreenKt composableSingletons$WishlistLoadingScreenKt2 = ComposableSingletons$WishlistLoadingScreenKt.f65681a;
                if (composer23.p(iIntValue23 & 1, (iIntValue23 & 3) != 2)) {
                    OpaqueKey opaqueKey23 = ComposerKt.f7940a;
                    WishlistLoadingScreenKt.a(ComposableSingletons$WishlistLoadingScreenKt.f65683c, WindowInsetsExtKt.a(), composer23, 6);
                } else {
                    composer23.D();
                }
                return Unit.f71739a;
            case 25:
                Composer composer24 = (Composer) obj;
                int iIntValue24 = ((Integer) obj2).intValue();
                ComposableSingletons$WishlistProductItemKt composableSingletons$WishlistProductItemKt = ComposableSingletons$WishlistProductItemKt.f65684a;
                if (composer24.p(iIntValue24 & 1, (iIntValue24 & 3) != 2)) {
                    OpaqueKey opaqueKey24 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer24).q, composer24, 0), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("lambda__1384805015$lambda$0"), LVAppDesignKitTheme.d(composer24).m), "wishlist_itemClose_button"), 0L, composer24, 56, 8);
                } else {
                    composer24.D();
                }
                return Unit.f71739a;
            case 26:
                Composer composer25 = (Composer) obj;
                int iIntValue25 = ((Integer) obj2).intValue();
                ComposableSingletons$WishlistScreenKt composableSingletons$WishlistScreenKt = ComposableSingletons$WishlistScreenKt.f65688a;
                if (composer25.p(iIntValue25 & 1, (iIntValue25 & 3) != 2)) {
                    OpaqueKey opaqueKey25 = ComposerKt.f7940a;
                } else {
                    composer25.D();
                }
                return Unit.f71739a;
            case 27:
                Composer composer26 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer26.L(1514399527);
                OpaqueKey opaqueKey26 = ComposerKt.f7940a;
                Modifier modifierA = GradientKt.a(new DTFunctionNameModifier("ContentSlideStructure$lambda$0"), AlphaKt.f48327a);
                composer26.F();
                return modifierA;
            case 28:
                Composer composer27 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer27.L(753979616);
                OpaqueKey opaqueKey27 = ComposerKt.f7940a;
                Modifier modifierA2 = GradientKt.a(new DTFunctionNameModifier("ContentSlideStructure$lambda$1"), AlphaKt.f48328b);
                composer27.F();
                return modifierA2;
            default:
                Composer composer28 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer28.L(-530411374);
                OpaqueKey opaqueKey28 = ComposerKt.f7940a;
                Modifier modifierK = PaddingKt.k(PaddingKt.k(BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("ContentSlideStructure$lambda$2$0"), LVAppDesignKitTheme.j(composer28).f48411c), Color.b(LVAppDesignKitTheme.h(composer28).f48403c, LVAppDesignKitTheme.c(composer28).f48361b.u), RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer28).f48417f, 1), LVAppDesignKitTheme.l(composer28).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                composer28.F();
                return modifierK;
        }
    }
}
