package com.vuitton.android.presentation.screen.options.settings.components;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.res.VectorResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.iq0;
import defpackage.og0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ProfileSettingRowKt {
    public static final void a(Modifier modifier, String str, Boolean bool, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "ProfileSettingRow");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(2024623990);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i6 = i4 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(bool) ? 256 : 128);
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ProfileSettingRow");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_enabled);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_disabled);
            boolean zK = ((i6 & 112) == 32) | ((i6 & 896) == 256) | gapComposerH.K(strC) | gapComposerH.K(strC2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new iq0(str, strC, strC2, bool);
                gapComposerH.q(objX);
            }
            Modifier modifierM = PaddingKt.m(SizeKt.d(SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (Intrinsics.c(bool, Boolean.TRUE)) {
                gapComposerH.L(-1369535637);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).s0, gapComposerH, 0), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("ProfileSettingRow"), LVAppDesignKitTheme.d(gapComposerH).m), "contactPrivacySettings_greenLabel_view"), LVAppDesignKitTheme.c(gapComposerH).f48361b.w, gapComposerH, 56, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1369119648);
                ImageVector.Companion companion = ImageVector.f9072k;
                int i7 = LVAppDesignKitTheme.g(gapComposerH).s;
                Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                Resources resources = (Resources) gapComposerH.k(AndroidCompositionLocals_androidKt.f9937c);
                Resources.Theme theme = context.getTheme();
                boolean zK2 = gapComposerH.K(resources.getConfiguration()) | gapComposerH.d(i7) | gapComposerH.K(resources) | gapComposerH.K(theme);
                Object objX2 = gapComposerH.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    TypedValue typedValue = new TypedValue();
                    resources.getValue(i7, typedValue, true);
                    XmlResourceParser xml = resources.getXml(i7);
                    int next = xml.next();
                    while (next != 2 && next != 1) {
                        next = xml.next();
                    }
                    if (next != 2) {
                        throw new XmlPullParserException("No start tag found");
                    }
                    objX2 = VectorResources_androidKt.a(theme, resources, xml, typedValue.changingConfigurations).f10231a;
                    gapComposerH.q(objX2);
                }
                IconKt.b((ImageVector) objX2, null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("ProfileSettingRow"), LVAppDesignKitTheme.d(gapComposerH).m), "contactPrivacySettings_redLabel_view"), LVAppDesignKitTheme.c(gapComposerH).f48361b.x, gapComposerH, 48, 0);
                gapComposerH.Z(false);
            }
            TextKt.c(str, PaddingKt.k(com.vuitton.android.presentation.extensions.ModifierExtKt.a(new DTFunctionNameModifier("ProfileSettingRow"), null, null, 7), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, (i6 >> 3) & 14, 0, 131068);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(modifier2, str, bool, i2, i3, 3);
        }
    }
}
