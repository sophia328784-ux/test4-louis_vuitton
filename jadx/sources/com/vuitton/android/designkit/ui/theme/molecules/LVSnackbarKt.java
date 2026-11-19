package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.SnackbarDuration;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarVisuals;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import defpackage.ag;
import defpackage.c70;
import defpackage.cj;
import defpackage.dh;
import defpackage.f1;
import defpackage.g2;
import defpackage.k60;
import defpackage.n00;
import defpackage.o60;
import defpackage.u70;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isFullyDisplayed", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSnackbarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48665a = new StaticProvidableCompositionLocal(new c70(7));

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48672b;

        static {
            int[] iArr = new int[LVSnackbarConfiguration.values().length];
            try {
                iArr[LVSnackbarConfiguration.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVSnackbarConfiguration.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LVSnackbarConfiguration.SUCCESS_INVERT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LVSnackbarConfiguration.ERROR_INVERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LVSnackbarConfiguration.CHAT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LVSnackbarConfiguration.CHAT_INVERT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[LVSnackbarConfiguration.FEEDBACK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f48671a = iArr;
            int[] iArr2 = new int[SnackbarDuration.values().length];
            try {
                iArr2[SnackbarDuration.Indefinite.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[SnackbarDuration.Long.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[SnackbarDuration.Short.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            f48672b = iArr2;
        }
    }

    public static final void a(Modifier modifier, SnackbarHostState snackbarHostState, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSnackbar");
        }
        snackbarHostState.getClass();
        GapComposer gapComposerH = composer.h(1709771444);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("LVSnackbar");
            }
            Modifier modifier2 = modifier;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            c(PaddingKt.m(modifier2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 7), snackbarHostState, gapComposerH, i4 & 112);
            modifier = modifier2;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dh(modifier, snackbarHostState, i2, i3);
        }
    }

    public static final void b(SnackbarHostState snackbarHostState, Modifier modifier, Function3 function3, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSnackbarHost");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(-1937475284);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SnackbarData snackbarData = (SnackbarData) ((SnapshotMutableStateImpl) snackbarHostState.f7291b).getF10755b();
            AccessibilityManager accessibilityManager = (AccessibilityManager) gapComposerH.k(CompositionLocalsKt.f10026a);
            boolean zK = gapComposerH.K(snackbarData) | gapComposerH.y(accessibilityManager);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new LVSnackbarKt$LVSnackbarHost$1$1(snackbarData, accessibilityManager, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, snackbarData, (Function2) objX);
            CrossfadeKt.b(snackbarData, null, AnimationSpecKt.c(300, 0, null, 6), "", ComposableLambdaKt.b(-403310992, new f1(modifier2, function3, 25), gapComposerH), gapComposerH, 28032, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 21, snackbarHostState, modifier2, function3);
        }
    }

    public static final void c(Modifier modifier, SnackbarHostState snackbarHostState, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSnackbarInternal");
        }
        GapComposer gapComposerH = composer.h(-1642930287);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Dp.Companion companion = Dp.f11004c;
            b(snackbarHostState, PaddingKt.k(modifier, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ComposableLambdaKt.b(-595802086, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.molecules.c
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    SnackbarConfiguration snackbarConfiguration;
                    SnackbarData snackbarData = (SnackbarData) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSnackbarKt.f48665a;
                    snackbarData.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(snackbarData) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        SnackbarVisuals f7292a = snackbarData.getF7292a();
                        LVSnackbarVisuals lVSnackbarVisuals = f7292a instanceof LVSnackbarVisuals ? (LVSnackbarVisuals) f7292a : null;
                        if (lVSnackbarVisuals == null || !lVSnackbarVisuals.f48676e) {
                            composer2.L(1560150248);
                            composer2.F();
                        } else {
                            composer2.L(1560007059);
                            Unit unit = Unit.f71739a;
                            HapticFeedback hapticFeedback2 = hapticFeedback;
                            boolean zY = composer2.y(hapticFeedback2);
                            Object objX = composer2.x();
                            if (zY || objX == Composer.Companion.f7939a) {
                                objX = new LVSnackbarKt$LVSnackbarInternal$1$1$1(hapticFeedback2, null);
                                composer2.q(objX);
                            }
                            EffectsKt.e(composer2, unit, (Function2) objX);
                            composer2.F();
                        }
                        LVSnackbarConfiguration lVSnackbarConfiguration = lVSnackbarVisuals != null ? lVSnackbarVisuals.f48677f : null;
                        switch (lVSnackbarConfiguration == null ? -1 : LVSnackbarKt.WhenMappings.f48671a[lVSnackbarConfiguration.ordinal()]) {
                            case -1:
                                composer2.L(-1335112255);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).f48678a;
                                composer2.F();
                                break;
                            case 0:
                            default:
                                throw o60.v(composer2, -1335143768);
                            case 1:
                                composer2.L(1560268699);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).f48678a;
                                composer2.F();
                                break;
                            case 2:
                                composer2.L(1560395613);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).f48680c;
                                composer2.F();
                                break;
                            case 3:
                                composer2.L(1560529781);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).f48679b;
                                composer2.F();
                                break;
                            case 4:
                                composer2.L(1560669591);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).d;
                                composer2.F();
                                break;
                            case 5:
                                composer2.L(1560799326);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).f48681e;
                                composer2.F();
                                break;
                            case 6:
                                composer2.L(1560929464);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).f48682f;
                                composer2.F();
                                break;
                            case 7:
                                composer2.L(1561062330);
                                snackbarConfiguration = LVAppDesignKitTheme.k(composer2).g;
                                composer2.F();
                                break;
                        }
                        LVSnackbarKt.d(snackbarData, snackbarConfiguration, composer2, iIntValue & 14);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i3 >> 3) & 14) | KyberEngine.KyberPolyBytes);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(modifier, snackbarHostState, i2, 17);
        }
    }

    /* JADX WARN: Code duplicated, block: B:110:0x03af  */
    /* JADX WARN: Code duplicated, block: B:112:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:114:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:117:0x03df  */
    /* JADX WARN: Code duplicated, block: B:118:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:122:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:124:0x0427  */
    public static final void d(SnackbarData snackbarData, SnackbarConfiguration snackbarConfiguration, Composer composer, int i2) {
        int i3;
        SnackbarData snackbarData2;
        Modifier modifierJ;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        boolean z;
        Object objX;
        SnackbarConfiguration snackbarConfiguration2 = snackbarConfiguration;
        GapComposer gapComposerH = composer.h(-1839461447);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.K(snackbarData) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(snackbarConfiguration2) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String d = snackbarData.getF7292a().getD();
            boolean z2 = d == null || StringsKt.w(d);
            boolean z3 = !z2;
            int i4 = i3 & 14;
            boolean z4 = i4 == 4;
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z4 || objX2 == composer$Companion$Empty$2) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            boolean zK = gapComposerH.K(mutableState);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$2) {
                objX3 = new LVSnackbarKt$LVSnackbarLayout$1$1(mutableState, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, snackbarData, (Function2) objX3);
            Modifier modifierD = SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("LVSnackbarLayout"), "toast_section_view"), 1.0f);
            if (z2) {
                modifierJ = n00.j(gapComposerH, 92557177, false, "LVSnackbarLayout");
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 92291228, "LVSnackbarLayout");
                Object objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$2) {
                    objX4 = InteractionSourceKt.a();
                    gapComposerH.q(objX4);
                }
                MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX4;
                boolean z5 = i4 == 4;
                Object objX5 = gapComposerH.x();
                if (z5 || objX5 == composer$Companion$Empty$2) {
                    objX5 = new u70(snackbarData, 2);
                    gapComposerH.q(objX5);
                }
                modifierJ = ClickableKt.b(dTFunctionNameModifierI, mutableInteractionSource, null, false, null, null, (Function0) objX5, 28);
                gapComposerH.Z(false);
            }
            Modifier modifierO = modifierD.o(modifierJ);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(ShadowKt.c(modifierO, gapComposerH, KyberEngine.KyberPolyBytes, 1), LVAppDesignKitTheme.j(gapComposerH).f48411c), snackbarConfiguration2.d, RectangleShapeKt.f8913a);
            BorderStroke borderStrokeA = BorderStrokeKt.a(1.0f, snackbarConfiguration2.f48707f);
            Modifier modifierA = IntrinsicKt.a(BorderKt.b(modifierB, borderStrokeA.f4154a, borderStrokeA.f4155b, LVAppDesignKitTheme.j(gapComposerH).f48411c), IntrinsicSize.Max);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            Integer numValueOf = Integer.valueOf(iHashCode2);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC2, function5);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVSnackbarLayout");
            boolean zK2 = gapComposerH.K(mutableState) | gapComposerH.b(z3) | (i4 == 4);
            Object objX6 = gapComposerH.x();
            if (zK2 || objX6 == composer$Companion$Empty$2) {
                objX6 = new ag(z3, snackbarData, mutableState, 4);
                gapComposerH.q(objX6);
            }
            Modifier modifierK = PaddingKt.k(PaddingKt.m(SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX6), 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, 1);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierA2 = rowScopeInstance.a(modifierK, 1.0f, true);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierF = n00.f(gapComposerH, modifierC3, function5, "LVSnackbarLayout", "toast_icon_image");
            BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
            IconKt.a(PainterResources_androidKt.a(snackbarConfiguration.f48703a, gapComposerH, 0), null, rowScopeInstance.b(modifierF, vertical2), snackbarConfiguration.f48704b, gapComposerH, 56, 0);
            Modifier modifierM = PaddingKt.m(rowScopeInstance.a(rowScopeInstance.b(new DTFunctionNameModifier("LVSnackbarLayout"), vertical2), 1.0f, true), 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierM);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierF2 = n00.f(gapComposerH, modifierC4, function5, "LVSnackbarLayout", "toast_descriptionMessage_text");
            String f48673a = snackbarData.getF7292a().getF48673a();
            TextOverflow.f10989a.getClass();
            snackbarConfiguration2 = snackbarConfiguration;
            TextKt.c(f48673a, modifierF2, snackbarConfiguration.f48706e, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, KyberEngine.KyberPolyBytes, 126968);
            gapComposerH = gapComposerH;
            String d2 = snackbarData.getF7292a().getD();
            if (d2 == null || StringsKt.w(d2)) {
                gapComposerH.L(736075911);
                gapComposerH.Z(false);
            } else {
                Modifier modifierD2 = n00.d(gapComposerH, 735790494, "LVSnackbarLayout", "toast_link_button");
                String d3 = snackbarData.getF7292a().getD();
                if (d3 == null) {
                    d3 = "";
                }
                LVLinkKt.a(modifierD2, d3, false, snackbarConfiguration2.g, false, null, gapComposerH, 0, 52);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_close);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVSnackbarLayout");
            boolean zK3 = gapComposerH.K(strC) | (i4 == 4);
            Object objX7 = gapComposerH.x();
            int i5 = 3;
            if (zK3) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX7 != composer$Companion$Empty$1) {
                    snackbarData2 = snackbarData;
                }
                Modifier modifierM2 = PaddingKt.m(SizeKt.c(ModifierExtKt.b(dTFunctionNameModifier2, null, (Function1) objX7, 3), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                cj.t(iHashCode, gapComposerH, function4, gapComposerH, function1);
                Modifier modifierA3 = ClipKt.a(n00.f(gapComposerH, modifierC, function5, "LVSnackbarLayout", "toast_close_button"), RoundedCornerShapeKt.f5846a);
                if (i4 == 4) {
                    z = true;
                } else {
                    z = false;
                }
                objX = gapComposerH.x();
                if (z || objX == composer$Companion$Empty$1) {
                    objX = new u70(snackbarData2, 3);
                    gapComposerH.q(objX);
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).A, gapComposerH, 0), null, SizeKt.o(PaddingKt.i(ClickableKt.d(modifierA3, false, null, null, (Function0) objX, 15), 8.0f), IconSize.f48349c), snackbarConfiguration2.f48705c, gapComposerH, 56, 0);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
            }
            snackbarData2 = snackbarData;
            objX7 = new k60(strC, snackbarData2, i5);
            gapComposerH.q(objX7);
            Modifier modifierM3 = PaddingKt.m(SizeKt.c(ModifierExtKt.b(dTFunctionNameModifier2, null, (Function1) objX7, 3), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierM3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            cj.t(iHashCode, gapComposerH, function4, gapComposerH, function1);
            Modifier modifierA4 = ClipKt.a(n00.f(gapComposerH, modifierC, function5, "LVSnackbarLayout", "toast_close_button"), RoundedCornerShapeKt.f5846a);
            if (i4 == 4) {
                z = true;
            } else {
                z = false;
            }
            objX = gapComposerH.x();
            if (z) {
                objX = new u70(snackbarData2, 3);
                gapComposerH.q(objX);
            } else {
                objX = new u70(snackbarData2, 3);
                gapComposerH.q(objX);
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).A, gapComposerH, 0), null, SizeKt.o(PaddingKt.i(ClickableKt.d(modifierA4, false, null, null, (Function0) objX, 15), 8.0f), IconSize.f48349c), snackbarConfiguration2.f48705c, gapComposerH, 56, 0);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            snackbarData2 = snackbarData;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(snackbarData2, snackbarConfiguration2, i2, 18);
        }
    }
}
