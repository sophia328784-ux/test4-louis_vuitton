package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.MinimumInteractiveModifier;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import defpackage.cj;
import defpackage.sm0;
import defpackage.tr;
import defpackage.yn0;
import defpackage.zu;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isTextVisible", "Lkotlinx/coroutines/Job;", "initialAnimationJob", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QuickFilterButtonKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0150  */
    /* JADX WARN: Code duplicated, block: B:102:0x0152  */
    /* JADX WARN: Code duplicated, block: B:105:0x0161  */
    /* JADX WARN: Code duplicated, block: B:106:0x0163  */
    /* JADX WARN: Code duplicated, block: B:109:0x016b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:112:0x0171  */
    /* JADX WARN: Code duplicated, block: B:115:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:116:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:119:0x01d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:120:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:123:0x020c  */
    /* JADX WARN: Code duplicated, block: B:125:0x0213  */
    /* JADX WARN: Code duplicated, block: B:126:0x0217  */
    /* JADX WARN: Code duplicated, block: B:129:0x026c  */
    /* JADX WARN: Code duplicated, block: B:131:0x0273  */
    /* JADX WARN: Code duplicated, block: B:132:0x0277  */
    /* JADX WARN: Code duplicated, block: B:134:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:136:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:138:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:141:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0067  */
    /* JADX WARN: Code duplicated, block: B:38:0x0071  */
    /* JADX WARN: Code duplicated, block: B:39:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x007b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0080  */
    /* JADX WARN: Code duplicated, block: B:47:0x0084  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x008f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0097  */
    /* JADX WARN: Code duplicated, block: B:56:0x009d  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:92:0x0112  */
    /* JADX WARN: Code duplicated, block: B:95:0x0125  */
    /* JADX WARN: Code duplicated, block: B:98:0x013f  */
    public static final void a(Modifier modifier, int i2, String str, FiltersButtonState filtersButtonState, boolean z, Function0 function0, Function1 function1, Composer composer, int i3, int i4) {
        int i5;
        String str2;
        int i6;
        boolean z2;
        int i7;
        int i8;
        Function1 function2;
        int i9;
        Modifier modifier2;
        boolean z3;
        Function1 function3;
        String str3;
        boolean z4;
        Modifier modifier3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        String str4;
        boolean z5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function4;
        Object objX;
        MutableState mutableState;
        Object objX2;
        CoroutineScope coroutineScope;
        HapticFeedback hapticFeedback;
        Object objX3;
        MutableState mutableState2;
        boolean z6;
        boolean z7;
        boolean z8;
        Object objX4;
        int i10;
        boolean z9;
        boolean z10;
        Object objX5;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function5;
        Function2 function6;
        Function2 function7;
        Function2 function8;
        Function1 function9;
        Function2 function10;
        Modifier modifier4;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Object objX6;
        int i11;
        int i12;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "QuickFilterButton");
        }
        filtersButtonState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(958724776);
        Applier applier = gapComposerH.f7976a;
        int i13 = i4 & 1;
        if (i13 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        int i14 = i4 & 4;
        if (i14 == 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                str2 = str;
                i5 |= gapComposerH.K(str2) ? 256 : 128;
            }
            if ((i3 & 3072) == 0) {
                if (gapComposerH.d(filtersButtonState.ordinal())) {
                    i12 = 2048;
                } else {
                    i12 = 1024;
                }
                i5 |= i12;
            }
            i6 = i4 & 16;
            if (i6 != 0) {
                if ((i3 & 24576) == 0) {
                    z2 = z;
                    if (gapComposerH.b(z2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i5 |= i7;
                }
                if ((196608 & i3) == 0) {
                    if (gapComposerH.y(function0)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i5 |= i11;
                }
                i8 = i4 & 64;
                if (i8 != 0) {
                    i5 |= 1572864;
                    function2 = function1;
                } else {
                    function2 = function1;
                    if ((i3 & 1572864) == 0) {
                        if (gapComposerH.y(function2)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i5 |= i9;
                    }
                }
                modifier2 = modifierE;
                if ((i5 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i5 & 1, z3)) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("QuickFilterButton");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i14 != 0) {
                        str4 = "";
                    } else {
                        str4 = str2;
                    }
                    if (i6 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i8 != 0) {
                        objX6 = gapComposerH.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            objX6 = new yn0(24);
                            gapComposerH.q(objX6);
                        }
                        function2 = (Function1) objX6;
                    }
                    function4 = function2;
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposerH.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX2);
                    }
                    coroutineScope = (CoroutineScope) objX2;
                    hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = SnapshotStateKt.g(null);
                        gapComposerH.q(objX3);
                    }
                    mutableState2 = (MutableState) objX3;
                    if ((i5 & 7168) == 2048) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    boolean zY = z6 | gapComposerH.y(coroutineScope);
                    if ((3670016 & i5) == 1048576) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = zY | z7;
                    objX4 = gapComposerH.x();
                    if (z8 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new QuickFilterButtonKt$QuickFilterButton$2$1(filtersButtonState, coroutineScope, mutableState2, function4, mutableState, null);
                        gapComposerH.q(objX4);
                    }
                    EffectsKt.e(gapComposerH, filtersButtonState, (Function2) objX4);
                    HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
                    i10 = i5;
                    Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.f(dTFunctionNameModifier.o(MinimumInteractiveModifier.f7044b), LVAppDesignKitTheme.d(gapComposerH).v), RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).q)), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                    boolean zY2 = gapComposerH.y(hapticFeedback);
                    if ((i10 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    z10 = zY2 | z9;
                    objX5 = gapComposerH.x();
                    if (z10 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new sm0(hapticFeedback, function0, mutableState2, 9);
                        gapComposerH.q(objX5);
                    }
                    Modifier modifierC3 = ModifierExtKt.c(modifierB, z5, null, null, (Function0) objX5, 30);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierC3);
                    ComposeUiNode.b0.getClass();
                    function5 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function5);
                    } else {
                        gapComposerH.o();
                    }
                    function6 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function6);
                    function7 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function8 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function8);
                    function9 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function9);
                    function10 = ComposeUiNode.Companion.d;
                    modifier4 = dTFunctionNameModifier;
                    Modifier modifierF = SizeKt.f(PaddingKt.k(tr.e(gapComposerH, modifierC, function10, "QuickFilterButton"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(gapComposerH).v);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierF);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function5);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function6);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
                    cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                    Updater.c(gapComposerH, modifierC2, function10);
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i10 >> 3) & 14), StringResources_androidKt.c(gapComposerH, R.string.alt_show_filters), ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("QuickFilterButton"), IconSize.f48348b), str4), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                    ComposableSingletons$QuickFilterButtonKt.f58069a.getClass();
                    AnimatedVisibilityKt.d(RowScopeInstance.f5040a, zBooleanValue, null, null, null, null, ComposableSingletons$QuickFilterButtonKt.f58070b, gapComposerH, 1572870, 30);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    gapComposerH.Z(true);
                    str3 = str4;
                    modifier3 = modifier4;
                    z4 = z5;
                    function3 = function4;
                } else {
                    gapComposerH.D();
                    function3 = function2;
                    str3 = str2;
                    z4 = z2;
                    modifier3 = modifier2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new zu(modifier3, i2, str3, filtersButtonState, z4, function0, function3, i3, i4);
                }
            }
            i5 |= 24576;
            z2 = z;
            if ((196608 & i3) == 0) {
                if (gapComposerH.y(function0)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i5 |= i11;
            }
            i8 = i4 & 64;
            if (i8 != 0) {
                i5 |= 1572864;
                function2 = function1;
            } else {
                function2 = function1;
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.y(function2)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i5 |= i9;
                }
            }
            modifier2 = modifierE;
            if ((i5 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("QuickFilterButton");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i14 != 0) {
                    str4 = "";
                } else {
                    str4 = str2;
                }
                if (i6 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i8 != 0) {
                    objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new yn0(24);
                        gapComposerH.q(objX6);
                    }
                    function2 = (Function1) objX6;
                }
                function4 = function2;
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX2);
                }
                coroutineScope = (CoroutineScope) objX2;
                hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = SnapshotStateKt.g(null);
                    gapComposerH.q(objX3);
                }
                mutableState2 = (MutableState) objX3;
                if ((i5 & 7168) == 2048) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean zY3 = z6 | gapComposerH.y(coroutineScope);
                if ((3670016 & i5) == 1048576) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = zY3 | z7;
                objX4 = gapComposerH.x();
                if (z8) {
                    objX4 = new QuickFilterButtonKt$QuickFilterButton$2$1(filtersButtonState, coroutineScope, mutableState2, function4, mutableState, null);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new QuickFilterButtonKt$QuickFilterButton$2$1(filtersButtonState, coroutineScope, mutableState2, function4, mutableState, null);
                    gapComposerH.q(objX4);
                }
                EffectsKt.e(gapComposerH, filtersButtonState, (Function2) objX4);
                HorizontalAlignmentLine horizontalAlignmentLine2 = InteractiveComponentSizeKt.f7011a;
                i10 = i5;
                Modifier modifierB2 = BackgroundKt.b(ClipKt.a(SizeKt.f(dTFunctionNameModifier.o(MinimumInteractiveModifier.f7044b), LVAppDesignKitTheme.d(gapComposerH).v), RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).q)), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                boolean zY4 = gapComposerH.y(hapticFeedback);
                if ((i10 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                z10 = zY4 | z9;
                objX5 = gapComposerH.x();
                if (z10) {
                    objX5 = new sm0(hapticFeedback, function0, mutableState2, 9);
                    gapComposerH.q(objX5);
                } else {
                    objX5 = new sm0(hapticFeedback, function0, mutableState2, 9);
                    gapComposerH.q(objX5);
                }
                Modifier modifierC4 = ModifierExtKt.c(modifierB2, z5, null, null, (Function0) objX5, 30);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierC4);
                ComposeUiNode.b0.getClass();
                function5 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                function6 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function6);
                function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function8);
                function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function9);
                function10 = ComposeUiNode.Companion.d;
                modifier4 = dTFunctionNameModifier;
                Modifier modifierF2 = SizeKt.f(PaddingKt.k(tr.e(gapComposerH, modifierC, function10, "QuickFilterButton"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(gapComposerH).v);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierF2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function6);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                Updater.c(gapComposerH, modifierC2, function10);
                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i10 >> 3) & 14), StringResources_androidKt.c(gapComposerH, R.string.alt_show_filters), ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("QuickFilterButton"), IconSize.f48348b), str4), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
                boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                ComposableSingletons$QuickFilterButtonKt.f58069a.getClass();
                AnimatedVisibilityKt.d(RowScopeInstance.f5040a, zBooleanValue2, null, null, null, null, ComposableSingletons$QuickFilterButtonKt.f58070b, gapComposerH, 1572870, 30);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                str3 = str4;
                modifier3 = modifier4;
                z4 = z5;
                function3 = function4;
            } else {
                gapComposerH.D();
                function3 = function2;
                str3 = str2;
                z4 = z2;
                modifier3 = modifier2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new zu(modifier3, i2, str3, filtersButtonState, z4, function0, function3, i3, i4);
            }
        }
        i5 |= KyberEngine.KyberPolyBytes;
        str2 = str;
        if ((i3 & 3072) == 0) {
            if (gapComposerH.d(filtersButtonState.ordinal())) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i5 |= i12;
        }
        i6 = i4 & 16;
        if (i6 != 0) {
            if ((i3 & 24576) == 0) {
                z2 = z;
                if (gapComposerH.b(z2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i5 |= i7;
            }
            if ((196608 & i3) == 0) {
                if (gapComposerH.y(function0)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i5 |= i11;
            }
            i8 = i4 & 64;
            if (i8 != 0) {
                i5 |= 1572864;
                function2 = function1;
            } else {
                function2 = function1;
                if ((i3 & 1572864) == 0) {
                    if (gapComposerH.y(function2)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i5 |= i9;
                }
            }
            modifier2 = modifierE;
            if ((i5 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("QuickFilterButton");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i14 != 0) {
                    str4 = "";
                } else {
                    str4 = str2;
                }
                if (i6 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i8 != 0) {
                    objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new yn0(24);
                        gapComposerH.q(objX6);
                    }
                    function2 = (Function1) objX6;
                }
                function4 = function2;
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX2);
                }
                coroutineScope = (CoroutineScope) objX2;
                hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = SnapshotStateKt.g(null);
                    gapComposerH.q(objX3);
                }
                mutableState2 = (MutableState) objX3;
                if ((i5 & 7168) == 2048) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean zY5 = z6 | gapComposerH.y(coroutineScope);
                if ((3670016 & i5) == 1048576) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = zY5 | z7;
                objX4 = gapComposerH.x();
                if (z8) {
                    objX4 = new QuickFilterButtonKt$QuickFilterButton$2$1(filtersButtonState, coroutineScope, mutableState2, function4, mutableState, null);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new QuickFilterButtonKt$QuickFilterButton$2$1(filtersButtonState, coroutineScope, mutableState2, function4, mutableState, null);
                    gapComposerH.q(objX4);
                }
                EffectsKt.e(gapComposerH, filtersButtonState, (Function2) objX4);
                HorizontalAlignmentLine horizontalAlignmentLine3 = InteractiveComponentSizeKt.f7011a;
                i10 = i5;
                Modifier modifierB3 = BackgroundKt.b(ClipKt.a(SizeKt.f(dTFunctionNameModifier.o(MinimumInteractiveModifier.f7044b), LVAppDesignKitTheme.d(gapComposerH).v), RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).q)), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
                boolean zY6 = gapComposerH.y(hapticFeedback);
                if ((i10 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                z10 = zY6 | z9;
                objX5 = gapComposerH.x();
                if (z10) {
                    objX5 = new sm0(hapticFeedback, function0, mutableState2, 9);
                    gapComposerH.q(objX5);
                } else {
                    objX5 = new sm0(hapticFeedback, function0, mutableState2, 9);
                    gapComposerH.q(objX5);
                }
                Modifier modifierC5 = ModifierExtKt.c(modifierB3, z5, null, null, (Function0) objX5, 30);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierC5);
                ComposeUiNode.b0.getClass();
                function5 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                function6 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function6);
                function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
                Integer numValueOf3 = Integer.valueOf(iHashCode);
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf3, function8);
                function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function9);
                function10 = ComposeUiNode.Companion.d;
                modifier4 = dTFunctionNameModifier;
                Modifier modifierF3 = SizeKt.f(PaddingKt.k(tr.e(gapComposerH, modifierC, function10, "QuickFilterButton"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(gapComposerH).v);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierF3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function6);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                Updater.c(gapComposerH, modifierC2, function10);
                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i10 >> 3) & 14), StringResources_androidKt.c(gapComposerH, R.string.alt_show_filters), ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("QuickFilterButton"), IconSize.f48348b), str4), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
                boolean zBooleanValue3 = ((Boolean) mutableState.getF10755b()).booleanValue();
                ComposableSingletons$QuickFilterButtonKt.f58069a.getClass();
                AnimatedVisibilityKt.d(RowScopeInstance.f5040a, zBooleanValue3, null, null, null, null, ComposableSingletons$QuickFilterButtonKt.f58070b, gapComposerH, 1572870, 30);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                str3 = str4;
                modifier3 = modifier4;
                z4 = z5;
                function3 = function4;
            } else {
                gapComposerH.D();
                function3 = function2;
                str3 = str2;
                z4 = z2;
                modifier3 = modifier2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new zu(modifier3, i2, str3, filtersButtonState, z4, function0, function3, i3, i4);
            }
        }
        i5 |= 24576;
        z2 = z;
        if ((196608 & i3) == 0) {
            if (gapComposerH.y(function0)) {
                i11 = 131072;
            } else {
                i11 = 65536;
            }
            i5 |= i11;
        }
        i8 = i4 & 64;
        if (i8 != 0) {
            i5 |= 1572864;
            function2 = function1;
        } else {
            function2 = function1;
            if ((i3 & 1572864) == 0) {
                if (gapComposerH.y(function2)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i5 |= i9;
            }
        }
        modifier2 = modifierE;
        if ((i5 & 599187) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            if (i13 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("QuickFilterButton");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i14 != 0) {
                str4 = "";
            } else {
                str4 = str2;
            }
            if (i6 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i8 != 0) {
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = new yn0(24);
                    gapComposerH.q(objX6);
                }
                function2 = (Function1) objX6;
            }
            function4 = function2;
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            coroutineScope = (CoroutineScope) objX2;
            hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(null);
                gapComposerH.q(objX3);
            }
            mutableState2 = (MutableState) objX3;
            if ((i5 & 7168) == 2048) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean zY7 = z6 | gapComposerH.y(coroutineScope);
            if ((3670016 & i5) == 1048576) {
                z7 = true;
            } else {
                z7 = false;
            }
            z8 = zY7 | z7;
            objX4 = gapComposerH.x();
            if (z8) {
                objX4 = new QuickFilterButtonKt$QuickFilterButton$2$1(filtersButtonState, coroutineScope, mutableState2, function4, mutableState, null);
                gapComposerH.q(objX4);
            } else {
                objX4 = new QuickFilterButtonKt$QuickFilterButton$2$1(filtersButtonState, coroutineScope, mutableState2, function4, mutableState, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, filtersButtonState, (Function2) objX4);
            HorizontalAlignmentLine horizontalAlignmentLine4 = InteractiveComponentSizeKt.f7011a;
            i10 = i5;
            Modifier modifierB4 = BackgroundKt.b(ClipKt.a(SizeKt.f(dTFunctionNameModifier.o(MinimumInteractiveModifier.f7044b), LVAppDesignKitTheme.d(gapComposerH).v), RoundedCornerShapeKt.a(LVAppDesignKitTheme.d(gapComposerH).q)), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
            boolean zY8 = gapComposerH.y(hapticFeedback);
            if ((i10 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                z9 = true;
            } else {
                z9 = false;
            }
            z10 = zY8 | z9;
            objX5 = gapComposerH.x();
            if (z10) {
                objX5 = new sm0(hapticFeedback, function0, mutableState2, 9);
                gapComposerH.q(objX5);
            } else {
                objX5 = new sm0(hapticFeedback, function0, mutableState2, 9);
                gapComposerH.q(objX5);
            }
            Modifier modifierC6 = ModifierExtKt.c(modifierB4, z5, null, null, (Function0) objX5, 30);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierC6);
            ComposeUiNode.b0.getClass();
            function5 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function6);
            function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf4 = Integer.valueOf(iHashCode);
            function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf4, function8);
            function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            function10 = ComposeUiNode.Companion.d;
            modifier4 = dTFunctionNameModifier;
            Modifier modifierF4 = SizeKt.f(PaddingKt.k(tr.e(gapComposerH, modifierC, function10, "QuickFilterButton"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(gapComposerH).v);
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierF4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
            Updater.c(gapComposerH, modifierC2, function10);
            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, (i10 >> 3) & 14), StringResources_androidKt.c(gapComposerH, R.string.alt_show_filters), ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("QuickFilterButton"), IconSize.f48348b), str4), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 8, 0);
            boolean zBooleanValue4 = ((Boolean) mutableState.getF10755b()).booleanValue();
            ComposableSingletons$QuickFilterButtonKt.f58069a.getClass();
            AnimatedVisibilityKt.d(RowScopeInstance.f5040a, zBooleanValue4, null, null, null, null, ComposableSingletons$QuickFilterButtonKt.f58070b, gapComposerH, 1572870, 30);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            str3 = str4;
            modifier3 = modifier4;
            z4 = z5;
            function3 = function4;
        } else {
            gapComposerH.D();
            function3 = function2;
            str3 = str2;
            z4 = z2;
            modifier3 = modifier2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zu(modifier3, i2, str3, filtersButtonState, z4, function0, function3, i3, i4);
        }
    }
}
