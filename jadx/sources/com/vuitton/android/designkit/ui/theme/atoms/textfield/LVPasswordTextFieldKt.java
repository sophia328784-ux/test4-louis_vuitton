package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVPasswordTextFieldKt;
import defpackage.d21;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KFunction;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "value", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVPasswordTextFieldKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48617a;

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
            f48617a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012e  */
    /* JADX WARN: Code duplicated, block: B:102:0x0134  */
    /* JADX WARN: Code duplicated, block: B:105:0x013d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0144  */
    /* JADX WARN: Code duplicated, block: B:114:0x015e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0167 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x0169  */
    /* JADX WARN: Code duplicated, block: B:119:0x016c  */
    /* JADX WARN: Code duplicated, block: B:121:0x0170  */
    /* JADX WARN: Code duplicated, block: B:123:0x0173  */
    /* JADX WARN: Code duplicated, block: B:124:0x017d  */
    /* JADX WARN: Code duplicated, block: B:127:0x0187  */
    /* JADX WARN: Code duplicated, block: B:130:0x0196  */
    /* JADX WARN: Code duplicated, block: B:131:0x019e  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:134:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:137:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:149:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:152:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:154:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:156:0x0202  */
    /* JADX WARN: Code duplicated, block: B:158:0x020b  */
    /* JADX WARN: Code duplicated, block: B:160:0x0254  */
    /* JADX WARN: Code duplicated, block: B:163:0x026a  */
    /* JADX WARN: Code duplicated, block: B:165:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x009e  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:64:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:86:0x0101  */
    /* JADX WARN: Code duplicated, block: B:87:0x0104  */
    /* JADX WARN: Code duplicated, block: B:91:0x0111  */
    /* JADX WARN: Code duplicated, block: B:92:0x0114  */
    /* JADX WARN: Code duplicated, block: B:94:0x011c  */
    /* JADX WARN: Code duplicated, block: B:95:0x011f  */
    /* JADX WARN: Code duplicated, block: B:99:0x012b  */
    public static final void a(final String str, final Function1 function1, Modifier modifier, LVColorScheme lVColorScheme, boolean z, final String str2, final boolean z2, final String str3, final int i2, KeyboardActions keyboardActions, MutableInteractionSource mutableInteractionSource, ClearButtonMode clearButtonMode, Modifier modifier2, boolean z3, Composer composer, final int i3, final int i4, final int i5) {
        int i6;
        Function1 function2;
        boolean z4;
        int i7;
        final Modifier modifier3;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z5;
        LVColorScheme lVColorScheme2;
        final KeyboardActions keyboardActions2;
        final ClearButtonMode clearButtonMode2;
        final Modifier modifier4;
        final boolean z6;
        final boolean z7;
        final MutableInteractionSource mutableInteractionSource2;
        RecomposeScopeImpl recomposeScopeImplB0;
        final KeyboardActions keyboardActions3;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final Modifier dTFunctionNameModifier;
        final boolean z8;
        Object objX2;
        MutableState mutableState;
        boolean z9;
        Object objX3;
        int i19;
        ConfigurationTextField configurationTextField;
        int i20;
        int i21;
        int i22;
        int i23;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVPasswordTextField-w8Xk4iI");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(505675149);
        if ((i3 & 6) == 0) {
            i6 = (gapComposerH.K(str) ? 4 : 2) | i3;
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            function2 = function1;
            i6 |= gapComposerH.y(function2) ? 32 : 16;
        } else {
            function2 = function1;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        int i24 = i5 & 8;
        if (i24 != 0) {
            i6 |= 3072;
        } else if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        int i25 = i5 & 16;
        if (i25 == 0) {
            if ((i3 & 24576) == 0) {
                z4 = z;
                i6 |= gapComposerH.b(z4) ? 16384 : 8192;
            }
            i7 = i6 | ImageMetadata.EDGE_MODE;
            if ((i3 & 1572864) == 0) {
                if (gapComposerH.K(str2)) {
                    i23 = 1048576;
                } else {
                    i23 = 524288;
                }
                i7 |= i23;
            }
            if ((i3 & 12582912) == 0) {
                if (gapComposerH.b(z2)) {
                    i22 = 8388608;
                } else {
                    i22 = 4194304;
                }
                i7 |= i22;
            }
            if ((i3 & 100663296) == 0) {
                if (gapComposerH.K(str3)) {
                    i21 = 67108864;
                } else {
                    i21 = 33554432;
                }
                i7 |= i21;
            }
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.d(i2)) {
                    i20 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i20 = 268435456;
                }
                i7 |= i20;
            }
            modifier3 = modifierE;
            i8 = i5 & 1024;
            if (i8 != 0) {
                i10 = i4 | 6;
            } else {
                if (gapComposerH.K(keyboardActions)) {
                    i9 = 4;
                } else {
                    i9 = 2;
                }
                i10 = i4 | i9;
            }
            i11 = i10;
            i12 = i11 | 432;
            i13 = i5 & 8192;
            if (i13 != 0) {
                i15 = i11 | 3504;
            } else {
                if (gapComposerH.K(modifier2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i15 = i12 | i14;
            }
            i16 = i5 & 16384;
            if (i16 != 0) {
                i18 = i15 | 24576;
            } else {
                i17 = i15;
                if ((i4 & 24576) == 0) {
                    i18 = i17 | (gapComposerH.b(z3) ? 16384 : 8192);
                } else {
                    i18 = i17;
                }
            }
            if ((i7 & 306783379) == 306783378 || (i18 & 9363) != 9362) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i7 & 1, z5)) {
                if (i24 != 0) {
                    lVColorScheme2 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme2 = lVColorScheme;
                }
                if (i25 != 0) {
                    z4 = true;
                }
                if (i8 != 0) {
                    KeyboardActions.g.getClass();
                    keyboardActions3 = KeyboardActions.f5912h;
                } else {
                    keyboardActions3 = keyboardActions;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                final MutableInteractionSource mutableInteractionSource3 = (MutableInteractionSource) objX;
                final ClearButtonMode clearButtonMode3 = ClearButtonMode.WhileEditing;
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVPasswordTextField-w8Xk4iI");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i16 != 0) {
                    z8 = false;
                } else {
                    z8 = z3;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                int i26 = i7 >> 12;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX2);
                }
                mutableState = (MutableState) objX2;
                z9 = (((i26 & 14) ^ 6) <= 4 && gapComposerH.b(z4)) || (i26 & 6) == 4;
                objX3 = gapComposerH.x();
                if (z9 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new PasswordTextFieldState(mutableState);
                    gapComposerH.q(objX3);
                }
                final PasswordTextFieldState passwordTextFieldState = (PasswordTextFieldState) objX3;
                i19 = WhenMappings.f48617a[lVColorScheme2.ordinal()];
                if (i19 != 1) {
                    gapComposerH.L(622541588);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i19 == 2) {
                        throw d21.u(gapComposerH, 622539036, false);
                    }
                    gapComposerH.L(622543866);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                final ConfigurationTextField configurationTextField2 = configurationTextField;
                final Function1 function3 = function2;
                final boolean z10 = z4;
                CompositionLocalKt.a(CompositionLocalsKt.s.c(BlockClipBoard.f48614a), ComposableLambdaKt.b(-889302451, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.atoms.textfield.a
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i27;
                        int i28;
                        int i29;
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        Modifier modifierE2 = modifier3;
                        if (modifierE2 != null) {
                            modifierE2 = defpackage.a.e(modifierE2, "LVPasswordTextField_w8Xk4iI$lambda$1");
                        }
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            KeyboardType.f10809b.getClass();
                            KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, KeyboardType.f10814i, i2, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null);
                            PasswordTextFieldState passwordTextFieldState2 = passwordTextFieldState;
                            passwordTextFieldState2.getClass();
                            MutableState mutableState2 = passwordTextFieldState2.f48637a;
                            VisualTransformation passwordVisualTransformation = ((Boolean) mutableState2.getF10755b()).booleanValue() ? new PasswordVisualTransformation((char) 0, 1, null) : VisualTransformation.Companion.f10865a;
                            if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                                composer2.L(-156018011);
                                i27 = LVAppDesignKitTheme.g(composer2).L;
                                composer2.F();
                            } else {
                                composer2.L(-155955515);
                                i27 = LVAppDesignKitTheme.g(composer2).M;
                                composer2.F();
                            }
                            if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                                i28 = 506641402;
                                i29 = R.string.alt_show_password;
                            } else {
                                i28 = 506716794;
                                i29 = R.string.alt_hide_password;
                            }
                            String strK = o60.k(composer2, i28, i29, composer2);
                            boolean zK = composer2.K(passwordTextFieldState2);
                            Object objX4 = composer2.x();
                            if (zK || objX4 == Composer.Companion.f7939a) {
                                LVPasswordTextFieldKt$LVPasswordTextField$2$1$1 lVPasswordTextFieldKt$LVPasswordTextField$2$1$1 = new LVPasswordTextFieldKt$LVPasswordTextField$2$1$1(0, passwordTextFieldState2, PasswordTextFieldState.class, "togglePasswordVisibility", "togglePasswordVisibility()V", 0);
                                composer2.q(lVPasswordTextFieldKt$LVPasswordTextField$2$1$1);
                                objX4 = lVPasswordTextFieldKt$LVPasswordTextField$2$1$1;
                            }
                            LVTextFieldInternalKt.b(str, function3, modifierE2, configurationTextField2, z10, false, str2, null, z2, str3, null, keyboardOptions, keyboardActions3, true, 0, 0, Integer.valueOf(i27), strK, (Function0) ((KFunction) objX4), passwordVisualTransformation, mutableInteractionSource3, false, null, clearButtonMode3, dTFunctionNameModifier, null, z8, composer2, 0, 3072, 0, 39896192);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 56);
                z7 = z10;
                keyboardActions2 = keyboardActions3;
                mutableInteractionSource2 = mutableInteractionSource3;
                clearButtonMode2 = clearButtonMode3;
                modifier4 = dTFunctionNameModifier;
                z6 = z8;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                keyboardActions2 = keyboardActions;
                clearButtonMode2 = clearButtonMode;
                modifier4 = modifier2;
                z6 = z3;
                z7 = z4;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final LVColorScheme lVColorScheme3 = lVColorScheme2;
                recomposeScopeImplB0.d = new Function2() { // from class: y60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i4);
                        LVPasswordTextFieldKt.a(str, function1, modifier3, lVColorScheme3, z7, str2, z2, str3, i2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, modifier4, z6, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i6 |= 24576;
        z4 = z;
        i7 = i6 | ImageMetadata.EDGE_MODE;
        if ((i3 & 1572864) == 0) {
            if (gapComposerH.K(str2)) {
                i23 = 1048576;
            } else {
                i23 = 524288;
            }
            i7 |= i23;
        }
        if ((i3 & 12582912) == 0) {
            if (gapComposerH.b(z2)) {
                i22 = 8388608;
            } else {
                i22 = 4194304;
            }
            i7 |= i22;
        }
        if ((i3 & 100663296) == 0) {
            if (gapComposerH.K(str3)) {
                i21 = 67108864;
            } else {
                i21 = 33554432;
            }
            i7 |= i21;
        }
        if ((i3 & 805306368) == 0) {
            if (gapComposerH.d(i2)) {
                i20 = PKIFailureInfo.duplicateCertReq;
            } else {
                i20 = 268435456;
            }
            i7 |= i20;
        }
        modifier3 = modifierE;
        i8 = i5 & 1024;
        if (i8 != 0) {
            i10 = i4 | 6;
        } else {
            if (gapComposerH.K(keyboardActions)) {
                i9 = 4;
            } else {
                i9 = 2;
            }
            i10 = i4 | i9;
        }
        i11 = i10;
        i12 = i11 | 432;
        i13 = i5 & 8192;
        if (i13 != 0) {
            i15 = i11 | 3504;
        } else {
            if (gapComposerH.K(modifier2)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i15 = i12 | i14;
        }
        i16 = i5 & 16384;
        if (i16 != 0) {
            i18 = i15 | 24576;
        } else {
            i17 = i15;
            if ((i4 & 24576) == 0) {
                i18 = i17 | (gapComposerH.b(z3) ? 16384 : 8192);
            } else {
                i18 = i17;
            }
        }
        if ((i7 & 306783379) == 306783378) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (gapComposerH.p(i7 & 1, z5)) {
            if (i24 != 0) {
                lVColorScheme2 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme2 = lVColorScheme;
            }
            if (i25 != 0) {
                z4 = true;
            }
            if (i8 != 0) {
                KeyboardActions.g.getClass();
                keyboardActions3 = KeyboardActions.f5912h;
            } else {
                keyboardActions3 = keyboardActions;
            }
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            final MutableInteractionSource mutableInteractionSource4 = (MutableInteractionSource) objX;
            final ClearButtonMode clearButtonMode4 = ClearButtonMode.WhileEditing;
            if (i13 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVPasswordTextField-w8Xk4iI");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i16 != 0) {
                z8 = false;
            } else {
                z8 = z3;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int i27 = i7 >> 12;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX2);
            }
            mutableState = (MutableState) objX2;
            if (((i27 & 14) ^ 6) <= 4) {
            }
            objX3 = gapComposerH.x();
            if (z9) {
                objX3 = new PasswordTextFieldState(mutableState);
                gapComposerH.q(objX3);
            } else {
                objX3 = new PasswordTextFieldState(mutableState);
                gapComposerH.q(objX3);
            }
            final PasswordTextFieldState passwordTextFieldState2 = (PasswordTextFieldState) objX3;
            i19 = WhenMappings.f48617a[lVColorScheme2.ordinal()];
            if (i19 != 1) {
                gapComposerH.L(622541588);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                gapComposerH.Z(false);
            } else {
                if (i19 == 2) {
                    throw d21.u(gapComposerH, 622539036, false);
                }
                gapComposerH.L(622543866);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                gapComposerH.Z(false);
            }
            final ConfigurationTextField configurationTextField3 = configurationTextField;
            final Function1 function4 = function2;
            final boolean z11 = z4;
            CompositionLocalKt.a(CompositionLocalsKt.s.c(BlockClipBoard.f48614a), ComposableLambdaKt.b(-889302451, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.atoms.textfield.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i28;
                    int i29;
                    int i210;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifierE2 = modifier3;
                    if (modifierE2 != null) {
                        modifierE2 = defpackage.a.e(modifierE2, "LVPasswordTextField_w8Xk4iI$lambda$1");
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        KeyboardType.f10809b.getClass();
                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, KeyboardType.f10814i, i2, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (DefaultConstructorMarker) null);
                        PasswordTextFieldState passwordTextFieldState3 = passwordTextFieldState2;
                        passwordTextFieldState3.getClass();
                        MutableState mutableState2 = passwordTextFieldState3.f48637a;
                        VisualTransformation passwordVisualTransformation = ((Boolean) mutableState2.getF10755b()).booleanValue() ? new PasswordVisualTransformation((char) 0, 1, null) : VisualTransformation.Companion.f10865a;
                        if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                            composer2.L(-156018011);
                            i28 = LVAppDesignKitTheme.g(composer2).L;
                            composer2.F();
                        } else {
                            composer2.L(-155955515);
                            i28 = LVAppDesignKitTheme.g(composer2).M;
                            composer2.F();
                        }
                        if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                            i29 = 506641402;
                            i210 = R.string.alt_show_password;
                        } else {
                            i29 = 506716794;
                            i210 = R.string.alt_hide_password;
                        }
                        String strK = o60.k(composer2, i29, i210, composer2);
                        boolean zK = composer2.K(passwordTextFieldState3);
                        Object objX4 = composer2.x();
                        if (zK || objX4 == Composer.Companion.f7939a) {
                            LVPasswordTextFieldKt$LVPasswordTextField$2$1$1 lVPasswordTextFieldKt$LVPasswordTextField$2$1$1 = new LVPasswordTextFieldKt$LVPasswordTextField$2$1$1(0, passwordTextFieldState3, PasswordTextFieldState.class, "togglePasswordVisibility", "togglePasswordVisibility()V", 0);
                            composer2.q(lVPasswordTextFieldKt$LVPasswordTextField$2$1$1);
                            objX4 = lVPasswordTextFieldKt$LVPasswordTextField$2$1$1;
                        }
                        LVTextFieldInternalKt.b(str, function4, modifierE2, configurationTextField3, z11, false, str2, null, z2, str3, null, keyboardOptions, keyboardActions3, true, 0, 0, Integer.valueOf(i28), strK, (Function0) ((KFunction) objX4), passwordVisualTransformation, mutableInteractionSource4, false, null, clearButtonMode4, dTFunctionNameModifier, null, z8, composer2, 0, 3072, 0, 39896192);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
            z7 = z11;
            keyboardActions2 = keyboardActions3;
            mutableInteractionSource2 = mutableInteractionSource4;
            clearButtonMode2 = clearButtonMode4;
            modifier4 = dTFunctionNameModifier;
            z6 = z8;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            keyboardActions2 = keyboardActions;
            clearButtonMode2 = clearButtonMode;
            modifier4 = modifier2;
            z6 = z3;
            z7 = z4;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final LVColorScheme lVColorScheme4 = lVColorScheme2;
            recomposeScopeImplB0.d = new Function2() { // from class: y60
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i4);
                    LVPasswordTextFieldKt.a(str, function1, modifier3, lVColorScheme4, z7, str2, z2, str3, i2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, modifier4, z6, (Composer) obj, iA, iA2, i5);
                    return Unit.f71739a;
                }
            };
        }
    }
}
