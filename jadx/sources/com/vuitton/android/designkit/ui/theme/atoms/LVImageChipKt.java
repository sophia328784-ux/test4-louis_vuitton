package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageChipKt;
import defpackage.ai;
import defpackage.cj;
import defpackage.d21;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isPressed", "Landroidx/compose/ui/unit/Dp;", "currentInnerPadding", "currentRadius", "isSelectedState", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVImageChipKt {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48483a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48484b;

        static {
            int[] iArr = new int[LVImageChipSize.values().length];
            try {
                iArr[LVImageChipSize.SMALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVImageChipSize.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48483a = iArr;
            int[] iArr2 = new int[LVColorScheme.values().length];
            try {
                iArr2[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f48484b = iArr2;
        }
    }

    public static final void a(Modifier modifier, final boolean z, final boolean z2, final float f2, final float f3, final Color color, final MutableInteractionSource mutableInteractionSource, final LVColorScheme lVColorScheme, final Function1 function1, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        float f4;
        int i6;
        GapComposer gapComposer;
        float f5;
        long j2;
        float f6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ImageChipInternal-g0mVbm0");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1644470433);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.b(z) ? 32 : 16;
        }
        int i7 = i4;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 = i7 | (gapComposerH.b(z2) ? 256 : 128);
        } else {
            i5 = i7;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.c(f2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            f4 = f3;
            i5 |= gapComposerH.c(f4) ? 16384 : 8192;
        } else {
            f4 = f3;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.K(color) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.K(mutableInteractionSource) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.d(lVColorScheme.ordinal()) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i5 |= gapComposerH.b(false) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i5 |= gapComposerH.y(function1) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.y(composableLambdaImpl) ? 4 : 2);
        } else {
            i6 = i3;
        }
        int i8 = i5;
        if (gapComposerH.p(i8 & 1, ((306783379 & i5) == 306783378 && (i6 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f7 = LVAppDesignKitTheme.d(gapComposerH).f48386e;
            float f8 = LVAppDesignKitTheme.d(gapComposerH).f48388h;
            Dp.Companion companion = Dp.f11004c;
            gapComposerH.L(211899064);
            MutableState mutableStateA = PressInteractionKt.a(mutableInteractionSource, gapComposerH, (i8 >> 18) & 14);
            gapComposerH.Z(false);
            if (((Boolean) mutableStateA.getF10755b()).booleanValue()) {
                f5 = f4;
            } else {
                f5 = z ? f2 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            State stateA = AnimateAsStateKt.a(f5, null, null, null, gapComposerH, 0, 14);
            State stateA2 = AnimateAsStateKt.a((((Boolean) mutableStateA.getF10755b()).booleanValue() || z) ? f7 : f8, null, null, null, gapComposerH, 0, 14);
            gapComposer = gapComposerH;
            if (color == null) {
                gapComposer.L(-2020529290);
                int i9 = WhenMappings.f48484b[lVColorScheme.ordinal()];
                if (i9 == 1) {
                    gapComposer.L(211918853);
                    j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.u;
                    gapComposer.Z(false);
                } else {
                    if (i9 != 2) {
                        throw d21.u(gapComposer, 211916300, false);
                    }
                    gapComposer.L(211921099);
                    j2 = LVAppDesignKitTheme.c(gapComposer).f48361b.y;
                    gapComposer.Z(false);
                }
                gapComposer.Z(false);
            } else {
                gapComposer.L(211915835);
                gapComposer.Z(false);
                j2 = color.f8872a;
            }
            Modifier modifierA = ToggleableKt.a(ClipKt.a(AspectRatioKt.a(modifier2, 1.0f, false), RoundedCornerShapeKt.a(f8)), z, mutableInteractionSource, null, z2, null, function1);
            if (z2) {
                gapComposer.L(-954600065);
                gapComposer.Z(false);
                f6 = 1.0f;
            } else {
                gapComposer.L(211936040);
                f6 = LVAppDesignKitTheme.h(gapComposer).d;
                gapComposer.Z(false);
            }
            Modifier modifierA2 = AlphaKt.a(modifierA, f6);
            boolean z3 = ((1879048192 & i8) == 536870912) | ((i8 & 896) == 256) | ((i8 & 112) == 32);
            Object objX = gapComposer.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                objX = new Function0() { // from class: f60
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        if (z2) {
                            function1.invoke(Boolean.valueOf(!z));
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposer.q(objX);
            }
            Modifier modifierD = ModifierExtKt.d(modifierA2, mutableInteractionSource, (Function0) objX, gapComposer, (i8 >> 15) & 112);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
            int iHashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposer, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposer, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposer, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposer, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposer, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, modifierC, function6);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ImageChipInternal-g0mVbm0");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            BorderStroke borderStrokeA = BorderStrokeKt.a(1.5f, j2);
            BoxKt.a(BorderKt.b(modifierO, borderStrokeA.f4154a, borderStrokeA.f4155b, RoundedCornerShapeKt.a(f8)), gapComposer, 0);
            Modifier modifierA3 = ClipKt.a(PaddingKt.i(new DTFunctionNameModifier("ImageChipInternal-g0mVbm0").o(fillElement), ((Dp) stateA.getF10755b()).f11006b), RoundedCornerShapeKt.a(((Dp) stateA2.getF10755b()).f11006b));
            MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
            int iHashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierA3);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD2, function2);
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposer, function4, gapComposer, function5);
            Updater.c(gapComposer, modifierC2, function6);
            composableLambdaImpl.A(BoxScopeInstance.f4938a, gapComposer, Integer.valueOf(((i6 << 3) & 112) | 6));
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: g60
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVImageChipKt.a(modifier2, z, z2, f2, f3, color, mutableInteractionSource, lVColorScheme, function1, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), RecomposeScopeImplKt.a(i3));
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0114  */
    /* JADX WARN: Code duplicated, block: B:101:0x0117  */
    /* JADX WARN: Code duplicated, block: B:103:0x011b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0122  */
    /* JADX WARN: Code duplicated, block: B:106:0x0126  */
    /* JADX WARN: Code duplicated, block: B:107:0x012b  */
    /* JADX WARN: Code duplicated, block: B:110:0x0139  */
    /* JADX WARN: Code duplicated, block: B:112:0x013c  */
    /* JADX WARN: Code duplicated, block: B:113:0x0141  */
    /* JADX WARN: Code duplicated, block: B:115:0x0145  */
    /* JADX WARN: Code duplicated, block: B:118:0x0155  */
    /* JADX WARN: Code duplicated, block: B:120:0x0158  */
    /* JADX WARN: Code duplicated, block: B:122:0x016a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0173  */
    /* JADX WARN: Code duplicated, block: B:127:0x018c  */
    /* JADX WARN: Code duplicated, block: B:129:0x018f  */
    /* JADX WARN: Code duplicated, block: B:130:0x019f  */
    /* JADX WARN: Code duplicated, block: B:132:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:135:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:137:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:140:0x020f  */
    /* JADX WARN: Code duplicated, block: B:142:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x0089  */
    /* JADX WARN: Code duplicated, block: B:55:0x0091  */
    /* JADX WARN: Code duplicated, block: B:56:0x0094  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:81:0x00db  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:92:0x0102 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0104  */
    /* JADX WARN: Code duplicated, block: B:94:0x010a  */
    /* JADX WARN: Code duplicated, block: B:97:0x010f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0111  */
    public static final void b(Modifier modifier, boolean z, boolean z2, LVImageChipSize lVImageChipSize, Color color, LVColorScheme lVColorScheme, Function1 function1, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        int i5;
        int iOrdinal;
        int i6;
        int i7;
        Color color2;
        int i8;
        int i9;
        int i10;
        int i11;
        Function1 function2;
        Modifier modifier2;
        boolean z4;
        GapComposer gapComposer;
        LVImageChipSize lVImageChipSize2;
        LVColorScheme lVColorScheme2;
        boolean z5;
        Color color3;
        Modifier modifier3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        boolean z6;
        int i12;
        Color color4;
        LVColorScheme lVColorScheme3;
        int i13;
        float f2;
        int i14;
        boolean z7;
        float f3;
        int i15;
        float f4;
        Object objX;
        int i16;
        int i17;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVImageChip-eq_XX3s");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(-407397558);
        int i18 = i3 & 1;
        if (i18 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.b(z) ? 32 : 16;
        }
        int i19 = i3 & 4;
        if (i19 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z3 = z2;
                i4 |= gapComposerH.b(z3) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (lVImageChipSize == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVImageChipSize.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    color2 = color;
                    if (gapComposerH.K(color2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                i9 = 196608 | i4;
                i10 = i3 & 64;
                if (i10 != 0) {
                    i9 = i4 | 1769472;
                } else if ((1572864 & i2) == 0) {
                    if (gapComposerH.d(lVColorScheme != null ? lVColorScheme.ordinal() : -1)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i9 |= i11;
                }
                if ((12582912 & i2) == 0) {
                    function2 = function1;
                    if (gapComposerH.y(function2)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i9 |= i17;
                } else {
                    function2 = function1;
                }
                if ((i2 & 100663296) == 0) {
                    if (gapComposerH.y(composableLambdaImpl)) {
                        i16 = 67108864;
                    } else {
                        i16 = 33554432;
                    }
                    i9 |= i16;
                }
                modifier2 = modifierE;
                if ((i9 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i9 & 1, z4)) {
                    if (i18 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVImageChip-eq_XX3s");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i19 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i5 != 0) {
                        lVImageChipSize2 = LVImageChipSize.MEDIUM;
                    } else {
                        lVImageChipSize2 = lVImageChipSize;
                    }
                    if (i7 != 0) {
                        color4 = null;
                        i12 = i10;
                    } else {
                        i12 = i10;
                        color4 = color2;
                    }
                    if (i12 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    int[] iArr = WhenMappings.f48483a;
                    i13 = iArr[lVImageChipSize2.ordinal()];
                    if (i13 != 1) {
                        Dp.Companion companion = Dp.f11004c;
                        f2 = 64.0f;
                    } else if (i13 == 2) {
                        v40.g();
                        return;
                    } else {
                        Dp.Companion companion2 = Dp.f11004c;
                        f2 = 104.0f;
                    }
                    Modifier modifierO = SizeKt.o(dTFunctionNameModifier, f2);
                    i14 = iArr[lVImageChipSize2.ordinal()];
                    if (i14 != 1) {
                        z7 = false;
                        gapComposerH.L(-667004110);
                        f3 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                        gapComposerH.Z(false);
                    } else {
                        if (i14 == 2) {
                            throw d21.u(gapComposerH, -667006504, false);
                        }
                        gapComposerH.L(-667001678);
                        f3 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                        z7 = false;
                        gapComposerH.Z(false);
                    }
                    float f5 = f3;
                    i15 = iArr[lVImageChipSize2.ordinal()];
                    if (i15 != 1) {
                        gapComposerH.L(-666998388);
                        gapComposerH.Z(z7);
                        f4 = 6.0f;
                    } else {
                        if (i15 == 2) {
                            throw d21.u(gapComposerH, -666999944, z7);
                        }
                        gapComposerH.L(-666996141);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).d;
                        gapComposerH.Z(z7);
                    }
                    gapComposerH.L(798090961);
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    gapComposerH.Z(false);
                    int i20 = i9 << 3;
                    gapComposer = gapComposerH;
                    a(modifierO, z, z6, f5, f4, color4, (MutableInteractionSource) objX, lVColorScheme3, function2, composableLambdaImpl, gapComposer, (i9 & 112) | 100663296 | (i9 & 896) | (458752 & i20) | (i20 & 29360128) | (1879048192 & (i9 << 6)), (i9 >> 24) & 14);
                    modifier3 = dTFunctionNameModifier;
                    z5 = z6;
                    color3 = color4;
                    lVColorScheme2 = lVColorScheme3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVImageChipSize2 = lVImageChipSize;
                    lVColorScheme2 = lVColorScheme;
                    z5 = z3;
                    color3 = color2;
                    modifier3 = modifier2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(modifier3, z, z5, lVImageChipSize2, color3, lVColorScheme2, function1, composableLambdaImpl, i2, i3);
                }
            }
            i4 |= 24576;
            color2 = color;
            i9 = 196608 | i4;
            i10 = i3 & 64;
            if (i10 != 0) {
                i9 = i4 | 1769472;
            } else if ((1572864 & i2) == 0) {
                if (gapComposerH.d(lVColorScheme != null ? lVColorScheme.ordinal() : -1)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i9 |= i11;
            }
            if ((12582912 & i2) == 0) {
                function2 = function1;
                if (gapComposerH.y(function2)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i9 |= i17;
            } else {
                function2 = function1;
            }
            if ((i2 & 100663296) == 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i16 = 67108864;
                } else {
                    i16 = 33554432;
                }
                i9 |= i16;
            }
            modifier2 = modifierE;
            if ((i9 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i9 & 1, z4)) {
                if (i18 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVImageChip-eq_XX3s");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i19 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i5 != 0) {
                    lVImageChipSize2 = LVImageChipSize.MEDIUM;
                } else {
                    lVImageChipSize2 = lVImageChipSize;
                }
                if (i7 != 0) {
                    color4 = null;
                    i12 = i10;
                } else {
                    i12 = i10;
                    color4 = color2;
                }
                if (i12 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int[] iArr2 = WhenMappings.f48483a;
                i13 = iArr2[lVImageChipSize2.ordinal()];
                if (i13 != 1) {
                    Dp.Companion companion3 = Dp.f11004c;
                    f2 = 64.0f;
                } else if (i13 == 2) {
                    v40.g();
                    return;
                } else {
                    Dp.Companion companion4 = Dp.f11004c;
                    f2 = 104.0f;
                }
                Modifier modifierO2 = SizeKt.o(dTFunctionNameModifier, f2);
                i14 = iArr2[lVImageChipSize2.ordinal()];
                if (i14 != 1) {
                    z7 = false;
                    gapComposerH.L(-667004110);
                    f3 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                    gapComposerH.Z(false);
                } else {
                    if (i14 == 2) {
                        throw d21.u(gapComposerH, -667006504, false);
                    }
                    gapComposerH.L(-667001678);
                    f3 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                    z7 = false;
                    gapComposerH.Z(false);
                }
                float f6 = f3;
                i15 = iArr2[lVImageChipSize2.ordinal()];
                if (i15 != 1) {
                    gapComposerH.L(-666998388);
                    gapComposerH.Z(z7);
                    f4 = 6.0f;
                } else {
                    if (i15 == 2) {
                        throw d21.u(gapComposerH, -666999944, z7);
                    }
                    gapComposerH.L(-666996141);
                    f4 = LVAppDesignKitTheme.l(gapComposerH).d;
                    gapComposerH.Z(z7);
                }
                gapComposerH.L(798090961);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                gapComposerH.Z(false);
                int i21 = i9 << 3;
                gapComposer = gapComposerH;
                a(modifierO2, z, z6, f6, f4, color4, (MutableInteractionSource) objX, lVColorScheme3, function2, composableLambdaImpl, gapComposer, (i9 & 112) | 100663296 | (i9 & 896) | (458752 & i21) | (i21 & 29360128) | (1879048192 & (i9 << 6)), (i9 >> 24) & 14);
                modifier3 = dTFunctionNameModifier;
                z5 = z6;
                color3 = color4;
                lVColorScheme2 = lVColorScheme3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVImageChipSize2 = lVImageChipSize;
                lVColorScheme2 = lVColorScheme;
                z5 = z3;
                color3 = color2;
                modifier3 = modifier2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier3, z, z5, lVImageChipSize2, color3, lVColorScheme2, function1, composableLambdaImpl, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z3 = z2;
        i5 = i3 & 8;
        if (i5 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (lVImageChipSize == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVImageChipSize.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i4 |= i6;
        }
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i2 & 24576) == 0) {
                color2 = color;
                if (gapComposerH.K(color2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            i9 = 196608 | i4;
            i10 = i3 & 64;
            if (i10 != 0) {
                i9 = i4 | 1769472;
            } else if ((1572864 & i2) == 0) {
                if (gapComposerH.d(lVColorScheme != null ? lVColorScheme.ordinal() : -1)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i9 |= i11;
            }
            if ((12582912 & i2) == 0) {
                function2 = function1;
                if (gapComposerH.y(function2)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i9 |= i17;
            } else {
                function2 = function1;
            }
            if ((i2 & 100663296) == 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i16 = 67108864;
                } else {
                    i16 = 33554432;
                }
                i9 |= i16;
            }
            modifier2 = modifierE;
            if ((i9 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i9 & 1, z4)) {
                if (i18 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVImageChip-eq_XX3s");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i19 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i5 != 0) {
                    lVImageChipSize2 = LVImageChipSize.MEDIUM;
                } else {
                    lVImageChipSize2 = lVImageChipSize;
                }
                if (i7 != 0) {
                    color4 = null;
                    i12 = i10;
                } else {
                    i12 = i10;
                    color4 = color2;
                }
                if (i12 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int[] iArr3 = WhenMappings.f48483a;
                i13 = iArr3[lVImageChipSize2.ordinal()];
                if (i13 != 1) {
                    Dp.Companion companion5 = Dp.f11004c;
                    f2 = 64.0f;
                } else if (i13 == 2) {
                    v40.g();
                    return;
                } else {
                    Dp.Companion companion6 = Dp.f11004c;
                    f2 = 104.0f;
                }
                Modifier modifierO3 = SizeKt.o(dTFunctionNameModifier, f2);
                i14 = iArr3[lVImageChipSize2.ordinal()];
                if (i14 != 1) {
                    z7 = false;
                    gapComposerH.L(-667004110);
                    f3 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                    gapComposerH.Z(false);
                } else {
                    if (i14 == 2) {
                        throw d21.u(gapComposerH, -667006504, false);
                    }
                    gapComposerH.L(-667001678);
                    f3 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                    z7 = false;
                    gapComposerH.Z(false);
                }
                float f7 = f3;
                i15 = iArr3[lVImageChipSize2.ordinal()];
                if (i15 != 1) {
                    gapComposerH.L(-666998388);
                    gapComposerH.Z(z7);
                    f4 = 6.0f;
                } else {
                    if (i15 == 2) {
                        throw d21.u(gapComposerH, -666999944, z7);
                    }
                    gapComposerH.L(-666996141);
                    f4 = LVAppDesignKitTheme.l(gapComposerH).d;
                    gapComposerH.Z(z7);
                }
                gapComposerH.L(798090961);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                gapComposerH.Z(false);
                int i22 = i9 << 3;
                gapComposer = gapComposerH;
                a(modifierO3, z, z6, f7, f4, color4, (MutableInteractionSource) objX, lVColorScheme3, function2, composableLambdaImpl, gapComposer, (i9 & 112) | 100663296 | (i9 & 896) | (458752 & i22) | (i22 & 29360128) | (1879048192 & (i9 << 6)), (i9 >> 24) & 14);
                modifier3 = dTFunctionNameModifier;
                z5 = z6;
                color3 = color4;
                lVColorScheme2 = lVColorScheme3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVImageChipSize2 = lVImageChipSize;
                lVColorScheme2 = lVColorScheme;
                z5 = z3;
                color3 = color2;
                modifier3 = modifier2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier3, z, z5, lVImageChipSize2, color3, lVColorScheme2, function1, composableLambdaImpl, i2, i3);
            }
        }
        i4 |= 24576;
        color2 = color;
        i9 = 196608 | i4;
        i10 = i3 & 64;
        if (i10 != 0) {
            i9 = i4 | 1769472;
        } else if ((1572864 & i2) == 0) {
            if (gapComposerH.d(lVColorScheme != null ? lVColorScheme.ordinal() : -1)) {
                i11 = 1048576;
            } else {
                i11 = 524288;
            }
            i9 |= i11;
        }
        if ((12582912 & i2) == 0) {
            function2 = function1;
            if (gapComposerH.y(function2)) {
                i17 = 8388608;
            } else {
                i17 = 4194304;
            }
            i9 |= i17;
        } else {
            function2 = function1;
        }
        if ((i2 & 100663296) == 0) {
            if (gapComposerH.y(composableLambdaImpl)) {
                i16 = 67108864;
            } else {
                i16 = 33554432;
            }
            i9 |= i16;
        }
        modifier2 = modifierE;
        if ((i9 & 38347923) != 38347922) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i9 & 1, z4)) {
            if (i18 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVImageChip-eq_XX3s");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i19 != 0) {
                z6 = true;
            } else {
                z6 = z3;
            }
            if (i5 != 0) {
                lVImageChipSize2 = LVImageChipSize.MEDIUM;
            } else {
                lVImageChipSize2 = lVImageChipSize;
            }
            if (i7 != 0) {
                color4 = null;
                i12 = i10;
            } else {
                i12 = i10;
                color4 = color2;
            }
            if (i12 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            int[] iArr4 = WhenMappings.f48483a;
            i13 = iArr4[lVImageChipSize2.ordinal()];
            if (i13 != 1) {
                Dp.Companion companion7 = Dp.f11004c;
                f2 = 64.0f;
            } else if (i13 == 2) {
                v40.g();
                return;
            } else {
                Dp.Companion companion8 = Dp.f11004c;
                f2 = 104.0f;
            }
            Modifier modifierO4 = SizeKt.o(dTFunctionNameModifier, f2);
            i14 = iArr4[lVImageChipSize2.ordinal()];
            if (i14 != 1) {
                z7 = false;
                gapComposerH.L(-667004110);
                f3 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                gapComposerH.Z(false);
            } else {
                if (i14 == 2) {
                    throw d21.u(gapComposerH, -667006504, false);
                }
                gapComposerH.L(-667001678);
                f3 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                z7 = false;
                gapComposerH.Z(false);
            }
            float f8 = f3;
            i15 = iArr4[lVImageChipSize2.ordinal()];
            if (i15 != 1) {
                gapComposerH.L(-666998388);
                gapComposerH.Z(z7);
                f4 = 6.0f;
            } else {
                if (i15 == 2) {
                    throw d21.u(gapComposerH, -666999944, z7);
                }
                gapComposerH.L(-666996141);
                f4 = LVAppDesignKitTheme.l(gapComposerH).d;
                gapComposerH.Z(z7);
            }
            gapComposerH.L(798090961);
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            gapComposerH.Z(false);
            int i23 = i9 << 3;
            gapComposer = gapComposerH;
            a(modifierO4, z, z6, f8, f4, color4, (MutableInteractionSource) objX, lVColorScheme3, function2, composableLambdaImpl, gapComposer, (i9 & 112) | 100663296 | (i9 & 896) | (458752 & i23) | (i23 & 29360128) | (1879048192 & (i9 << 6)), (i9 >> 24) & 14);
            modifier3 = dTFunctionNameModifier;
            z5 = z6;
            color3 = color4;
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVImageChipSize2 = lVImageChipSize;
            lVColorScheme2 = lVColorScheme;
            z5 = z3;
            color3 = color2;
            modifier3 = modifier2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai(modifier3, z, z5, lVImageChipSize2, color3, lVColorScheme2, function1, composableLambdaImpl, i2, i3);
        }
    }
}
