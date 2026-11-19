package com.vuitton.android.presentation.screen.certificates.components.add;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.style.TextAlign;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.fl;
import defpackage.gl;
import defpackage.hl;
import defpackage.o0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateConfirmationScreenKt {
    public static final void a(Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-191222072);
        int i3 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = (i3 & 14) == 4;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new CertificateConfirmationScreenKt$CertificateConfirmationScreen$1$1(function0, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(-954889596, new o0(function2, 21), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1889458407, new gl(function1, function2, 0), gapComposerH), gapComposer, 805306416, 509);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hl(function0, function1, function2, i2, 0);
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1316233744);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.certificate_activation_pending_subtitle);
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f4 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            Modifier modifierD = SizeKt.d(PaddingKt.m(companion, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, f2, 2), 1.0f);
            TextAlign.f10959b.getClass();
            int i3 = TextAlign.f10961e;
            gapComposer = gapComposerH;
            TextKt.c(strC, modifierD, 0L, 0L, null, 0L, null, new TextAlign(i3), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposer, 0, 0, 130044);
            TextKt.c(StringResources_androidKt.c(gapComposer, R.string.my_certificate_confirmation_help_contact), SizeKt.d(PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48417f, 2), 1.0f), 0L, 0L, null, 0L, null, new TextAlign(i3), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).m, gapComposer, 0, 0, 130044);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fl(i2);
        }
    }
}
