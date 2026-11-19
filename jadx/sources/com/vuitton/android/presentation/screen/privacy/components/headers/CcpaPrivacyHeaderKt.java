package com.vuitton.android.presentation.screen.privacy.components.headers;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import defpackage.d0;
import defpackage.t;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "ccpaTextExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CcpaPrivacyHeaderKt {
    public static final void a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(535196829);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Modifier modifierK = PaddingKt.k(BackgroundKt.b(new DTFunctionNameModifier("CcpaPrivacyHeader"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.ccpa_opt_out_preferences_title), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CcpaPrivacyHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdtSettings_title_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
            Modifier modifierB = AnimationModifierKt.b(ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("CcpaPrivacyHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cbdtSettings_description_text"), null, 3);
            int i3 = AnnotatedString.f10418f;
            AnnotatedString annotatedStringB = Html_androidKt.b(StringResources_androidKt.c(gapComposerH, R.string.ccpa_what_is_cookie), null, 6);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            TextKt.d(annotatedStringB, modifierB, j2, 0L, 0L, null, 0L, TextOverflow.f10991c, false, ((Boolean) mutableState.getF10755b()).booleanValue() ? Integer.MAX_VALUE : 5, 0, null, null, textStyle, gapComposerH, 0, KyberEngine.KyberPolyBytes, 241656);
            String strC = StringResources_androidKt.c(gapComposerH, ((Boolean) mutableState.getF10755b()).booleanValue() ? R.string.ccpa_read_less : R.string.ccpa_read_more);
            Modifier modifierE = ModifierExtKt.e(PaddingKt.m(ColumnScopeInstance.f4944a.b(new DTFunctionNameModifier("CcpaPrivacyHeader"), Alignment.Companion.p), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), ((Boolean) mutableState.getF10755b()).booleanValue() ? "cbdtSettings_readLess_button" : "cbdtSettings_readMore_button");
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new d0(17, mutableState);
                gapComposerH.q(objX2);
            }
            LVLinkKt.a(modifierE, strC, false, null, false, (Function0) objX2, gapComposerH, ImageMetadata.EDGE_MODE, 28);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.ccpa_accept_refuse_cookies), PaddingKt.m(new DTFunctionNameModifier("CcpaPrivacyHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 29);
        }
    }
}
