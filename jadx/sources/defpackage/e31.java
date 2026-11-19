package defpackage;

import android.view.View;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.libraries.ui.Views;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpScreenKt;
import com.vuitton.android.presentation.screen.search.components.TrendingComposableKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ThreadContextElement;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadContextKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e31 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68748b;

    public /* synthetic */ e31(int i2) {
        this.f68748b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f68748b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        switch (i2) {
            case 0:
                SaverScope saverScope = (SaverScope) obj;
                TextFieldValue textFieldValue = (TextFieldValue) obj2;
                return CollectionsKt.l(SaversKt.a(textFieldValue.f10840a, SaversKt.f10504a, saverScope), SaversKt.a(new TextRange(textFieldValue.f10841b), SaversKt.p, saverScope));
            case 1:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(-1758394889);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierB = BackgroundKt.b(ClipKt.a(new DTFunctionNameModifier("RateCell$lambda$0"), LVAppDesignKitTheme.j(composer).f48410b), LVAppDesignKitTheme.c(composer).f48361b.u, rectangleShapeKt$RectangleShape$1);
                composer.F();
                return modifierB;
            case 2:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer2.L(-1846134116);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ThematicPlpComposable$lambda$19$0");
                Object objX = composer2.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new z21(20);
                    composer2.q(objX);
                }
                Modifier modifierA = ModifierExtKt.a(dTFunctionNameModifier, null, (Function1) objX, 3);
                composer2.F();
                return modifierA;
            case 3:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(-1222876228);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierA2 = BorderKt.a(BackgroundKt.b(new DTFunctionNameModifier("CatalogHeaderItem$lambda$0"), LVAppDesignKitTheme.c(composer3).f48361b.f48375b, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.d(composer3).f48385c, LVAppDesignKitTheme.c(composer3).f48361b.p, RoundedCornerShapeKt.f5846a);
                composer3.F();
                return modifierA2;
            case 4:
                ((Integer) obj2).getClass();
                ThematicPlpScreenKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                Symbol symbol = ThreadContextKt.f75141a;
                if (!(element instanceof ThreadContextElement)) {
                    return obj;
                }
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int iIntValue = num != null ? num.intValue() : 1;
                return iIntValue == 0 ? element : Integer.valueOf(iIntValue + 1);
            case 6:
                ThreadContextElement threadContextElement = (ThreadContextElement) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                Symbol symbol2 = ThreadContextKt.f75141a;
                if (threadContextElement != null) {
                    return threadContextElement;
                }
                if (element2 instanceof ThreadContextElement) {
                    return (ThreadContextElement) element2;
                }
                return null;
            case 7:
                TopAppBarState topAppBarState = (TopAppBarState) obj2;
                return CollectionsKt.P(Float.valueOf(topAppBarState.f7439a), Float.valueOf(topAppBarState.b()), Float.valueOf(((SnapshotMutableFloatStateImpl) topAppBarState.f7440b).a()));
            case 8:
                Composer composer4 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer4.L(-802321755);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierC = com.vuitton.android.designkit.components.ModifierExtKt.c(new DTFunctionNameModifier("TrackDetailTitle_Y0xEhic$lambda$0$0$7"), null, null, null, null, new Dp(LVAppDesignKitTheme.d(composer4).o), new Dp(LVAppDesignKitTheme.d(composer4).f48383a), null, null, false, 463);
                composer4.F();
                return modifierC;
            case 9:
                Integer num2 = (Integer) obj;
                num2.intValue();
                ((TrackDetailUiModel.CueUiModel) obj2).getClass();
                return num2;
            case 10:
                ((Integer) obj2).getClass();
                TrendingComposableKt.d((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                Composer composer5 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer5.L(2118319901);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierC2 = com.vuitton.android.designkit.components.ModifierExtKt.c(new DTFunctionNameModifier("VariationsBottomSheet_icvEI7I$lambda$0$6$1"), null, null, null, null, null, null, new Dp(LVAppDesignKitTheme.d(composer5).E), new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM), false, 319);
                composer5.F();
                return modifierC2;
            case 12:
                return Views.hide$lambda$0((View) obj, ((Boolean) obj2).booleanValue());
            case 13:
                return Views.show$lambda$0((View) obj, ((Boolean) obj2).booleanValue());
            case 14:
                return Views.reveal$lambda$0((View) obj, ((Boolean) obj2).booleanValue());
            default:
                Composer composer6 = (Composer) obj;
                ((Integer) obj2).getClass();
                float f2 = WelcomeScreenKt.f54272a;
                composer6.L(-346029770);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierB2 = WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("WelcomeScreen$lambda$3$0$0"));
                composer6.F();
                return modifierB2;
        }
    }

    public /* synthetic */ e31(int i2, int i3) {
        this.f68748b = i3;
    }
}
