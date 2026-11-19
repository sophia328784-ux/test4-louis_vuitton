package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.CareServicesHowItWorksAction;
import com.vuitton.android.presentation.screen.distantrepairs.models.CareServicesRequestNewRepairAction;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ts0 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80133b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80134c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80136f;

    public /* synthetic */ ts0(String str, String str2, boolean z, boolean z2) {
        this.f80134c = z;
        this.f80135e = str;
        this.f80136f = str2;
        this.d = z2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        String strK;
        String strK2;
        int i2 = this.f80133b;
        boolean z = this.d;
        Object obj4 = this.f80136f;
        Object obj5 = this.f80135e;
        boolean z2 = this.f80134c;
        switch (i2) {
            case 0:
                Function0 function0 = (Function0) obj5;
                Function0 function1 = (Function0) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(paddingValues) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.h(new DTFunctionNameModifier("RepairListEmptyScreen$lambda$0"), paddingValues), "careservices_empty_view");
                    int i3 = LVAppDesignKitTheme.g(composer).I0;
                    String strC = StringResources_androidKt.c(composer, R.string.repair_blank_state_title);
                    String strC2 = StringResources_androidKt.c(composer, R.string.repair_blank_state_message);
                    if (z2) {
                        strK = o60.k(composer, -230574374, R.string.dr_cta_tuto_repairs, composer);
                    } else {
                        composer.L(1442186008);
                        composer.F();
                        strK = null;
                    }
                    if (z) {
                        strK2 = o60.k(composer, -230569056, R.string.dr_cta_request_new_repair, composer);
                    } else {
                        composer.L(1442356632);
                        composer.F();
                        strK2 = null;
                    }
                    LVEmptyViewKt.d(modifierE, i3, null, strC, strC2, strK, false, function0, strK2, function1, z ? CareServicesRequestNewRepairAction.f57371a : null, z2 ? CareServicesHowItWorksAction.f57370a : null, composer, 0, 0, 68);
                } else {
                    composer.D();
                }
                break;
            default:
                String str = (String) obj5;
                String str2 = (String) obj4;
                Composer composer2 = (Composer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                TextStyle textStyle = LVAppDesignKitTheme.n(composer2).f48427h;
                FontWeight.f10727c.getClass();
                TextStyle textStyleE = TextStyle.e(textStyle, 0L, 0L, FontWeight.f10730h, 0L, null, 0, 0L, 16777211);
                String str3 = z2 ? str : str2;
                TextAlign.f10959b.getClass();
                TextKt.c(str3, null, Color.b(z ? 1.0f : 0.16f, LVAppDesignKitTheme.c(composer2).f48361b.m), 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyleE, composer2, 0, 0, 130042);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ts0(Function0 function0, Function0 function1, boolean z, boolean z2) {
        this.f80134c = z;
        this.f80135e = function0;
        this.d = z2;
        this.f80136f = function1;
    }
}
