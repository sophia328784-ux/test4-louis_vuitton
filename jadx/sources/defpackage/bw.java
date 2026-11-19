package defpackage;

import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bw implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f20978c;

    public /* synthetic */ bw(float f2, int i2) {
        this.f20977b = i2;
        this.f20978c = f2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f20977b;
        float f2 = this.f20978c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                composer.L(1692484207);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierA = AspectRatioKt.a(new DTFunctionNameModifier("EditorialCardBackground$lambda$0$0"), f2, false);
                composer.F();
                return modifierA;
            case 1:
                composer.L(-1204467702);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierA2 = AspectRatioKt.a(new DTFunctionNameModifier("EditorialCardBackground$lambda$0$4$0"), f2, false);
                composer.F();
                return modifierA2;
            case 2:
                float f3 = ImmersiveArticleContentKt.f58386a;
                composer.L(653820576);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleContent_01WpQAk$lambda$3$11$1");
                float f4 = f2 + LVAppDesignKitTheme.l(composer).f48417f;
                Dp.Companion companion = Dp.f11004c;
                Modifier modifierM = PaddingKt.m(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                composer.F();
                return modifierM;
            case 3:
                composer.L(443078503);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierA3 = AspectRatioKt.a(new DTFunctionNameModifier("TopAssetWithGradients$lambda$0$0"), f2, false);
                composer.F();
                return modifierA3;
            case 4:
                composer.L(1280252588);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierA4 = AspectRatioKt.a(new DTFunctionNameModifier("TopAssetWithGradients$lambda$0$4$0"), f2, false);
                composer.F();
                return modifierA4;
            default:
                composer.L(1090578183);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierA5 = AlphaKt.a(ZIndexModifierKt.a(new DTFunctionNameModifier("ThematicPlpThemeSelectionContent_ioSWKzA$lambda$5"), 10.0f), f2);
                composer.F();
                return modifierA5;
        }
    }
}
