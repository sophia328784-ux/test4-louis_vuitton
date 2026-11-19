package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.RippleKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import defpackage.d21;
import defpackage.j60;
import defpackage.k40;
import defpackage.k60;
import defpackage.l00;
import defpackage.md;
import defpackage.n00;
import defpackage.pp;
import defpackage.sd;
import defpackage.tr;
import defpackage.v6;
import defpackage.w6;
import defpackage.x20;
import defpackage.z30;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/graphics/Color;", "animatedBackgroundColor", "", "pinnedHeightPx", "collapsibleHeightPx", "maxHeightPx", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVMediumTopBarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CubicBezierEasing f48747a = new CubicBezierEasing(0.8f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.8f, 0.15f);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48750a;

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
            f48750a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01be  */
    /* JADX WARN: Code duplicated, block: B:103:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:106:0x01da  */
    /* JADX WARN: Code duplicated, block: B:109:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:112:0x0210  */
    /* JADX WARN: Code duplicated, block: B:115:0x0236 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:116:0x0238  */
    /* JADX WARN: Code duplicated, block: B:119:0x024e  */
    /* JADX WARN: Code duplicated, block: B:120:0x0251  */
    /* JADX WARN: Code duplicated, block: B:123:0x0262 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:124:0x0264  */
    /* JADX WARN: Code duplicated, block: B:127:0x028b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0296  */
    /* JADX WARN: Code duplicated, block: B:133:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:135:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:136:0x02af  */
    /* JADX WARN: Code duplicated, block: B:139:0x02b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:140:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:143:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:144:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:147:0x02d6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:148:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:151:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:153:0x033d  */
    /* JADX WARN: Code duplicated, block: B:156:0x0350  */
    /* JADX WARN: Code duplicated, block: B:158:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x006f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0077  */
    /* JADX WARN: Code duplicated, block: B:42:0x007a  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e  */
    /* JADX WARN: Code duplicated, block: B:47:0x0086  */
    /* JADX WARN: Code duplicated, block: B:49:0x008a  */
    /* JADX WARN: Code duplicated, block: B:51:0x008d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0095  */
    /* JADX WARN: Code duplicated, block: B:54:0x0098  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00da  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f1 A[PHI: r3 r6 r21 r26 r29 r30
      0x00f1: PHI (r3v10 int) = (r3v5 int), (r3v11 int) binds: [B:87:0x011e, B:75:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r6v10 androidx.compose.ui.Modifier) = (r6v5 androidx.compose.ui.Modifier), (r6v11 androidx.compose.ui.Modifier) binds: [B:87:0x011e, B:75:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r21v2 androidx.compose.foundation.layout.WindowInsets) = (r21v0 androidx.compose.foundation.layout.WindowInsets), (r21v3 androidx.compose.foundation.layout.WindowInsets) binds: [B:87:0x011e, B:75:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r26v2 java.lang.String) = (r26v0 java.lang.String), (r26v3 java.lang.String) binds: [B:87:0x011e, B:75:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r29v2 kotlin.jvm.functions.Function4) = (r29v0 kotlin.jvm.functions.Function4), (r29v3 kotlin.jvm.functions.Function4) binds: [B:87:0x011e, B:75:0x00e1] A[DONT_GENERATE, DONT_INLINE]
      0x00f1: PHI (r30v2 com.vuitton.android.designkit.ui.theme.LVColorScheme) = 
      (r30v0 com.vuitton.android.designkit.ui.theme.LVColorScheme)
      (r30v3 com.vuitton.android.designkit.ui.theme.LVColorScheme)
     binds: [B:87:0x011e, B:75:0x00e1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:77:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:82:0x0102  */
    /* JADX WARN: Code duplicated, block: B:84:0x0105  */
    /* JADX WARN: Code duplicated, block: B:85:0x010d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0120  */
    /* JADX WARN: Code duplicated, block: B:91:0x0131  */
    /* JADX WARN: Code duplicated, block: B:93:0x0134  */
    /* JADX WARN: Code duplicated, block: B:95:0x0169  */
    /* JADX WARN: Code duplicated, block: B:97:0x0171  */
    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, final String str, String str2, Function0 function0, Function4 function4, WindowInsets windowInsets, TopAppBarScrollBehavior topAppBarScrollBehavior, Composer composer, int i2, int i3) {
        String str3;
        Function0 function1;
        int i4;
        Function4 function5;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Modifier modifier2;
        boolean z;
        LVColorScheme lVColorScheme2;
        TopAppBarScrollBehavior topAppBarScrollBehavior2;
        String str4;
        Function4 function6;
        Modifier modifier3;
        WindowInsets windowInsets2;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVColorScheme lVColorScheme3;
        Function4 function7;
        final LVColorScheme lVColorScheme4;
        final Function4 function8;
        final String str5;
        final WindowInsets windowInsetsC;
        int i10;
        Modifier modifier4;
        TopAppBarScrollBehavior topAppBarScrollBehavior3;
        int i11;
        MediumTopBarConfig mediumTopBarConfig;
        float fA;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final MutableFloatState mutableFloatState;
        Object objX2;
        final MutableFloatState mutableFloatState2;
        Object objX3;
        MutableFloatState mutableFloatState3;
        boolean zK;
        Object objX4;
        int i12;
        boolean z2;
        boolean zK2;
        Object objX5;
        float fB;
        Modifier modifierJ;
        boolean z3;
        Object objX6;
        boolean z4;
        Object objX7;
        TopAppBarState f6904a;
        TopAppBarState f6904a2;
        int i13;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVMediumTopBar");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-1547281347);
        int i14 = i2 | 6;
        int i15 = i3 & 2;
        if (i15 != 0) {
            i14 = i2 | 54;
        } else if ((i2 & 48) == 0) {
            i14 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i14 |= gapComposerH.K(str) ? 256 : 128;
        }
        int i16 = i3 & 8;
        if (i16 == 0) {
            if ((i2 & 3072) == 0) {
                str3 = str2;
                i14 |= gapComposerH.K(str3) ? 2048 : 1024;
            }
            if ((i2 & 24576) == 0) {
                function1 = function0;
                if (gapComposerH.y(function1)) {
                    i13 = 16384;
                } else {
                    i13 = 8192;
                }
                i14 |= i13;
            } else {
                function1 = function0;
            }
            i4 = i3 & 32;
            if (i4 != 0) {
                if ((196608 & i2) == 0) {
                    function5 = function4;
                    if (gapComposerH.y(function5)) {
                        i5 = 131072;
                    } else {
                        i5 = 65536;
                    }
                    i14 |= i5;
                }
                i6 = 524288 | i14;
                i7 = i3 & 128;
                if (i7 != 0) {
                    i9 = i14 | 13107200;
                } else {
                    if (gapComposerH.K(topAppBarScrollBehavior)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i9 = i6 | i8;
                }
                modifier2 = modifierE;
                if ((i9 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i9 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0 || gapComposerH.h0()) {
                        DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LVMediumTopBar");
                        if (i15 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i16 != 0) {
                            str3 = null;
                        }
                        if (i4 != 0) {
                            ComposableSingletons$LVMediumTopBarKt.f48737a.getClass();
                            function7 = ComposableSingletons$LVMediumTopBarKt.f48738b;
                        } else {
                            function7 = function5;
                        }
                        lVColorScheme4 = lVColorScheme3;
                        function8 = function7;
                        str5 = str3;
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                        i10 = i9 & (-3670017);
                        modifier4 = dTFunctionNameModifier;
                        if (i7 != 0) {
                            topAppBarScrollBehavior3 = null;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        i11 = WhenMappings.f48750a[lVColorScheme4.ordinal()];
                        if (i11 == 1) {
                            gapComposerH.L(-1733221987);
                            mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                            gapComposerH.Z(false);
                        } else {
                            if (i11 != 2) {
                                throw d21.u(gapComposerH, -1733223177, false);
                            }
                            gapComposerH.L(-1733211058);
                            mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                            gapComposerH.Z(false);
                        }
                        final MediumTopBarConfig mediumTopBarConfig2 = mediumTopBarConfig;
                        final State stateB = SingleValueAnimationKt.b(mediumTopBarConfig2.f48757a, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null), "", gapComposerH, 432, 8);
                        if (topAppBarScrollBehavior3 != null || (f6904a2 = topAppBarScrollBehavior3.getF6904a()) == null) {
                            fA = 0.0f;
                        } else {
                            fA = f6904a2.a();
                        }
                        final float fA2 = f48747a.a(fA);
                        Object[] objArr = new Object[0];
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new k40(21);
                            gapComposerH.q(objX);
                        }
                        mutableFloatState = (MutableFloatState) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 48);
                        Object[] objArr2 = new Object[0];
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new k40(22);
                            gapComposerH.q(objX2);
                        }
                        mutableFloatState2 = (MutableFloatState) RememberSaveableKt.d(objArr2, (Function0) objX2, gapComposerH, 48);
                        Object[] objArr3 = new Object[0];
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new k40(23);
                            gapComposerH.q(objX3);
                        }
                        mutableFloatState3 = (MutableFloatState) RememberSaveableKt.d(objArr3, (Function0) objX3, gapComposerH, 48);
                        zK = gapComposerH.K(mutableFloatState3) | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState2);
                        objX4 = gapComposerH.x();
                        if (zK || objX4 == composer$Companion$Empty$1) {
                            objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                            gapComposerH.q(objX4);
                        }
                        EffectsKt.i((Function0) objX4, gapComposerH);
                        i12 = i10 & 29360128;
                        if (i12 == 8388608) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zK2 = z2 | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState3);
                        objX5 = gapComposerH.x();
                        if (zK2 || objX5 == composer$Companion$Empty$1) {
                            objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                            gapComposerH.q(objX5);
                        }
                        EffectsKt.i((Function0) objX5, gapComposerH);
                        final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
                        Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                        float fA3 = mutableFloatState3.a() - mutableFloatState.a();
                        if (topAppBarScrollBehavior3 != null || (f6904a = topAppBarScrollBehavior3.getF6904a()) == null) {
                            fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        } else {
                            fB = f6904a.b();
                        }
                        ref$FloatRef.f71918b = density.l1(fA3 + fB);
                        if (topAppBarScrollBehavior3 != null) {
                            gapComposerH.L(-1467613661);
                            Orientation orientation = Orientation.Vertical;
                            if (i12 == 8388608) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            objX6 = gapComposerH.x();
                            if (z3 || objX6 == composer$Companion$Empty$1) {
                                objX6 = new l00(topAppBarScrollBehavior3, 15);
                                gapComposerH.q(objX6);
                            }
                            DraggableState draggableStateB = DraggableKt.b(gapComposerH, (Function1) objX6);
                            if (i12 == 8388608) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            objX7 = gapComposerH.x();
                            if (z4 || objX7 == composer$Companion$Empty$1) {
                                objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                                gapComposerH.q(objX7);
                            }
                            modifierJ = DraggableKt.a(Modifier.Companion.f8607b, draggableStateB, orientation, false, null, false, (Function3) objX7, false, 188);
                            gapComposerH.Z(false);
                        } else {
                            modifierJ = n00.j(gapComposerH, -1467137811, false, "LVMediumTopBar");
                        }
                        final Modifier modifier5 = modifierJ;
                        final TopAppBarScrollBehavior topAppBarScrollBehavior4 = topAppBarScrollBehavior3;
                        final Modifier modifier6 = modifier4;
                        final Function0 function2 = function1;
                        CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(mediumTopBarConfig2.d), ComposableLambdaKt.b(-1038860419, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.a
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Integer) obj2).intValue();
                                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                                Modifier modifierE2 = modifier6;
                                if (modifierE2 != null) {
                                    modifierE2 = defpackage.a.e(modifierE2, "LVMediumTopBar$lambda$15");
                                }
                                final Modifier modifier7 = modifierE2;
                                int i17 = 0;
                                int i18 = 1;
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    Modifier modifierO = modifier7.o(modifier5);
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                    int iHashCode = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function3);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    DTFunctionNameModifier dTFunctionNameModifierF = defpackage.a.f(composer2, modifierC, ComposeUiNode.Companion.d, "LVMediumTopBar$lambda$15");
                                    MutableFloatState mutableFloatState4 = mutableFloatState;
                                    boolean zK3 = composer2.K(mutableFloatState4);
                                    Object objX8 = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (zK3 || objX8 == composer$Companion$Empty$2) {
                                        objX8 = new z30(mutableFloatState4, i18);
                                        composer2.q(objX8);
                                    }
                                    Modifier modifierA = OnRemeasuredModifierKt.a(dTFunctionNameModifierF, (Function1) objX8);
                                    float f2 = TopAppBarDefaults.f7433a;
                                    final MediumTopBarConfig mediumTopBarConfig3 = mediumTopBarConfig2;
                                    long j2 = mediumTopBarConfig3.f48757a;
                                    TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j2, j2, composer2, 60);
                                    final String str6 = str;
                                    final String str7 = str5;
                                    final float f3 = fA2;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1659493899, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.b
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj3, Object obj4) {
                                            Composer composer3 = (Composer) obj3;
                                            int iIntValue2 = ((Integer) obj4).intValue();
                                            CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                                MediumTopBarConfig mediumTopBarConfig4 = mediumTopBarConfig3;
                                                LVTopBarCommonKt.a(str6, str7, mediumTopBarConfig4.f48758b, mediumTopBarConfig4.f48759c, f3, null, composer3, 0, 32);
                                            } else {
                                                composer3.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer2);
                                    final Function0 function9 = function2;
                                    AppBarKt.c(composableLambdaImplB, modifierA, ComposableLambdaKt.b(1196968461, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.c
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj3, Object obj4) {
                                            Composer composer3 = (Composer) obj3;
                                            int iIntValue2 = ((Integer) obj4).intValue();
                                            CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                            Modifier modifierE3 = defpackage.a.e(modifier7, "LVMediumTopBar$lambda$15$0$2");
                                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                                Function0 function10 = function9;
                                                if (function10 != null) {
                                                    composer3.L(2069017743);
                                                    Modifier modifierE4 = ModifierExtKt.e(modifierE3, "header_backArrow_button");
                                                    final MediumTopBarConfig mediumTopBarConfig4 = mediumTopBarConfig3;
                                                    IconButtonKt.a(function10, modifierE4, false, null, null, ComposableLambdaKt.b(1756489542, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.d
                                                        @Override // kotlin.jvm.functions.Function2
                                                        public final Object invoke(Object obj5, Object obj6) {
                                                            Composer composer4 = (Composer) obj5;
                                                            int iIntValue3 = ((Integer) obj6).intValue();
                                                            CubicBezierEasing cubicBezierEasing3 = LVMediumTopBarKt.f48747a;
                                                            if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).H, composer4, 0), StringResources_androidKt.c(composer4, R.string.alt_back), null, mediumTopBarConfig4.f48758b, composer4, 8, 4);
                                                            } else {
                                                                composer4.D();
                                                            }
                                                            return Unit.f71739a;
                                                        }
                                                    }, composer3), composer3, 1572864, 60);
                                                    composer3.F();
                                                } else {
                                                    composer3.L(2069537365);
                                                    composer3.F();
                                                }
                                            } else {
                                                composer3.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer2), ComposableLambdaKt.b(861744054, new j60(function8, lVColorScheme4, i17), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsetsC, topAppBarColorsD, composer2, 3462, 144);
                                    Modifier modifierD = tr.d("LVMediumTopBar$lambda$15", 1.0f);
                                    TopAppBarScrollBehavior topAppBarScrollBehavior5 = topAppBarScrollBehavior4;
                                    Modifier modifierO2 = modifierD.o((topAppBarScrollBehavior5 == null || topAppBarScrollBehavior5.getF6904a().a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? new DTFunctionNameModifier("LVMediumTopBar$lambda$15") : SizeKt.f(new DTFunctionNameModifier("LVMediumTopBar$lambda$15"), ref$FloatRef.f71918b));
                                    boolean zK4 = composer2.K(topAppBarScrollBehavior5);
                                    MutableFloatState mutableFloatState5 = mutableFloatState2;
                                    boolean zK5 = zK4 | composer2.K(mutableFloatState5);
                                    Object objX9 = composer2.x();
                                    if (zK5 || objX9 == composer$Companion$Empty$2) {
                                        objX9 = new k60(topAppBarScrollBehavior5, mutableFloatState5, i17);
                                        composer2.q(objX9);
                                    }
                                    LVMediumTopBarKt.b(BackgroundKt.b(OnRemeasuredModifierKt.a(modifierO2, (Function1) objX9), ((Color) stateB.getF10755b()).f8872a, RectangleShapeKt.f8913a), str6, str7, mediumTopBarConfig3.f48758b, mediumTopBarConfig3.f48759c, composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 56);
                        modifier3 = modifier6;
                        windowInsets2 = windowInsetsC;
                        topAppBarScrollBehavior2 = topAppBarScrollBehavior4;
                        str4 = str5;
                        function6 = function8;
                        lVColorScheme2 = lVColorScheme4;
                    } else {
                        gapComposerH.D();
                        lVColorScheme4 = lVColorScheme;
                        windowInsetsC = windowInsets;
                        i10 = i9 & (-3670017);
                        str5 = str3;
                        function8 = function5;
                        modifier4 = modifier2;
                    }
                    topAppBarScrollBehavior3 = topAppBarScrollBehavior;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    i11 = WhenMappings.f48750a[lVColorScheme4.ordinal()];
                    if (i11 == 1) {
                        gapComposerH.L(-1733221987);
                        mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                        gapComposerH.Z(false);
                    } else {
                        if (i11 != 2) {
                            throw d21.u(gapComposerH, -1733223177, false);
                        }
                        gapComposerH.L(-1733211058);
                        mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                        gapComposerH.Z(false);
                    }
                    final MediumTopBarConfig mediumTopBarConfig3 = mediumTopBarConfig;
                    final State stateB2 = SingleValueAnimationKt.b(mediumTopBarConfig3.f48757a, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null), "", gapComposerH, 432, 8);
                    if (topAppBarScrollBehavior3 != null) {
                        fA = 0.0f;
                    } else {
                        fA = 0.0f;
                    }
                    final float fA4 = f48747a.a(fA);
                    Object[] objArr4 = new Object[0];
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new k40(21);
                        gapComposerH.q(objX);
                    }
                    mutableFloatState = (MutableFloatState) RememberSaveableKt.d(objArr4, (Function0) objX, gapComposerH, 48);
                    Object[] objArr5 = new Object[0];
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new k40(22);
                        gapComposerH.q(objX2);
                    }
                    mutableFloatState2 = (MutableFloatState) RememberSaveableKt.d(objArr5, (Function0) objX2, gapComposerH, 48);
                    Object[] objArr6 = new Object[0];
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new k40(23);
                        gapComposerH.q(objX3);
                    }
                    mutableFloatState3 = (MutableFloatState) RememberSaveableKt.d(objArr6, (Function0) objX3, gapComposerH, 48);
                    zK = gapComposerH.K(mutableFloatState3) | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState2);
                    objX4 = gapComposerH.x();
                    if (zK) {
                        objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                        gapComposerH.q(objX4);
                    }
                    EffectsKt.i((Function0) objX4, gapComposerH);
                    i12 = i10 & 29360128;
                    if (i12 == 8388608) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zK2 = z2 | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState3);
                    objX5 = gapComposerH.x();
                    if (zK2) {
                        objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                        gapComposerH.q(objX5);
                    } else {
                        objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                        gapComposerH.q(objX5);
                    }
                    EffectsKt.i((Function0) objX5, gapComposerH);
                    final Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
                    Density density2 = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                    float fA5 = mutableFloatState3.a() - mutableFloatState.a();
                    if (topAppBarScrollBehavior3 != null) {
                        fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    } else {
                        fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    ref$FloatRef2.f71918b = density2.l1(fA5 + fB);
                    if (topAppBarScrollBehavior3 != null) {
                        gapComposerH.L(-1467613661);
                        Orientation orientation2 = Orientation.Vertical;
                        if (i12 == 8388608) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objX6 = gapComposerH.x();
                        if (z3) {
                            objX6 = new l00(topAppBarScrollBehavior3, 15);
                            gapComposerH.q(objX6);
                        } else {
                            objX6 = new l00(topAppBarScrollBehavior3, 15);
                            gapComposerH.q(objX6);
                        }
                        DraggableState draggableStateB2 = DraggableKt.b(gapComposerH, (Function1) objX6);
                        if (i12 == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        objX7 = gapComposerH.x();
                        if (z4) {
                            objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                            gapComposerH.q(objX7);
                        } else {
                            objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                            gapComposerH.q(objX7);
                        }
                        modifierJ = DraggableKt.a(Modifier.Companion.f8607b, draggableStateB2, orientation2, false, null, false, (Function3) objX7, false, 188);
                        gapComposerH.Z(false);
                    } else {
                        modifierJ = n00.j(gapComposerH, -1467137811, false, "LVMediumTopBar");
                    }
                    final Modifier modifier7 = modifierJ;
                    final TopAppBarScrollBehavior topAppBarScrollBehavior5 = topAppBarScrollBehavior3;
                    final Modifier modifier8 = modifier4;
                    final Function0 function3 = function1;
                    CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(mediumTopBarConfig3.d), ComposableLambdaKt.b(-1038860419, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Integer) obj2).intValue();
                            CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                            Modifier modifierE2 = modifier8;
                            if (modifierE2 != null) {
                                modifierE2 = defpackage.a.e(modifierE2, "LVMediumTopBar$lambda$15");
                            }
                            final Modifier modifier9 = modifierE2;
                            int i17 = 0;
                            int i18 = 1;
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                Modifier modifierO = modifier9.o(modifier7);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                DTFunctionNameModifier dTFunctionNameModifierF = defpackage.a.f(composer2, modifierC, ComposeUiNode.Companion.d, "LVMediumTopBar$lambda$15");
                                MutableFloatState mutableFloatState4 = mutableFloatState;
                                boolean zK3 = composer2.K(mutableFloatState4);
                                Object objX8 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK3 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new z30(mutableFloatState4, i18);
                                    composer2.q(objX8);
                                }
                                Modifier modifierA = OnRemeasuredModifierKt.a(dTFunctionNameModifierF, (Function1) objX8);
                                float f2 = TopAppBarDefaults.f7433a;
                                final MediumTopBarConfig mediumTopBarConfig4 = mediumTopBarConfig3;
                                long j2 = mediumTopBarConfig4.f48757a;
                                TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j2, j2, composer2, 60);
                                final String str6 = str;
                                final String str7 = str5;
                                final float f3 = fA4;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1659493899, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.b
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Integer) obj4).intValue();
                                        CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            MediumTopBarConfig mediumTopBarConfig5 = mediumTopBarConfig4;
                                            LVTopBarCommonKt.a(str6, str7, mediumTopBarConfig5.f48758b, mediumTopBarConfig5.f48759c, f3, null, composer3, 0, 32);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                final Function0 function10 = function3;
                                AppBarKt.c(composableLambdaImplB, modifierA, ComposableLambdaKt.b(1196968461, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.c
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Integer) obj4).intValue();
                                        CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                        Modifier modifierE3 = defpackage.a.e(modifier9, "LVMediumTopBar$lambda$15$0$2");
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            Function0 function11 = function10;
                                            if (function11 != null) {
                                                composer3.L(2069017743);
                                                Modifier modifierE4 = ModifierExtKt.e(modifierE3, "header_backArrow_button");
                                                final MediumTopBarConfig mediumTopBarConfig5 = mediumTopBarConfig4;
                                                IconButtonKt.a(function11, modifierE4, false, null, null, ComposableLambdaKt.b(1756489542, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.d
                                                    @Override // kotlin.jvm.functions.Function2
                                                    public final Object invoke(Object obj5, Object obj6) {
                                                        Composer composer4 = (Composer) obj5;
                                                        int iIntValue3 = ((Integer) obj6).intValue();
                                                        CubicBezierEasing cubicBezierEasing3 = LVMediumTopBarKt.f48747a;
                                                        if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).H, composer4, 0), StringResources_androidKt.c(composer4, R.string.alt_back), null, mediumTopBarConfig5.f48758b, composer4, 8, 4);
                                                        } else {
                                                            composer4.D();
                                                        }
                                                        return Unit.f71739a;
                                                    }
                                                }, composer3), composer3, 1572864, 60);
                                                composer3.F();
                                            } else {
                                                composer3.L(2069537365);
                                                composer3.F();
                                            }
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2), ComposableLambdaKt.b(861744054, new j60(function8, lVColorScheme4, i17), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsetsC, topAppBarColorsD, composer2, 3462, 144);
                                Modifier modifierD = tr.d("LVMediumTopBar$lambda$15", 1.0f);
                                TopAppBarScrollBehavior topAppBarScrollBehavior6 = topAppBarScrollBehavior5;
                                Modifier modifierO2 = modifierD.o((topAppBarScrollBehavior6 == null || topAppBarScrollBehavior6.getF6904a().a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? new DTFunctionNameModifier("LVMediumTopBar$lambda$15") : SizeKt.f(new DTFunctionNameModifier("LVMediumTopBar$lambda$15"), ref$FloatRef2.f71918b));
                                boolean zK4 = composer2.K(topAppBarScrollBehavior6);
                                MutableFloatState mutableFloatState5 = mutableFloatState2;
                                boolean zK5 = zK4 | composer2.K(mutableFloatState5);
                                Object objX9 = composer2.x();
                                if (zK5 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new k60(topAppBarScrollBehavior6, mutableFloatState5, i17);
                                    composer2.q(objX9);
                                }
                                LVMediumTopBarKt.b(BackgroundKt.b(OnRemeasuredModifierKt.a(modifierO2, (Function1) objX9), ((Color) stateB2.getF10755b()).f8872a, RectangleShapeKt.f8913a), str6, str7, mediumTopBarConfig4.f48758b, mediumTopBarConfig4.f48759c, composer2, 0);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 56);
                    modifier3 = modifier8;
                    windowInsets2 = windowInsetsC;
                    topAppBarScrollBehavior2 = topAppBarScrollBehavior5;
                    str4 = str5;
                    function6 = function8;
                    lVColorScheme2 = lVColorScheme4;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    topAppBarScrollBehavior2 = topAppBarScrollBehavior;
                    str4 = str3;
                    function6 = function5;
                    modifier3 = modifier2;
                    windowInsets2 = windowInsets;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new sd(modifier3, lVColorScheme2, str, str4, function0, function6, windowInsets2, topAppBarScrollBehavior2, i2, i3);
                }
            }
            i14 |= ImageMetadata.EDGE_MODE;
            function5 = function4;
            i6 = 524288 | i14;
            i7 = i3 & 128;
            if (i7 != 0) {
                i9 = i14 | 13107200;
            } else {
                if (gapComposerH.K(topAppBarScrollBehavior)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i9 = i6 | i8;
            }
            modifier2 = modifierE;
            if ((i9 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVMediumTopBar");
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        str3 = null;
                    }
                    if (i4 != 0) {
                        ComposableSingletons$LVMediumTopBarKt.f48737a.getClass();
                        function7 = ComposableSingletons$LVMediumTopBarKt.f48738b;
                    } else {
                        function7 = function5;
                    }
                    lVColorScheme4 = lVColorScheme3;
                    function8 = function7;
                    str5 = str3;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    i10 = i9 & (-3670017);
                    modifier4 = dTFunctionNameModifier2;
                    if (i7 != 0) {
                        topAppBarScrollBehavior3 = null;
                    } else {
                        topAppBarScrollBehavior3 = topAppBarScrollBehavior;
                    }
                } else {
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVMediumTopBar");
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        str3 = null;
                    }
                    if (i4 != 0) {
                        ComposableSingletons$LVMediumTopBarKt.f48737a.getClass();
                        function7 = ComposableSingletons$LVMediumTopBarKt.f48738b;
                    } else {
                        function7 = function5;
                    }
                    lVColorScheme4 = lVColorScheme3;
                    function8 = function7;
                    str5 = str3;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    i10 = i9 & (-3670017);
                    modifier4 = dTFunctionNameModifier3;
                    if (i7 != 0) {
                        topAppBarScrollBehavior3 = null;
                    } else {
                        topAppBarScrollBehavior3 = topAppBarScrollBehavior;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                i11 = WhenMappings.f48750a[lVColorScheme4.ordinal()];
                if (i11 == 1) {
                    gapComposerH.L(-1733221987);
                    mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                    gapComposerH.Z(false);
                } else {
                    if (i11 != 2) {
                        throw d21.u(gapComposerH, -1733223177, false);
                    }
                    gapComposerH.L(-1733211058);
                    mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                    gapComposerH.Z(false);
                }
                final MediumTopBarConfig mediumTopBarConfig4 = mediumTopBarConfig;
                final State stateB3 = SingleValueAnimationKt.b(mediumTopBarConfig4.f48757a, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null), "", gapComposerH, 432, 8);
                if (topAppBarScrollBehavior3 != null) {
                    fA = 0.0f;
                } else {
                    fA = 0.0f;
                }
                final float fA6 = f48747a.a(fA);
                Object[] objArr7 = new Object[0];
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new k40(21);
                    gapComposerH.q(objX);
                }
                mutableFloatState = (MutableFloatState) RememberSaveableKt.d(objArr7, (Function0) objX, gapComposerH, 48);
                Object[] objArr8 = new Object[0];
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new k40(22);
                    gapComposerH.q(objX2);
                }
                mutableFloatState2 = (MutableFloatState) RememberSaveableKt.d(objArr8, (Function0) objX2, gapComposerH, 48);
                Object[] objArr9 = new Object[0];
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new k40(23);
                    gapComposerH.q(objX3);
                }
                mutableFloatState3 = (MutableFloatState) RememberSaveableKt.d(objArr9, (Function0) objX3, gapComposerH, 48);
                zK = gapComposerH.K(mutableFloatState3) | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState2);
                objX4 = gapComposerH.x();
                if (zK) {
                    objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                    gapComposerH.q(objX4);
                }
                EffectsKt.i((Function0) objX4, gapComposerH);
                i12 = i10 & 29360128;
                if (i12 == 8388608) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zK2 = z2 | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState3);
                objX5 = gapComposerH.x();
                if (zK2) {
                    objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                    gapComposerH.q(objX5);
                } else {
                    objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                    gapComposerH.q(objX5);
                }
                EffectsKt.i((Function0) objX5, gapComposerH);
                final Ref$FloatRef ref$FloatRef3 = new Ref$FloatRef();
                Density density3 = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                float fA7 = mutableFloatState3.a() - mutableFloatState.a();
                if (topAppBarScrollBehavior3 != null) {
                    fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                ref$FloatRef3.f71918b = density3.l1(fA7 + fB);
                if (topAppBarScrollBehavior3 != null) {
                    gapComposerH.L(-1467613661);
                    Orientation orientation3 = Orientation.Vertical;
                    if (i12 == 8388608) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objX6 = gapComposerH.x();
                    if (z3) {
                        objX6 = new l00(topAppBarScrollBehavior3, 15);
                        gapComposerH.q(objX6);
                    } else {
                        objX6 = new l00(topAppBarScrollBehavior3, 15);
                        gapComposerH.q(objX6);
                    }
                    DraggableState draggableStateB3 = DraggableKt.b(gapComposerH, (Function1) objX6);
                    if (i12 == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objX7 = gapComposerH.x();
                    if (z4) {
                        objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                        gapComposerH.q(objX7);
                    } else {
                        objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                        gapComposerH.q(objX7);
                    }
                    modifierJ = DraggableKt.a(Modifier.Companion.f8607b, draggableStateB3, orientation3, false, null, false, (Function3) objX7, false, 188);
                    gapComposerH.Z(false);
                } else {
                    modifierJ = n00.j(gapComposerH, -1467137811, false, "LVMediumTopBar");
                }
                final Modifier modifier9 = modifierJ;
                final TopAppBarScrollBehavior topAppBarScrollBehavior6 = topAppBarScrollBehavior3;
                final Modifier modifier10 = modifier4;
                final Function0 function9 = function1;
                CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(mediumTopBarConfig4.d), ComposableLambdaKt.b(-1038860419, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.a
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                        Modifier modifierE2 = modifier10;
                        if (modifierE2 != null) {
                            modifierE2 = defpackage.a.e(modifierE2, "LVMediumTopBar$lambda$15");
                        }
                        final Modifier modifier11 = modifierE2;
                        int i17 = 0;
                        int i18 = 1;
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            Modifier modifierO = modifier11.o(modifier9);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                            ComposeUiNode.b0.getClass();
                            Function0 function10 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function10);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            DTFunctionNameModifier dTFunctionNameModifierF = defpackage.a.f(composer2, modifierC, ComposeUiNode.Companion.d, "LVMediumTopBar$lambda$15");
                            MutableFloatState mutableFloatState4 = mutableFloatState;
                            boolean zK3 = composer2.K(mutableFloatState4);
                            Object objX8 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zK3 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new z30(mutableFloatState4, i18);
                                composer2.q(objX8);
                            }
                            Modifier modifierA = OnRemeasuredModifierKt.a(dTFunctionNameModifierF, (Function1) objX8);
                            float f2 = TopAppBarDefaults.f7433a;
                            final MediumTopBarConfig mediumTopBarConfig5 = mediumTopBarConfig4;
                            long j2 = mediumTopBarConfig5.f48757a;
                            TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j2, j2, composer2, 60);
                            final String str6 = str;
                            final String str7 = str5;
                            final float f3 = fA6;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1659493899, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.b
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Integer) obj4).intValue();
                                    CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        MediumTopBarConfig mediumTopBarConfig6 = mediumTopBarConfig5;
                                        LVTopBarCommonKt.a(str6, str7, mediumTopBarConfig6.f48758b, mediumTopBarConfig6.f48759c, f3, null, composer3, 0, 32);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function0 function11 = function9;
                            AppBarKt.c(composableLambdaImplB, modifierA, ComposableLambdaKt.b(1196968461, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.c
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Integer) obj4).intValue();
                                    CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                    Modifier modifierE3 = defpackage.a.e(modifier11, "LVMediumTopBar$lambda$15$0$2");
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        Function0 function12 = function11;
                                        if (function12 != null) {
                                            composer3.L(2069017743);
                                            Modifier modifierE4 = ModifierExtKt.e(modifierE3, "header_backArrow_button");
                                            final MediumTopBarConfig mediumTopBarConfig6 = mediumTopBarConfig5;
                                            IconButtonKt.a(function12, modifierE4, false, null, null, ComposableLambdaKt.b(1756489542, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.d
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj5, Object obj6) {
                                                    Composer composer4 = (Composer) obj5;
                                                    int iIntValue3 = ((Integer) obj6).intValue();
                                                    CubicBezierEasing cubicBezierEasing3 = LVMediumTopBarKt.f48747a;
                                                    if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).H, composer4, 0), StringResources_androidKt.c(composer4, R.string.alt_back), null, mediumTopBarConfig6.f48758b, composer4, 8, 4);
                                                    } else {
                                                        composer4.D();
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer3), composer3, 1572864, 60);
                                            composer3.F();
                                        } else {
                                            composer3.L(2069537365);
                                            composer3.F();
                                        }
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), ComposableLambdaKt.b(861744054, new j60(function8, lVColorScheme4, i17), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsetsC, topAppBarColorsD, composer2, 3462, 144);
                            Modifier modifierD = tr.d("LVMediumTopBar$lambda$15", 1.0f);
                            TopAppBarScrollBehavior topAppBarScrollBehavior7 = topAppBarScrollBehavior6;
                            Modifier modifierO2 = modifierD.o((topAppBarScrollBehavior7 == null || topAppBarScrollBehavior7.getF6904a().a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? new DTFunctionNameModifier("LVMediumTopBar$lambda$15") : SizeKt.f(new DTFunctionNameModifier("LVMediumTopBar$lambda$15"), ref$FloatRef3.f71918b));
                            boolean zK4 = composer2.K(topAppBarScrollBehavior7);
                            MutableFloatState mutableFloatState5 = mutableFloatState2;
                            boolean zK5 = zK4 | composer2.K(mutableFloatState5);
                            Object objX9 = composer2.x();
                            if (zK5 || objX9 == composer$Companion$Empty$2) {
                                objX9 = new k60(topAppBarScrollBehavior7, mutableFloatState5, i17);
                                composer2.q(objX9);
                            }
                            LVMediumTopBarKt.b(BackgroundKt.b(OnRemeasuredModifierKt.a(modifierO2, (Function1) objX9), ((Color) stateB3.getF10755b()).f8872a, RectangleShapeKt.f8913a), str6, str7, mediumTopBarConfig5.f48758b, mediumTopBarConfig5.f48759c, composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 56);
                modifier3 = modifier10;
                windowInsets2 = windowInsetsC;
                topAppBarScrollBehavior2 = topAppBarScrollBehavior6;
                str4 = str5;
                function6 = function8;
                lVColorScheme2 = lVColorScheme4;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                topAppBarScrollBehavior2 = topAppBarScrollBehavior;
                str4 = str3;
                function6 = function5;
                modifier3 = modifier2;
                windowInsets2 = windowInsets;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new sd(modifier3, lVColorScheme2, str, str4, function0, function6, windowInsets2, topAppBarScrollBehavior2, i2, i3);
            }
        }
        i14 |= 3072;
        str3 = str2;
        if ((i2 & 24576) == 0) {
            function1 = function0;
            if (gapComposerH.y(function1)) {
                i13 = 16384;
            } else {
                i13 = 8192;
            }
            i14 |= i13;
        } else {
            function1 = function0;
        }
        i4 = i3 & 32;
        if (i4 != 0) {
            if ((196608 & i2) == 0) {
                function5 = function4;
                if (gapComposerH.y(function5)) {
                    i5 = 131072;
                } else {
                    i5 = 65536;
                }
                i14 |= i5;
            }
            i6 = 524288 | i14;
            i7 = i3 & 128;
            if (i7 != 0) {
                i9 = i14 | 13107200;
            } else {
                if (gapComposerH.K(topAppBarScrollBehavior)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i9 = i6 | i8;
            }
            modifier2 = modifierE;
            if ((i9 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i9 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVMediumTopBar");
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        str3 = null;
                    }
                    if (i4 != 0) {
                        ComposableSingletons$LVMediumTopBarKt.f48737a.getClass();
                        function7 = ComposableSingletons$LVMediumTopBarKt.f48738b;
                    } else {
                        function7 = function5;
                    }
                    lVColorScheme4 = lVColorScheme3;
                    function8 = function7;
                    str5 = str3;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    i10 = i9 & (-3670017);
                    modifier4 = dTFunctionNameModifier4;
                    if (i7 != 0) {
                        topAppBarScrollBehavior3 = null;
                    } else {
                        topAppBarScrollBehavior3 = topAppBarScrollBehavior;
                    }
                } else {
                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVMediumTopBar");
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        str3 = null;
                    }
                    if (i4 != 0) {
                        ComposableSingletons$LVMediumTopBarKt.f48737a.getClass();
                        function7 = ComposableSingletons$LVMediumTopBarKt.f48738b;
                    } else {
                        function7 = function5;
                    }
                    lVColorScheme4 = lVColorScheme3;
                    function8 = function7;
                    str5 = str3;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    i10 = i9 & (-3670017);
                    modifier4 = dTFunctionNameModifier5;
                    if (i7 != 0) {
                        topAppBarScrollBehavior3 = null;
                    } else {
                        topAppBarScrollBehavior3 = topAppBarScrollBehavior;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                i11 = WhenMappings.f48750a[lVColorScheme4.ordinal()];
                if (i11 == 1) {
                    gapComposerH.L(-1733221987);
                    mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                    gapComposerH.Z(false);
                } else {
                    if (i11 != 2) {
                        throw d21.u(gapComposerH, -1733223177, false);
                    }
                    gapComposerH.L(-1733211058);
                    mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                    gapComposerH.Z(false);
                }
                final MediumTopBarConfig mediumTopBarConfig5 = mediumTopBarConfig;
                final State stateB4 = SingleValueAnimationKt.b(mediumTopBarConfig5.f48757a, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null), "", gapComposerH, 432, 8);
                if (topAppBarScrollBehavior3 != null) {
                    fA = 0.0f;
                } else {
                    fA = 0.0f;
                }
                final float fA8 = f48747a.a(fA);
                Object[] objArr10 = new Object[0];
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new k40(21);
                    gapComposerH.q(objX);
                }
                mutableFloatState = (MutableFloatState) RememberSaveableKt.d(objArr10, (Function0) objX, gapComposerH, 48);
                Object[] objArr11 = new Object[0];
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new k40(22);
                    gapComposerH.q(objX2);
                }
                mutableFloatState2 = (MutableFloatState) RememberSaveableKt.d(objArr11, (Function0) objX2, gapComposerH, 48);
                Object[] objArr12 = new Object[0];
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new k40(23);
                    gapComposerH.q(objX3);
                }
                mutableFloatState3 = (MutableFloatState) RememberSaveableKt.d(objArr12, (Function0) objX3, gapComposerH, 48);
                zK = gapComposerH.K(mutableFloatState3) | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState2);
                objX4 = gapComposerH.x();
                if (zK) {
                    objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                    gapComposerH.q(objX4);
                }
                EffectsKt.i((Function0) objX4, gapComposerH);
                i12 = i10 & 29360128;
                if (i12 == 8388608) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zK2 = z2 | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState3);
                objX5 = gapComposerH.x();
                if (zK2) {
                    objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                    gapComposerH.q(objX5);
                } else {
                    objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                    gapComposerH.q(objX5);
                }
                EffectsKt.i((Function0) objX5, gapComposerH);
                final Ref$FloatRef ref$FloatRef4 = new Ref$FloatRef();
                Density density4 = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                float fA9 = mutableFloatState3.a() - mutableFloatState.a();
                if (topAppBarScrollBehavior3 != null) {
                    fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                ref$FloatRef4.f71918b = density4.l1(fA9 + fB);
                if (topAppBarScrollBehavior3 != null) {
                    gapComposerH.L(-1467613661);
                    Orientation orientation4 = Orientation.Vertical;
                    if (i12 == 8388608) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objX6 = gapComposerH.x();
                    if (z3) {
                        objX6 = new l00(topAppBarScrollBehavior3, 15);
                        gapComposerH.q(objX6);
                    } else {
                        objX6 = new l00(topAppBarScrollBehavior3, 15);
                        gapComposerH.q(objX6);
                    }
                    DraggableState draggableStateB4 = DraggableKt.b(gapComposerH, (Function1) objX6);
                    if (i12 == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    objX7 = gapComposerH.x();
                    if (z4) {
                        objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                        gapComposerH.q(objX7);
                    } else {
                        objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                        gapComposerH.q(objX7);
                    }
                    modifierJ = DraggableKt.a(Modifier.Companion.f8607b, draggableStateB4, orientation4, false, null, false, (Function3) objX7, false, 188);
                    gapComposerH.Z(false);
                } else {
                    modifierJ = n00.j(gapComposerH, -1467137811, false, "LVMediumTopBar");
                }
                final Modifier modifier11 = modifierJ;
                final TopAppBarScrollBehavior topAppBarScrollBehavior7 = topAppBarScrollBehavior3;
                final Modifier modifier12 = modifier4;
                final Function0 function10 = function1;
                CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(mediumTopBarConfig5.d), ComposableLambdaKt.b(-1038860419, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.a
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                        Modifier modifierE2 = modifier12;
                        if (modifierE2 != null) {
                            modifierE2 = defpackage.a.e(modifierE2, "LVMediumTopBar$lambda$15");
                        }
                        final Modifier modifier13 = modifierE2;
                        int i17 = 0;
                        int i18 = 1;
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            Modifier modifierO = modifier13.o(modifier11);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                            ComposeUiNode.b0.getClass();
                            Function0 function11 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function11);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            DTFunctionNameModifier dTFunctionNameModifierF = defpackage.a.f(composer2, modifierC, ComposeUiNode.Companion.d, "LVMediumTopBar$lambda$15");
                            MutableFloatState mutableFloatState4 = mutableFloatState;
                            boolean zK3 = composer2.K(mutableFloatState4);
                            Object objX8 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (zK3 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new z30(mutableFloatState4, i18);
                                composer2.q(objX8);
                            }
                            Modifier modifierA = OnRemeasuredModifierKt.a(dTFunctionNameModifierF, (Function1) objX8);
                            float f2 = TopAppBarDefaults.f7433a;
                            final MediumTopBarConfig mediumTopBarConfig6 = mediumTopBarConfig5;
                            long j2 = mediumTopBarConfig6.f48757a;
                            TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j2, j2, composer2, 60);
                            final String str6 = str;
                            final String str7 = str5;
                            final float f3 = fA8;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1659493899, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.b
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Integer) obj4).intValue();
                                    CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                        MediumTopBarConfig mediumTopBarConfig7 = mediumTopBarConfig6;
                                        LVTopBarCommonKt.a(str6, str7, mediumTopBarConfig7.f48758b, mediumTopBarConfig7.f48759c, f3, null, composer3, 0, 32);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function0 function12 = function10;
                            AppBarKt.c(composableLambdaImplB, modifierA, ComposableLambdaKt.b(1196968461, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.c
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Integer) obj4).intValue();
                                    CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                    Modifier modifierE3 = defpackage.a.e(modifier13, "LVMediumTopBar$lambda$15$0$2");
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                        Function0 function13 = function12;
                                        if (function13 != null) {
                                            composer3.L(2069017743);
                                            Modifier modifierE4 = ModifierExtKt.e(modifierE3, "header_backArrow_button");
                                            final MediumTopBarConfig mediumTopBarConfig7 = mediumTopBarConfig6;
                                            IconButtonKt.a(function13, modifierE4, false, null, null, ComposableLambdaKt.b(1756489542, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.d
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj5, Object obj6) {
                                                    Composer composer4 = (Composer) obj5;
                                                    int iIntValue3 = ((Integer) obj6).intValue();
                                                    CubicBezierEasing cubicBezierEasing3 = LVMediumTopBarKt.f48747a;
                                                    if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).H, composer4, 0), StringResources_androidKt.c(composer4, R.string.alt_back), null, mediumTopBarConfig7.f48758b, composer4, 8, 4);
                                                    } else {
                                                        composer4.D();
                                                    }
                                                    return Unit.f71739a;
                                                }
                                            }, composer3), composer3, 1572864, 60);
                                            composer3.F();
                                        } else {
                                            composer3.L(2069537365);
                                            composer3.F();
                                        }
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), ComposableLambdaKt.b(861744054, new j60(function8, lVColorScheme4, i17), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsetsC, topAppBarColorsD, composer2, 3462, 144);
                            Modifier modifierD = tr.d("LVMediumTopBar$lambda$15", 1.0f);
                            TopAppBarScrollBehavior topAppBarScrollBehavior8 = topAppBarScrollBehavior7;
                            Modifier modifierO2 = modifierD.o((topAppBarScrollBehavior8 == null || topAppBarScrollBehavior8.getF6904a().a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? new DTFunctionNameModifier("LVMediumTopBar$lambda$15") : SizeKt.f(new DTFunctionNameModifier("LVMediumTopBar$lambda$15"), ref$FloatRef4.f71918b));
                            boolean zK4 = composer2.K(topAppBarScrollBehavior8);
                            MutableFloatState mutableFloatState5 = mutableFloatState2;
                            boolean zK5 = zK4 | composer2.K(mutableFloatState5);
                            Object objX9 = composer2.x();
                            if (zK5 || objX9 == composer$Companion$Empty$2) {
                                objX9 = new k60(topAppBarScrollBehavior8, mutableFloatState5, i17);
                                composer2.q(objX9);
                            }
                            LVMediumTopBarKt.b(BackgroundKt.b(OnRemeasuredModifierKt.a(modifierO2, (Function1) objX9), ((Color) stateB4.getF10755b()).f8872a, RectangleShapeKt.f8913a), str6, str7, mediumTopBarConfig6.f48758b, mediumTopBarConfig6.f48759c, composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 56);
                modifier3 = modifier12;
                windowInsets2 = windowInsetsC;
                topAppBarScrollBehavior2 = topAppBarScrollBehavior7;
                str4 = str5;
                function6 = function8;
                lVColorScheme2 = lVColorScheme4;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                topAppBarScrollBehavior2 = topAppBarScrollBehavior;
                str4 = str3;
                function6 = function5;
                modifier3 = modifier2;
                windowInsets2 = windowInsets;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new sd(modifier3, lVColorScheme2, str, str4, function0, function6, windowInsets2, topAppBarScrollBehavior2, i2, i3);
            }
        }
        i14 |= ImageMetadata.EDGE_MODE;
        function5 = function4;
        i6 = 524288 | i14;
        i7 = i3 & 128;
        if (i7 != 0) {
            i9 = i14 | 13107200;
        } else {
            if (gapComposerH.K(topAppBarScrollBehavior)) {
                i8 = 8388608;
            } else {
                i8 = 4194304;
            }
            i9 = i6 | i8;
        }
        modifier2 = modifierE;
        if ((i9 & 4793491) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i9 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("LVMediumTopBar");
                if (i15 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i16 != 0) {
                    str3 = null;
                }
                if (i4 != 0) {
                    ComposableSingletons$LVMediumTopBarKt.f48737a.getClass();
                    function7 = ComposableSingletons$LVMediumTopBarKt.f48738b;
                } else {
                    function7 = function5;
                }
                lVColorScheme4 = lVColorScheme3;
                function8 = function7;
                str5 = str3;
                windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                i10 = i9 & (-3670017);
                modifier4 = dTFunctionNameModifier6;
                if (i7 != 0) {
                    topAppBarScrollBehavior3 = null;
                } else {
                    topAppBarScrollBehavior3 = topAppBarScrollBehavior;
                }
            } else {
                DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("LVMediumTopBar");
                if (i15 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i16 != 0) {
                    str3 = null;
                }
                if (i4 != 0) {
                    ComposableSingletons$LVMediumTopBarKt.f48737a.getClass();
                    function7 = ComposableSingletons$LVMediumTopBarKt.f48738b;
                } else {
                    function7 = function5;
                }
                lVColorScheme4 = lVColorScheme3;
                function8 = function7;
                str5 = str3;
                windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                i10 = i9 & (-3670017);
                modifier4 = dTFunctionNameModifier7;
                if (i7 != 0) {
                    topAppBarScrollBehavior3 = null;
                } else {
                    topAppBarScrollBehavior3 = topAppBarScrollBehavior;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            i11 = WhenMappings.f48750a[lVColorScheme4.ordinal()];
            if (i11 == 1) {
                gapComposerH.L(-1733221987);
                mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                gapComposerH.Z(false);
            } else {
                if (i11 != 2) {
                    throw d21.u(gapComposerH, -1733223177, false);
                }
                gapComposerH.L(-1733211058);
                mediumTopBarConfig = new MediumTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                gapComposerH.Z(false);
            }
            final MediumTopBarConfig mediumTopBarConfig6 = mediumTopBarConfig;
            final State stateB5 = SingleValueAnimationKt.b(mediumTopBarConfig6.f48757a, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null), "", gapComposerH, 432, 8);
            if (topAppBarScrollBehavior3 != null) {
                fA = 0.0f;
            } else {
                fA = 0.0f;
            }
            final float fA10 = f48747a.a(fA);
            Object[] objArr13 = new Object[0];
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new k40(21);
                gapComposerH.q(objX);
            }
            mutableFloatState = (MutableFloatState) RememberSaveableKt.d(objArr13, (Function0) objX, gapComposerH, 48);
            Object[] objArr14 = new Object[0];
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new k40(22);
                gapComposerH.q(objX2);
            }
            mutableFloatState2 = (MutableFloatState) RememberSaveableKt.d(objArr14, (Function0) objX2, gapComposerH, 48);
            Object[] objArr15 = new Object[0];
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new k40(23);
                gapComposerH.q(objX3);
            }
            mutableFloatState3 = (MutableFloatState) RememberSaveableKt.d(objArr15, (Function0) objX3, gapComposerH, 48);
            zK = gapComposerH.K(mutableFloatState3) | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState2);
            objX4 = gapComposerH.x();
            if (zK) {
                objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                gapComposerH.q(objX4);
            } else {
                objX4 = new pp(mutableFloatState, mutableFloatState2, mutableFloatState3, 16);
                gapComposerH.q(objX4);
            }
            EffectsKt.i((Function0) objX4, gapComposerH);
            i12 = i10 & 29360128;
            if (i12 == 8388608) {
                z2 = true;
            } else {
                z2 = false;
            }
            zK2 = z2 | gapComposerH.K(mutableFloatState) | gapComposerH.K(mutableFloatState3);
            objX5 = gapComposerH.x();
            if (zK2) {
                objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                gapComposerH.q(objX5);
            } else {
                objX5 = new pp(topAppBarScrollBehavior3, mutableFloatState, mutableFloatState3, 17);
                gapComposerH.q(objX5);
            }
            EffectsKt.i((Function0) objX5, gapComposerH);
            final Ref$FloatRef ref$FloatRef5 = new Ref$FloatRef();
            Density density5 = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            float fA11 = mutableFloatState3.a() - mutableFloatState.a();
            if (topAppBarScrollBehavior3 != null) {
                fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            } else {
                fB = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            ref$FloatRef5.f71918b = density5.l1(fA11 + fB);
            if (topAppBarScrollBehavior3 != null) {
                gapComposerH.L(-1467613661);
                Orientation orientation5 = Orientation.Vertical;
                if (i12 == 8388608) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                objX6 = gapComposerH.x();
                if (z3) {
                    objX6 = new l00(topAppBarScrollBehavior3, 15);
                    gapComposerH.q(objX6);
                } else {
                    objX6 = new l00(topAppBarScrollBehavior3, 15);
                    gapComposerH.q(objX6);
                }
                DraggableState draggableStateB5 = DraggableKt.b(gapComposerH, (Function1) objX6);
                if (i12 == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objX7 = gapComposerH.x();
                if (z4) {
                    objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                    gapComposerH.q(objX7);
                } else {
                    objX7 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(topAppBarScrollBehavior3, null);
                    gapComposerH.q(objX7);
                }
                modifierJ = DraggableKt.a(Modifier.Companion.f8607b, draggableStateB5, orientation5, false, null, false, (Function3) objX7, false, 188);
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, -1467137811, false, "LVMediumTopBar");
            }
            final Modifier modifier13 = modifierJ;
            final TopAppBarScrollBehavior topAppBarScrollBehavior8 = topAppBarScrollBehavior3;
            final Modifier modifier14 = modifier4;
            final Function0 function11 = function1;
            CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(mediumTopBarConfig6.d), ComposableLambdaKt.b(-1038860419, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                    Modifier modifierE2 = modifier14;
                    if (modifierE2 != null) {
                        modifierE2 = defpackage.a.e(modifierE2, "LVMediumTopBar$lambda$15");
                    }
                    final Modifier modifier15 = modifierE2;
                    int i17 = 0;
                    int i18 = 1;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        Modifier modifierO = modifier15.o(modifier13);
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                        ComposeUiNode.b0.getClass();
                        Function0 function12 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function12);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        DTFunctionNameModifier dTFunctionNameModifierF = defpackage.a.f(composer2, modifierC, ComposeUiNode.Companion.d, "LVMediumTopBar$lambda$15");
                        MutableFloatState mutableFloatState4 = mutableFloatState;
                        boolean zK3 = composer2.K(mutableFloatState4);
                        Object objX8 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zK3 || objX8 == composer$Companion$Empty$2) {
                            objX8 = new z30(mutableFloatState4, i18);
                            composer2.q(objX8);
                        }
                        Modifier modifierA = OnRemeasuredModifierKt.a(dTFunctionNameModifierF, (Function1) objX8);
                        float f2 = TopAppBarDefaults.f7433a;
                        final MediumTopBarConfig mediumTopBarConfig7 = mediumTopBarConfig6;
                        long j2 = mediumTopBarConfig7.f48757a;
                        TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j2, j2, composer2, 60);
                        final String str6 = str;
                        final String str7 = str5;
                        final float f3 = fA10;
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1659493899, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.b
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Integer) obj4).intValue();
                                CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                    MediumTopBarConfig mediumTopBarConfig8 = mediumTopBarConfig7;
                                    LVTopBarCommonKt.a(str6, str7, mediumTopBarConfig8.f48758b, mediumTopBarConfig8.f48759c, f3, null, composer3, 0, 32);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2);
                        final Function0 function13 = function11;
                        AppBarKt.c(composableLambdaImplB, modifierA, ComposableLambdaKt.b(1196968461, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.c
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Integer) obj4).intValue();
                                CubicBezierEasing cubicBezierEasing2 = LVMediumTopBarKt.f48747a;
                                Modifier modifierE3 = defpackage.a.e(modifier15, "LVMediumTopBar$lambda$15$0$2");
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                    Function0 function14 = function13;
                                    if (function14 != null) {
                                        composer3.L(2069017743);
                                        Modifier modifierE4 = ModifierExtKt.e(modifierE3, "header_backArrow_button");
                                        final MediumTopBarConfig mediumTopBarConfig8 = mediumTopBarConfig7;
                                        IconButtonKt.a(function14, modifierE4, false, null, null, ComposableLambdaKt.b(1756489542, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.d
                                            @Override // kotlin.jvm.functions.Function2
                                            public final Object invoke(Object obj5, Object obj6) {
                                                Composer composer4 = (Composer) obj5;
                                                int iIntValue3 = ((Integer) obj6).intValue();
                                                CubicBezierEasing cubicBezierEasing3 = LVMediumTopBarKt.f48747a;
                                                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer4).H, composer4, 0), StringResources_androidKt.c(composer4, R.string.alt_back), null, mediumTopBarConfig8.f48758b, composer4, 8, 4);
                                                } else {
                                                    composer4.D();
                                                }
                                                return Unit.f71739a;
                                            }
                                        }, composer3), composer3, 1572864, 60);
                                        composer3.F();
                                    } else {
                                        composer3.L(2069537365);
                                        composer3.F();
                                    }
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), ComposableLambdaKt.b(861744054, new j60(function8, lVColorScheme4, i17), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsetsC, topAppBarColorsD, composer2, 3462, 144);
                        Modifier modifierD = tr.d("LVMediumTopBar$lambda$15", 1.0f);
                        TopAppBarScrollBehavior topAppBarScrollBehavior9 = topAppBarScrollBehavior8;
                        Modifier modifierO2 = modifierD.o((topAppBarScrollBehavior9 == null || topAppBarScrollBehavior9.getF6904a().a() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) ? new DTFunctionNameModifier("LVMediumTopBar$lambda$15") : SizeKt.f(new DTFunctionNameModifier("LVMediumTopBar$lambda$15"), ref$FloatRef5.f71918b));
                        boolean zK4 = composer2.K(topAppBarScrollBehavior9);
                        MutableFloatState mutableFloatState5 = mutableFloatState2;
                        boolean zK5 = zK4 | composer2.K(mutableFloatState5);
                        Object objX9 = composer2.x();
                        if (zK5 || objX9 == composer$Companion$Empty$2) {
                            objX9 = new k60(topAppBarScrollBehavior9, mutableFloatState5, i17);
                            composer2.q(objX9);
                        }
                        LVMediumTopBarKt.b(BackgroundKt.b(OnRemeasuredModifierKt.a(modifierO2, (Function1) objX9), ((Color) stateB5.getF10755b()).f8872a, RectangleShapeKt.f8913a), str6, str7, mediumTopBarConfig7.f48758b, mediumTopBarConfig7.f48759c, composer2, 0);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
            modifier3 = modifier14;
            windowInsets2 = windowInsetsC;
            topAppBarScrollBehavior2 = topAppBarScrollBehavior8;
            str4 = str5;
            function6 = function8;
            lVColorScheme2 = lVColorScheme4;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            topAppBarScrollBehavior2 = topAppBarScrollBehavior;
            str4 = str3;
            function6 = function5;
            modifier3 = modifier2;
            windowInsets2 = windowInsets;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sd(modifier3, lVColorScheme2, str, str4, function0, function6, windowInsets2, topAppBarScrollBehavior2, i2, i3);
        }
    }

    public static final void b(Modifier modifier, final String str, final String str2, final long j2, final long j3, Composer composer, final int i2) {
        GapComposer gapComposer;
        String str3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TopBarCollapsibleTitle-ZkgLGzA");
        }
        final Modifier modifier2 = modifierE;
        modifier2.getClass();
        str.getClass();
        GapComposer gapComposerH = composer.h(-173160777);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.e(j2) ? 2048 : 1024) | (gapComposerH.e(j3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierB = ClipKt.b(PaddingKt.m(modifier2, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 16.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10));
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Modifier modifierF = n00.f(gapComposerH, modifierC, ComposeUiNode.Companion.d, "TopBarCollapsibleTitle-ZkgLGzA", "header_title_text");
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new x20(28);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierF, false, (Function1) objX);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            TextOverflow.f10989a.getClass();
            int i4 = TextOverflow.f10991c;
            TextKt.c(str, modifierB2, j2, 0L, null, 0L, null, null, 0L, i4, false, 2, 0, null, textStyle, gapComposerH, (i3 >> 3) & 910, 24960, 110584);
            gapComposer = gapComposerH;
            if (str2 == null) {
                gapComposer.L(-1530233134);
                gapComposer.Z(false);
                str3 = "TopBarCollapsibleTitle-ZkgLGzA";
            } else {
                gapComposer.L(-1530233133);
                SpacerKt.a(gapComposer, SizeKt.f(new DTFunctionNameModifier("TopBarCollapsibleTitle-ZkgLGzA"), 4.0f));
                str3 = "TopBarCollapsibleTitle-ZkgLGzA";
                TextKt.c(str2, n00.g("TopBarCollapsibleTitle-ZkgLGzA", "header_subtitle_text"), j3, 0L, null, 0L, null, null, 0L, i4, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, (i3 >> 6) & 896, 24960, 110584);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            }
            SpacerKt.a(gapComposer, SizeKt.f(new DTFunctionNameModifier(str3), 16.0f));
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(str, str2, j2, j3, i2) { // from class: l60

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ String f75954c;
                public final /* synthetic */ String d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f75955e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f75956f;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    LVMediumTopBarKt.b(this.f75953b, this.f75954c, this.d, this.f75955e, this.f75956f, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object c(TopAppBarState topAppBarState, float f2, DecayAnimationSpec decayAnimationSpec, AnimationSpec animationSpec, ContinuationImpl continuationImpl) {
        LVMediumTopBarKt$settleAppBar$1 lVMediumTopBarKt$settleAppBar$1;
        Ref$FloatRef ref$FloatRef;
        Ref$FloatRef ref$FloatRef2;
        if (continuationImpl instanceof LVMediumTopBarKt$settleAppBar$1) {
            lVMediumTopBarKt$settleAppBar$1 = (LVMediumTopBarKt$settleAppBar$1) continuationImpl;
            int i2 = lVMediumTopBarKt$settleAppBar$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lVMediumTopBarKt$settleAppBar$1.g = i2 - Integer.MIN_VALUE;
            } else {
                lVMediumTopBarKt$settleAppBar$1 = new LVMediumTopBarKt$settleAppBar$1(continuationImpl);
            }
        } else {
            lVMediumTopBarKt$settleAppBar$1 = new LVMediumTopBarKt$settleAppBar$1(continuationImpl);
        }
        LVMediumTopBarKt$settleAppBar$1 lVMediumTopBarKt$settleAppBar$2 = lVMediumTopBarKt$settleAppBar$1;
        Object obj = lVMediumTopBarKt$settleAppBar$2.f48754f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = lVMediumTopBarKt$settleAppBar$2.g;
        if (i3 != 0) {
            if (i3 == 1) {
                f2 = lVMediumTopBarKt$settleAppBar$2.f48753e;
                Ref$FloatRef ref$FloatRef3 = lVMediumTopBarKt$settleAppBar$2.d;
                animationSpec = lVMediumTopBarKt$settleAppBar$2.f48752c;
                TopAppBarState topAppBarState2 = lVMediumTopBarKt$settleAppBar$2.f48751b;
                ResultKt.b(obj);
                ref$FloatRef = ref$FloatRef3;
                topAppBarState = topAppBarState2;
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$FloatRef2 = lVMediumTopBarKt$settleAppBar$2.d;
                ResultKt.b(obj);
            }
            ref$FloatRef = ref$FloatRef2;
            return new Velocity(VelocityKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, ref$FloatRef.f71918b));
        }
        ResultKt.b(obj);
        if (topAppBarState.a() < 0.01f || topAppBarState.a() == 1.0f) {
            Velocity.f11029b.getClass();
            return new Velocity(0L);
        }
        ref$FloatRef = new Ref$FloatRef();
        ref$FloatRef.f71918b = f2;
        if (decayAnimationSpec != null && Math.abs(f2) > 1.0f) {
            Ref$FloatRef ref$FloatRef4 = new Ref$FloatRef();
            AnimationState animationStateA = AnimationStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 28);
            v6 v6Var = new v6(ref$FloatRef4, topAppBarState, ref$FloatRef, 1);
            lVMediumTopBarKt$settleAppBar$2.f48751b = topAppBarState;
            lVMediumTopBarKt$settleAppBar$2.f48752c = animationSpec;
            lVMediumTopBarKt$settleAppBar$2.d = ref$FloatRef;
            lVMediumTopBarKt$settleAppBar$2.f48753e = f2;
            lVMediumTopBarKt$settleAppBar$2.g = 1;
            if (SuspendAnimationKt.e(animationStateA, decayAnimationSpec, false, v6Var, lVMediumTopBarKt$settleAppBar$2) != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        return new Velocity(VelocityKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, ref$FloatRef.f71918b));
        AnimationSpec animationSpec2 = animationSpec;
        if (animationSpec2 != null && topAppBarState.b() < Call.Parameters.DEFAULT_CAMERA_ZOOM && topAppBarState.b() > topAppBarState.f7439a) {
            AnimationState animationStateA2 = AnimationStateKt.a(topAppBarState.b(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 30);
            Float f3 = new Float(topAppBarState.a() < 0.5f ? 0.0f : topAppBarState.f7439a);
            w6 w6Var = new w6(topAppBarState, 2);
            lVMediumTopBarKt$settleAppBar$2.f48751b = null;
            lVMediumTopBarKt$settleAppBar$2.f48752c = null;
            lVMediumTopBarKt$settleAppBar$2.d = ref$FloatRef;
            lVMediumTopBarKt$settleAppBar$2.f48753e = f2;
            lVMediumTopBarKt$settleAppBar$2.g = 2;
            if (SuspendAnimationKt.g(animationStateA2, f3, animationSpec2, false, w6Var, lVMediumTopBarKt$settleAppBar$2, 4) != coroutineSingletons) {
                ref$FloatRef2 = ref$FloatRef;
                ref$FloatRef = ref$FloatRef2;
            }
            return coroutineSingletons;
        }
        return new Velocity(VelocityKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, ref$FloatRef.f71918b));
    }
}
