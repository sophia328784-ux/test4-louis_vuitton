package com.vuitton.android.presentation.screen.privacy.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import com.vuitton.android.presentation.screen.privacy.models.ConsentValueUiModel;
import defpackage.cj;
import defpackage.hg;
import defpackage.n00;
import defpackage.v40;
import defpackage.x3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;", "state", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConsentSwitchKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63379a;

        static {
            int[] iArr = new int[ConsentValueUiModel.values().length];
            try {
                iArr[ConsentValueUiModel.GIVEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConsentValueUiModel.REFUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConsentValueUiModel.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConsentValueUiModel.MANDATORY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f63379a = iArr;
        }
    }

    public static final void a(Modifier modifier, String str, String str2, ConsentValueUiModel consentValueUiModel, boolean z, Function1 function1, Composer composer, int i2) {
        Modifier modifier2;
        LVSwitchLegalState lVSwitchLegalState;
        String str3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ConsentSwitch");
        }
        str.getClass();
        consentValueUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1686974749);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.d(consentValueUiModel.ordinal()) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ConsentSwitch");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(dTFunctionNameModifier, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierE2 = n00.e(gapComposerH, modifierC, function6, "ConsentSwitch", 1.0f);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            boolean z2 = false;
            TextKt.c(str, ModifierExtKt.e(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("ConsentSwitch"), 0.8f, true), "cbdtSettings_preference_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48428i, gapComposerH, (i3 >> 3) & 14, 0, 131068);
            gapComposerH = gapComposerH;
            boolean z3 = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                int i4 = WhenMappings.f63379a[consentValueUiModel.ordinal()];
                if (i4 == 1) {
                    lVSwitchLegalState = LVSwitchLegalState.ACCEPTED;
                } else if (i4 == 2) {
                    lVSwitchLegalState = LVSwitchLegalState.DENIED;
                } else if (i4 == 3) {
                    lVSwitchLegalState = LVSwitchLegalState.BLANK;
                } else {
                    if (i4 != 4) {
                        v40.g();
                        return;
                    }
                    lVSwitchLegalState = LVSwitchLegalState.ACCEPTED;
                }
                objX = SnapshotStateKt.g(lVSwitchLegalState);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            if (consentValueUiModel == ConsentValueUiModel.MANDATORY) {
                gapComposerH.L(-736367263);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.always_active_cta), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("ConsentSwitch"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "cbdtSettings_alwaysActive_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).o, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-735847951);
                LVSwitchLegalState lVSwitchLegalState2 = (LVSwitchLegalState) mutableState.getF10755b();
                Modifier modifierE3 = ModifierExtKt.e(new DTFunctionNameModifier("ConsentSwitch"), ((LVSwitchLegalState) mutableState.getF10755b()) == LVSwitchLegalState.ACCEPTED ? "cbdtSettings_preference_button_selected" : "cbdtSettings_preference_button");
                boolean zK = gapComposerH.K(mutableState) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                Object objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new x3(function1, mutableState, 5);
                    gapComposerH.q(objX2);
                }
                LVSwitchKt.c(modifierE3, lVSwitchLegalState2, false, (Function1) objX2, gapComposerH, 0, 4);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            if (str2 == null) {
                gapComposerH.L(-1916074968);
                gapComposerH.Z(false);
                str3 = "ConsentSwitch";
            } else {
                gapComposerH.L(-1916074967);
                GapComposer gapComposer = gapComposerH;
                str3 = "ConsentSwitch";
                TextKt.c(str2, PaddingKt.m(new DTFunctionNameModifier("ConsentSwitch"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposer, 0, 0, 131068);
                gapComposerH = gapComposer;
                z2 = false;
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(str3), LVAppDesignKitTheme.l(gapComposerH).f48417f));
            if (z) {
                gapComposerH.L(-1915636999);
                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 3);
                gapComposerH.Z(z2);
            } else {
                gapComposerH.L(-1915548587);
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(modifier2, str, str2, consentValueUiModel, z, function1, i2, 1);
        }
    }
}
