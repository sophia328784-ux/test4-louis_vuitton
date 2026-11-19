package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class g implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f69239c;

    public /* synthetic */ g(long j2, int i2) {
        this.f69238b = i2;
        this.f69239c = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69238b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        long j2 = this.f69239c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer).M1, composer, 0), StringResources_androidKt.c(composer, R.string.assistant_banner_title), SizeKt.o(new DTFunctionNameModifier("AICompanionButton$lambda$2"), IconSize.f48349c), this.f69239c, composer, 8, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer2).c0, composer2, 0), StringResources_androidKt.c(composer2, R.string.alt_next), ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("AudioGuideMiniPlayer_bogVsAg$lambda$0$2"), LVAppDesignKitTheme.d(composer2).o), "audioGuide_miniPlayerNext_button"), this.f69239c, composer2, 8, 0);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(1547642560);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("AudioGuideTimeline_ya7_Xgw$lambda$0$0$0"), j2, rectangleShapeKt$RectangleShape$1);
                composer3.F();
                return modifierB;
            case 3:
                Composer composer4 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer4.L(1932628663);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("AudioGuideTimeline_ya7_Xgw$lambda$0$0$1"), j2, rectangleShapeKt$RectangleShape$1);
                composer4.F();
                return modifierB2;
            case 4:
                Composer composer5 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer5).G0, composer5, 0), StringResources_androidKt.c(composer5, R.string.alt_show_lv_pass), null, this.f69239c, composer5, 8, 4);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            default:
                Composer composer6 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer6.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer6).H, composer6, 0), StringResources_androidKt.c(composer6, R.string.alt_back), null, this.f69239c, composer6, 8, 4);
                } else {
                    composer6.D();
                }
                return Unit.f71739a;
        }
    }
}
