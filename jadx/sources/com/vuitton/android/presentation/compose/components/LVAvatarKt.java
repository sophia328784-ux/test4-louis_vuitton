package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.rq;
import defpackage.rs;
import defpackage.tr;
import defpackage.uj;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "currentInnerPadding", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVAvatarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f50959a;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50960a;

        static {
            int[] iArr = new int[AvatarSize.values().length];
            try {
                iArr[AvatarSize.Small.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AvatarSize.Regular.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50960a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f50959a = 8.0f;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x0270  */
    /* JADX WARN: Code duplicated, block: B:115:0x0287  */
    /* JADX WARN: Code duplicated, block: B:117:0x028b  */
    /* JADX WARN: Code duplicated, block: B:119:0x028f  */
    /* JADX WARN: Code duplicated, block: B:122:0x029c  */
    /* JADX WARN: Code duplicated, block: B:124:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:76:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:80:0x012a  */
    /* JADX WARN: Code duplicated, block: B:82:0x0133  */
    /* JADX WARN: Code duplicated, block: B:83:0x0137  */
    /* JADX WARN: Code duplicated, block: B:86:0x0185  */
    /* JADX WARN: Code duplicated, block: B:88:0x018c  */
    /* JADX WARN: Code duplicated, block: B:89:0x0190  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:95:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:96:0x01bd  */
    public static final void a(Modifier modifier, AvatarItemUiModel avatarItemUiModel, String str, AvatarSize avatarSize, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        Object obj;
        int i5;
        boolean z;
        AvatarSize avatarSize2;
        Modifier modifier2;
        Object obj2;
        RecomposeScopeImpl recomposeScopeImplB0;
        AvatarSize avatarSize3;
        float f2;
        Object obj3;
        State stateA;
        RoundedCornerShape roundedCornerShape;
        boolean z2;
        BiasAlignment biasAlignment;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Modifier modifier3;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        FillElement fillElement;
        MeasurePolicy measurePolicyD2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        String str2;
        String str3;
        TextStyle textStyle;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVAvatar");
        }
        avatarItemUiModel.getClass();
        boolean z3 = avatarItemUiModel.f52329e;
        GapComposer gapComposerH = composer.h(-1755689407);
        Applier applier = gapComposerH.f7976a;
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(avatarItemUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str) ? 256 : 128;
        }
        int i7 = i3 & 8;
        if (i7 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.d(avatarSize == null ? -1 : avatarSize.ordinal()) ? 2048 : 1024;
        }
        int i8 = i3 & 16;
        if (i8 == 0) {
            if ((i2 & 24576) == 0) {
                obj = function1;
                i4 |= gapComposerH.y(obj) ? 16384 : 8192;
            }
            i5 = i4;
            if ((i5 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                if (i6 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVAvatar");
                }
                if (i7 != 0) {
                    avatarSize3 = AvatarSize.Regular;
                } else {
                    avatarSize3 = avatarSize;
                }
                if (i8 != 0) {
                    obj = null;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if (z3) {
                    f2 = f50959a;
                } else {
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                obj3 = obj;
                stateA = AnimateAsStateKt.a(f2, null, "avatarInnerPadding", null, gapComposerH, KyberEngine.KyberPolyBytes, 10);
                Modifier modifierB = ModifierExtKt.b(AspectRatioKt.a(SizeKt.o(dTFunctionNameModifier, avatarSize3.getDp()), 1.0f, false), z3, new rq(28), gapComposerH, 0);
                roundedCornerShape = RoundedCornerShapeKt.f5846a;
                Modifier modifierA = ClipKt.a(modifierB, roundedCornerShape);
                if (obj3 != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Modifier modifierB2 = ModifierExtKt.b(modifierA, z2, new rs(obj3, avatarItemUiModel, 20), gapComposerH, 0);
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8587f;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                modifier3 = dTFunctionNameModifier;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function6, "LVAvatar");
                fillElement = SizeKt.f5052c;
                Modifier modifierA2 = ClipKt.a(PaddingKt.i(dTFunctionNameModifierE.o(fillElement), ((Dp) stateA.getF10755b()).f11006b), roundedCornerShape);
                measurePolicyD2 = BoxKt.d(biasAlignment, false);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
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
                Updater.c(gapComposerH, measurePolicyD2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                Modifier modifierA3 = ClipKt.a(new DTFunctionNameModifier("LVAvatar").o(fillElement), roundedCornerShape);
                str2 = avatarItemUiModel.f52327b;
                if (str2.length() <= 0) {
                    str2 = null;
                }
                if (str2 != null) {
                    str3 = str2;
                } else {
                    str3 = null;
                }
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierA3, str3, ContentScale.Companion.f9449b, null, Integer.valueOf(R.drawable.placeholder_transparent), R.drawable.placeholder_transparent, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 1992);
                gapComposerH = gapComposerH;
                if (avatarItemUiModel.d || str == null || str.length() == 0) {
                    gapComposerH.L(932399829);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(932014995);
                    int i9 = WhenMappings.f50960a[avatarSize3.ordinal()];
                    if (i9 == 1) {
                        gapComposerH.L(-801213931);
                        textStyle = LVAppDesignKitTheme.n(gapComposerH).p;
                        gapComposerH.Z(false);
                    } else {
                        if (i9 != 2) {
                            throw d21.u(gapComposerH, -801216768, false);
                        }
                        gapComposerH.L(-801211179);
                        textStyle = LVAppDesignKitTheme.n(gapComposerH).d;
                        gapComposerH.Z(false);
                    }
                    TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i5 >> 6) & 14, 0, 131066);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                gapComposerH.Z(true);
                obj2 = obj3;
                avatarSize2 = avatarSize3;
                modifier2 = modifier3;
            } else {
                gapComposerH.D();
                avatarSize2 = avatarSize;
                modifier2 = dTFunctionNameModifier;
                obj2 = obj;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new uj(modifier2, avatarItemUiModel, str, avatarSize2, obj2, i2, i3, 3);
            }
        }
        i4 |= 24576;
        obj = function1;
        i5 = i4;
        if ((i5 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVAvatar");
            }
            if (i7 != 0) {
                avatarSize3 = AvatarSize.Regular;
            } else {
                avatarSize3 = avatarSize;
            }
            if (i8 != 0) {
                obj = null;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            if (z3) {
                f2 = f50959a;
            } else {
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            obj3 = obj;
            stateA = AnimateAsStateKt.a(f2, null, "avatarInnerPadding", null, gapComposerH, KyberEngine.KyberPolyBytes, 10);
            Modifier modifierB3 = ModifierExtKt.b(AspectRatioKt.a(SizeKt.o(dTFunctionNameModifier, avatarSize3.getDp()), 1.0f, false), z3, new rq(28), gapComposerH, 0);
            roundedCornerShape = RoundedCornerShapeKt.f5846a;
            Modifier modifierA4 = ClipKt.a(modifierB3, roundedCornerShape);
            if (obj3 != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Modifier modifierB4 = ModifierExtKt.b(modifierA4, z2, new rs(obj3, avatarItemUiModel, 20), gapComposerH, 0);
            Alignment.f8582a.getClass();
            biasAlignment = Alignment.Companion.f8587f;
            measurePolicyD = BoxKt.d(biasAlignment, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            modifier3 = dTFunctionNameModifier;
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            function6 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE2 = tr.e(gapComposerH, modifierC, function6, "LVAvatar");
            fillElement = SizeKt.f5052c;
            Modifier modifierA5 = ClipKt.a(PaddingKt.i(dTFunctionNameModifierE2.o(fillElement), ((Dp) stateA.getF10755b()).f11006b), roundedCornerShape);
            measurePolicyD2 = BoxKt.d(biasAlignment, false);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA5);
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
            Updater.c(gapComposerH, measurePolicyD2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            Modifier modifierA6 = ClipKt.a(new DTFunctionNameModifier("LVAvatar").o(fillElement), roundedCornerShape);
            str2 = avatarItemUiModel.f52327b;
            if (str2.length() <= 0) {
                str2 = null;
            }
            if (str2 != null) {
                str3 = str2;
            } else {
                str3 = null;
            }
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA6, str3, ContentScale.Companion.f9449b, null, Integer.valueOf(R.drawable.placeholder_transparent), R.drawable.placeholder_transparent, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 1992);
            gapComposerH = gapComposerH;
            if (avatarItemUiModel.d) {
                gapComposerH.L(932399829);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(932399829);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            obj2 = obj3;
            avatarSize2 = avatarSize3;
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            avatarSize2 = avatarSize;
            modifier2 = dTFunctionNameModifier;
            obj2 = obj;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uj(modifier2, avatarItemUiModel, str, avatarSize2, obj2, i2, i3, 3);
        }
    }
}
