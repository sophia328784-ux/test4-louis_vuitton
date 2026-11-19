package com.vuitton.android.presentation.screen.osa.form.kisa;

import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.vuitton.android.designkit.components.components.LVLoadingOverlayKt;
import defpackage.i4;
import defpackage.jj0;
import defpackage.kw;
import defpackage.lc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "consentChecked", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaKisaComposableKt {
    public static final void a(boolean z, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-2117007590);
        int i3 = 2;
        int i4 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Unit unit = Unit.f71739a;
            boolean z2 = (i4 & 7168) == 2048;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new OsaKisaComposableKt$OsaKisaComposable$1$1(function2, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            ScaffoldKt.a(null, ComposableLambdaKt.b(-1062841386, new kw(function0, 24), gapComposerH), ComposableLambdaKt.b(-1925145547, new jj0(function1, mutableState), gapComposerH), null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-786975957, new lc(i3, mutableState), gapComposerH), gapComposerH, 805306800, 505);
            gapComposer = gapComposerH;
            if (z) {
                gapComposer.L(-470288917);
                LVLoadingOverlayKt.a(true, gapComposer, 6, 0);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-470230296);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(z, function0, function1, function2, i2);
        }
    }
}
