package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeInvalidKt;
import defpackage.ii0;
import defpackage.n00;
import defpackage.wd0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "showDisable", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPStoreModeLeaveScreenKt {
    public static final void a(Flow flow, Function0 function0, Composer composer, int i2) {
        flow.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(2095012875);
        int i3 = (gapComposerH.y(flow) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                Modifier modifierB = BackgroundKt.b(n00.i(gapComposerH, -1935995261, "PLPStoreModeLeaveScreen").o(SizeKt.f5052c), Color.b(0.85f, LVAppDesignKitTheme.c(gapComposerH).f48361b.u), RectangleShapeKt.f8913a);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new ii0(23);
                    gapComposerH.q(objX2);
                }
                StoreModeInvalidKt.a(i3 & 112, gapComposerH, ModifierExtKt.c(modifierB, false, null, null, (Function0) objX2, 27), function0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1935668521);
                gapComposerH.Z(false);
            }
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(flow);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new PLPStoreModeLeaveScreenKt$PLPStoreModeLeaveScreen$2$1(flow, mutableState, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(flow, function0, i2, 17);
        }
    }
}
