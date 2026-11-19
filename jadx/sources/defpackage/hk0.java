package defpackage;

import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hk0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f69735c;

    public /* synthetic */ hk0(State state, int i2) {
        this.f69734b = i2;
        this.f69735c = state;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69734b;
        State state = this.f69735c;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i2) {
            case 0:
                composer.L(-809077478);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CatalogHeaderItemWithImage$lambda$3$0");
                float f2 = ((Dp) state.getF10755b()).f11006b;
                long j2 = LVAppDesignKitTheme.c(composer).f48361b.p;
                RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
                Modifier modifierA = ClipKt.a(PaddingKt.i(BorderKt.a(dTFunctionNameModifier, f2, j2, roundedCornerShape), LVAppDesignKitTheme.l(composer).f48414b), roundedCornerShape);
                composer.F();
                return modifierA;
            default:
                composer.L(-1884443095);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("CatalogHeaderItemWithImage$lambda$3$0");
                float f3 = ((Dp) state.getF10755b()).f11006b;
                long j3 = LVAppDesignKitTheme.c(composer).f48361b.p;
                RoundedCornerShape roundedCornerShape2 = RoundedCornerShapeKt.f5846a;
                Modifier modifierA2 = ClipKt.a(PaddingKt.i(BorderKt.a(dTFunctionNameModifier2, f3, j3, roundedCornerShape2), LVAppDesignKitTheme.l(composer).f48414b), roundedCornerShape2);
                composer.F();
                return modifierA2;
        }
    }
}
