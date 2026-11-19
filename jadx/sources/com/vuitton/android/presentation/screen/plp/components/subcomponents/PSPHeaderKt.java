package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
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
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import defpackage.c30;
import defpackage.o8;
import defpackage.od;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "queryText", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PSPHeaderKt {
    public static final void a(String str, Integer num, boolean z, Function1 function1, Function0 function0, Composer composer, int i2) {
        MutableState mutableState;
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-49801798);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(num) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | 3072 | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            FocusRequester focusRequester = (FocusRequester) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g("");
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            Modifier modifierM = PaddingKt.m(PaddingKt.m(new DTFunctionNameModifier("PSPHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), f2, f2, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierA = FocusRequesterModifierKt.a(new DTFunctionNameModifier("PSPHeader"), focusRequester);
            String str2 = (String) mutableState2.getF10755b();
            String strC = StringResources_androidKt.c(gapComposerH, R.string.content_description_search_button);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                mutableState = mutableState2;
                objX3 = new c30(19, mutableState);
                gapComposerH.q(objX3);
            } else {
                mutableState = mutableState2;
            }
            Function1 function3 = (Function1) objX3;
            boolean z2 = (i3 & 57344) == 16384;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new o8(function1, mutableState, 11);
                gapComposerH.q(objX4);
            }
            int i4 = i3 << 6;
            LVSearchBarKt.a(modifierA, str2, function3, (Function0) objX4, strC, null, 0, function0, null, gapComposerH, (29360128 & i4) | 100663680, 608);
            if (!z || str == null) {
                gapComposerH.L(1646454231);
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("PSPHeader"), f2));
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1646238502);
                SearchResultCountBarKt.a(null, num, str, gapComposerH, (i4 & 896) | (i3 & 112) | 3072);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            Unit unit = Unit.f71739a;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new PSPHeaderKt$PSPHeader$2$1(focusRequester, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(str, num, z, function1, function0, i2);
        }
    }
}
