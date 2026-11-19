package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleAuthenticationSectionUiModel;
import defpackage.a;
import defpackage.n00;
import defpackage.tr;
import defpackage.uv;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleAuthenticationViewKt {
    public static final void a(Modifier modifier, ImmersiveArticleAuthenticationSectionUiModel immersiveArticleAuthenticationSectionUiModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleAuthenticationView");
        }
        GapComposer gapComposerC = a.c(function0, function1, composer, -1655225841);
        int i3 = i2 | 6 | (gapComposerC.K(immersiveArticleAuthenticationSectionUiModel) ? 32 : 16) | (gapComposerC.y(function0) ? 256 : 128) | (gapComposerC.y(function1) ? 2048 : 1024);
        if (gapComposerC.p(i3 & 1, (i3 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImmersiveArticleAuthenticationView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(dTFunctionNameModifier, LVAppDesignKitTheme.l(gapComposerC).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            float f2 = LVAppDesignKitTheme.l(gapComposerC).g;
            float f3 = LVAppDesignKitTheme.l(gapComposerC).g + LVAppDesignKitTheme.l(gapComposerC).l;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierM = PaddingKt.m(modifierK, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 5);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, gapComposerC, 48);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerC.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
            TextAlign.f10959b.getClass();
            int i4 = TextAlign.f10961e;
            TextKt.c(immersiveArticleAuthenticationSectionUiModel.f58644c, null, LVAppDesignKitTheme.c(gapComposerC).f48361b.y, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerC).f48425e, gapComposerC, 0, 0, 130042);
            String str = immersiveArticleAuthenticationSectionUiModel.d;
            if (str == null) {
                gapComposerC.L(390925082);
                gapComposerC.Z(false);
            } else {
                TextKt.c(str, PaddingKt.m(n00.i(gapComposerC, 390925083, "ImmersiveArticleAuthenticationView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposerC).f48361b.y, 0L, null, 0L, null, new TextAlign(i4), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerC).g, gapComposerC, 0, 0, 130040);
                gapComposerC.Z(false);
            }
            SpacerKt.a(gapComposerC, PaddingKt.m(new DTFunctionNameModifier("ImmersiveArticleAuthenticationView"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13));
            LVButtonKt.b((i3 << 21) & 1879048192, 504, gapComposerC, PaddingKt.m(tr.d("ImmersiveArticleAuthenticationView", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, 7), LVAppDesignKitTheme.b(gapComposerC).f48447b, null, null, StringResources_androidKt.c(gapComposerC, R.string.mylv_account_creation_login_title_bottom), function0, false, false, false);
            LVButtonKt.b(6 | ((i3 << 18) & 1879048192), 504, gapComposerC, tr.d("ImmersiveArticleAuthenticationView", 1.0f), LVAppDesignKitTheme.b(gapComposerC).f48447b, null, null, StringResources_androidKt.c(gapComposerC, R.string.mylv_authent_native_apple_sign_up_title), function1, false, false, false);
            gapComposerC.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerC.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) modifier2, (Object) immersiveArticleAuthenticationSectionUiModel, function0, (Function) function1, i2, 2);
        }
    }
}
