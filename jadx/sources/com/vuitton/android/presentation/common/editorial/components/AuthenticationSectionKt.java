package com.vuitton.android.presentation.common.editorial.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import defpackage.pq0;
import defpackage.q1;
import defpackage.tr;
import defpackage.w3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "cardHeightPx", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AuthenticationSectionKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50725a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50725a = iArr;
        }
    }

    public static final void a(Modifier modifier, String str, String str2, AssetImageUiModel assetImageUiModel, LVColorScheme lVColorScheme, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        long j2;
        long j3;
        long j4;
        long j5;
        ConfigurationButton configurationButton;
        ConfigurationButton configurationButton2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "AuthenticationSection");
        }
        Modifier modifier2 = modifierE;
        modifier2.getClass();
        str.getClass();
        str2.getClass();
        assetImageUiModel.getClass();
        lVColorScheme.getClass();
        GapComposer gapComposerC = a.c(function0, function1, composer, 925313812);
        Applier applier = gapComposerC.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerC.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerC.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerC.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerC.K(assetImageUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerC.d(lVColorScheme.ordinal()) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerC.y(function0) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerC.y(function1) ? 1048576 : 524288;
        }
        int i4 = i3;
        if (gapComposerC.p(i4 & 1, (i4 & 599187) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotIntStateKt.a(0);
                gapComposerC.q(objX);
            }
            MutableIntState mutableIntState = (MutableIntState) objX;
            float fK1 = ((Density) gapComposerC.k(CompositionLocalsKt.f10031h)).k1(mutableIntState.f() / 2);
            Modifier modifierM = PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, fK1, 7);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, measurePolicyD, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerC, modifierC, function7);
            Modifier modifierE2 = ModifierExtKt.e(AspectRatioKt.a(new DTFunctionNameModifier("AuthenticationSection"), 1.0f, false), "feedForYou_connectPush_image");
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            String str3 = assetImageUiModel.f51778b;
            str3.getClass();
            ImageLoaderKt.b(modifierE2, str3, contentScale$Companion$Crop$1, null, null, 0, false, null, null, null, gapComposerC, KyberEngine.KyberPolyBytes, 2040);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AuthenticationSection");
            Object objX2 = gapComposerC.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new q1(mutableIntState, 2);
                gapComposerC.q(objX2);
            }
            Modifier modifierA = ClipKt.a(PaddingKt.k(BoxScopeInstance.f4938a.g(OffsetKt.c(OnRemeasuredModifierKt.a(dTFunctionNameModifier, (Function1) objX2), Call.Parameters.DEFAULT_CAMERA_ZOOM, fK1, 1), Alignment.Companion.f8589i), LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.j(gapComposerC).f48411c);
            int[] iArr = WhenMappings.f50725a;
            int i5 = iArr[lVColorScheme.ordinal()];
            if (i5 == 1) {
                gapComposerC.L(1759989279);
                j2 = LVAppDesignKitTheme.c(gapComposerC).f48361b.f48374a;
                gapComposerC.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerC, 1759986273, false);
                }
                gapComposerC.L(1759992389);
                j2 = LVAppDesignKitTheme.c(gapComposerC).f48361b.f48378f;
                gapComposerC.Z(false);
            }
            Modifier modifierB = BackgroundKt.b(modifierA, j2, RectangleShapeKt.f8913a);
            float f2 = LVAppDesignKitTheme.d(gapComposerC).f48385c;
            int i6 = iArr[lVColorScheme.ordinal()];
            if (i6 == 1) {
                gapComposerC.L(1760001432);
                j3 = LVAppDesignKitTheme.c(gapComposerC).f48361b.q;
                gapComposerC.Z(false);
            } else {
                if (i6 != 2) {
                    throw d21.u(gapComposerC, 1759998419, false);
                }
                gapComposerC.L(1760004318);
                j3 = LVAppDesignKitTheme.c(gapComposerC).f48361b.t;
                gapComposerC.Z(false);
            }
            Modifier modifierE3 = ModifierExtKt.e(PaddingKt.i(BorderKt.a(modifierB, f2, j3, LVAppDesignKitTheme.j(gapComposerC).f48411c), LVAppDesignKitTheme.l(gapComposerC).f48416e), "feedForYou_connectPush_view");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerC, 0);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, modifierE3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerC, function5, gapComposerC, function6);
            Modifier modifierF = n00.f(gapComposerC, modifierC2, function7, "AuthenticationSection", "feedForYou_connectPushTitle_text");
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerC).f48426f;
            int i7 = iArr[lVColorScheme.ordinal()];
            if (i7 == 1) {
                gapComposerC.L(1577009094);
                j4 = LVAppDesignKitTheme.c(gapComposerC).f48361b.f48382k;
                gapComposerC.Z(false);
            } else {
                if (i7 != 2) {
                    throw d21.u(gapComposerC, 1577006201, false);
                }
                gapComposerC.L(1577011980);
                j4 = LVAppDesignKitTheme.c(gapComposerC).f48361b.m;
                gapComposerC.Z(false);
            }
            TextKt.c(str, modifierF, j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerC, (i4 >> 3) & 14, 0, 131064);
            Modifier modifierE4 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("AuthenticationSection"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "feedForYou_connectPushDescription_text");
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerC).l;
            int i8 = iArr[lVColorScheme.ordinal()];
            if (i8 == 1) {
                gapComposerC.L(1577028005);
                j5 = LVAppDesignKitTheme.c(gapComposerC).f48361b.l;
                gapComposerC.Z(false);
            } else {
                if (i8 != 2) {
                    throw d21.u(gapComposerC, 1577025111, false);
                }
                gapComposerC.L(1577030859);
                j5 = LVAppDesignKitTheme.c(gapComposerC).f48361b.n;
                gapComposerC.Z(false);
            }
            TextKt.c(str2, modifierE4, j5, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerC, (i4 >> 6) & 14, 0, 131064);
            Modifier modifierM2 = PaddingKt.m(tr.d("AuthenticationSection", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerC).f48416e), Alignment.Companion.f8591k, gapComposerC, 0);
            int iHashCode3 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerC.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerC, modifierM2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, rowMeasurePolicyA, function3);
            Updater.c(gapComposerC, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerC, function5, gapComposerC, function6);
            Updater.c(gapComposerC, modifierC3, function7);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AuthenticationSection");
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierE5 = ModifierExtKt.e(rowScopeInstance.a(dTFunctionNameModifier2, 1.0f, true), "feedForYou_connectPushLogin_button");
            int i9 = iArr[lVColorScheme.ordinal()];
            if (i9 == 1) {
                gapComposerC.L(-39103488);
                configurationButton = LVAppDesignKitTheme.b(gapComposerC).f48448c;
                gapComposerC.Z(false);
            } else {
                if (i9 != 2) {
                    throw d21.u(gapComposerC, -39106409, false);
                }
                gapComposerC.L(-39100634);
                configurationButton = LVAppDesignKitTheme.b(gapComposerC).d;
                gapComposerC.Z(false);
            }
            LVButtonKt.b((i4 << 12) & 1879048192, 504, gapComposerC, modifierE5, configurationButton, null, null, StringResources_androidKt.c(gapComposerC, R.string.push_connect_log_cta), function0, false, false, false);
            Modifier modifierE6 = ModifierExtKt.e(rowScopeInstance.a(new DTFunctionNameModifier("AuthenticationSection"), 1.0f, true), "feedForYou_connectPushRegister_button");
            int i10 = iArr[lVColorScheme.ordinal()];
            if (i10 == 1) {
                gapComposerC.L(-39084158);
                configurationButton2 = LVAppDesignKitTheme.b(gapComposerC).g;
                gapComposerC.Z(false);
            } else {
                if (i10 != 2) {
                    throw d21.u(gapComposerC, -39087077, false);
                }
                gapComposerC.L(-39081240);
                configurationButton2 = LVAppDesignKitTheme.b(gapComposerC).f48451h;
                gapComposerC.Z(false);
            }
            LVButtonKt.b((i4 << 9) & 1879048192, 504, gapComposerC, modifierE6, configurationButton2, null, null, StringResources_androidKt.c(gapComposerC, R.string.push_connect_sign_cta), function1, false, false, false);
            gapComposer = gapComposerC;
            pq0.x(gapComposer, true, true, true);
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(modifier2, str, str2, assetImageUiModel, lVColorScheme, function0, function1, i2);
        }
    }
}
