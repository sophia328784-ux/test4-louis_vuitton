package defpackage;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteQuery;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.db.framework.FrameworkSQLiteProgram;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.TutorialRecommendedKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSkeletonKt;
import com.vuitton.android.presentation.screen.search.components.SuggestionCarouselComposableKt;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e1 implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68720c;

    public /* synthetic */ e1(Object obj, int i2) {
        this.f68719b = i2;
        this.f68720c = obj;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        int i2;
        int i3;
        int i4 = this.f68719b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i5 = 16;
        int i6 = 0;
        Object obj5 = this.f68720c;
        switch (i4) {
            case 0:
                Function0 function0 = (Function0) obj5;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                int i7 = AICompanionOnboardingScreenKt.f52870b;
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(n00.g("AICompanionOnboardingScreen$lambda$7$1", "aiCompanion_onboardingSkip_button"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                boolean zK = composer.K(function0);
                Object objX = composer.x();
                if (zK || objX == composer$Companion$Empty$1) {
                    objX = new h1(function0, i6);
                    composer.q(objX);
                }
                TextKt.c(StringResources_androidKt.c(composer, R.string.tuto_cta_skip), ClickableKt.d(modifierM, false, null, null, (Function0) objX, 15), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48428i, composer, 0, 0, 131064);
                return Unit.f71739a;
            case 1:
                AirportListActivity airportListActivity = (AirportListActivity) obj5;
                ((Integer) obj2).getClass();
                ((Integer) obj3).getClass();
                ((Integer) obj4).getClass();
                AirportListActivity.Companion companion = AirportListActivity.r;
                ((CharSequence) obj).getClass();
                airportListActivity.I(airportListActivity.c());
                return Unit.f71739a;
            case 2:
                SQLiteQuery sQLiteQuery = (SQLiteQuery) obj4;
                FrameworkSQLiteDatabase.Companion companion2 = FrameworkSQLiteDatabase.f19883c;
                sQLiteQuery.getClass();
                ((SupportSQLiteQuery) obj5).j(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor((SQLiteCursorDriver) obj2, (String) obj3, sQLiteQuery);
            case 3:
                UrlFactory urlFactory = (UrlFactory) obj5;
                int iIntValue = ((Integer) obj).intValue();
                AssetImageUiModel assetImageUiModel = (AssetImageUiModel) obj2;
                Composer composer2 = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                assetImageUiModel.getClass();
                if ((iIntValue2 & 6) == 0) {
                    i2 = (composer2.d(iIntValue) ? 4 : 2) | iIntValue2;
                } else {
                    i2 = iIntValue2;
                }
                if ((iIntValue2 & 48) == 0) {
                    i2 |= composer2.K(assetImageUiModel) ? 32 : 16;
                }
                if (composer2.p(i2 & 1, (i2 & 147) != 146)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(AspectRatioKt.a(BackgroundKt.b(tr.d("PLPProductSliderComposable$lambda$3$0", 1.0f), LVAppDesignKitTheme.c(composer2).f48361b.f48377e, RectangleShapeKt.f8913a), 0.8f, false), "productCarousel_asset_" + iIntValue);
                    String strB = urlFactory.b(assetImageUiModel.f51778b, ImageConfiguration.Background.Transparent.f65853a);
                    strB.getClass();
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierE, strB, ContentScale.Companion.f9450c, null, null, 0, false, null, null, null, composer2, KyberEngine.KyberPolyBytes, 2040);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 4:
                GridModes gridModes = (GridModes) obj5;
                ((Integer) obj2).getClass();
                Composer composer3 = (Composer) obj3;
                int iIntValue3 = ((Integer) obj4).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 129) != 128)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    PLPSkeletonKt.c(gridModes, composer3, 0);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 5:
                Function2 function2 = (Function2) obj5;
                int iIntValue4 = ((Integer) obj).intValue();
                SuggestionItemUiModel suggestionItemUiModel = (SuggestionItemUiModel) obj2;
                Composer composer4 = (Composer) obj3;
                int iIntValue5 = ((Integer) obj4).intValue();
                suggestionItemUiModel.getClass();
                if ((iIntValue5 & 6) == 0) {
                    i3 = (composer4.d(iIntValue4) ? 4 : 2) | iIntValue5;
                } else {
                    i3 = iIntValue5;
                }
                if ((iIntValue5 & 48) == 0) {
                    i3 |= composer4.K(suggestionItemUiModel) ? 32 : 16;
                }
                if (composer4.p(i3 & 1, (i3 & 147) != 146)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SuggestionCarouselResult$lambda$0");
                    int i8 = i3 & 14;
                    boolean z = i8 == 4;
                    Object objX2 = composer4.x();
                    if (z || objX2 == composer$Companion$Empty$1) {
                        objX2 = new hb(iIntValue4, 25);
                        composer4.q(objX2);
                    }
                    Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX2);
                    int i9 = i3 & 112;
                    boolean zK2 = (i9 == 32) | composer4.K(function2) | (i8 == 4);
                    Object objX3 = composer4.x();
                    if (zK2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new zd(function2, suggestionItemUiModel, iIntValue4, i5);
                        composer4.q(objX3);
                    }
                    SuggestionCarouselComposableKt.d(modifierB, suggestionItemUiModel, (Function1) objX3, composer4, i9);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            default:
                Function1 function1 = (Function1) obj5;
                ((Integer) obj).getClass();
                CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj2;
                Composer composer5 = (Composer) obj3;
                int iIntValue6 = ((Integer) obj4).intValue();
                carouselSItemUiModel.getClass();
                if ((iIntValue6 & 48) == 0) {
                    iIntValue6 |= composer5.K(carouselSItemUiModel) ? 32 : 16;
                }
                if (composer5.p(iIntValue6 & 1, (iIntValue6 & 145) != 144)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    TutorialRecommendedKt.a(null, carouselSItemUiModel, function1, composer5, iIntValue6 & 112);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
        }
    }
}
