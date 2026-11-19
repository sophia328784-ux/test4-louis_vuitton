package com.vuitton.android.presentation.screen.forceupdate;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import defpackage.cj;
import defpackage.o60;
import defpackage.rv;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ForceUpdateComposableKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58182a;

        static {
            int[] iArr = new int[ForceUpdateType.values().length];
            try {
                iArr[ForceUpdateType.OS_VERSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ForceUpdateType.APP_VERSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58182a = iArr;
        }
    }

    public static final void a(ForceUpdateViewModel forceUpdateViewModel, ForceUpdateType forceUpdateType, Function0 function0, Composer composer, int i2) {
        forceUpdateType.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1307862185);
        int i3 = (gapComposerH.K(forceUpdateViewModel) ? 4 : 2) | i2 | (gapComposerH.d(forceUpdateType.ordinal()) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            b((ConfigsVersion) ((SnapshotMutableStateImpl) forceUpdateViewModel.t5()).getF10755b(), forceUpdateType, function0, gapComposerH, i3 & 1008);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 5, forceUpdateViewModel, forceUpdateType, function0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0070  */
    public static final void b(ConfigsVersion configsVersion, ForceUpdateType forceUpdateType, Function0 function0, Composer composer, int i2) {
        String str;
        String strF;
        boolean z;
        float f2;
        GapComposer gapComposerH = composer.h(-1576818945);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(configsVersion) ? 4 : 2) | (gapComposerH.d(forceUpdateType.ordinal()) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strF2 = (forceUpdateType != ForceUpdateType.OS_VERSION || configsVersion == null) ? null : configsVersion.g;
            int i4 = WhenMappings.f58182a[forceUpdateType.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    v40.g();
                    return;
                } else if (configsVersion != null) {
                    str = configsVersion.f67290e;
                    strF = str;
                } else {
                    strF = null;
                }
            } else if (configsVersion != null) {
                str = configsVersion.f67292h;
                strF = str;
            } else {
                strF = null;
            }
            Modifier modifierO = new DTFunctionNameModifier("ForceUpdateScreen").o(SizeKt.f5052c);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(modifierO, j2, rectangleShapeKt$RectangleShape$1);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ForceUpdateScreen");
            BiasAlignment biasAlignment = Alignment.Companion.f8587f;
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            Modifier modifierG = boxScopeInstance.g(dTFunctionNameModifier, biasAlignment);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierG);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).f48392a, gapComposerH, 0), null, PaddingKt.m(ColumnScopeInstance.f4944a.b(SizeKt.o(new DTFunctionNameModifier("ForceUpdateScreen"), IconSize.f48350e), Alignment.Companion.o), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), 0L, gapComposerH, 56, 8);
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("ForceUpdateScreen"), LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            if (strF2 == null) {
                z = false;
                strF2 = cj.f(gapComposerH, 132653386, R.string.force_update_title, gapComposerH, false);
            } else {
                z = false;
                gapComposerH.L(132652487);
                gapComposerH.Z(false);
            }
            String str2 = strF2;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
            TextAlign.f10959b.getClass();
            int i5 = TextAlign.f10961e;
            TextKt.c(str2, modifierK, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            Modifier modifierG2 = boxScopeInstance.g(o60.f(gapComposerH, true, "ForceUpdateScreen"), Alignment.Companion.f8589i);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierG2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            ForceUpdateType forceUpdateType2 = ForceUpdateType.APP_VERSION;
            if (forceUpdateType == forceUpdateType2) {
                gapComposerH.L(-274650326);
                f2 = LVAppDesignKitTheme.l(gapComposerH).g;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-274574934);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48418h;
                gapComposerH.Z(false);
            }
            Modifier modifierL = PaddingKt.l(tr.d("ForceUpdateScreen", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, f2);
            if (strF == null) {
                strF = forceUpdateType == forceUpdateType2 ? cj.f(gapComposerH, -274021770, R.string.force_update_subtitle, gapComposerH, false) : cj.f(gapComposerH, -273926197, R.string.force_os_update_subtitle_android, gapComposerH, false);
            }
            TextKt.c(strF, modifierL, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 130040);
            gapComposerH = gapComposerH;
            if (forceUpdateType == forceUpdateType2) {
                gapComposerH.L(-273526266);
                LVButtonKt.b((i3 << 21) & 1879048192, 504, gapComposerH, PaddingKt.l(BackgroundKt.b(tr.d("ForceUpdateScreen", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48418h), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.download_app), function0, false, false, false);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-272795472);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 6, configsVersion, forceUpdateType, function0);
        }
    }
}
