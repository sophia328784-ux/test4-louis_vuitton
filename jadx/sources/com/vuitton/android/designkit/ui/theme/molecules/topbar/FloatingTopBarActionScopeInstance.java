package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarActionScopeInstance;", "Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
final class FloatingTopBarActionScopeInstance implements TopBarActionScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FloatingTopBarActionScopeInstance f48742a = new FloatingTopBarActionScopeInstance();

    @Override // com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope
    public final void a(Modifier modifier, int i2, String str, Function0 function0, LVColorScheme lVColorScheme, FloatingTopBarStyle floatingTopBarStyle, String str2, boolean z, Composer composer, int i3) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "TopBarAction");
        }
        modifier.getClass();
        function0.getClass();
        lVColorScheme.getClass();
        floatingTopBarStyle.getClass();
        composer.L(1220384933);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TopBarAction");
        Dp.Companion companion = Dp.f11004c;
        int i4 = i3 << 3;
        LVIconButtonKt.b(PaddingKt.m(dTFunctionNameModifier, 8.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVFloatingTopBarKt.b(lVColorScheme, floatingTopBarStyle, composer), i2, null, str == null ? "" : str, false, 0, z, false, function0, composer, (i4 & 896) | 6 | (i4 & 234881024), (i3 >> 9) & 14, 744);
        composer.F();
    }
}
