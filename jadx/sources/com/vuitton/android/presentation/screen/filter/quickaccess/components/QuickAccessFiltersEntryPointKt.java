package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickAccessFiltersEntryPointKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import defpackage.a10;
import defpackage.cj;
import defpackage.d1;
import defpackage.e3;
import defpackage.o60;
import defpackage.qo;
import defpackage.sa;
import defpackage.sm0;
import defpackage.tr;
import defpackage.u00;
import defpackage.wd0;
import defpackage.xq0;
import defpackage.yj0;
import defpackage.yn0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0005¨\u0006\u0005²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "skipInitialAnimation", "skipActiveFiltersAnimation", "isUserInteractionEnabled", "isFirstCategoryFocusedForAccessibility", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class QuickAccessFiltersEntryPointKt {
    /* JADX WARN: Code duplicated, block: B:100:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:103:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:106:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:107:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:113:0x0212  */
    /* JADX WARN: Code duplicated, block: B:116:0x024d  */
    /* JADX WARN: Code duplicated, block: B:117:0x024f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0257  */
    /* JADX WARN: Code duplicated, block: B:121:0x0259  */
    /* JADX WARN: Code duplicated, block: B:127:0x026a  */
    /* JADX WARN: Code duplicated, block: B:130:0x0283  */
    /* JADX WARN: Code duplicated, block: B:131:0x0285  */
    /* JADX WARN: Code duplicated, block: B:134:0x028b  */
    /* JADX WARN: Code duplicated, block: B:135:0x028d  */
    /* JADX WARN: Code duplicated, block: B:138:0x0295  */
    /* JADX WARN: Code duplicated, block: B:139:0x0297  */
    /* JADX WARN: Code duplicated, block: B:143:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:146:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:147:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:150:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:151:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:154:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:155:0x02de  */
    /* JADX WARN: Code duplicated, block: B:161:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:164:0x032a  */
    /* JADX WARN: Code duplicated, block: B:165:0x032c  */
    /* JADX WARN: Code duplicated, block: B:168:0x0336  */
    /* JADX WARN: Code duplicated, block: B:169:0x0338  */
    /* JADX WARN: Code duplicated, block: B:175:0x0352  */
    /* JADX WARN: Code duplicated, block: B:179:0x037a  */
    /* JADX WARN: Code duplicated, block: B:182:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:184:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:185:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:188:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:190:0x0406  */
    /* JADX WARN: Code duplicated, block: B:191:0x0412  */
    /* JADX WARN: Code duplicated, block: B:194:0x0433  */
    /* JADX WARN: Code duplicated, block: B:196:0x043c  */
    /* JADX WARN: Code duplicated, block: B:197:0x0440  */
    /* JADX WARN: Code duplicated, block: B:200:0x047e  */
    /* JADX WARN: Code duplicated, block: B:201:0x0483  */
    /* JADX WARN: Code duplicated, block: B:207:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:210:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:211:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:214:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:217:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:218:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:222:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:223:0x0502  */
    /* JADX WARN: Code duplicated, block: B:226:0x0520  */
    /* JADX WARN: Code duplicated, block: B:227:0x0522  */
    /* JADX WARN: Code duplicated, block: B:230:0x052f  */
    /* JADX WARN: Code duplicated, block: B:231:0x0531  */
    /* JADX WARN: Code duplicated, block: B:234:0x053a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:237:0x0542  */
    /* JADX WARN: Code duplicated, block: B:239:0x056e  */
    /* JADX WARN: Code duplicated, block: B:241:0x0572  */
    /* JADX WARN: Code duplicated, block: B:244:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:246:0x05c8  */
    /* JADX WARN: Code duplicated, block: B:247:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:250:0x05e9  */
    /* JADX WARN: Code duplicated, block: B:251:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:254:0x0613  */
    /* JADX WARN: Code duplicated, block: B:257:0x0618  */
    /* JADX WARN: Code duplicated, block: B:261:0x063c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:262:0x063e  */
    /* JADX WARN: Code duplicated, block: B:265:0x067b  */
    /* JADX WARN: Code duplicated, block: B:266:0x067d  */
    /* JADX WARN: Code duplicated, block: B:269:0x06b1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:270:0x06b3  */
    /* JADX WARN: Code duplicated, block: B:275:0x06e1  */
    /* JADX WARN: Code duplicated, block: B:277:0x0722  */
    /* JADX WARN: Code duplicated, block: B:279:0x0728  */
    /* JADX WARN: Code duplicated, block: B:85:0x0155 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x0157  */
    /* JADX WARN: Code duplicated, block: B:87:0x0159  */
    /* JADX WARN: Code duplicated, block: B:91:0x016c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0181  */
    /* JADX WARN: Code duplicated, block: B:97:0x0196  */
    public static final void a(Modifier modifier, final QuickAccessFiltersViewState quickAccessFiltersViewState, final boolean z, final boolean z2, final boolean z3, float f2, final Function0 function0, Function1 function1, final Function1 function2, final Function1 function3, final Function2 function4, final Function1 function5, final Function0 function6, Composer composer, final int i2, final int i3) {
        GapComposer gapComposer;
        final float f3;
        float f4;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Animatable animatable;
        float f5;
        Object objX2;
        MutableState mutableState;
        Object objX3;
        final MutableState mutableState2;
        Object objX4;
        final MutableState mutableState3;
        Object objX5;
        CoroutineScope coroutineScope;
        HapticFeedback hapticFeedback;
        Object objX6;
        final MutableState mutableState4;
        int i4;
        boolean z4;
        boolean zY;
        Object objX7;
        CoroutineScope coroutineScope2;
        int i5;
        MutableState mutableState5;
        int i6;
        boolean z5;
        boolean z6;
        boolean z7;
        Object quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1;
        Function1 function7;
        boolean z8;
        int i7;
        boolean z9;
        boolean z10;
        boolean z11;
        Object objX8;
        final Function0 function8;
        boolean z12;
        CoroutineScope coroutineScope3;
        boolean z13;
        boolean z14;
        boolean z15;
        Object obj;
        final HapticFeedback hapticFeedback2;
        int i8;
        final CoroutineScope coroutineScope4;
        MutableState mutableState6;
        final MutableState mutableState7;
        MutableState mutableState8;
        Function0 function9;
        boolean z16;
        boolean z17;
        boolean zY2;
        Object objX9;
        MutableState mutableState9;
        Function0 function10;
        boolean zY3;
        Object objX10;
        BiasAlignment biasAlignment;
        MeasurePolicy measurePolicyD;
        final CoroutineScope coroutineScope5;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function11;
        MutableState mutableState10;
        Function2 function12;
        Function2 function13;
        Function2 function14;
        Function1 function15;
        Function2 function16;
        BoxScopeInstance boxScopeInstance;
        BiasAlignment biasAlignment2;
        MutableState mutableState11;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        String str;
        BoxScopeInstance boxScopeInstance2;
        MeasurePolicy measurePolicyD2;
        Composer$Companion$Empty$1 composer$Companion$Empty$3;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        float fB;
        FiltersButtonState filtersButtonState;
        boolean z18;
        boolean zC;
        Object objX11;
        Composer$Companion$Empty$1 composer$Companion$Empty$4;
        boolean zC2;
        Object objX12;
        String strC;
        String strC2;
        boolean z19;
        boolean zY4;
        Object objX13;
        Function0 function17;
        Composer$Companion$Empty$1 composer$Companion$Empty$5;
        String str2;
        Object objX14;
        BiasAlignment biasAlignment3;
        MutableState mutableState12;
        Object objX15;
        MeasurePolicy measurePolicyD3;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        boolean z20;
        boolean z21;
        boolean z22;
        boolean z23;
        Object objX16;
        Object objX17;
        MutableState mutableState13;
        boolean z24;
        boolean z25;
        boolean z26;
        Object objX18;
        float f6;
        Modifier modifierE = modifier;
        final QuickAccessFiltersViewState quickAccessFiltersViewState2 = quickAccessFiltersViewState;
        Function1 function18 = function1;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "QuickAccessFiltersEntryPoint-AlbwjTQ");
        }
        quickAccessFiltersViewState2.getClass();
        FiltersButtonState filtersButtonState2 = quickAccessFiltersViewState2.f58169a;
        function0.getClass();
        function18.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-827475639);
        Applier applier = gapComposerH.f7976a;
        int i9 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(quickAccessFiltersViewState2) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i9 |= gapComposerH.b(z) ? 256 : 128;
        }
        int i10 = i9 | (gapComposerH.b(z2) ? 2048 : 1024);
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i10 |= gapComposerH.b(z3) ? 131072 : 65536;
        }
        int i11 = i10 | (((i3 & 64) == 0 && gapComposerH.c(f2)) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304) | (gapComposerH.y(function18) ? 67108864 : 33554432) | (gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i12 = (gapComposerH.y(function3) ? (char) 4 : (char) 2) | (gapComposerH.y(function4) ? ' ' : (char) 16) | (gapComposerH.y(function5) ? (char) 256 : (char) 128) | (gapComposerH.y(function6) ? (char) 2048 : (char) 1024);
        Modifier modifier2 = modifierE;
        if (gapComposerH.p(i11 & 1, ((i11 & 306783379) == 306783378 && (i12 & 1171) == 1170) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if ((i3 & 64) != 0) {
                    f4 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    i11 &= -3670017;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    if (z) {
                        f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    } else {
                        f6 = 1.0f;
                    }
                    objX = AnimatableKt.a(f6);
                    gapComposerH.q(objX);
                }
                animatable = (Animatable) objX;
                f5 = f4;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(Boolean.valueOf(z));
                    gapComposerH.q(objX2);
                }
                mutableState = (MutableState) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = SnapshotStateKt.g(Boolean.valueOf(z));
                    gapComposerH.q(objX3);
                }
                mutableState2 = (MutableState) objX3;
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX4);
                }
                mutableState3 = (MutableState) objX4;
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX5);
                }
                coroutineScope = (CoroutineScope) objX5;
                hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX6);
                }
                mutableState4 = (MutableState) objX6;
                Unit unit = Unit.f71739a;
                boolean zY5 = gapComposerH.y(animatable);
                i4 = i12 & 896;
                if (i4 == 256) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                zY = zY5 | z4 | gapComposerH.y(quickAccessFiltersViewState2);
                objX7 = gapComposerH.x();
                if (!zY || objX7 == composer$Companion$Empty$1) {
                    coroutineScope2 = coroutineScope;
                    gapComposer = gapComposerH;
                    i5 = i12;
                    mutableState5 = mutableState;
                    i6 = 256;
                    objX7 = new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1(animatable, function5, quickAccessFiltersViewState2, mutableState5, null);
                    quickAccessFiltersViewState2 = quickAccessFiltersViewState2;
                    gapComposer.q(objX7);
                } else {
                    coroutineScope2 = coroutineScope;
                    gapComposer = gapComposerH;
                    i5 = i12;
                    mutableState5 = mutableState;
                    i6 = 256;
                }
                EffectsKt.e(gapComposer, unit, (Function2) objX7);
                Boolean boolValueOf = Boolean.valueOf(quickAccessFiltersViewState2.d);
                boolean zY6 = gapComposer.y(quickAccessFiltersViewState2);
                if (i4 == i6) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                boolean z27 = zY6 | z5;
                if ((i11 & 7168) == 2048) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z27 | z6;
                Object objX19 = gapComposer.x();
                if (!z7 || objX19 == composer$Companion$Empty$1) {
                    QuickAccessFiltersViewState quickAccessFiltersViewState3 = quickAccessFiltersViewState2;
                    quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1 = new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1(quickAccessFiltersViewState3, function5, z2, mutableState5, null);
                    function7 = function5;
                    quickAccessFiltersViewState2 = quickAccessFiltersViewState3;
                    gapComposer.q(quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1);
                } else {
                    quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1 = objX19;
                    function7 = function5;
                }
                EffectsKt.g(r19, boolValueOf, (Function2) quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1, gapComposer);
                if (i4 == i6) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                i7 = i5 & 14;
                if (i7 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                boolean z28 = z8 | z9;
                if ((i5 & 7168) == 2048) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z28 | z10;
                objX8 = gapComposer.x();
                if (z11 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new sm0((Object) function7, function3, function6, 8);
                    gapComposer.q(objX8);
                }
                function8 = (Function0) objX8;
                boolean zY7 = gapComposer.y(hapticFeedback) | gapComposer.y(quickAccessFiltersViewState2);
                if ((i11 & 1879048192) == 536870912) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                boolean z29 = z12 | zY7;
                coroutineScope3 = coroutineScope2;
                boolean zY8 = z29 | gapComposer.y(coroutineScope3);
                if (i4 == 256) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean z30 = zY8 | z13;
                if (i7 == 4) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                z15 = z30 | z14;
                Object objX20 = gapComposer.x();
                if (!z15 || objX20 == composer$Companion$Empty$1) {
                    hapticFeedback2 = hapticFeedback;
                    i8 = 256;
                    final MutableState mutableState14 = mutableState5;
                    coroutineScope4 = coroutineScope3;
                    final Function1 function19 = function7;
                    obj = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.d
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            HapticFeedbackType.f9193b.getClass();
                            int i13 = PlatformHapticFeedbackType.f9196a;
                            hapticFeedback2.a(0);
                            mutableState14.setValue(Boolean.TRUE);
                            mutableState2.setValue(Boolean.FALSE);
                            QuickAccessFiltersViewState quickAccessFiltersViewState4 = quickAccessFiltersViewState2;
                            boolean z31 = quickAccessFiltersViewState4.q;
                            Function1 function20 = function2;
                            if (z31) {
                                function20.invoke(FiltersDropDownType.SORT_BY);
                            } else if (quickAccessFiltersViewState4.r) {
                                function20.invoke(FiltersDropDownType.MORES_FILTERS);
                            } else {
                                BuildersKt.c(coroutineScope4, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1(quickAccessFiltersViewState4, function19, function3, mutableState4, null), 3);
                            }
                            return Unit.f71739a;
                        }
                    };
                    mutableState6 = mutableState2;
                    mutableState7 = mutableState4;
                    mutableState8 = mutableState14;
                    gapComposer.q(obj);
                } else {
                    obj = objX20;
                    mutableState8 = mutableState5;
                    coroutineScope4 = coroutineScope3;
                    hapticFeedback2 = hapticFeedback;
                    mutableState6 = mutableState2;
                    mutableState7 = mutableState4;
                    i8 = 256;
                }
                function9 = (Function0) obj;
                boolean zY9 = gapComposer.y(hapticFeedback2) | gapComposer.y(coroutineScope4);
                if (i4 == i8) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                boolean z31 = zY9 | z16;
                if ((i11 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                zY2 = z31 | z17 | gapComposer.y(quickAccessFiltersViewState2) | gapComposer.K(function8);
                objX9 = gapComposer.x();
                if (!zY2 || objX9 == composer$Companion$Empty$1) {
                    final QuickAccessFiltersViewState quickAccessFiltersViewState4 = quickAccessFiltersViewState2;
                    final CoroutineScope coroutineScope6 = coroutineScope4;
                    Function0 function20 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.e
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            HapticFeedbackType.f9193b.getClass();
                            int i13 = PlatformHapticFeedbackType.f9196a;
                            hapticFeedback2.a(0);
                            BuildersKt.c(coroutineScope6, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1(function5, z3, quickAccessFiltersViewState4, function8, mutableState3, mutableState7, null), 3);
                            return Unit.f71739a;
                        }
                    };
                    coroutineScope4 = coroutineScope6;
                    quickAccessFiltersViewState2 = quickAccessFiltersViewState4;
                    mutableState9 = mutableState3;
                    gapComposer.q(function20);
                    objX9 = function20;
                } else {
                    mutableState9 = mutableState3;
                }
                function10 = (Function0) objX9;
                zY3 = gapComposer.y(animatable);
                objX10 = gapComposer.x();
                if (zY3 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new sa(animatable, 3);
                    gapComposer.q(objX10);
                }
                Modifier modifierA = GraphicsLayerModifierKt.a(modifier2, (Function1) objX10);
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8584b;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                coroutineScope5 = coroutineScope4;
                iHashCode = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU = gapComposer.U();
                modifierC = ComposedModifierKt.c(gapComposer, modifierA);
                ComposeUiNode.b0.getClass();
                function11 = ComposeUiNode.Companion.f9641b;
                mutableState10 = mutableState8;
                if (r17 != 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function11);
                } else {
                    gapComposer.o();
                }
                function12 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposer, measurePolicyD, function12);
                function13 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposer, persistentCompositionLocalMapU, function13);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function14 = ComposeUiNode.Companion.g;
                Updater.c(gapComposer, numValueOf, function14);
                function15 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposer, function15);
                function16 = ComposeUiNode.Companion.d;
                Updater.c(gapComposer, modifierC, function16);
                boxScopeInstance = BoxScopeInstance.f4938a;
                if (z2) {
                    str = "QuickAccessFiltersEntryPoint-AlbwjTQ";
                    Modifier modifierC4 = o60.c(gapComposer, 1268915324, str, 1.0f);
                    biasAlignment3 = Alignment.Companion.f8589i;
                    Modifier modifierG = boxScopeInstance.g(modifierC4, biasAlignment3);
                    mutableState12 = mutableState9;
                    objX15 = gapComposer.x();
                    if (objX15 == composer$Companion$Empty$1) {
                        objX15 = new qo(2);
                        gapComposer.q(objX15);
                    }
                    Modifier modifierA2 = LayoutModifierKt.a(modifierG, (Function3) objX15);
                    measurePolicyD3 = BoxKt.d(biasAlignment, false);
                    iHashCode3 = Long.hashCode(gapComposer.T);
                    persistentCompositionLocalMapU3 = gapComposer.U();
                    modifierC3 = ComposedModifierKt.c(gapComposer, modifierA2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    biasAlignment2 = biasAlignment;
                    if (gapComposer.S) {
                        gapComposer.C(function11);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, measurePolicyD3, function12);
                    Updater.c(gapComposer, persistentCompositionLocalMapU3, function13);
                    cj.t(iHashCode3, gapComposer, function14, gapComposer, function15);
                    boxScopeInstance = boxScopeInstance;
                    ActiveFiltersBackGradientKt.a(48, gapComposer, ModifierExtKt.b(boxScopeInstance.g(tr.e(gapComposer, modifierC3, function16, str), biasAlignment3), !z3, new xq0(2, (byte) 0), gapComposer, 0), true);
                    Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(boxScopeInstance.g(new DTFunctionNameModifier(str), Alignment.Companion.f8586e), "QAF_ActiveFilters_view");
                    if (filtersButtonState2 == FiltersButtonState.OpenActiveFiltersAnimation) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean zBooleanValue = ((Boolean) mutableState6.getF10755b()).booleanValue();
                    if (((Boolean) mutableState12.getF10755b()).booleanValue() || !quickAccessFiltersViewState2.p) {
                        z21 = false;
                    } else {
                        z21 = true;
                    }
                    List list = quickAccessFiltersViewState2.m;
                    List list2 = quickAccessFiltersViewState2.n;
                    List list3 = quickAccessFiltersViewState2.o;
                    boolean zY10 = gapComposer.y(quickAccessFiltersViewState2);
                    if ((i5 & 112) == 32) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    z23 = zY10 | z22;
                    objX16 = gapComposer.x();
                    if (z23) {
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    } else {
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        if (objX16 == composer$Companion$Empty$2) {
                        }
                        Function2 function21 = (Function2) objX16;
                        objX17 = gapComposer.x();
                        if (objX17 == composer$Companion$Empty$2) {
                            mutableState13 = mutableState12;
                            objX17 = new u00(24, mutableState13);
                            gapComposer.q(objX17);
                        } else {
                            mutableState13 = mutableState12;
                        }
                        Function0 function22 = (Function0) objX17;
                        boolean zY11 = gapComposer.y(coroutineScope5) | gapComposer.y(quickAccessFiltersViewState2);
                        mutableState11 = mutableState13;
                        if (i4 == 256) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean z32 = zY11 | z24;
                        if ((i11 & 29360128) == 8388608) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        z26 = z32 | z25;
                        objX18 = gapComposer.x();
                        if (z26 || objX18 == composer$Companion$Empty$2) {
                            objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.c
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    BuildersKt.c(coroutineScope5, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(quickAccessFiltersViewState2, function5, function0, null), 3);
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer.q(objX18);
                        }
                        ActiveFiltersSliderKt.a(modifierE2, z20, zBooleanValue, z21, list, list2, list3, function21, function22, (Function0) objX18, gapComposer, 100663296);
                        gapComposer.Z(true);
                        gapComposer.Z(false);
                    }
                    objX16 = new wd0(quickAccessFiltersViewState2, function4, 29);
                    gapComposer.q(objX16);
                    Function2 function23 = (Function2) objX16;
                    objX17 = gapComposer.x();
                    if (objX17 == composer$Companion$Empty$2) {
                        mutableState13 = mutableState12;
                        objX17 = new u00(24, mutableState13);
                        gapComposer.q(objX17);
                    } else {
                        mutableState13 = mutableState12;
                    }
                    Function0 function24 = (Function0) objX17;
                    boolean zY12 = gapComposer.y(coroutineScope5) | gapComposer.y(quickAccessFiltersViewState2);
                    mutableState11 = mutableState13;
                    if (i4 == 256) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    boolean z33 = zY12 | z24;
                    if ((i11 & 29360128) == 8388608) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    z26 = z33 | z25;
                    objX18 = gapComposer.x();
                    if (z26) {
                        objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.c
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                BuildersKt.c(coroutineScope5, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(quickAccessFiltersViewState2, function5, function0, null), 3);
                                return Unit.f71739a;
                            }
                        };
                        gapComposer.q(objX18);
                    } else {
                        objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.c
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                BuildersKt.c(coroutineScope5, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(quickAccessFiltersViewState2, function5, function0, null), 3);
                                return Unit.f71739a;
                            }
                        };
                        gapComposer.q(objX18);
                    }
                    ActiveFiltersSliderKt.a(modifierE2, z20, zBooleanValue, z21, list, list2, list3, function23, function24, (Function0) objX18, gapComposer, 100663296);
                    gapComposer.Z(true);
                    gapComposer.Z(false);
                } else {
                    biasAlignment2 = biasAlignment;
                    mutableState11 = mutableState9;
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    str = r9;
                    gapComposer.L(1271378367);
                    gapComposer.Z(false);
                }
                boxScopeInstance2 = boxScopeInstance;
                Modifier modifierL = PaddingKt.l(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposer).f48416e, f5, LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48416e);
                measurePolicyD2 = BoxKt.d(biasAlignment2, false);
                composer$Companion$Empty$3 = composer$Companion$Empty$2;
                iHashCode2 = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU2 = gapComposer.U();
                modifierC2 = ComposedModifierKt.c(gapComposer, modifierL);
                if (r17 != 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function11);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD2, function12);
                Updater.c(gapComposer, persistentCompositionLocalMapU2, function13);
                cj.t(iHashCode2, gapComposer, function14, gapComposer, function15);
                Updater.c(gapComposer, modifierC2, function16);
                fB = ResourcesExtKt.b(LVAppDesignKitTheme.d(gapComposer).v);
                filtersButtonState = FiltersButtonState.OpenCategoriesAnimation;
                if (r19 != filtersButtonState) {
                    z18 = false;
                } else {
                    z18 = true;
                }
                Modifier modifierA3 = ClipKt.a(new DTFunctionNameModifier(str), LVAppDesignKitTheme.j(gapComposer).f48412e);
                BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                TweenSpec tweenSpecC = AnimationSpecKt.c(400, 0, EasingKt.f3864c, 2);
                zC = gapComposer.c(fB);
                objX11 = gapComposer.x();
                if (zC) {
                    composer$Companion$Empty$4 = composer$Companion$Empty$3;
                } else {
                    composer$Companion$Empty$4 = composer$Companion$Empty$3;
                    if (objX11 == composer$Companion$Empty$4) {
                    }
                    EnterTransition enterTransitionB = EnterExitTransitionKt.b(tweenSpecC, horizontal, (Function1) objX11, 4);
                    TweenSpec tweenSpecC2 = AnimationSpecKt.c(400, 0, null, 6);
                    zC2 = gapComposer.c(fB);
                    objX12 = gapComposer.x();
                    if (zC2 || objX12 == composer$Companion$Empty$4) {
                        objX12 = new a10(fB, 2);
                        gapComposer.q(objX12);
                    }
                    function18 = function1;
                    AnimatedVisibilityKt.e(z18, modifierA3, enterTransitionB, EnterExitTransitionKt.k(tweenSpecC2, horizontal, (Function1) objX12, 4), null, ComposableLambdaKt.b(1991917925, new yj0(quickAccessFiltersViewState, function18, mutableState7, 4), gapComposer), gapComposer, ImageMetadata.EDGE_MODE, 16);
                    strC = StringResources_androidKt.c(gapComposer, R.string.alt_show_filters);
                    strC2 = StringResources_androidKt.c(gapComposer, R.string.alt_hide_filters);
                    if (r19 == filtersButtonState) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    Boolean boolValueOf2 = Boolean.valueOf(z19);
                    Modifier modifierG2 = boxScopeInstance2.g(new DTFunctionNameModifier(str), Alignment.Companion.g);
                    zY4 = gapComposer.y(quickAccessFiltersViewState) | gapComposer.K(strC2) | gapComposer.K(strC) | gapComposer.K(function10) | gapComposer.K(function9);
                    objX13 = gapComposer.x();
                    if (!zY4 || objX13 == composer$Companion$Empty$4) {
                        function17 = function9;
                        composer$Companion$Empty$5 = composer$Companion$Empty$4;
                        d1 d1Var = new d1((Object) quickAccessFiltersViewState, strC2, strC, function10, (Object) function17, 19);
                        str2 = strC2;
                        gapComposer.q(d1Var);
                        objX13 = d1Var;
                    } else {
                        str2 = strC2;
                        function17 = function9;
                        composer$Companion$Empty$5 = composer$Companion$Empty$4;
                    }
                    Modifier modifierA4 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierG2, null, (Function1) objX13, 3);
                    objX14 = gapComposer.x();
                    if (objX14 == composer$Companion$Empty$5) {
                        objX14 = new yn0(20);
                        gapComposer.q(objX14);
                    }
                    AnimatedContentKt.b(boolValueOf2, modifierA4, (Function1) objX14, null, "button_animation", null, ComposableLambdaKt.b(-1200925734, new e3(str2, quickAccessFiltersViewState, function10, strC, function17, function5, mutableState11, mutableState10), gapComposer), gapComposer, 1597824, 40);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    f3 = f5;
                }
                objX11 = new a10(fB, 1);
                gapComposer.q(objX11);
                EnterTransition enterTransitionB2 = EnterExitTransitionKt.b(tweenSpecC, horizontal, (Function1) objX11, 4);
                TweenSpec tweenSpecC3 = AnimationSpecKt.c(400, 0, null, 6);
                zC2 = gapComposer.c(fB);
                objX12 = gapComposer.x();
                if (zC2) {
                    objX12 = new a10(fB, 2);
                    gapComposer.q(objX12);
                } else {
                    objX12 = new a10(fB, 2);
                    gapComposer.q(objX12);
                }
                function18 = function1;
                AnimatedVisibilityKt.e(z18, modifierA3, enterTransitionB2, EnterExitTransitionKt.k(tweenSpecC3, horizontal, (Function1) objX12, 4), null, ComposableLambdaKt.b(1991917925, new yj0(quickAccessFiltersViewState, function18, mutableState7, 4), gapComposer), gapComposer, ImageMetadata.EDGE_MODE, 16);
                strC = StringResources_androidKt.c(gapComposer, R.string.alt_show_filters);
                strC2 = StringResources_androidKt.c(gapComposer, R.string.alt_hide_filters);
                if (r19 == filtersButtonState) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                Boolean boolValueOf3 = Boolean.valueOf(z19);
                Modifier modifierG3 = boxScopeInstance2.g(new DTFunctionNameModifier(str), Alignment.Companion.g);
                zY4 = gapComposer.y(quickAccessFiltersViewState) | gapComposer.K(strC2) | gapComposer.K(strC) | gapComposer.K(function10) | gapComposer.K(function9);
                objX13 = gapComposer.x();
                if (zY4) {
                    function17 = function9;
                    composer$Companion$Empty$5 = composer$Companion$Empty$4;
                    d1 d1Var2 = new d1((Object) quickAccessFiltersViewState, strC2, strC, function10, (Object) function17, 19);
                    str2 = strC2;
                    gapComposer.q(d1Var2);
                    objX13 = d1Var2;
                } else {
                    function17 = function9;
                    composer$Companion$Empty$5 = composer$Companion$Empty$4;
                    d1 d1Var3 = new d1((Object) quickAccessFiltersViewState, strC2, strC, function10, (Object) function17, 19);
                    str2 = strC2;
                    gapComposer.q(d1Var3);
                    objX13 = d1Var3;
                }
                Modifier modifierA5 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierG3, null, (Function1) objX13, 3);
                objX14 = gapComposer.x();
                if (objX14 == composer$Companion$Empty$5) {
                    objX14 = new yn0(20);
                    gapComposer.q(objX14);
                }
                AnimatedContentKt.b(boolValueOf3, modifierA5, (Function1) objX14, null, "button_animation", null, ComposableLambdaKt.b(-1200925734, new e3(str2, quickAccessFiltersViewState, function10, strC, function17, function5, mutableState11, mutableState10), gapComposer), gapComposer, 1597824, 40);
                gapComposer.Z(true);
                gapComposer.Z(true);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                f3 = f5;
            } else {
                gapComposerH.D();
                if ((i3 & 64) != 0) {
                    i11 &= -3670017;
                }
            }
            f4 = f2;
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                if (z) {
                    f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    f6 = 1.0f;
                }
                objX = AnimatableKt.a(f6);
                gapComposerH.q(objX);
            }
            animatable = (Animatable) objX;
            f5 = f4;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.valueOf(z));
                gapComposerH.q(objX2);
            }
            mutableState = (MutableState) objX2;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.valueOf(z));
                gapComposerH.q(objX3);
            }
            mutableState2 = (MutableState) objX3;
            objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX4);
            }
            mutableState3 = (MutableState) objX4;
            objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX5);
            }
            coroutineScope = (CoroutineScope) objX5;
            hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX6);
            }
            mutableState4 = (MutableState) objX6;
            Unit unit2 = Unit.f71739a;
            boolean zY13 = gapComposerH.y(animatable);
            i4 = i12 & 896;
            if (i4 == 256) {
                z4 = true;
            } else {
                z4 = false;
            }
            zY = zY13 | z4 | gapComposerH.y(quickAccessFiltersViewState2);
            objX7 = gapComposerH.x();
            if (zY) {
                coroutineScope2 = coroutineScope;
                gapComposer = gapComposerH;
                i5 = i12;
                mutableState5 = mutableState;
                i6 = 256;
                objX7 = new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1(animatable, function5, quickAccessFiltersViewState2, mutableState5, null);
                quickAccessFiltersViewState2 = quickAccessFiltersViewState2;
                gapComposer.q(objX7);
            } else {
                coroutineScope2 = coroutineScope;
                gapComposer = gapComposerH;
                i5 = i12;
                mutableState5 = mutableState;
                i6 = 256;
                objX7 = new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$1$1(animatable, function5, quickAccessFiltersViewState2, mutableState5, null);
                quickAccessFiltersViewState2 = quickAccessFiltersViewState2;
                gapComposer.q(objX7);
            }
            EffectsKt.e(gapComposer, unit2, (Function2) objX7);
            Boolean boolValueOf4 = Boolean.valueOf(quickAccessFiltersViewState2.d);
            boolean zY14 = gapComposer.y(quickAccessFiltersViewState2);
            if (i4 == i6) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z210 = zY14 | z5;
            if ((i11 & 7168) == 2048) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = z210 | z6;
            Object objX110 = gapComposer.x();
            if (z7) {
                QuickAccessFiltersViewState quickAccessFiltersViewState5 = quickAccessFiltersViewState2;
                quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1 = new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1(quickAccessFiltersViewState5, function5, z2, mutableState5, null);
                function7 = function5;
                quickAccessFiltersViewState2 = quickAccessFiltersViewState5;
                gapComposer.q(quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1);
            } else {
                QuickAccessFiltersViewState quickAccessFiltersViewState6 = quickAccessFiltersViewState2;
                quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1 = new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1(quickAccessFiltersViewState6, function5, z2, mutableState5, null);
                function7 = function5;
                quickAccessFiltersViewState2 = quickAccessFiltersViewState6;
                gapComposer.q(quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1);
            }
            EffectsKt.g(r19, boolValueOf4, (Function2) quickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$2$1, gapComposer);
            if (i4 == i6) {
                z8 = true;
            } else {
                z8 = false;
            }
            i7 = i5 & 14;
            if (i7 == 4) {
                z9 = true;
            } else {
                z9 = false;
            }
            boolean z211 = z8 | z9;
            if ((i5 & 7168) == 2048) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = z211 | z10;
            objX8 = gapComposer.x();
            if (z11) {
                objX8 = new sm0((Object) function7, function3, function6, 8);
                gapComposer.q(objX8);
            } else {
                objX8 = new sm0((Object) function7, function3, function6, 8);
                gapComposer.q(objX8);
            }
            function8 = (Function0) objX8;
            boolean zY15 = gapComposer.y(hapticFeedback) | gapComposer.y(quickAccessFiltersViewState2);
            if ((i11 & 1879048192) == 536870912) {
                z12 = true;
            } else {
                z12 = false;
            }
            boolean z212 = z12 | zY15;
            coroutineScope3 = coroutineScope2;
            boolean zY16 = z212 | gapComposer.y(coroutineScope3);
            if (i4 == 256) {
                z13 = true;
            } else {
                z13 = false;
            }
            boolean z34 = zY16 | z13;
            if (i7 == 4) {
                z14 = true;
            } else {
                z14 = false;
            }
            z15 = z34 | z14;
            Object objX21 = gapComposer.x();
            if (z15) {
                hapticFeedback2 = hapticFeedback;
                i8 = 256;
                final MutableState mutableState15 = mutableState5;
                coroutineScope4 = coroutineScope3;
                final Function1 function110 = function7;
                obj = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.d
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        HapticFeedbackType.f9193b.getClass();
                        int i13 = PlatformHapticFeedbackType.f9196a;
                        hapticFeedback2.a(0);
                        mutableState15.setValue(Boolean.TRUE);
                        mutableState2.setValue(Boolean.FALSE);
                        QuickAccessFiltersViewState quickAccessFiltersViewState7 = quickAccessFiltersViewState2;
                        boolean z35 = quickAccessFiltersViewState7.q;
                        Function1 function25 = function2;
                        if (z35) {
                            function25.invoke(FiltersDropDownType.SORT_BY);
                        } else if (quickAccessFiltersViewState7.r) {
                            function25.invoke(FiltersDropDownType.MORES_FILTERS);
                        } else {
                            BuildersKt.c(coroutineScope4, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1(quickAccessFiltersViewState7, function110, function3, mutableState4, null), 3);
                        }
                        return Unit.f71739a;
                    }
                };
                mutableState6 = mutableState2;
                mutableState7 = mutableState4;
                mutableState8 = mutableState15;
                gapComposer.q(obj);
            } else {
                hapticFeedback2 = hapticFeedback;
                i8 = 256;
                final MutableState mutableState16 = mutableState5;
                coroutineScope4 = coroutineScope3;
                final Function1 function111 = function7;
                obj = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.d
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        HapticFeedbackType.f9193b.getClass();
                        int i13 = PlatformHapticFeedbackType.f9196a;
                        hapticFeedback2.a(0);
                        mutableState16.setValue(Boolean.TRUE);
                        mutableState2.setValue(Boolean.FALSE);
                        QuickAccessFiltersViewState quickAccessFiltersViewState7 = quickAccessFiltersViewState2;
                        boolean z35 = quickAccessFiltersViewState7.q;
                        Function1 function25 = function2;
                        if (z35) {
                            function25.invoke(FiltersDropDownType.SORT_BY);
                        } else if (quickAccessFiltersViewState7.r) {
                            function25.invoke(FiltersDropDownType.MORES_FILTERS);
                        } else {
                            BuildersKt.c(coroutineScope4, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onShowFiltersClicked$1$1$1(quickAccessFiltersViewState7, function111, function3, mutableState4, null), 3);
                        }
                        return Unit.f71739a;
                    }
                };
                mutableState6 = mutableState2;
                mutableState7 = mutableState4;
                mutableState8 = mutableState16;
                gapComposer.q(obj);
            }
            function9 = (Function0) obj;
            boolean zY17 = gapComposer.y(hapticFeedback2) | gapComposer.y(coroutineScope4);
            if (i4 == i8) {
                z16 = true;
            } else {
                z16 = false;
            }
            boolean z35 = zY17 | z16;
            if ((i11 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                z17 = true;
            } else {
                z17 = false;
            }
            zY2 = z35 | z17 | gapComposer.y(quickAccessFiltersViewState2) | gapComposer.K(function8);
            objX9 = gapComposer.x();
            if (zY2) {
                final QuickAccessFiltersViewState quickAccessFiltersViewState7 = quickAccessFiltersViewState2;
                final CoroutineScope coroutineScope7 = coroutineScope4;
                Function0 function25 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.e
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        HapticFeedbackType.f9193b.getClass();
                        int i13 = PlatformHapticFeedbackType.f9196a;
                        hapticFeedback2.a(0);
                        BuildersKt.c(coroutineScope7, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1(function5, z3, quickAccessFiltersViewState7, function8, mutableState3, mutableState7, null), 3);
                        return Unit.f71739a;
                    }
                };
                coroutineScope4 = coroutineScope7;
                quickAccessFiltersViewState2 = quickAccessFiltersViewState7;
                mutableState9 = mutableState3;
                gapComposer.q(function25);
                objX9 = function25;
            } else {
                final QuickAccessFiltersViewState quickAccessFiltersViewState8 = quickAccessFiltersViewState2;
                final CoroutineScope coroutineScope8 = coroutineScope4;
                Function0 function26 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.e
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        HapticFeedbackType.f9193b.getClass();
                        int i13 = PlatformHapticFeedbackType.f9196a;
                        hapticFeedback2.a(0);
                        BuildersKt.c(coroutineScope8, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$onHideFiltersClicked$1$1$1(function5, z3, quickAccessFiltersViewState8, function8, mutableState3, mutableState7, null), 3);
                        return Unit.f71739a;
                    }
                };
                coroutineScope4 = coroutineScope8;
                quickAccessFiltersViewState2 = quickAccessFiltersViewState8;
                mutableState9 = mutableState3;
                gapComposer.q(function26);
                objX9 = function26;
            }
            function10 = (Function0) objX9;
            zY3 = gapComposer.y(animatable);
            objX10 = gapComposer.x();
            if (zY3) {
                objX10 = new sa(animatable, 3);
                gapComposer.q(objX10);
            } else {
                objX10 = new sa(animatable, 3);
                gapComposer.q(objX10);
            }
            Modifier modifierA6 = GraphicsLayerModifierKt.a(modifier2, (Function1) objX10);
            Alignment.f8582a.getClass();
            biasAlignment = Alignment.Companion.f8584b;
            measurePolicyD = BoxKt.d(biasAlignment, false);
            coroutineScope5 = coroutineScope4;
            iHashCode = Long.hashCode(gapComposer.T);
            persistentCompositionLocalMapU = gapComposer.U();
            modifierC = ComposedModifierKt.c(gapComposer, modifierA6);
            ComposeUiNode.b0.getClass();
            function11 = ComposeUiNode.Companion.f9641b;
            mutableState10 = mutableState8;
            if (r17 != 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function11);
            } else {
                gapComposer.o();
            }
            function12 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposer, measurePolicyD, function12);
            function13 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposer, persistentCompositionLocalMapU, function13);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function14 = ComposeUiNode.Companion.g;
            Updater.c(gapComposer, numValueOf2, function14);
            function15 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposer, function15);
            function16 = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, modifierC, function16);
            boxScopeInstance = BoxScopeInstance.f4938a;
            if (z2) {
                str = "QuickAccessFiltersEntryPoint-AlbwjTQ";
                Modifier modifierC5 = o60.c(gapComposer, 1268915324, str, 1.0f);
                biasAlignment3 = Alignment.Companion.f8589i;
                Modifier modifierG4 = boxScopeInstance.g(modifierC5, biasAlignment3);
                mutableState12 = mutableState9;
                objX15 = gapComposer.x();
                if (objX15 == composer$Companion$Empty$1) {
                    objX15 = new qo(2);
                    gapComposer.q(objX15);
                }
                Modifier modifierA7 = LayoutModifierKt.a(modifierG4, (Function3) objX15);
                measurePolicyD3 = BoxKt.d(biasAlignment, false);
                iHashCode3 = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU3 = gapComposer.U();
                modifierC3 = ComposedModifierKt.c(gapComposer, modifierA7);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                biasAlignment2 = biasAlignment;
                if (gapComposer.S) {
                    gapComposer.C(function11);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD3, function12);
                Updater.c(gapComposer, persistentCompositionLocalMapU3, function13);
                cj.t(iHashCode3, gapComposer, function14, gapComposer, function15);
                boxScopeInstance = boxScopeInstance;
                ActiveFiltersBackGradientKt.a(48, gapComposer, ModifierExtKt.b(boxScopeInstance.g(tr.e(gapComposer, modifierC3, function16, str), biasAlignment3), !z3, new xq0(2, (byte) 0), gapComposer, 0), true);
                Modifier modifierE3 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(boxScopeInstance.g(new DTFunctionNameModifier(str), Alignment.Companion.f8586e), "QAF_ActiveFilters_view");
                if (filtersButtonState2 == FiltersButtonState.OpenActiveFiltersAnimation) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                boolean zBooleanValue2 = ((Boolean) mutableState6.getF10755b()).booleanValue();
                if (((Boolean) mutableState12.getF10755b()).booleanValue()) {
                    z21 = false;
                } else {
                    z21 = false;
                }
                List list4 = quickAccessFiltersViewState2.m;
                List list5 = quickAccessFiltersViewState2.n;
                List list6 = quickAccessFiltersViewState2.o;
                boolean zY18 = gapComposer.y(quickAccessFiltersViewState2);
                if ((i5 & 112) == 32) {
                    z22 = true;
                } else {
                    z22 = false;
                }
                z23 = zY18 | z22;
                objX16 = gapComposer.x();
                if (z23) {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    if (objX16 == composer$Companion$Empty$2) {
                    }
                    Function2 function27 = (Function2) objX16;
                    objX17 = gapComposer.x();
                    if (objX17 == composer$Companion$Empty$2) {
                        mutableState13 = mutableState12;
                        objX17 = new u00(24, mutableState13);
                        gapComposer.q(objX17);
                    } else {
                        mutableState13 = mutableState12;
                    }
                    Function0 function28 = (Function0) objX17;
                    boolean zY19 = gapComposer.y(coroutineScope5) | gapComposer.y(quickAccessFiltersViewState2);
                    mutableState11 = mutableState13;
                    if (i4 == 256) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    boolean z36 = zY19 | z24;
                    if ((i11 & 29360128) == 8388608) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    z26 = z36 | z25;
                    objX18 = gapComposer.x();
                    if (z26) {
                        objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.c
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                BuildersKt.c(coroutineScope5, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(quickAccessFiltersViewState2, function5, function0, null), 3);
                                return Unit.f71739a;
                            }
                        };
                        gapComposer.q(objX18);
                    } else {
                        objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.c
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                BuildersKt.c(coroutineScope5, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(quickAccessFiltersViewState2, function5, function0, null), 3);
                                return Unit.f71739a;
                            }
                        };
                        gapComposer.q(objX18);
                    }
                    ActiveFiltersSliderKt.a(modifierE3, z20, zBooleanValue2, z21, list4, list5, list6, function27, function28, (Function0) objX18, gapComposer, 100663296);
                    gapComposer.Z(true);
                    gapComposer.Z(false);
                } else {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                }
                objX16 = new wd0(quickAccessFiltersViewState2, function4, 29);
                gapComposer.q(objX16);
                Function2 function29 = (Function2) objX16;
                objX17 = gapComposer.x();
                if (objX17 == composer$Companion$Empty$2) {
                    mutableState13 = mutableState12;
                    objX17 = new u00(24, mutableState13);
                    gapComposer.q(objX17);
                } else {
                    mutableState13 = mutableState12;
                }
                Function0 function210 = (Function0) objX17;
                boolean zY110 = gapComposer.y(coroutineScope5) | gapComposer.y(quickAccessFiltersViewState2);
                mutableState11 = mutableState13;
                if (i4 == 256) {
                    z24 = true;
                } else {
                    z24 = false;
                }
                boolean z37 = zY110 | z24;
                if ((i11 & 29360128) == 8388608) {
                    z25 = true;
                } else {
                    z25 = false;
                }
                z26 = z37 | z25;
                objX18 = gapComposer.x();
                if (z26) {
                    objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.c
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            BuildersKt.c(coroutineScope5, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(quickAccessFiltersViewState2, function5, function0, null), 3);
                            return Unit.f71739a;
                        }
                    };
                    gapComposer.q(objX18);
                } else {
                    objX18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.c
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            BuildersKt.c(coroutineScope5, null, null, new QuickAccessFiltersEntryPointKt$QuickAccessFiltersEntryPoint$4$2$4$1$1(quickAccessFiltersViewState2, function5, function0, null), 3);
                            return Unit.f71739a;
                        }
                    };
                    gapComposer.q(objX18);
                }
                ActiveFiltersSliderKt.a(modifierE3, z20, zBooleanValue2, z21, list4, list5, list6, function29, function210, (Function0) objX18, gapComposer, 100663296);
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                biasAlignment2 = biasAlignment;
                mutableState11 = mutableState9;
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                str = r9;
                gapComposer.L(1271378367);
                gapComposer.Z(false);
            }
            boxScopeInstance2 = boxScopeInstance;
            Modifier modifierL2 = PaddingKt.l(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposer).f48416e, f5, LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48416e);
            measurePolicyD2 = BoxKt.d(biasAlignment2, false);
            composer$Companion$Empty$3 = composer$Companion$Empty$2;
            iHashCode2 = Long.hashCode(gapComposer.T);
            persistentCompositionLocalMapU2 = gapComposer.U();
            modifierC2 = ComposedModifierKt.c(gapComposer, modifierL2);
            if (r17 != 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function11);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD2, function12);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function13);
            cj.t(iHashCode2, gapComposer, function14, gapComposer, function15);
            Updater.c(gapComposer, modifierC2, function16);
            fB = ResourcesExtKt.b(LVAppDesignKitTheme.d(gapComposer).v);
            filtersButtonState = FiltersButtonState.OpenCategoriesAnimation;
            if (r19 != filtersButtonState) {
                z18 = false;
            } else {
                z18 = true;
            }
            Modifier modifierA8 = ClipKt.a(new DTFunctionNameModifier(str), LVAppDesignKitTheme.j(gapComposer).f48412e);
            BiasAlignment.Horizontal horizontal2 = Alignment.Companion.n;
            TweenSpec tweenSpecC4 = AnimationSpecKt.c(400, 0, EasingKt.f3864c, 2);
            zC = gapComposer.c(fB);
            objX11 = gapComposer.x();
            if (zC) {
                composer$Companion$Empty$4 = composer$Companion$Empty$3;
                if (objX11 == composer$Companion$Empty$4) {
                }
                EnterTransition enterTransitionB3 = EnterExitTransitionKt.b(tweenSpecC4, horizontal2, (Function1) objX11, 4);
                TweenSpec tweenSpecC5 = AnimationSpecKt.c(400, 0, null, 6);
                zC2 = gapComposer.c(fB);
                objX12 = gapComposer.x();
                if (zC2) {
                    objX12 = new a10(fB, 2);
                    gapComposer.q(objX12);
                } else {
                    objX12 = new a10(fB, 2);
                    gapComposer.q(objX12);
                }
                function18 = function1;
                AnimatedVisibilityKt.e(z18, modifierA8, enterTransitionB3, EnterExitTransitionKt.k(tweenSpecC5, horizontal2, (Function1) objX12, 4), null, ComposableLambdaKt.b(1991917925, new yj0(quickAccessFiltersViewState, function18, mutableState7, 4), gapComposer), gapComposer, ImageMetadata.EDGE_MODE, 16);
                strC = StringResources_androidKt.c(gapComposer, R.string.alt_show_filters);
                strC2 = StringResources_androidKt.c(gapComposer, R.string.alt_hide_filters);
                if (r19 == filtersButtonState) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                Boolean boolValueOf5 = Boolean.valueOf(z19);
                Modifier modifierG5 = boxScopeInstance2.g(new DTFunctionNameModifier(str), Alignment.Companion.g);
                zY4 = gapComposer.y(quickAccessFiltersViewState) | gapComposer.K(strC2) | gapComposer.K(strC) | gapComposer.K(function10) | gapComposer.K(function9);
                objX13 = gapComposer.x();
                if (zY4) {
                    function17 = function9;
                    composer$Companion$Empty$5 = composer$Companion$Empty$4;
                    d1 d1Var4 = new d1((Object) quickAccessFiltersViewState, strC2, strC, function10, (Object) function17, 19);
                    str2 = strC2;
                    gapComposer.q(d1Var4);
                    objX13 = d1Var4;
                } else {
                    function17 = function9;
                    composer$Companion$Empty$5 = composer$Companion$Empty$4;
                    d1 d1Var5 = new d1((Object) quickAccessFiltersViewState, strC2, strC, function10, (Object) function17, 19);
                    str2 = strC2;
                    gapComposer.q(d1Var5);
                    objX13 = d1Var5;
                }
                Modifier modifierA9 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierG5, null, (Function1) objX13, 3);
                objX14 = gapComposer.x();
                if (objX14 == composer$Companion$Empty$5) {
                    objX14 = new yn0(20);
                    gapComposer.q(objX14);
                }
                AnimatedContentKt.b(boolValueOf5, modifierA9, (Function1) objX14, null, "button_animation", null, ComposableLambdaKt.b(-1200925734, new e3(str2, quickAccessFiltersViewState, function10, strC, function17, function5, mutableState11, mutableState10), gapComposer), gapComposer, 1597824, 40);
                gapComposer.Z(true);
                gapComposer.Z(true);
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                f3 = f5;
            } else {
                composer$Companion$Empty$4 = composer$Companion$Empty$3;
            }
            objX11 = new a10(fB, 1);
            gapComposer.q(objX11);
            EnterTransition enterTransitionB4 = EnterExitTransitionKt.b(tweenSpecC4, horizontal2, (Function1) objX11, 4);
            TweenSpec tweenSpecC6 = AnimationSpecKt.c(400, 0, null, 6);
            zC2 = gapComposer.c(fB);
            objX12 = gapComposer.x();
            if (zC2) {
                objX12 = new a10(fB, 2);
                gapComposer.q(objX12);
            } else {
                objX12 = new a10(fB, 2);
                gapComposer.q(objX12);
            }
            function18 = function1;
            AnimatedVisibilityKt.e(z18, modifierA8, enterTransitionB4, EnterExitTransitionKt.k(tweenSpecC6, horizontal2, (Function1) objX12, 4), null, ComposableLambdaKt.b(1991917925, new yj0(quickAccessFiltersViewState, function18, mutableState7, 4), gapComposer), gapComposer, ImageMetadata.EDGE_MODE, 16);
            strC = StringResources_androidKt.c(gapComposer, R.string.alt_show_filters);
            strC2 = StringResources_androidKt.c(gapComposer, R.string.alt_hide_filters);
            if (r19 == filtersButtonState) {
                z19 = true;
            } else {
                z19 = false;
            }
            Boolean boolValueOf6 = Boolean.valueOf(z19);
            Modifier modifierG6 = boxScopeInstance2.g(new DTFunctionNameModifier(str), Alignment.Companion.g);
            zY4 = gapComposer.y(quickAccessFiltersViewState) | gapComposer.K(strC2) | gapComposer.K(strC) | gapComposer.K(function10) | gapComposer.K(function9);
            objX13 = gapComposer.x();
            if (zY4) {
                function17 = function9;
                composer$Companion$Empty$5 = composer$Companion$Empty$4;
                d1 d1Var6 = new d1((Object) quickAccessFiltersViewState, strC2, strC, function10, (Object) function17, 19);
                str2 = strC2;
                gapComposer.q(d1Var6);
                objX13 = d1Var6;
            } else {
                function17 = function9;
                composer$Companion$Empty$5 = composer$Companion$Empty$4;
                d1 d1Var7 = new d1((Object) quickAccessFiltersViewState, strC2, strC, function10, (Object) function17, 19);
                str2 = strC2;
                gapComposer.q(d1Var7);
                objX13 = d1Var7;
            }
            Modifier modifierA10 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierG6, null, (Function1) objX13, 3);
            objX14 = gapComposer.x();
            if (objX14 == composer$Companion$Empty$5) {
                objX14 = new yn0(20);
                gapComposer.q(objX14);
            }
            AnimatedContentKt.b(boolValueOf6, modifierA10, (Function1) objX14, null, "button_animation", null, ComposableLambdaKt.b(-1200925734, new e3(str2, quickAccessFiltersViewState, function10, strC, function17, function5, mutableState11, mutableState10), gapComposer), gapComposer, 1597824, 40);
            gapComposer.Z(true);
            gapComposer.Z(true);
            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
            f3 = f5;
        } else {
            gapComposer = gapComposerH;
            modifier2 = modifier2;
            gapComposer.D();
            f3 = f2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function30 = function18;
            final Modifier modifier3 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: br0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    QuickAccessFiltersEntryPointKt.a(modifier3, quickAccessFiltersViewState, z, z2, z3, f3, function0, function30, function2, function3, function4, function5, function6, (Composer) obj2, iA, i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
