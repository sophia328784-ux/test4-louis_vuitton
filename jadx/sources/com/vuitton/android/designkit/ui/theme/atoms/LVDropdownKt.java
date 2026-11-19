package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.ExposedDropdownMenuAnchorType;
import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import defpackage.d21;
import defpackage.n00;
import defpackage.r;
import defpackage.ss;
import defpackage.u50;
import defpackage.x20;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVDropdownKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48474a;

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
            f48474a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011b  */
    /* JADX WARN: Code duplicated, block: B:104:0x012d  */
    /* JADX WARN: Code duplicated, block: B:105:0x012f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0138 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x013a  */
    /* JADX WARN: Code duplicated, block: B:110:0x013f  */
    /* JADX WARN: Code duplicated, block: B:112:0x0143  */
    /* JADX WARN: Code duplicated, block: B:114:0x0146  */
    /* JADX WARN: Code duplicated, block: B:115:0x0148  */
    /* JADX WARN: Code duplicated, block: B:117:0x014b  */
    /* JADX WARN: Code duplicated, block: B:118:0x014e  */
    /* JADX WARN: Code duplicated, block: B:121:0x0154  */
    /* JADX WARN: Code duplicated, block: B:123:0x015a  */
    /* JADX WARN: Code duplicated, block: B:125:0x0168  */
    /* JADX WARN: Code duplicated, block: B:127:0x016c  */
    /* JADX WARN: Code duplicated, block: B:128:0x016e  */
    /* JADX WARN: Code duplicated, block: B:131:0x0182  */
    /* JADX WARN: Code duplicated, block: B:133:0x0188  */
    /* JADX WARN: Code duplicated, block: B:139:0x0198  */
    /* JADX WARN: Code duplicated, block: B:141:0x019e  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ac A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:148:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:151:0x01be  */
    /* JADX WARN: Code duplicated, block: B:154:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:157:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:159:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:162:0x0215 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:165:0x021b  */
    /* JADX WARN: Code duplicated, block: B:167:0x0266  */
    /* JADX WARN: Code duplicated, block: B:170:0x027a  */
    /* JADX WARN: Code duplicated, block: B:172:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:93:0x0103  */
    /* JADX WARN: Code duplicated, block: B:95:0x010a  */
    /* JADX WARN: Code duplicated, block: B:97:0x010e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0118  */
    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, String str, final List list, Integer num, boolean z, boolean z2, String str2, Function1 function1, boolean z3, Composer composer, int i2, int i3) {
        int i4;
        final String str3;
        boolean z4;
        int i5;
        boolean z5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z6;
        GapComposer gapComposer;
        LVColorScheme lVColorScheme2;
        Function1 function2;
        boolean z7;
        boolean z8;
        String str4;
        boolean z9;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVColorScheme lVColorScheme3;
        final boolean z10;
        final String str5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final Function1 function3;
        boolean z11;
        boolean zK;
        Object objX;
        DropdownState dropdownState;
        Object objX2;
        int i14;
        final ConfigurationTextField configurationTextField;
        boolean zK2;
        Object objX3;
        DropdownState dropdownState2;
        Object objX4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVDropdown");
        }
        Modifier modifier2 = modifierE;
        str.getClass();
        list.getClass();
        GapComposer gapComposerH = composer.h(-66421321);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i15 = i3 & 2;
        if (i15 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            str3 = str;
            i4 |= gapComposerH.K(str3) ? 256 : 128;
        } else {
            str3 = str;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(num) ? 16384 : 8192;
        }
        int i16 = i3 & 32;
        if (i16 == 0) {
            if ((196608 & i2) == 0) {
                z4 = z;
                i4 |= gapComposerH.b(z4) ? 131072 : 65536;
            }
            i5 = i3 & 64;
            if (i5 != 0) {
                if ((1572864 & i2) == 0) {
                    z5 = z2;
                    if (gapComposerH.b(z5)) {
                        i6 = 1048576;
                    } else {
                        i6 = 524288;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 128;
                if (i7 != 0) {
                    i4 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    if (gapComposerH.K(str2)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 256;
                if (i9 != 0) {
                    if ((i2 & 100663296) == 0) {
                        int i17 = i4;
                        if (gapComposerH.y(function1)) {
                            i10 = 67108864;
                        } else {
                            i10 = 33554432;
                        }
                        i11 = i17 | i10;
                    }
                    i12 = i3 & 512;
                    if (i12 != 0) {
                        if ((i2 & 805306368) == 0) {
                            if (gapComposerH.b(z3)) {
                                i13 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i13 = 268435456;
                            }
                            i11 |= i13;
                        }
                        if ((i11 & 306783379) != 306783378) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (gapComposerH.p(i11 & 1, z6)) {
                            if (i15 != 0) {
                                lVColorScheme3 = LVColorScheme.DEFAULT;
                            } else {
                                lVColorScheme3 = lVColorScheme;
                            }
                            if (i16 != 0) {
                                z4 = true;
                            }
                            if (i5 != 0) {
                                z10 = false;
                            } else {
                                z10 = z5;
                            }
                            if (i7 != 0) {
                                str5 = null;
                            } else {
                                str5 = str2;
                            }
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (i9 != 0) {
                                objX4 = gapComposerH.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = new x20(24);
                                    gapComposerH.q(objX4);
                                }
                                function3 = (Function1) objX4;
                            } else {
                                function3 = function1;
                            }
                            if (i12 != 0) {
                                z11 = false;
                            } else {
                                z11 = z3;
                            }
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            int i18 = i11 >> 9;
                            final boolean z12 = z11;
                            zK = ((((i18 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i18 & 48) == 32) | gapComposerH.K(list) | ((((i18 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i18 & KyberEngine.KyberPolyBytes) == 256);
                            objX = gapComposerH.x();
                            if (zK || objX == composer$Companion$Empty$1) {
                                objX = new DropdownState(list, num, z4);
                                gapComposerH.q(objX);
                            }
                            dropdownState = (DropdownState) objX;
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = InteractionSourceKt.a();
                                gapComposerH.q(objX2);
                            }
                            final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX2;
                            i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                            if (i14 != 1) {
                                gapComposerH.L(593642718);
                                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                                gapComposerH.Z(false);
                            } else {
                                if (i14 == 2) {
                                    throw d21.u(gapComposerH, 593640166, false);
                                }
                                gapComposerH.L(593644996);
                                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                                gapComposerH.Z(false);
                            }
                            Modifier modifierE2 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                            boolean zA = dropdownState.a();
                            zK2 = gapComposerH.K(dropdownState);
                            objX3 = gapComposerH.x();
                            if (!zK2 || objX3 == composer$Companion$Empty$1) {
                                dropdownState2 = dropdownState;
                                objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                                gapComposerH.q(objX3);
                            } else {
                                dropdownState2 = dropdownState;
                            }
                            final boolean z13 = z4;
                            final DropdownState dropdownState3 = dropdownState2;
                            ExposedDropdownMenuKt.a(zA, (Function1) ((KFunction) objX3), modifierE2, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj, Object obj2, Object obj3) {
                                    int i19;
                                    ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                                    Composer composer2 = (Composer) obj2;
                                    int iIntValue = ((Integer) obj3).intValue();
                                    exposedDropdownMenuBoxScope.getClass();
                                    if ((iIntValue & 6) == 0) {
                                        iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                                    }
                                    int i20 = iIntValue;
                                    if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        Object objX5 = composer2.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (objX5 == composer$Companion$Empty$2) {
                                            objX5 = new FocusRequester();
                                            composer2.q(objX5);
                                        }
                                        FocusRequester focusRequester = (FocusRequester) objX5;
                                        DropdownState dropdownState4 = dropdownState3;
                                        boolean zK3 = composer2.K(dropdownState4);
                                        Object objX6 = composer2.x();
                                        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                                        if (zK3 || objX6 == composer$Companion$Empty$2) {
                                            objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource2, dropdownState4, null);
                                            composer2.q(objX6);
                                        }
                                        EffectsKt.e(composer2, mutableInteractionSource2, (Function2) objX6);
                                        Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                        ExposedDropdownMenuAnchorType.f6913b.getClass();
                                        Modifier modifierE3 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                        String str6 = dropdownState4.d;
                                        Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                        Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                        if (dropdownState4.a()) {
                                            composer2.L(-2048059502);
                                            i19 = LVAppDesignKitTheme.g(composer2).G;
                                            composer2.F();
                                        } else {
                                            composer2.L(-2047987024);
                                            i19 = LVAppDesignKitTheme.g(composer2).F;
                                            composer2.F();
                                        }
                                        Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                        Object objX7 = composer2.x();
                                        if (objX7 == composer$Companion$Empty$2) {
                                            objX7 = new x20(25);
                                            composer2.q(objX7);
                                        }
                                        Integer numValueOf = Integer.valueOf(i19);
                                        ConfigurationTextField configurationTextField2 = configurationTextField;
                                        LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE3, configurationTextField2, z13, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource2, false, null, null, modifierB, null, z12, composer2, 196656, 3072, 6, 49207296);
                                        Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                        boolean zA2 = dropdownState4.a();
                                        boolean zK4 = composer2.K(dropdownState4);
                                        Object objX8 = composer2.x();
                                        if (zK4 || objX8 == composer$Companion$Empty$2) {
                                            objX8 = new ss(dropdownState4, 27);
                                            composer2.q(objX8);
                                        }
                                        exposedDropdownMenuBoxScope.a(zA2, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState4, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposerH, 3072);
                            gapComposer = gapComposerH;
                            function2 = function3;
                            lVColorScheme2 = lVColorScheme3;
                            z9 = z12;
                            str4 = str5;
                            z8 = z10;
                            z7 = z13;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            lVColorScheme2 = lVColorScheme;
                            function2 = function1;
                            z7 = z4;
                            z8 = z5;
                            str4 = str2;
                            z9 = z3;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                        }
                    }
                    i11 |= 805306368;
                    if ((i11 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (gapComposerH.p(i11 & 1, z6)) {
                        if (i15 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i16 != 0) {
                            z4 = true;
                        }
                        if (i5 != 0) {
                            z10 = false;
                        } else {
                            z10 = z5;
                        }
                        if (i7 != 0) {
                            str5 = null;
                        } else {
                            str5 = str2;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i9 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new x20(24);
                                gapComposerH.q(objX4);
                            }
                            function3 = (Function1) objX4;
                        } else {
                            function3 = function1;
                        }
                        if (i12 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        int i19 = i11 >> 9;
                        final boolean z14 = z11;
                        zK = ((((i19 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i19 & 48) == 32) | gapComposerH.K(list) | ((((i19 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i19 & KyberEngine.KyberPolyBytes) == 256);
                        objX = gapComposerH.x();
                        if (zK) {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        } else {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        }
                        dropdownState = (DropdownState) objX;
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = InteractionSourceKt.a();
                            gapComposerH.q(objX2);
                        }
                        final MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objX2;
                        i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                        if (i14 != 1) {
                            gapComposerH.L(593642718);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                            gapComposerH.Z(false);
                        } else {
                            if (i14 == 2) {
                                throw d21.u(gapComposerH, 593640166, false);
                            }
                            gapComposerH.L(593644996);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                            gapComposerH.Z(false);
                        }
                        Modifier modifierE3 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                        boolean zA2 = dropdownState.a();
                        zK2 = gapComposerH.K(dropdownState);
                        objX3 = gapComposerH.x();
                        if (zK2) {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        } else {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        }
                        final boolean z15 = z4;
                        final DropdownState dropdownState4 = dropdownState2;
                        ExposedDropdownMenuKt.a(zA2, (Function1) ((KFunction) objX3), modifierE3, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                int i110;
                                ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                exposedDropdownMenuBoxScope.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                                }
                                int i20 = iIntValue;
                                if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    Object objX5 = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (objX5 == composer$Companion$Empty$2) {
                                        objX5 = new FocusRequester();
                                        composer2.q(objX5);
                                    }
                                    FocusRequester focusRequester = (FocusRequester) objX5;
                                    DropdownState dropdownState5 = dropdownState4;
                                    boolean zK3 = composer2.K(dropdownState5);
                                    Object objX6 = composer2.x();
                                    MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                                    if (zK3 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource3, dropdownState5, null);
                                        composer2.q(objX6);
                                    }
                                    EffectsKt.e(composer2, mutableInteractionSource3, (Function2) objX6);
                                    Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                    ExposedDropdownMenuAnchorType.f6913b.getClass();
                                    Modifier modifierE4 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                    String str6 = dropdownState5.d;
                                    Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                    Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                    if (dropdownState5.a()) {
                                        composer2.L(-2048059502);
                                        i110 = LVAppDesignKitTheme.g(composer2).G;
                                        composer2.F();
                                    } else {
                                        composer2.L(-2047987024);
                                        i110 = LVAppDesignKitTheme.g(composer2).F;
                                        composer2.F();
                                    }
                                    Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                    Object objX7 = composer2.x();
                                    if (objX7 == composer$Companion$Empty$2) {
                                        objX7 = new x20(25);
                                        composer2.q(objX7);
                                    }
                                    Integer numValueOf = Integer.valueOf(i110);
                                    ConfigurationTextField configurationTextField2 = configurationTextField;
                                    LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE4, configurationTextField2, z15, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource3, false, null, null, modifierB, null, z14, composer2, 196656, 3072, 6, 49207296);
                                    Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                    boolean zA3 = dropdownState5.a();
                                    boolean zK4 = composer2.K(dropdownState5);
                                    Object objX8 = composer2.x();
                                    if (zK4 || objX8 == composer$Companion$Empty$2) {
                                        objX8 = new ss(dropdownState5, 27);
                                        composer2.q(objX8);
                                    }
                                    exposedDropdownMenuBoxScope.a(zA3, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState5, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 3072);
                        gapComposer = gapComposerH;
                        function2 = function3;
                        lVColorScheme2 = lVColorScheme3;
                        z9 = z14;
                        str4 = str5;
                        z8 = z10;
                        z7 = z15;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVColorScheme2 = lVColorScheme;
                        function2 = function1;
                        z7 = z4;
                        z8 = z5;
                        str4 = str2;
                        z9 = z3;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                    }
                }
                i4 |= 100663296;
                i11 = i4;
                i12 = i3 & 512;
                if (i12 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (gapComposerH.b(z3)) {
                            i13 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i13 = 268435456;
                        }
                        i11 |= i13;
                    }
                    if ((i11 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (gapComposerH.p(i11 & 1, z6)) {
                        if (i15 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i16 != 0) {
                            z4 = true;
                        }
                        if (i5 != 0) {
                            z10 = false;
                        } else {
                            z10 = z5;
                        }
                        if (i7 != 0) {
                            str5 = null;
                        } else {
                            str5 = str2;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i9 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new x20(24);
                                gapComposerH.q(objX4);
                            }
                            function3 = (Function1) objX4;
                        } else {
                            function3 = function1;
                        }
                        if (i12 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        int i110 = i11 >> 9;
                        final boolean z16 = z11;
                        zK = ((((i110 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i110 & 48) == 32) | gapComposerH.K(list) | ((((i110 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i110 & KyberEngine.KyberPolyBytes) == 256);
                        objX = gapComposerH.x();
                        if (zK) {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        } else {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        }
                        dropdownState = (DropdownState) objX;
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = InteractionSourceKt.a();
                            gapComposerH.q(objX2);
                        }
                        final MutableInteractionSource mutableInteractionSource3 = (MutableInteractionSource) objX2;
                        i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                        if (i14 != 1) {
                            gapComposerH.L(593642718);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                            gapComposerH.Z(false);
                        } else {
                            if (i14 == 2) {
                                throw d21.u(gapComposerH, 593640166, false);
                            }
                            gapComposerH.L(593644996);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                            gapComposerH.Z(false);
                        }
                        Modifier modifierE4 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                        boolean zA3 = dropdownState.a();
                        zK2 = gapComposerH.K(dropdownState);
                        objX3 = gapComposerH.x();
                        if (zK2) {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        } else {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        }
                        final boolean z17 = z4;
                        final DropdownState dropdownState5 = dropdownState2;
                        ExposedDropdownMenuKt.a(zA3, (Function1) ((KFunction) objX3), modifierE4, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                int i111;
                                ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                exposedDropdownMenuBoxScope.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                                }
                                int i20 = iIntValue;
                                if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    Object objX5 = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (objX5 == composer$Companion$Empty$2) {
                                        objX5 = new FocusRequester();
                                        composer2.q(objX5);
                                    }
                                    FocusRequester focusRequester = (FocusRequester) objX5;
                                    DropdownState dropdownState6 = dropdownState5;
                                    boolean zK3 = composer2.K(dropdownState6);
                                    Object objX6 = composer2.x();
                                    MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource3;
                                    if (zK3 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource4, dropdownState6, null);
                                        composer2.q(objX6);
                                    }
                                    EffectsKt.e(composer2, mutableInteractionSource4, (Function2) objX6);
                                    Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                    ExposedDropdownMenuAnchorType.f6913b.getClass();
                                    Modifier modifierE5 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                    String str6 = dropdownState6.d;
                                    Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                    Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                    if (dropdownState6.a()) {
                                        composer2.L(-2048059502);
                                        i111 = LVAppDesignKitTheme.g(composer2).G;
                                        composer2.F();
                                    } else {
                                        composer2.L(-2047987024);
                                        i111 = LVAppDesignKitTheme.g(composer2).F;
                                        composer2.F();
                                    }
                                    Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                    Object objX7 = composer2.x();
                                    if (objX7 == composer$Companion$Empty$2) {
                                        objX7 = new x20(25);
                                        composer2.q(objX7);
                                    }
                                    Integer numValueOf = Integer.valueOf(i111);
                                    ConfigurationTextField configurationTextField2 = configurationTextField;
                                    LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE5, configurationTextField2, z17, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource4, false, null, null, modifierB, null, z16, composer2, 196656, 3072, 6, 49207296);
                                    Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                    boolean zA4 = dropdownState6.a();
                                    boolean zK4 = composer2.K(dropdownState6);
                                    Object objX8 = composer2.x();
                                    if (zK4 || objX8 == composer$Companion$Empty$2) {
                                        objX8 = new ss(dropdownState6, 27);
                                        composer2.q(objX8);
                                    }
                                    exposedDropdownMenuBoxScope.a(zA4, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState6, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 3072);
                        gapComposer = gapComposerH;
                        function2 = function3;
                        lVColorScheme2 = lVColorScheme3;
                        z9 = z16;
                        str4 = str5;
                        z8 = z10;
                        z7 = z17;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVColorScheme2 = lVColorScheme;
                        function2 = function1;
                        z7 = z4;
                        z8 = z5;
                        str4 = str2;
                        z9 = z3;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                    }
                }
                i11 |= 805306368;
                if ((i11 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i11 & 1, z6)) {
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        z4 = true;
                    }
                    if (i5 != 0) {
                        z10 = false;
                    } else {
                        z10 = z5;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i9 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new x20(24);
                            gapComposerH.q(objX4);
                        }
                        function3 = (Function1) objX4;
                    } else {
                        function3 = function1;
                    }
                    if (i12 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    int i111 = i11 >> 9;
                    final boolean z18 = z11;
                    zK = ((((i111 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i111 & 48) == 32) | gapComposerH.K(list) | ((((i111 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i111 & KyberEngine.KyberPolyBytes) == 256);
                    objX = gapComposerH.x();
                    if (zK) {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    } else {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    }
                    dropdownState = (DropdownState) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    final MutableInteractionSource mutableInteractionSource4 = (MutableInteractionSource) objX2;
                    i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                    if (i14 != 1) {
                        gapComposerH.L(593642718);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i14 == 2) {
                            throw d21.u(gapComposerH, 593640166, false);
                        }
                        gapComposerH.L(593644996);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierE5 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                    boolean zA4 = dropdownState.a();
                    zK2 = gapComposerH.K(dropdownState);
                    objX3 = gapComposerH.x();
                    if (zK2) {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    } else {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    }
                    final boolean z19 = z4;
                    final DropdownState dropdownState6 = dropdownState2;
                    ExposedDropdownMenuKt.a(zA4, (Function1) ((KFunction) objX3), modifierE5, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            int i112;
                            ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            exposedDropdownMenuBoxScope.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                            }
                            int i20 = iIntValue;
                            if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                Object objX5 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX5 == composer$Companion$Empty$2) {
                                    objX5 = new FocusRequester();
                                    composer2.q(objX5);
                                }
                                FocusRequester focusRequester = (FocusRequester) objX5;
                                DropdownState dropdownState7 = dropdownState6;
                                boolean zK3 = composer2.K(dropdownState7);
                                Object objX6 = composer2.x();
                                MutableInteractionSource mutableInteractionSource5 = mutableInteractionSource4;
                                if (zK3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource5, dropdownState7, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, mutableInteractionSource5, (Function2) objX6);
                                Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                ExposedDropdownMenuAnchorType.f6913b.getClass();
                                Modifier modifierE6 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                String str6 = dropdownState7.d;
                                Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                if (dropdownState7.a()) {
                                    composer2.L(-2048059502);
                                    i112 = LVAppDesignKitTheme.g(composer2).G;
                                    composer2.F();
                                } else {
                                    composer2.L(-2047987024);
                                    i112 = LVAppDesignKitTheme.g(composer2).F;
                                    composer2.F();
                                }
                                Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                Object objX7 = composer2.x();
                                if (objX7 == composer$Companion$Empty$2) {
                                    objX7 = new x20(25);
                                    composer2.q(objX7);
                                }
                                Integer numValueOf = Integer.valueOf(i112);
                                ConfigurationTextField configurationTextField2 = configurationTextField;
                                LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE6, configurationTextField2, z19, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource5, false, null, null, modifierB, null, z18, composer2, 196656, 3072, 6, 49207296);
                                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                boolean zA5 = dropdownState7.a();
                                boolean zK4 = composer2.K(dropdownState7);
                                Object objX8 = composer2.x();
                                if (zK4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new ss(dropdownState7, 27);
                                    composer2.q(objX8);
                                }
                                exposedDropdownMenuBoxScope.a(zA5, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState7, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 3072);
                    gapComposer = gapComposerH;
                    function2 = function3;
                    lVColorScheme2 = lVColorScheme3;
                    z9 = z18;
                    str4 = str5;
                    z8 = z10;
                    z7 = z19;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    function2 = function1;
                    z7 = z4;
                    z8 = z5;
                    str4 = str2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                }
            }
            i4 |= 1572864;
            z5 = z2;
            i7 = i3 & 128;
            if (i7 != 0) {
                i4 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                if (gapComposerH.K(str2)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i4 |= i8;
            }
            i9 = i3 & 256;
            if (i9 != 0) {
                if ((i2 & 100663296) == 0) {
                    int i112 = i4;
                    if (gapComposerH.y(function1)) {
                        i10 = 67108864;
                    } else {
                        i10 = 33554432;
                    }
                    i11 = i112 | i10;
                }
                i12 = i3 & 512;
                if (i12 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (gapComposerH.b(z3)) {
                            i13 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i13 = 268435456;
                        }
                        i11 |= i13;
                    }
                    if ((i11 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (gapComposerH.p(i11 & 1, z6)) {
                        if (i15 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i16 != 0) {
                            z4 = true;
                        }
                        if (i5 != 0) {
                            z10 = false;
                        } else {
                            z10 = z5;
                        }
                        if (i7 != 0) {
                            str5 = null;
                        } else {
                            str5 = str2;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i9 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new x20(24);
                                gapComposerH.q(objX4);
                            }
                            function3 = (Function1) objX4;
                        } else {
                            function3 = function1;
                        }
                        if (i12 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        int i113 = i11 >> 9;
                        final boolean z110 = z11;
                        zK = ((((i113 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i113 & 48) == 32) | gapComposerH.K(list) | ((((i113 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i113 & KyberEngine.KyberPolyBytes) == 256);
                        objX = gapComposerH.x();
                        if (zK) {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        } else {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        }
                        dropdownState = (DropdownState) objX;
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = InteractionSourceKt.a();
                            gapComposerH.q(objX2);
                        }
                        final MutableInteractionSource mutableInteractionSource5 = (MutableInteractionSource) objX2;
                        i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                        if (i14 != 1) {
                            gapComposerH.L(593642718);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                            gapComposerH.Z(false);
                        } else {
                            if (i14 == 2) {
                                throw d21.u(gapComposerH, 593640166, false);
                            }
                            gapComposerH.L(593644996);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                            gapComposerH.Z(false);
                        }
                        Modifier modifierE6 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                        boolean zA5 = dropdownState.a();
                        zK2 = gapComposerH.K(dropdownState);
                        objX3 = gapComposerH.x();
                        if (zK2) {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        } else {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        }
                        final boolean z111 = z4;
                        final DropdownState dropdownState7 = dropdownState2;
                        ExposedDropdownMenuKt.a(zA5, (Function1) ((KFunction) objX3), modifierE6, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                int i114;
                                ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                exposedDropdownMenuBoxScope.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                                }
                                int i20 = iIntValue;
                                if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    Object objX5 = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (objX5 == composer$Companion$Empty$2) {
                                        objX5 = new FocusRequester();
                                        composer2.q(objX5);
                                    }
                                    FocusRequester focusRequester = (FocusRequester) objX5;
                                    DropdownState dropdownState8 = dropdownState7;
                                    boolean zK3 = composer2.K(dropdownState8);
                                    Object objX6 = composer2.x();
                                    MutableInteractionSource mutableInteractionSource6 = mutableInteractionSource5;
                                    if (zK3 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource6, dropdownState8, null);
                                        composer2.q(objX6);
                                    }
                                    EffectsKt.e(composer2, mutableInteractionSource6, (Function2) objX6);
                                    Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                    ExposedDropdownMenuAnchorType.f6913b.getClass();
                                    Modifier modifierE7 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                    String str6 = dropdownState8.d;
                                    Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                    Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                    if (dropdownState8.a()) {
                                        composer2.L(-2048059502);
                                        i114 = LVAppDesignKitTheme.g(composer2).G;
                                        composer2.F();
                                    } else {
                                        composer2.L(-2047987024);
                                        i114 = LVAppDesignKitTheme.g(composer2).F;
                                        composer2.F();
                                    }
                                    Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                    Object objX7 = composer2.x();
                                    if (objX7 == composer$Companion$Empty$2) {
                                        objX7 = new x20(25);
                                        composer2.q(objX7);
                                    }
                                    Integer numValueOf = Integer.valueOf(i114);
                                    ConfigurationTextField configurationTextField2 = configurationTextField;
                                    LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE7, configurationTextField2, z111, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource6, false, null, null, modifierB, null, z110, composer2, 196656, 3072, 6, 49207296);
                                    Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                    boolean zA6 = dropdownState8.a();
                                    boolean zK4 = composer2.K(dropdownState8);
                                    Object objX8 = composer2.x();
                                    if (zK4 || objX8 == composer$Companion$Empty$2) {
                                        objX8 = new ss(dropdownState8, 27);
                                        composer2.q(objX8);
                                    }
                                    exposedDropdownMenuBoxScope.a(zA6, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState8, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 3072);
                        gapComposer = gapComposerH;
                        function2 = function3;
                        lVColorScheme2 = lVColorScheme3;
                        z9 = z110;
                        str4 = str5;
                        z8 = z10;
                        z7 = z111;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVColorScheme2 = lVColorScheme;
                        function2 = function1;
                        z7 = z4;
                        z8 = z5;
                        str4 = str2;
                        z9 = z3;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                    }
                }
                i11 |= 805306368;
                if ((i11 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i11 & 1, z6)) {
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        z4 = true;
                    }
                    if (i5 != 0) {
                        z10 = false;
                    } else {
                        z10 = z5;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i9 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new x20(24);
                            gapComposerH.q(objX4);
                        }
                        function3 = (Function1) objX4;
                    } else {
                        function3 = function1;
                    }
                    if (i12 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    int i114 = i11 >> 9;
                    final boolean z112 = z11;
                    zK = ((((i114 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i114 & 48) == 32) | gapComposerH.K(list) | ((((i114 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i114 & KyberEngine.KyberPolyBytes) == 256);
                    objX = gapComposerH.x();
                    if (zK) {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    } else {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    }
                    dropdownState = (DropdownState) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    final MutableInteractionSource mutableInteractionSource6 = (MutableInteractionSource) objX2;
                    i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                    if (i14 != 1) {
                        gapComposerH.L(593642718);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i14 == 2) {
                            throw d21.u(gapComposerH, 593640166, false);
                        }
                        gapComposerH.L(593644996);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierE7 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                    boolean zA6 = dropdownState.a();
                    zK2 = gapComposerH.K(dropdownState);
                    objX3 = gapComposerH.x();
                    if (zK2) {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    } else {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    }
                    final boolean z113 = z4;
                    final DropdownState dropdownState8 = dropdownState2;
                    ExposedDropdownMenuKt.a(zA6, (Function1) ((KFunction) objX3), modifierE7, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            int i115;
                            ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            exposedDropdownMenuBoxScope.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                            }
                            int i20 = iIntValue;
                            if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                Object objX5 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX5 == composer$Companion$Empty$2) {
                                    objX5 = new FocusRequester();
                                    composer2.q(objX5);
                                }
                                FocusRequester focusRequester = (FocusRequester) objX5;
                                DropdownState dropdownState9 = dropdownState8;
                                boolean zK3 = composer2.K(dropdownState9);
                                Object objX6 = composer2.x();
                                MutableInteractionSource mutableInteractionSource7 = mutableInteractionSource6;
                                if (zK3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource7, dropdownState9, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, mutableInteractionSource7, (Function2) objX6);
                                Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                ExposedDropdownMenuAnchorType.f6913b.getClass();
                                Modifier modifierE8 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                String str6 = dropdownState9.d;
                                Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                if (dropdownState9.a()) {
                                    composer2.L(-2048059502);
                                    i115 = LVAppDesignKitTheme.g(composer2).G;
                                    composer2.F();
                                } else {
                                    composer2.L(-2047987024);
                                    i115 = LVAppDesignKitTheme.g(composer2).F;
                                    composer2.F();
                                }
                                Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                Object objX7 = composer2.x();
                                if (objX7 == composer$Companion$Empty$2) {
                                    objX7 = new x20(25);
                                    composer2.q(objX7);
                                }
                                Integer numValueOf = Integer.valueOf(i115);
                                ConfigurationTextField configurationTextField2 = configurationTextField;
                                LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE8, configurationTextField2, z113, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource7, false, null, null, modifierB, null, z112, composer2, 196656, 3072, 6, 49207296);
                                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                boolean zA7 = dropdownState9.a();
                                boolean zK4 = composer2.K(dropdownState9);
                                Object objX8 = composer2.x();
                                if (zK4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new ss(dropdownState9, 27);
                                    composer2.q(objX8);
                                }
                                exposedDropdownMenuBoxScope.a(zA7, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState9, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 3072);
                    gapComposer = gapComposerH;
                    function2 = function3;
                    lVColorScheme2 = lVColorScheme3;
                    z9 = z112;
                    str4 = str5;
                    z8 = z10;
                    z7 = z113;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    function2 = function1;
                    z7 = z4;
                    z8 = z5;
                    str4 = str2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                }
            }
            i4 |= 100663296;
            i11 = i4;
            i12 = i3 & 512;
            if (i12 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (gapComposerH.b(z3)) {
                        i13 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i13 = 268435456;
                    }
                    i11 |= i13;
                }
                if ((i11 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i11 & 1, z6)) {
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        z4 = true;
                    }
                    if (i5 != 0) {
                        z10 = false;
                    } else {
                        z10 = z5;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i9 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new x20(24);
                            gapComposerH.q(objX4);
                        }
                        function3 = (Function1) objX4;
                    } else {
                        function3 = function1;
                    }
                    if (i12 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    int i115 = i11 >> 9;
                    final boolean z114 = z11;
                    zK = ((((i115 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i115 & 48) == 32) | gapComposerH.K(list) | ((((i115 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i115 & KyberEngine.KyberPolyBytes) == 256);
                    objX = gapComposerH.x();
                    if (zK) {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    } else {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    }
                    dropdownState = (DropdownState) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    final MutableInteractionSource mutableInteractionSource7 = (MutableInteractionSource) objX2;
                    i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                    if (i14 != 1) {
                        gapComposerH.L(593642718);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i14 == 2) {
                            throw d21.u(gapComposerH, 593640166, false);
                        }
                        gapComposerH.L(593644996);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierE8 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                    boolean zA7 = dropdownState.a();
                    zK2 = gapComposerH.K(dropdownState);
                    objX3 = gapComposerH.x();
                    if (zK2) {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    } else {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    }
                    final boolean z115 = z4;
                    final DropdownState dropdownState9 = dropdownState2;
                    ExposedDropdownMenuKt.a(zA7, (Function1) ((KFunction) objX3), modifierE8, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            int i116;
                            ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            exposedDropdownMenuBoxScope.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                            }
                            int i20 = iIntValue;
                            if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                                Object objX5 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX5 == composer$Companion$Empty$2) {
                                    objX5 = new FocusRequester();
                                    composer2.q(objX5);
                                }
                                FocusRequester focusRequester = (FocusRequester) objX5;
                                DropdownState dropdownState10 = dropdownState9;
                                boolean zK3 = composer2.K(dropdownState10);
                                Object objX6 = composer2.x();
                                MutableInteractionSource mutableInteractionSource8 = mutableInteractionSource7;
                                if (zK3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource8, dropdownState10, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, mutableInteractionSource8, (Function2) objX6);
                                Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                ExposedDropdownMenuAnchorType.f6913b.getClass();
                                Modifier modifierE9 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                String str6 = dropdownState10.d;
                                Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                if (dropdownState10.a()) {
                                    composer2.L(-2048059502);
                                    i116 = LVAppDesignKitTheme.g(composer2).G;
                                    composer2.F();
                                } else {
                                    composer2.L(-2047987024);
                                    i116 = LVAppDesignKitTheme.g(composer2).F;
                                    composer2.F();
                                }
                                Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                Object objX7 = composer2.x();
                                if (objX7 == composer$Companion$Empty$2) {
                                    objX7 = new x20(25);
                                    composer2.q(objX7);
                                }
                                Integer numValueOf = Integer.valueOf(i116);
                                ConfigurationTextField configurationTextField2 = configurationTextField;
                                LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE9, configurationTextField2, z115, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource8, false, null, null, modifierB, null, z114, composer2, 196656, 3072, 6, 49207296);
                                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                boolean zA8 = dropdownState10.a();
                                boolean zK4 = composer2.K(dropdownState10);
                                Object objX8 = composer2.x();
                                if (zK4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new ss(dropdownState10, 27);
                                    composer2.q(objX8);
                                }
                                exposedDropdownMenuBoxScope.a(zA8, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState10, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 3072);
                    gapComposer = gapComposerH;
                    function2 = function3;
                    lVColorScheme2 = lVColorScheme3;
                    z9 = z114;
                    str4 = str5;
                    z8 = z10;
                    z7 = z115;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    function2 = function1;
                    z7 = z4;
                    z8 = z5;
                    str4 = str2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                }
            }
            i11 |= 805306368;
            if ((i11 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i11 & 1, z6)) {
                if (i15 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i16 != 0) {
                    z4 = true;
                }
                if (i5 != 0) {
                    z10 = false;
                } else {
                    z10 = z5;
                }
                if (i7 != 0) {
                    str5 = null;
                } else {
                    str5 = str2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i9 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new x20(24);
                        gapComposerH.q(objX4);
                    }
                    function3 = (Function1) objX4;
                } else {
                    function3 = function1;
                }
                if (i12 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                int i116 = i11 >> 9;
                final boolean z116 = z11;
                zK = ((((i116 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i116 & 48) == 32) | gapComposerH.K(list) | ((((i116 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i116 & KyberEngine.KyberPolyBytes) == 256);
                objX = gapComposerH.x();
                if (zK) {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                } else {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                }
                dropdownState = (DropdownState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = InteractionSourceKt.a();
                    gapComposerH.q(objX2);
                }
                final MutableInteractionSource mutableInteractionSource8 = (MutableInteractionSource) objX2;
                i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                if (i14 != 1) {
                    gapComposerH.L(593642718);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i14 == 2) {
                        throw d21.u(gapComposerH, 593640166, false);
                    }
                    gapComposerH.L(593644996);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                Modifier modifierE9 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                boolean zA8 = dropdownState.a();
                zK2 = gapComposerH.K(dropdownState);
                objX3 = gapComposerH.x();
                if (zK2) {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                } else {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                }
                final boolean z117 = z4;
                final DropdownState dropdownState10 = dropdownState2;
                ExposedDropdownMenuKt.a(zA8, (Function1) ((KFunction) objX3), modifierE9, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        int i117;
                        ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        exposedDropdownMenuBoxScope.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                        }
                        int i20 = iIntValue;
                        if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            Object objX5 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (objX5 == composer$Companion$Empty$2) {
                                objX5 = new FocusRequester();
                                composer2.q(objX5);
                            }
                            FocusRequester focusRequester = (FocusRequester) objX5;
                            DropdownState dropdownState11 = dropdownState10;
                            boolean zK3 = composer2.K(dropdownState11);
                            Object objX6 = composer2.x();
                            MutableInteractionSource mutableInteractionSource9 = mutableInteractionSource8;
                            if (zK3 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource9, dropdownState11, null);
                                composer2.q(objX6);
                            }
                            EffectsKt.e(composer2, mutableInteractionSource9, (Function2) objX6);
                            Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                            ExposedDropdownMenuAnchorType.f6913b.getClass();
                            Modifier modifierE10 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                            String str6 = dropdownState11.d;
                            Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                            Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                            if (dropdownState11.a()) {
                                composer2.L(-2048059502);
                                i117 = LVAppDesignKitTheme.g(composer2).G;
                                composer2.F();
                            } else {
                                composer2.L(-2047987024);
                                i117 = LVAppDesignKitTheme.g(composer2).F;
                                composer2.F();
                            }
                            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                            Object objX7 = composer2.x();
                            if (objX7 == composer$Companion$Empty$2) {
                                objX7 = new x20(25);
                                composer2.q(objX7);
                            }
                            Integer numValueOf = Integer.valueOf(i117);
                            ConfigurationTextField configurationTextField2 = configurationTextField;
                            LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE10, configurationTextField2, z117, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource9, false, null, null, modifierB, null, z116, composer2, 196656, 3072, 6, 49207296);
                            Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                            boolean zA9 = dropdownState11.a();
                            boolean zK4 = composer2.K(dropdownState11);
                            Object objX8 = composer2.x();
                            if (zK4 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new ss(dropdownState11, 27);
                                composer2.q(objX8);
                            }
                            exposedDropdownMenuBoxScope.a(zA9, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState11, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 3072);
                gapComposer = gapComposerH;
                function2 = function3;
                lVColorScheme2 = lVColorScheme3;
                z9 = z116;
                str4 = str5;
                z8 = z10;
                z7 = z117;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                function2 = function1;
                z7 = z4;
                z8 = z5;
                str4 = str2;
                z9 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        z4 = z;
        i5 = i3 & 64;
        if (i5 != 0) {
            if ((1572864 & i2) == 0) {
                z5 = z2;
                if (gapComposerH.b(z5)) {
                    i6 = 1048576;
                } else {
                    i6 = 524288;
                }
                i4 |= i6;
            }
            i7 = i3 & 128;
            if (i7 != 0) {
                i4 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                if (gapComposerH.K(str2)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i4 |= i8;
            }
            i9 = i3 & 256;
            if (i9 != 0) {
                if ((i2 & 100663296) == 0) {
                    int i117 = i4;
                    if (gapComposerH.y(function1)) {
                        i10 = 67108864;
                    } else {
                        i10 = 33554432;
                    }
                    i11 = i117 | i10;
                }
                i12 = i3 & 512;
                if (i12 != 0) {
                    if ((i2 & 805306368) == 0) {
                        if (gapComposerH.b(z3)) {
                            i13 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i13 = 268435456;
                        }
                        i11 |= i13;
                    }
                    if ((i11 & 306783379) != 306783378) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (gapComposerH.p(i11 & 1, z6)) {
                        if (i15 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i16 != 0) {
                            z4 = true;
                        }
                        if (i5 != 0) {
                            z10 = false;
                        } else {
                            z10 = z5;
                        }
                        if (i7 != 0) {
                            str5 = null;
                        } else {
                            str5 = str2;
                        }
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i9 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new x20(24);
                                gapComposerH.q(objX4);
                            }
                            function3 = (Function1) objX4;
                        } else {
                            function3 = function1;
                        }
                        if (i12 != 0) {
                            z11 = false;
                        } else {
                            z11 = z3;
                        }
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        int i118 = i11 >> 9;
                        final boolean z118 = z11;
                        zK = ((((i118 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i118 & 48) == 32) | gapComposerH.K(list) | ((((i118 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i118 & KyberEngine.KyberPolyBytes) == 256);
                        objX = gapComposerH.x();
                        if (zK) {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        } else {
                            objX = new DropdownState(list, num, z4);
                            gapComposerH.q(objX);
                        }
                        dropdownState = (DropdownState) objX;
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = InteractionSourceKt.a();
                            gapComposerH.q(objX2);
                        }
                        final MutableInteractionSource mutableInteractionSource9 = (MutableInteractionSource) objX2;
                        i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                        if (i14 != 1) {
                            gapComposerH.L(593642718);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                            gapComposerH.Z(false);
                        } else {
                            if (i14 == 2) {
                                throw d21.u(gapComposerH, 593640166, false);
                            }
                            gapComposerH.L(593644996);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                            gapComposerH.Z(false);
                        }
                        Modifier modifierE10 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                        boolean zA9 = dropdownState.a();
                        zK2 = gapComposerH.K(dropdownState);
                        objX3 = gapComposerH.x();
                        if (zK2) {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        } else {
                            dropdownState2 = dropdownState;
                            objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                            gapComposerH.q(objX3);
                        }
                        final boolean z119 = z4;
                        final DropdownState dropdownState11 = dropdownState2;
                        ExposedDropdownMenuKt.a(zA9, (Function1) ((KFunction) objX3), modifierE10, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                int i119;
                                ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Integer) obj3).intValue();
                                exposedDropdownMenuBoxScope.getClass();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                                }
                                int i20 = iIntValue;
                                if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                    Object objX5 = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                    if (objX5 == composer$Companion$Empty$2) {
                                        objX5 = new FocusRequester();
                                        composer2.q(objX5);
                                    }
                                    FocusRequester focusRequester = (FocusRequester) objX5;
                                    DropdownState dropdownState12 = dropdownState11;
                                    boolean zK3 = composer2.K(dropdownState12);
                                    Object objX6 = composer2.x();
                                    MutableInteractionSource mutableInteractionSource10 = mutableInteractionSource9;
                                    if (zK3 || objX6 == composer$Companion$Empty$2) {
                                        objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource10, dropdownState12, null);
                                        composer2.q(objX6);
                                    }
                                    EffectsKt.e(composer2, mutableInteractionSource10, (Function2) objX6);
                                    Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                    ExposedDropdownMenuAnchorType.f6913b.getClass();
                                    Modifier modifierE11 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                    String str6 = dropdownState12.d;
                                    Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                    Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                    if (dropdownState12.a()) {
                                        composer2.L(-2048059502);
                                        i119 = LVAppDesignKitTheme.g(composer2).G;
                                        composer2.F();
                                    } else {
                                        composer2.L(-2047987024);
                                        i119 = LVAppDesignKitTheme.g(composer2).F;
                                        composer2.F();
                                    }
                                    Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                    Object objX7 = composer2.x();
                                    if (objX7 == composer$Companion$Empty$2) {
                                        objX7 = new x20(25);
                                        composer2.q(objX7);
                                    }
                                    Integer numValueOf = Integer.valueOf(i119);
                                    ConfigurationTextField configurationTextField2 = configurationTextField;
                                    LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE11, configurationTextField2, z119, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource10, false, null, null, modifierB, null, z118, composer2, 196656, 3072, 6, 49207296);
                                    Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                    boolean zA10 = dropdownState12.a();
                                    boolean zK4 = composer2.K(dropdownState12);
                                    Object objX8 = composer2.x();
                                    if (zK4 || objX8 == composer$Companion$Empty$2) {
                                        objX8 = new ss(dropdownState12, 27);
                                        composer2.q(objX8);
                                    }
                                    exposedDropdownMenuBoxScope.a(zA10, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState12, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 3072);
                        gapComposer = gapComposerH;
                        function2 = function3;
                        lVColorScheme2 = lVColorScheme3;
                        z9 = z118;
                        str4 = str5;
                        z8 = z10;
                        z7 = z119;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVColorScheme2 = lVColorScheme;
                        function2 = function1;
                        z7 = z4;
                        z8 = z5;
                        str4 = str2;
                        z9 = z3;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                    }
                }
                i11 |= 805306368;
                if ((i11 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i11 & 1, z6)) {
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        z4 = true;
                    }
                    if (i5 != 0) {
                        z10 = false;
                    } else {
                        z10 = z5;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i9 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new x20(24);
                            gapComposerH.q(objX4);
                        }
                        function3 = (Function1) objX4;
                    } else {
                        function3 = function1;
                    }
                    if (i12 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    int i119 = i11 >> 9;
                    final boolean z1110 = z11;
                    zK = ((((i119 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i119 & 48) == 32) | gapComposerH.K(list) | ((((i119 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i119 & KyberEngine.KyberPolyBytes) == 256);
                    objX = gapComposerH.x();
                    if (zK) {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    } else {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    }
                    dropdownState = (DropdownState) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    final MutableInteractionSource mutableInteractionSource10 = (MutableInteractionSource) objX2;
                    i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                    if (i14 != 1) {
                        gapComposerH.L(593642718);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i14 == 2) {
                            throw d21.u(gapComposerH, 593640166, false);
                        }
                        gapComposerH.L(593644996);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierE11 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                    boolean zA10 = dropdownState.a();
                    zK2 = gapComposerH.K(dropdownState);
                    objX3 = gapComposerH.x();
                    if (zK2) {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    } else {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    }
                    final boolean z1111 = z4;
                    final DropdownState dropdownState12 = dropdownState2;
                    ExposedDropdownMenuKt.a(zA10, (Function1) ((KFunction) objX3), modifierE11, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            int i1110;
                            ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            exposedDropdownMenuBoxScope.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                            }
                            int i20 = iIntValue;
                            if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                                Object objX5 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX5 == composer$Companion$Empty$2) {
                                    objX5 = new FocusRequester();
                                    composer2.q(objX5);
                                }
                                FocusRequester focusRequester = (FocusRequester) objX5;
                                DropdownState dropdownState13 = dropdownState12;
                                boolean zK3 = composer2.K(dropdownState13);
                                Object objX6 = composer2.x();
                                MutableInteractionSource mutableInteractionSource11 = mutableInteractionSource10;
                                if (zK3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource11, dropdownState13, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, mutableInteractionSource11, (Function2) objX6);
                                Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                ExposedDropdownMenuAnchorType.f6913b.getClass();
                                Modifier modifierE12 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                String str6 = dropdownState13.d;
                                Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                if (dropdownState13.a()) {
                                    composer2.L(-2048059502);
                                    i1110 = LVAppDesignKitTheme.g(composer2).G;
                                    composer2.F();
                                } else {
                                    composer2.L(-2047987024);
                                    i1110 = LVAppDesignKitTheme.g(composer2).F;
                                    composer2.F();
                                }
                                Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                Object objX7 = composer2.x();
                                if (objX7 == composer$Companion$Empty$2) {
                                    objX7 = new x20(25);
                                    composer2.q(objX7);
                                }
                                Integer numValueOf = Integer.valueOf(i1110);
                                ConfigurationTextField configurationTextField2 = configurationTextField;
                                LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE12, configurationTextField2, z1111, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource11, false, null, null, modifierB, null, z1110, composer2, 196656, 3072, 6, 49207296);
                                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                boolean zA11 = dropdownState13.a();
                                boolean zK4 = composer2.K(dropdownState13);
                                Object objX8 = composer2.x();
                                if (zK4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new ss(dropdownState13, 27);
                                    composer2.q(objX8);
                                }
                                exposedDropdownMenuBoxScope.a(zA11, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState13, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 3072);
                    gapComposer = gapComposerH;
                    function2 = function3;
                    lVColorScheme2 = lVColorScheme3;
                    z9 = z1110;
                    str4 = str5;
                    z8 = z10;
                    z7 = z1111;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    function2 = function1;
                    z7 = z4;
                    z8 = z5;
                    str4 = str2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                }
            }
            i4 |= 100663296;
            i11 = i4;
            i12 = i3 & 512;
            if (i12 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (gapComposerH.b(z3)) {
                        i13 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i13 = 268435456;
                    }
                    i11 |= i13;
                }
                if ((i11 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i11 & 1, z6)) {
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        z4 = true;
                    }
                    if (i5 != 0) {
                        z10 = false;
                    } else {
                        z10 = z5;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i9 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new x20(24);
                            gapComposerH.q(objX4);
                        }
                        function3 = (Function1) objX4;
                    } else {
                        function3 = function1;
                    }
                    if (i12 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    int i1110 = i11 >> 9;
                    final boolean z1112 = z11;
                    zK = ((((i1110 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i1110 & 48) == 32) | gapComposerH.K(list) | ((((i1110 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i1110 & KyberEngine.KyberPolyBytes) == 256);
                    objX = gapComposerH.x();
                    if (zK) {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    } else {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    }
                    dropdownState = (DropdownState) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    final MutableInteractionSource mutableInteractionSource11 = (MutableInteractionSource) objX2;
                    i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                    if (i14 != 1) {
                        gapComposerH.L(593642718);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i14 == 2) {
                            throw d21.u(gapComposerH, 593640166, false);
                        }
                        gapComposerH.L(593644996);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierE12 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                    boolean zA11 = dropdownState.a();
                    zK2 = gapComposerH.K(dropdownState);
                    objX3 = gapComposerH.x();
                    if (zK2) {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    } else {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    }
                    final boolean z1113 = z4;
                    final DropdownState dropdownState13 = dropdownState2;
                    ExposedDropdownMenuKt.a(zA11, (Function1) ((KFunction) objX3), modifierE12, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            int i1111;
                            ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            exposedDropdownMenuBoxScope.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                            }
                            int i20 = iIntValue;
                            if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                Object objX5 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX5 == composer$Companion$Empty$2) {
                                    objX5 = new FocusRequester();
                                    composer2.q(objX5);
                                }
                                FocusRequester focusRequester = (FocusRequester) objX5;
                                DropdownState dropdownState14 = dropdownState13;
                                boolean zK3 = composer2.K(dropdownState14);
                                Object objX6 = composer2.x();
                                MutableInteractionSource mutableInteractionSource12 = mutableInteractionSource11;
                                if (zK3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource12, dropdownState14, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, mutableInteractionSource12, (Function2) objX6);
                                Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                ExposedDropdownMenuAnchorType.f6913b.getClass();
                                Modifier modifierE13 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                String str6 = dropdownState14.d;
                                Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                if (dropdownState14.a()) {
                                    composer2.L(-2048059502);
                                    i1111 = LVAppDesignKitTheme.g(composer2).G;
                                    composer2.F();
                                } else {
                                    composer2.L(-2047987024);
                                    i1111 = LVAppDesignKitTheme.g(composer2).F;
                                    composer2.F();
                                }
                                Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                Object objX7 = composer2.x();
                                if (objX7 == composer$Companion$Empty$2) {
                                    objX7 = new x20(25);
                                    composer2.q(objX7);
                                }
                                Integer numValueOf = Integer.valueOf(i1111);
                                ConfigurationTextField configurationTextField2 = configurationTextField;
                                LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE13, configurationTextField2, z1113, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource12, false, null, null, modifierB, null, z1112, composer2, 196656, 3072, 6, 49207296);
                                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                boolean zA12 = dropdownState14.a();
                                boolean zK4 = composer2.K(dropdownState14);
                                Object objX8 = composer2.x();
                                if (zK4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new ss(dropdownState14, 27);
                                    composer2.q(objX8);
                                }
                                exposedDropdownMenuBoxScope.a(zA12, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState14, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 3072);
                    gapComposer = gapComposerH;
                    function2 = function3;
                    lVColorScheme2 = lVColorScheme3;
                    z9 = z1112;
                    str4 = str5;
                    z8 = z10;
                    z7 = z1113;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    function2 = function1;
                    z7 = z4;
                    z8 = z5;
                    str4 = str2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                }
            }
            i11 |= 805306368;
            if ((i11 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i11 & 1, z6)) {
                if (i15 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i16 != 0) {
                    z4 = true;
                }
                if (i5 != 0) {
                    z10 = false;
                } else {
                    z10 = z5;
                }
                if (i7 != 0) {
                    str5 = null;
                } else {
                    str5 = str2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i9 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new x20(24);
                        gapComposerH.q(objX4);
                    }
                    function3 = (Function1) objX4;
                } else {
                    function3 = function1;
                }
                if (i12 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                int i1111 = i11 >> 9;
                final boolean z1114 = z11;
                zK = ((((i1111 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i1111 & 48) == 32) | gapComposerH.K(list) | ((((i1111 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i1111 & KyberEngine.KyberPolyBytes) == 256);
                objX = gapComposerH.x();
                if (zK) {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                } else {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                }
                dropdownState = (DropdownState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = InteractionSourceKt.a();
                    gapComposerH.q(objX2);
                }
                final MutableInteractionSource mutableInteractionSource12 = (MutableInteractionSource) objX2;
                i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                if (i14 != 1) {
                    gapComposerH.L(593642718);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i14 == 2) {
                        throw d21.u(gapComposerH, 593640166, false);
                    }
                    gapComposerH.L(593644996);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                Modifier modifierE13 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                boolean zA12 = dropdownState.a();
                zK2 = gapComposerH.K(dropdownState);
                objX3 = gapComposerH.x();
                if (zK2) {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                } else {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                }
                final boolean z1115 = z4;
                final DropdownState dropdownState14 = dropdownState2;
                ExposedDropdownMenuKt.a(zA12, (Function1) ((KFunction) objX3), modifierE13, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        int i1112;
                        ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        exposedDropdownMenuBoxScope.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                        }
                        int i20 = iIntValue;
                        if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                            OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                            Object objX5 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (objX5 == composer$Companion$Empty$2) {
                                objX5 = new FocusRequester();
                                composer2.q(objX5);
                            }
                            FocusRequester focusRequester = (FocusRequester) objX5;
                            DropdownState dropdownState15 = dropdownState14;
                            boolean zK3 = composer2.K(dropdownState15);
                            Object objX6 = composer2.x();
                            MutableInteractionSource mutableInteractionSource13 = mutableInteractionSource12;
                            if (zK3 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource13, dropdownState15, null);
                                composer2.q(objX6);
                            }
                            EffectsKt.e(composer2, mutableInteractionSource13, (Function2) objX6);
                            Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                            ExposedDropdownMenuAnchorType.f6913b.getClass();
                            Modifier modifierE14 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                            String str6 = dropdownState15.d;
                            Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                            Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                            if (dropdownState15.a()) {
                                composer2.L(-2048059502);
                                i1112 = LVAppDesignKitTheme.g(composer2).G;
                                composer2.F();
                            } else {
                                composer2.L(-2047987024);
                                i1112 = LVAppDesignKitTheme.g(composer2).F;
                                composer2.F();
                            }
                            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                            Object objX7 = composer2.x();
                            if (objX7 == composer$Companion$Empty$2) {
                                objX7 = new x20(25);
                                composer2.q(objX7);
                            }
                            Integer numValueOf = Integer.valueOf(i1112);
                            ConfigurationTextField configurationTextField2 = configurationTextField;
                            LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE14, configurationTextField2, z1115, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource13, false, null, null, modifierB, null, z1114, composer2, 196656, 3072, 6, 49207296);
                            Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                            boolean zA13 = dropdownState15.a();
                            boolean zK4 = composer2.K(dropdownState15);
                            Object objX8 = composer2.x();
                            if (zK4 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new ss(dropdownState15, 27);
                                composer2.q(objX8);
                            }
                            exposedDropdownMenuBoxScope.a(zA13, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState15, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 3072);
                gapComposer = gapComposerH;
                function2 = function3;
                lVColorScheme2 = lVColorScheme3;
                z9 = z1114;
                str4 = str5;
                z8 = z10;
                z7 = z1115;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                function2 = function1;
                z7 = z4;
                z8 = z5;
                str4 = str2;
                z9 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
            }
        }
        i4 |= 1572864;
        z5 = z2;
        i7 = i3 & 128;
        if (i7 != 0) {
            i4 |= 12582912;
        } else if ((i2 & 12582912) == 0) {
            if (gapComposerH.K(str2)) {
                i8 = 8388608;
            } else {
                i8 = 4194304;
            }
            i4 |= i8;
        }
        i9 = i3 & 256;
        if (i9 != 0) {
            if ((i2 & 100663296) == 0) {
                int i1112 = i4;
                if (gapComposerH.y(function1)) {
                    i10 = 67108864;
                } else {
                    i10 = 33554432;
                }
                i11 = i1112 | i10;
            }
            i12 = i3 & 512;
            if (i12 != 0) {
                if ((i2 & 805306368) == 0) {
                    if (gapComposerH.b(z3)) {
                        i13 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i13 = 268435456;
                    }
                    i11 |= i13;
                }
                if ((i11 & 306783379) != 306783378) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i11 & 1, z6)) {
                    if (i15 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i16 != 0) {
                        z4 = true;
                    }
                    if (i5 != 0) {
                        z10 = false;
                    } else {
                        z10 = z5;
                    }
                    if (i7 != 0) {
                        str5 = null;
                    } else {
                        str5 = str2;
                    }
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i9 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new x20(24);
                            gapComposerH.q(objX4);
                        }
                        function3 = (Function1) objX4;
                    } else {
                        function3 = function1;
                    }
                    if (i12 != 0) {
                        z11 = false;
                    } else {
                        z11 = z3;
                    }
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    int i1113 = i11 >> 9;
                    final boolean z1116 = z11;
                    zK = ((((i1113 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i1113 & 48) == 32) | gapComposerH.K(list) | ((((i1113 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i1113 & KyberEngine.KyberPolyBytes) == 256);
                    objX = gapComposerH.x();
                    if (zK) {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    } else {
                        objX = new DropdownState(list, num, z4);
                        gapComposerH.q(objX);
                    }
                    dropdownState = (DropdownState) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = InteractionSourceKt.a();
                        gapComposerH.q(objX2);
                    }
                    final MutableInteractionSource mutableInteractionSource13 = (MutableInteractionSource) objX2;
                    i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                    if (i14 != 1) {
                        gapComposerH.L(593642718);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i14 == 2) {
                            throw d21.u(gapComposerH, 593640166, false);
                        }
                        gapComposerH.L(593644996);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    Modifier modifierE14 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                    boolean zA13 = dropdownState.a();
                    zK2 = gapComposerH.K(dropdownState);
                    objX3 = gapComposerH.x();
                    if (zK2) {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    } else {
                        dropdownState2 = dropdownState;
                        objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                        gapComposerH.q(objX3);
                    }
                    final boolean z1117 = z4;
                    final DropdownState dropdownState15 = dropdownState2;
                    ExposedDropdownMenuKt.a(zA13, (Function1) ((KFunction) objX3), modifierE14, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            int i1114;
                            ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                            Composer composer2 = (Composer) obj2;
                            int iIntValue = ((Integer) obj3).intValue();
                            exposedDropdownMenuBoxScope.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                            }
                            int i20 = iIntValue;
                            if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                                Object objX5 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (objX5 == composer$Companion$Empty$2) {
                                    objX5 = new FocusRequester();
                                    composer2.q(objX5);
                                }
                                FocusRequester focusRequester = (FocusRequester) objX5;
                                DropdownState dropdownState16 = dropdownState15;
                                boolean zK3 = composer2.K(dropdownState16);
                                Object objX6 = composer2.x();
                                MutableInteractionSource mutableInteractionSource14 = mutableInteractionSource13;
                                if (zK3 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource14, dropdownState16, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, mutableInteractionSource14, (Function2) objX6);
                                Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                                ExposedDropdownMenuAnchorType.f6913b.getClass();
                                Modifier modifierE15 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                                String str6 = dropdownState16.d;
                                Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                                Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                                if (dropdownState16.a()) {
                                    composer2.L(-2048059502);
                                    i1114 = LVAppDesignKitTheme.g(composer2).G;
                                    composer2.F();
                                } else {
                                    composer2.L(-2047987024);
                                    i1114 = LVAppDesignKitTheme.g(composer2).F;
                                    composer2.F();
                                }
                                Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                                Object objX7 = composer2.x();
                                if (objX7 == composer$Companion$Empty$2) {
                                    objX7 = new x20(25);
                                    composer2.q(objX7);
                                }
                                Integer numValueOf = Integer.valueOf(i1114);
                                ConfigurationTextField configurationTextField2 = configurationTextField;
                                LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE15, configurationTextField2, z1117, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource14, false, null, null, modifierB, null, z1116, composer2, 196656, 3072, 6, 49207296);
                                Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                                boolean zA14 = dropdownState16.a();
                                boolean zK4 = composer2.K(dropdownState16);
                                Object objX8 = composer2.x();
                                if (zK4 || objX8 == composer$Companion$Empty$2) {
                                    objX8 = new ss(dropdownState16, 27);
                                    composer2.q(objX8);
                                }
                                exposedDropdownMenuBoxScope.a(zA14, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState16, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 3072);
                    gapComposer = gapComposerH;
                    function2 = function3;
                    lVColorScheme2 = lVColorScheme3;
                    z9 = z1116;
                    str4 = str5;
                    z8 = z10;
                    z7 = z1117;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    function2 = function1;
                    z7 = z4;
                    z8 = z5;
                    str4 = str2;
                    z9 = z3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
                }
            }
            i11 |= 805306368;
            if ((i11 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i11 & 1, z6)) {
                if (i15 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i16 != 0) {
                    z4 = true;
                }
                if (i5 != 0) {
                    z10 = false;
                } else {
                    z10 = z5;
                }
                if (i7 != 0) {
                    str5 = null;
                } else {
                    str5 = str2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i9 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new x20(24);
                        gapComposerH.q(objX4);
                    }
                    function3 = (Function1) objX4;
                } else {
                    function3 = function1;
                }
                if (i12 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                int i1114 = i11 >> 9;
                final boolean z1118 = z11;
                zK = ((((i1114 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i1114 & 48) == 32) | gapComposerH.K(list) | ((((i1114 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i1114 & KyberEngine.KyberPolyBytes) == 256);
                objX = gapComposerH.x();
                if (zK) {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                } else {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                }
                dropdownState = (DropdownState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = InteractionSourceKt.a();
                    gapComposerH.q(objX2);
                }
                final MutableInteractionSource mutableInteractionSource14 = (MutableInteractionSource) objX2;
                i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                if (i14 != 1) {
                    gapComposerH.L(593642718);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i14 == 2) {
                        throw d21.u(gapComposerH, 593640166, false);
                    }
                    gapComposerH.L(593644996);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                Modifier modifierE15 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                boolean zA14 = dropdownState.a();
                zK2 = gapComposerH.K(dropdownState);
                objX3 = gapComposerH.x();
                if (zK2) {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                } else {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                }
                final boolean z1119 = z4;
                final DropdownState dropdownState16 = dropdownState2;
                ExposedDropdownMenuKt.a(zA14, (Function1) ((KFunction) objX3), modifierE15, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        int i1115;
                        ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        exposedDropdownMenuBoxScope.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                        }
                        int i20 = iIntValue;
                        if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                            OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                            Object objX5 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (objX5 == composer$Companion$Empty$2) {
                                objX5 = new FocusRequester();
                                composer2.q(objX5);
                            }
                            FocusRequester focusRequester = (FocusRequester) objX5;
                            DropdownState dropdownState17 = dropdownState16;
                            boolean zK3 = composer2.K(dropdownState17);
                            Object objX6 = composer2.x();
                            MutableInteractionSource mutableInteractionSource15 = mutableInteractionSource14;
                            if (zK3 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource15, dropdownState17, null);
                                composer2.q(objX6);
                            }
                            EffectsKt.e(composer2, mutableInteractionSource15, (Function2) objX6);
                            Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                            ExposedDropdownMenuAnchorType.f6913b.getClass();
                            Modifier modifierE16 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                            String str6 = dropdownState17.d;
                            Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                            Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                            if (dropdownState17.a()) {
                                composer2.L(-2048059502);
                                i1115 = LVAppDesignKitTheme.g(composer2).G;
                                composer2.F();
                            } else {
                                composer2.L(-2047987024);
                                i1115 = LVAppDesignKitTheme.g(composer2).F;
                                composer2.F();
                            }
                            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                            Object objX7 = composer2.x();
                            if (objX7 == composer$Companion$Empty$2) {
                                objX7 = new x20(25);
                                composer2.q(objX7);
                            }
                            Integer numValueOf = Integer.valueOf(i1115);
                            ConfigurationTextField configurationTextField2 = configurationTextField;
                            LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE16, configurationTextField2, z1119, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource15, false, null, null, modifierB, null, z1118, composer2, 196656, 3072, 6, 49207296);
                            Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                            boolean zA15 = dropdownState17.a();
                            boolean zK4 = composer2.K(dropdownState17);
                            Object objX8 = composer2.x();
                            if (zK4 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new ss(dropdownState17, 27);
                                composer2.q(objX8);
                            }
                            exposedDropdownMenuBoxScope.a(zA15, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState17, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 3072);
                gapComposer = gapComposerH;
                function2 = function3;
                lVColorScheme2 = lVColorScheme3;
                z9 = z1118;
                str4 = str5;
                z8 = z10;
                z7 = z1119;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                function2 = function1;
                z7 = z4;
                z8 = z5;
                str4 = str2;
                z9 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
            }
        }
        i4 |= 100663296;
        i11 = i4;
        i12 = i3 & 512;
        if (i12 != 0) {
            if ((i2 & 805306368) == 0) {
                if (gapComposerH.b(z3)) {
                    i13 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i13 = 268435456;
                }
                i11 |= i13;
            }
            if ((i11 & 306783379) != 306783378) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i11 & 1, z6)) {
                if (i15 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i16 != 0) {
                    z4 = true;
                }
                if (i5 != 0) {
                    z10 = false;
                } else {
                    z10 = z5;
                }
                if (i7 != 0) {
                    str5 = null;
                } else {
                    str5 = str2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i9 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new x20(24);
                        gapComposerH.q(objX4);
                    }
                    function3 = (Function1) objX4;
                } else {
                    function3 = function1;
                }
                if (i12 != 0) {
                    z11 = false;
                } else {
                    z11 = z3;
                }
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                int i1115 = i11 >> 9;
                final boolean z11110 = z11;
                zK = ((((i1115 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i1115 & 48) == 32) | gapComposerH.K(list) | ((((i1115 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i1115 & KyberEngine.KyberPolyBytes) == 256);
                objX = gapComposerH.x();
                if (zK) {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                } else {
                    objX = new DropdownState(list, num, z4);
                    gapComposerH.q(objX);
                }
                dropdownState = (DropdownState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = InteractionSourceKt.a();
                    gapComposerH.q(objX2);
                }
                final MutableInteractionSource mutableInteractionSource15 = (MutableInteractionSource) objX2;
                i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
                if (i14 != 1) {
                    gapComposerH.L(593642718);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i14 == 2) {
                        throw d21.u(gapComposerH, 593640166, false);
                    }
                    gapComposerH.L(593644996);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                Modifier modifierE16 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
                boolean zA15 = dropdownState.a();
                zK2 = gapComposerH.K(dropdownState);
                objX3 = gapComposerH.x();
                if (zK2) {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                } else {
                    dropdownState2 = dropdownState;
                    objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                    gapComposerH.q(objX3);
                }
                final boolean z11111 = z4;
                final DropdownState dropdownState17 = dropdownState2;
                ExposedDropdownMenuKt.a(zA15, (Function1) ((KFunction) objX3), modifierE16, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        int i1116;
                        ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        exposedDropdownMenuBoxScope.getClass();
                        if ((iIntValue & 6) == 0) {
                            iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                        }
                        int i20 = iIntValue;
                        if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            Object objX5 = composer2.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                            if (objX5 == composer$Companion$Empty$2) {
                                objX5 = new FocusRequester();
                                composer2.q(objX5);
                            }
                            FocusRequester focusRequester = (FocusRequester) objX5;
                            DropdownState dropdownState18 = dropdownState17;
                            boolean zK3 = composer2.K(dropdownState18);
                            Object objX6 = composer2.x();
                            MutableInteractionSource mutableInteractionSource16 = mutableInteractionSource15;
                            if (zK3 || objX6 == composer$Companion$Empty$2) {
                                objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource16, dropdownState18, null);
                                composer2.q(objX6);
                            }
                            EffectsKt.e(composer2, mutableInteractionSource16, (Function2) objX6);
                            Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                            ExposedDropdownMenuAnchorType.f6913b.getClass();
                            Modifier modifierE17 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                            String str6 = dropdownState18.d;
                            Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                            Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                            if (dropdownState18.a()) {
                                composer2.L(-2048059502);
                                i1116 = LVAppDesignKitTheme.g(composer2).G;
                                composer2.F();
                            } else {
                                composer2.L(-2047987024);
                                i1116 = LVAppDesignKitTheme.g(composer2).F;
                                composer2.F();
                            }
                            Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                            Object objX7 = composer2.x();
                            if (objX7 == composer$Companion$Empty$2) {
                                objX7 = new x20(25);
                                composer2.q(objX7);
                            }
                            Integer numValueOf = Integer.valueOf(i1116);
                            ConfigurationTextField configurationTextField2 = configurationTextField;
                            LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE17, configurationTextField2, z11111, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource16, false, null, null, modifierB, null, z11110, composer2, 196656, 3072, 6, 49207296);
                            Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                            boolean zA16 = dropdownState18.a();
                            boolean zK4 = composer2.K(dropdownState18);
                            Object objX8 = composer2.x();
                            if (zK4 || objX8 == composer$Companion$Empty$2) {
                                objX8 = new ss(dropdownState18, 27);
                                composer2.q(objX8);
                            }
                            exposedDropdownMenuBoxScope.a(zA16, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState18, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 3072);
                gapComposer = gapComposerH;
                function2 = function3;
                lVColorScheme2 = lVColorScheme3;
                z9 = z11110;
                str4 = str5;
                z8 = z10;
                z7 = z11111;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                function2 = function1;
                z7 = z4;
                z8 = z5;
                str4 = str2;
                z9 = z3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
            }
        }
        i11 |= 805306368;
        if ((i11 & 306783379) != 306783378) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (gapComposerH.p(i11 & 1, z6)) {
            if (i15 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i16 != 0) {
                z4 = true;
            }
            if (i5 != 0) {
                z10 = false;
            } else {
                z10 = z5;
            }
            if (i7 != 0) {
                str5 = null;
            } else {
                str5 = str2;
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i9 != 0) {
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new x20(24);
                    gapComposerH.q(objX4);
                }
                function3 = (Function1) objX4;
            } else {
                function3 = function1;
            }
            if (i12 != 0) {
                z11 = false;
            } else {
                z11 = z3;
            }
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            int i1116 = i11 >> 9;
            final boolean z11112 = z11;
            zK = ((((i1116 & 112) ^ 48) <= 32 && gapComposerH.K(num)) || (i1116 & 48) == 32) | gapComposerH.K(list) | ((((i1116 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 && gapComposerH.b(z4)) || (i1116 & KyberEngine.KyberPolyBytes) == 256);
            objX = gapComposerH.x();
            if (zK) {
                objX = new DropdownState(list, num, z4);
                gapComposerH.q(objX);
            } else {
                objX = new DropdownState(list, num, z4);
                gapComposerH.q(objX);
            }
            dropdownState = (DropdownState) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = InteractionSourceKt.a();
                gapComposerH.q(objX2);
            }
            final MutableInteractionSource mutableInteractionSource16 = (MutableInteractionSource) objX2;
            i14 = WhenMappings.f48474a[lVColorScheme3.ordinal()];
            if (i14 != 1) {
                gapComposerH.L(593642718);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                gapComposerH.Z(false);
            } else {
                if (i14 == 2) {
                    throw d21.u(gapComposerH, 593640166, false);
                }
                gapComposerH.L(593644996);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                gapComposerH.Z(false);
            }
            Modifier modifierE17 = ModifierExtKt.e(modifier2, "dropdown_Section_view");
            boolean zA16 = dropdownState.a();
            zK2 = gapComposerH.K(dropdownState);
            objX3 = gapComposerH.x();
            if (zK2) {
                dropdownState2 = dropdownState;
                objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                gapComposerH.q(objX3);
            } else {
                dropdownState2 = dropdownState;
                objX3 = new LVDropdownKt$LVDropdown$5$1(1, dropdownState2, DropdownState.class, "onExpandedChange", "onExpandedChange(Z)V", 0);
                gapComposerH.q(objX3);
            }
            final boolean z11113 = z4;
            final DropdownState dropdownState18 = dropdownState2;
            ExposedDropdownMenuKt.a(zA16, (Function1) ((KFunction) objX3), modifierE17, ComposableLambdaKt.b(-1184857523, new Function3() { // from class: com.vuitton.android.designkit.ui.theme.atoms.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    int i1117;
                    ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope = (ExposedDropdownMenuBoxScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    exposedDropdownMenuBoxScope.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= (iIntValue & 8) == 0 ? composer2.K(exposedDropdownMenuBoxScope) : composer2.y(exposedDropdownMenuBoxScope) ? 4 : 2;
                    }
                    int i20 = iIntValue;
                    if (composer2.p(i20 & 1, (i20 & 19) != 18)) {
                        OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX5 == composer$Companion$Empty$2) {
                            objX5 = new FocusRequester();
                            composer2.q(objX5);
                        }
                        FocusRequester focusRequester = (FocusRequester) objX5;
                        DropdownState dropdownState19 = dropdownState18;
                        boolean zK3 = composer2.K(dropdownState19);
                        Object objX6 = composer2.x();
                        MutableInteractionSource mutableInteractionSource17 = mutableInteractionSource16;
                        if (zK3 || objX6 == composer$Companion$Empty$2) {
                            objX6 = new LVDropdownKt$LVDropdown$6$1$1(mutableInteractionSource17, dropdownState19, null);
                            composer2.q(objX6);
                        }
                        EffectsKt.e(composer2, mutableInteractionSource17, (Function2) objX6);
                        Modifier modifierA = FocusRequesterModifierKt.a(ModifierExtKt.e(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_value_text"), focusRequester);
                        ExposedDropdownMenuAnchorType.f6913b.getClass();
                        Modifier modifierE18 = exposedDropdownMenuBoxScope.e(modifierA, ExposedDropdownMenuAnchorType.f6914c);
                        String str6 = dropdownState19.d;
                        Modifier modifierG = n00.g("LVDropdown$lambda$6", "dropdown_title_text");
                        Modifier modifierG2 = n00.g("LVDropdown$lambda$6", "dropdown_supporting_text");
                        if (dropdownState19.a()) {
                            composer2.L(-2048059502);
                            i1117 = LVAppDesignKitTheme.g(composer2).G;
                            composer2.F();
                        } else {
                            composer2.L(-2047987024);
                            i1117 = LVAppDesignKitTheme.g(composer2).F;
                            composer2.F();
                        }
                        Modifier modifierB = ModifierExtKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), "dropdown_arrow_button", null, 6);
                        Object objX7 = composer2.x();
                        if (objX7 == composer$Companion$Empty$2) {
                            objX7 = new x20(25);
                            composer2.q(objX7);
                        }
                        Integer numValueOf = Integer.valueOf(i1117);
                        ConfigurationTextField configurationTextField2 = configurationTextField;
                        LVTextFieldInternalKt.b(str6, (Function1) objX7, modifierE18, configurationTextField2, z11113, true, str3, modifierG, z10, str5, modifierG2, null, null, true, 0, 0, numValueOf, null, null, null, mutableInteractionSource17, false, null, null, modifierB, null, z11112, composer2, 196656, 3072, 6, 49207296);
                        Modifier modifierB2 = BackgroundKt.b(new DTFunctionNameModifier("LVDropdown$lambda$6"), configurationTextField2.t, RectangleShapeKt.f8913a);
                        boolean zA17 = dropdownState19.a();
                        boolean zK4 = composer2.K(dropdownState19);
                        Object objX8 = composer2.x();
                        if (zK4 || objX8 == composer$Companion$Empty$2) {
                            objX8 = new ss(dropdownState19, 27);
                            composer2.q(objX8);
                        }
                        exposedDropdownMenuBoxScope.a(zA17, (Function0) objX8, modifierB2, null, false, null, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(857958795, new r(list, dropdownState19, function3, configurationTextField2, 16), composer2), composer2, 0, 6 | ((i20 << 3) & 112));
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 3072);
            gapComposer = gapComposerH;
            function2 = function3;
            lVColorScheme2 = lVColorScheme3;
            z9 = z11112;
            str4 = str5;
            z8 = z10;
            z7 = z11113;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
            function2 = function1;
            z7 = z4;
            z8 = z5;
            str4 = str2;
            z9 = z3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u50(modifier2, lVColorScheme2, str, list, num, z7, z8, str4, function2, z9, i2, i3);
        }
    }
}
