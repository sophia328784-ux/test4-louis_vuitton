package com.vuitton.android.presentation.common.editorial.components.editorialcard;

import android.content.Context;
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
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.common.editorial.components.editorialcard.EditorialCardKt;
import com.vuitton.android.presentation.common.editorial.models.AssetLayoutUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModelKt$WhenMappings;
import com.vuitton.android.presentation.common.editorial.models.RatioUiModel;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.feed.components.card.FeedNotifyIconButtonsKt;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.dt;
import defpackage.h1;
import defpackage.iv;
import defpackage.n00;
import defpackage.r;
import defpackage.rq;
import defpackage.rt;
import defpackage.tr;
import defpackage.v40;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditorialCardKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50757a;

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
            f50757a = iArr;
        }
    }

    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, final AssetUiModel assetUiModel, final RatioUiModel ratioUiModel, final String str, final String str2, EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel, final boolean z, boolean z2, final A11ySettings a11ySettings, Function0 function0, Function0 function1, Function1 function2, Function0 function3, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        LVColorScheme lVColorScheme2;
        EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel2;
        final Function0 function4;
        final boolean z3;
        final Function0 function5;
        final Function1 function6;
        GapComposer gapComposer;
        final Modifier modifier2;
        final Function0 function7;
        Function0 function8;
        Function1 function9;
        Function0 function10;
        LvExoPlayer lvExoPlayer;
        Applier applier;
        Function0 function11;
        boolean z4;
        int i8;
        Function1 function12;
        int i9;
        boolean z5;
        long j2;
        String str3;
        boolean z6;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i10;
        String str4;
        boolean z7;
        GapComposer gapComposer2;
        boolean z8;
        Function0 function13;
        Function1 function14;
        Modifier modifier3;
        ConfigurationButton configurationButton;
        long j3;
        LiveVideoStatusUiModel liveVideoStatusUiModel;
        float f2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "EditorialCard");
        }
        assetUiModel.getClass();
        ratioUiModel.getClass();
        editorialModuleCardTypeUiModel.getClass();
        a11ySettings.getClass();
        GapComposer gapComposerH = composer.h(-777577516);
        Applier applier2 = gapComposerH.f7976a;
        int i11 = i3 & 1;
        if (i11 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(assetUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.d(ratioUiModel.ordinal()) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(str) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.K(str2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.K(editorialModuleCardTypeUiModel) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.b(z) ? 8388608 : 4194304;
        }
        int i12 = i3 & 256;
        if (i12 != 0) {
            i4 |= 100663296;
        } else if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.b(z2) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.K(a11ySettings) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i13 = i4;
        int i14 = gapComposerH.y(function0) ? 4 : 2;
        int i15 = i3 & 2048;
        if (i15 != 0) {
            i5 = i14 | 48;
        } else {
            i5 = i14 | (gapComposerH.y(function1) ? 32 : 16);
        }
        Modifier modifier4 = modifierE;
        int i16 = i5;
        int i17 = i3 & 4096;
        if (i17 != 0) {
            i6 = i16 | KyberEngine.KyberPolyBytes;
        } else {
            i6 = i16 | (gapComposerH.y(function2) ? 256 : 128);
        }
        int i18 = i3 & 8192;
        if (i18 != 0) {
            i7 = i6 | 3072;
        } else {
            i7 = i6 | (gapComposerH.y(function3) ? 2048 : 1024);
        }
        if (gapComposerH.p(i13 & 1, ((i13 & 306783379) == 306783378 && (i7 & 1171) == 1170) ? false : true)) {
            Modifier dTFunctionNameModifier = i11 != 0 ? new DTFunctionNameModifier("EditorialCard") : modifier4;
            boolean z9 = i12 != 0 ? false : z2;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (i15 != 0) {
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$2) {
                    objX = new rt(15);
                    gapComposerH.q(objX);
                }
                function8 = (Function0) objX;
            } else {
                function8 = function1;
            }
            if (i17 != 0) {
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$2) {
                    objX2 = new iv(8);
                    gapComposerH.q(objX2);
                }
                function9 = (Function1) objX2;
            } else {
                function9 = function2;
            }
            if (i18 != 0) {
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$2) {
                    objX3 = new rt(16);
                    gapComposerH.q(objX3);
                }
                function10 = (Function0) objX3;
            } else {
                function10 = function3;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Function1 function15 = function9;
            int i19 = i7;
            if (assetUiModel.f51781c == null) {
                gapComposerH.L(-2052562982);
                gapComposerH.Z(false);
                lvExoPlayer = null;
            } else {
                gapComposerH.L(-2052562981);
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$2) {
                    objX4 = new LvExoPlayer(context);
                    gapComposerH.q(objX4);
                }
                lvExoPlayer = (LvExoPlayer) objX4;
                gapComposerH.Z(false);
            }
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$2) {
                switch (EditorialModuleUiModelKt$WhenMappings.f50855a[ratioUiModel.ordinal()]) {
                    case 1:
                        f2 = 0.6666667f;
                        break;
                    case 2:
                        f2 = 0.8f;
                        break;
                    case 3:
                        f2 = 1.7777778f;
                        break;
                    case 4:
                        f2 = 0.5625f;
                        break;
                    case 5:
                        f2 = 1.0f;
                        break;
                    case 6:
                        f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        break;
                    default:
                        v40.g();
                        return;
                }
                objX5 = Float.valueOf(f2);
                gapComposerH.q(objX5);
            }
            float fFloatValue = ((Number) objX5).floatValue();
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$2) {
                objX6 = Boolean.valueOf(ratioUiModel == RatioUiModel.FULLSCREEN);
                gapComposerH.q(objX6);
            }
            boolean zBooleanValue = ((Boolean) objX6).booleanValue();
            LvExoPlayer lvExoPlayer2 = lvExoPlayer;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$2) {
                objX7 = Boolean.valueOf(fFloatValue == 1.7777778f || fFloatValue == 0.5625f || zBooleanValue);
                gapComposerH.q(objX7);
            }
            boolean zBooleanValue2 = ((Boolean) objX7).booleanValue();
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$2) {
                objX8 = Boolean.valueOf((editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Simple) && ((EditorialModuleCardTypeUiModel.Simple) editorialModuleCardTypeUiModel).f50809a == AssetLayoutUiModel.MARIELOUISE_CENTERED);
                gapComposerH.q(objX8);
            }
            boolean zBooleanValue3 = ((Boolean) objX8).booleanValue();
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$2) {
                if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Simple) {
                    applier = applier2;
                    boolean z10 = ((EditorialModuleCardTypeUiModel.Simple) editorialModuleCardTypeUiModel).f50809a == AssetLayoutUiModel.MARIELOUISE_LEFT;
                    objX9 = Boolean.valueOf(z10);
                    gapComposerH.q(objX9);
                } else {
                    applier = applier2;
                }
                objX9 = Boolean.valueOf(z10);
                gapComposerH.q(objX9);
            } else {
                applier = applier2;
            }
            boolean zBooleanValue4 = ((Boolean) objX9).booleanValue();
            Object objX10 = gapComposerH.x();
            if (objX10 == composer$Companion$Empty$2) {
                objX10 = Boolean.valueOf(lvExoPlayer2 != null && a11ySettings.f51775a);
                gapComposerH.q(objX10);
            }
            boolean zBooleanValue5 = ((Boolean) objX10).booleanValue();
            Object objX11 = gapComposerH.x();
            if (objX11 == composer$Companion$Empty$2) {
                objX11 = Boolean.valueOf(((editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Event) && ((EditorialModuleCardTypeUiModel.Event) editorialModuleCardTypeUiModel).f50805b) || ((editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) && ((EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel).f50806a.f50863b == LiveVideoStatusUiModel.LIVE_UPCOMING));
                gapComposerH.q(objX11);
            }
            boolean zBooleanValue6 = ((Boolean) objX11).booleanValue();
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            Function0 function16 = function10;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function17 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            Modifier modifier5 = dTFunctionNameModifier;
            if (gapComposerH.S) {
                gapComposerH.C(function17);
            } else {
                gapComposerH.o();
            }
            Function2 function18 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function18);
            Function2 function19 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function19);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function20 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function20);
            Function1 function21 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function21);
            Function2 function22 = ComposeUiNode.Companion.d;
            int i20 = i13 >> 18;
            EditorialCardBackgroundKt.a(ModifierExtKt.b(ModifierExtKt.b(ModifierExtKt.b(ModifierExtKt.b(ModifierExtKt.b(tr.e(gapComposerH, modifierC, function22, "EditorialCard"), !zBooleanValue2, new rq(12), gapComposerH, 6), zBooleanValue3, new rq(13), gapComposerH, 48), zBooleanValue4, new rq(14), gapComposerH, 48), zBooleanValue, new rq(15), gapComposerH, 48), z, new rq(16), gapComposerH, i20 & 112), fFloatValue, assetUiModel, zBooleanValue, zBooleanValue5, zBooleanValue6, a11ySettings.f51775a, a11ySettings.f51776b, lvExoPlayer2, function0, ComposableLambdaKt.b(2077706468, new r(13, editorialModuleCardTypeUiModel, a11ySettings, lvExoPlayer2, function16), gapComposerH), gapComposerH, (i13 & 896) | 224304 | ((i19 << 27) & 1879048192));
            GapComposer gapComposer3 = gapComposerH;
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("EditorialCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposer3, 48);
            int iHashCode2 = Long.hashCode(gapComposer3.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer3.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer3, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer3.B();
            if (gapComposer3.S) {
                function11 = function17;
                gapComposer3.C(function11);
            } else {
                function11 = function17;
                gapComposer3.o();
            }
            Updater.c(gapComposer3, rowMeasurePolicyA, function18);
            Updater.c(gapComposer3, persistentCompositionLocalMapU2, function19);
            cj.t(iHashCode2, gapComposer3, function20, gapComposer3, function21);
            Updater.c(gapComposer3, modifierC2, function22);
            Modifier modifierA = RowScopeInstance.f5040a.a(PaddingKt.m(new DTFunctionNameModifier("EditorialCard"), LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), 1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposer3, 0);
            int iHashCode3 = Long.hashCode(gapComposer3.getT());
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer3.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposer3, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer3.B();
            if (gapComposer3.S) {
                gapComposer3.C(function11);
            } else {
                gapComposer3.o();
            }
            Updater.c(gapComposer3, columnMeasurePolicyA2, function18);
            Updater.c(gapComposer3, persistentCompositionLocalMapU3, function19);
            cj.t(iHashCode3, gapComposer3, function20, gapComposer3, function21);
            Updater.c(gapComposer3, modifierC3, function22);
            if (str2 == null || ((editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) && ((liveVideoStatusUiModel = ((EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel).f50806a.f50863b) == LiveVideoStatusUiModel.LIVE_UPCOMING || liveVideoStatusUiModel == LiveVideoStatusUiModel.LIVE))) {
                z4 = false;
                i8 = 6;
                function12 = null;
                i9 = 2;
                gapComposer3.L(1312751262);
                gapComposer3.Z(false);
            } else {
                gapComposer3.L(1312058784);
                String upperCase = str2.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                i8 = 6;
                function12 = null;
                Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.m(new DTFunctionNameModifier("EditorialCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48414b, 7), "editorialCard_surtitle_text", null, 6);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer3).p;
                int i21 = WhenMappings.f50757a[lVColorScheme.ordinal()];
                if (i21 != 1) {
                    i9 = 2;
                    if (i21 != 2) {
                        throw d21.u(gapComposer3, 1289263773, false);
                    }
                    gapComposer3.L(1289270040);
                    j3 = LVAppDesignKitTheme.c(gapComposer3).f48361b.m;
                    gapComposer3.Z(false);
                } else {
                    i9 = 2;
                    gapComposer3.L(1289266898);
                    j3 = LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k;
                    gapComposer3.Z(false);
                }
                TextKt.c(upperCase, modifierA2, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer3, 0, 0, 131064);
                z4 = false;
                gapComposer3.Z(false);
            }
            if (str == null) {
                gapComposer3.L(1312796056);
                gapComposer3.Z(z4);
                z6 = z4;
                editorialModuleCardTypeUiModel2 = editorialModuleCardTypeUiModel;
                str3 = "EditorialCard";
            } else {
                Modifier modifierA3 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(n00.i(gapComposer3, 1312796057, "EditorialCard"), "editorialCard_title_text", function12, i8);
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer3).f48429j;
                int i22 = WhenMappings.f50757a[lVColorScheme.ordinal()];
                if (i22 == 1) {
                    z5 = false;
                    gapComposer3.L(1273612880);
                    j2 = LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k;
                    gapComposer3.Z(false);
                } else {
                    if (i22 != i9) {
                        throw d21.u(gapComposer3, 1273609755, false);
                    }
                    gapComposer3.L(1273616022);
                    j2 = LVAppDesignKitTheme.c(gapComposer3).f48361b.m;
                    z5 = false;
                    gapComposer3.Z(false);
                }
                str3 = "EditorialCard";
                TextKt.c(str, modifierA3, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer3, 0, 0, 131064);
                gapComposer3 = gapComposer3;
                z6 = false;
                gapComposer3.Z(false);
                editorialModuleCardTypeUiModel2 = editorialModuleCardTypeUiModel;
            }
            boolean z11 = editorialModuleCardTypeUiModel2 instanceof EditorialModuleCardTypeUiModel.Live;
            if (z11 && ((EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel2).f50806a.f50863b == LiveVideoStatusUiModel.LIVE_REPLAY) {
                str4 = str3;
                Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(n00.i(gapComposer3, 1313566376, str4), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "editorialCard_action_button");
                int i23 = WhenMappings.f50757a[lVColorScheme.ordinal()];
                z7 = true;
                if (i23 == 1) {
                    gapComposer3.L(1289311378);
                    configurationButton = LVAppDesignKitTheme.b(gapComposer3).g;
                    gapComposer3.Z(z6);
                } else {
                    if (i23 != 2) {
                        throw d21.u(gapComposer3, 1289308343, z6);
                    }
                    gapComposer3.L(1289314424);
                    configurationButton = LVAppDesignKitTheme.b(gapComposer3).f48451h;
                    gapComposer3.Z(z6);
                }
                ConfigurationButton configurationButton2 = configurationButton;
                String strC = StringResources_androidKt.c(gapComposer3, R.string.feed_watch_the_show);
                i10 = i19;
                boolean z12 = (i10 & 14) == 4 ? true : z6;
                Object objX12 = gapComposer3.x();
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (z12 || objX12 == composer$Companion$Empty$1) {
                    function4 = function0;
                    objX12 = new h1(function4, 27);
                    gapComposer3.q(objX12);
                } else {
                    function4 = function0;
                }
                LVButtonKt.b(0, 504, gapComposer3, modifierE2, configurationButton2, null, null, strC, (Function0) objX12, false, false, false);
                gapComposer3.Z(z6);
            } else {
                function4 = function0;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                i10 = r56;
                str4 = str3;
                z7 = true;
                gapComposer3.L(1314264062);
                gapComposer3.Z(z6);
            }
            gapComposer3.Z(z7);
            if (editorialModuleCardTypeUiModel2 instanceof EditorialModuleCardTypeUiModel.Event) {
                Modifier modifierE3 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(n00.i(gapComposer3, 1729093433, str4), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), "editorialCard_notifyMe_button");
                int i24 = (i13 & 112) | (i20 & 896) | ((i10 << 6) & 7168);
                boolean z13 = z9;
                Function0 function23 = function8;
                FeedNotifyIconButtonsKt.a(modifierE3, lVColorScheme, z13, function23, gapComposer3, i24);
                function13 = function23;
                gapComposer2 = gapComposer3;
                lVColorScheme2 = lVColorScheme;
                z8 = z13;
                gapComposer2.Z(z6);
                modifier3 = modifier5;
                function14 = function15;
            } else {
                gapComposer2 = gapComposer3;
                z8 = z9;
                function13 = function8;
                lVColorScheme2 = lVColorScheme;
                if (z11 && ((EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel2).f50806a.f50863b == LiveVideoStatusUiModel.LIVE_UPCOMING) {
                    Modifier modifierE4 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.m(n00.i(gapComposer2, 1729112487, str4), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), "editorialCard_addToCalendar_button");
                    boolean z14 = ((i10 & 896) == 256 ? z7 : z6) | ((r70 & 3670016) == 1048576 ? z7 : z6);
                    Object objX13 = gapComposer2.x();
                    if (z14 || objX13 == composer$Companion$Empty$1) {
                        function14 = function15;
                        objX13 = new dt(function14, editorialModuleCardTypeUiModel2, 8);
                        gapComposer2.q(objX13);
                    } else {
                        function14 = function15;
                    }
                    FeedNotifyIconButtonsKt.b(modifierE4, lVColorScheme2, (Function0) objX13, gapComposer2, r70 & 112);
                    gapComposer2.Z(z6);
                    modifier3 = modifier5;
                } else {
                    function14 = function15;
                    gapComposer2.L(1729126680);
                    modifier3 = modifier5;
                    SpacerKt.a(gapComposer2, SizeKt.s(modifier3, LVAppDesignKitTheme.l(gapComposer2).f48416e));
                    gapComposer2.Z(z6);
                }
            }
            gapComposer2.Z(z7);
            gapComposer2.Z(z7);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            function6 = function14;
            modifier2 = modifier3;
            z3 = z8;
            function5 = function13;
            gapComposer = gapComposer2;
            function7 = function16;
        } else {
            lVColorScheme2 = lVColorScheme;
            editorialModuleCardTypeUiModel2 = editorialModuleCardTypeUiModel;
            function4 = function0;
            gapComposerH.D();
            z3 = z2;
            function5 = function1;
            function6 = function2;
            gapComposer = gapComposerH;
            modifier2 = modifier4;
            function7 = function3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final LVColorScheme lVColorScheme3 = lVColorScheme2;
            final EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel3 = editorialModuleCardTypeUiModel2;
            recomposeScopeImplB0.d = new Function2() { // from class: dw
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    EditorialCardKt.a(modifier2, lVColorScheme3, assetUiModel, ratioUiModel, str, str2, editorialModuleCardTypeUiModel3, z, z3, a11ySettings, function4, function5, function6, function7, (Composer) obj, iA, i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
