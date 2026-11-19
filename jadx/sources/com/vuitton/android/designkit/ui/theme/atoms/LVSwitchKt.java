package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SwitchColors;
import androidx.compose.material3.SwitchDefaults;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSwitch;
import defpackage.c70;
import defpackage.d21;
import defpackage.d70;
import defpackage.f10;
import defpackage.k60;
import defpackage.l00;
import defpackage.n60;
import defpackage.oh;
import defpackage.pp;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/BiasAlignment;", "alignment", "", "bias", "", "isChecked", "Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;", "state", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSwitchKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48506a = new StaticProvidableCompositionLocal(new c70(8));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48508b;

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
            f48507a = iArr;
            int[] iArr2 = new int[LVSwitchLegalState.values().length];
            try {
                iArr2[LVSwitchLegalState.ACCEPTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LVSwitchLegalState.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[LVSwitchLegalState.BLANK.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f48508b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x0057  */
    /* JADX WARN: Code duplicated, block: B:36:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0061  */
    /* JADX WARN: Code duplicated, block: B:39:0x0065 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x0069  */
    /* JADX WARN: Code duplicated, block: B:44:0x0073  */
    /* JADX WARN: Code duplicated, block: B:45:0x0076  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:57:0x0095  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:67:0x00af  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:77:0x0106  */
    /* JADX WARN: Code duplicated, block: B:80:0x0113  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, boolean z, boolean z2, LVColorScheme lVColorScheme, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        int i5;
        int iOrdinal;
        int i6;
        boolean z4;
        LVColorScheme lVColorScheme2;
        Modifier modifier2;
        boolean z5;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z6;
        LVColorScheme lVColorScheme3;
        int i7;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        ConfigurationSwitch configurationSwitch;
        int i8;
        int i9;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVSwitch");
        }
        GapComposer gapComposerH = composer.h(-400700832);
        int i10 = i3 & 1;
        if (i10 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i11 = i3 & 2;
        if (i11 == 0) {
            if ((i2 & 48) == 0) {
                z3 = z;
                i4 |= gapComposerH.b(z3) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.b(z2)) {
                    i9 = 256;
                } else {
                    i9 = 128;
                }
                i4 |= i9;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i2 & 24576) == 0) {
                if (gapComposerH.y(function1)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((i4 & 9363) != 9362) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i4 & 1, z4)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVSwitch");
                }
                if (i11 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i5 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                i7 = WhenMappings.f48507a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48506a;
                if (i7 != 1) {
                    gapComposerH.L(1473567879);
                    configurationSwitch = ((LVSwitches) gapComposerH.k(staticProvidableCompositionLocal)).f48509a;
                    gapComposerH.Z(false);
                } else {
                    if (i7 == 2) {
                        throw d21.u(gapComposerH, 1473565387, false);
                    }
                    gapComposerH.L(1473570093);
                    configurationSwitch = ((LVSwitches) gapComposerH.k(staticProvidableCompositionLocal)).f48510b;
                    gapComposerH.Z(false);
                }
                int i12 = i4 << 3;
                Modifier modifier3 = dTFunctionNameModifier;
                b(modifier3, configurationSwitch, z6, z2, function1, gapComposerH, (i4 & 14) | (i12 & 896) | (i12 & 7168) | (57344 & i4));
                lVColorScheme2 = lVColorScheme3;
                modifier2 = modifier3;
                z5 = z6;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                modifier2 = dTFunctionNameModifier;
                z5 = z3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new d70(modifier2, z5, z2, lVColorScheme2, function1, i2, i3, 1);
            }
        }
        i4 |= 48;
        z3 = z;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.b(z2)) {
                i9 = 256;
            } else {
                i9 = 128;
            }
            i4 |= i9;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i4 |= i6;
        }
        if ((i2 & 24576) == 0) {
            if (gapComposerH.y(function1)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i4 |= i8;
        }
        if ((i4 & 9363) != 9362) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i4 & 1, z4)) {
            if (i10 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVSwitch");
            }
            if (i11 != 0) {
                z6 = true;
            } else {
                z6 = z3;
            }
            if (i5 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            i7 = WhenMappings.f48507a[lVColorScheme3.ordinal()];
            staticProvidableCompositionLocal = f48506a;
            if (i7 != 1) {
                gapComposerH.L(1473567879);
                configurationSwitch = ((LVSwitches) gapComposerH.k(staticProvidableCompositionLocal)).f48509a;
                gapComposerH.Z(false);
            } else {
                if (i7 == 2) {
                    throw d21.u(gapComposerH, 1473565387, false);
                }
                gapComposerH.L(1473570093);
                configurationSwitch = ((LVSwitches) gapComposerH.k(staticProvidableCompositionLocal)).f48510b;
                gapComposerH.Z(false);
            }
            int i13 = i4 << 3;
            Modifier modifier4 = dTFunctionNameModifier;
            b(modifier4, configurationSwitch, z6, z2, function1, gapComposerH, (i4 & 14) | (i13 & 896) | (i13 & 7168) | (57344 & i4));
            lVColorScheme2 = lVColorScheme3;
            modifier2 = modifier4;
            z5 = z6;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            modifier2 = dTFunctionNameModifier;
            z5 = z3;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new d70(modifier2, z5, z2, lVColorScheme2, function1, i2, i3, 1);
        }
    }

    public static final void b(Modifier modifier, ConfigurationSwitch configurationSwitch, boolean z, boolean z2, Function1 function1, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSwitchInternal");
        }
        Modifier modifier2 = modifierE;
        configurationSwitch.getClass();
        GapComposer gapComposerH = composer.h(1508887697);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(configurationSwitch) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierP = SizeKt.p(modifier2, 52.0f, 32.0f);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new n60(9);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierP, false, (Function1) objX);
            int i4 = SwitchDefaults.f7357a;
            long j2 = configurationSwitch.f48583a;
            long j3 = configurationSwitch.f48584b;
            Color.f8866b.getClass();
            long j4 = Color.f8870h;
            long j5 = configurationSwitch.f48585c;
            long j6 = configurationSwitch.d;
            int i5 = i3;
            long j7 = configurationSwitch.f48586e;
            long j8 = configurationSwitch.f48587f;
            long j9 = configurationSwitch.g;
            SwitchColors switchColors = new SwitchColors(j2, j3, j4, ColorSchemeKt.d(SwitchTokens.q, gapComposerH), j5, j4, j6, ColorSchemeKt.d(SwitchTokens.A, gapComposerH), j7, j8, j9, ColorKt.f(Color.b(SwitchTokens.d, ColorSchemeKt.d(SwitchTokens.f7879c, gapComposerH)), MaterialTheme.a(gapComposerH).p), j7, j8, j9, ColorKt.f(Color.b(SwitchTokens.f7884j, ColorSchemeKt.d(SwitchTokens.f7883i, gapComposerH)), MaterialTheme.a(gapComposerH).p), null);
            boolean zY = gapComposerH.y(hapticFeedback) | ((i5 & 57344) == 16384);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new k60(hapticFeedback, function1, 4);
                gapComposerH.q(objX2);
            }
            gapComposerH = gapComposerH;
            SwitchKt.a(z2, (Function1) objX2, modifierB, z, switchColors, gapComposerH, ((i5 >> 9) & 14) | (57344 & (i5 << 6)), 72);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f10(modifier2, configurationSwitch, z, z2, function1, i2, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0210  */
    /* JADX WARN: Code duplicated, block: B:103:0x0212  */
    /* JADX WARN: Code duplicated, block: B:107:0x021b  */
    /* JADX WARN: Code duplicated, block: B:110:0x0248  */
    /* JADX WARN: Code duplicated, block: B:113:0x025f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0261  */
    /* JADX WARN: Code duplicated, block: B:117:0x0267  */
    /* JADX WARN: Code duplicated, block: B:118:0x0269  */
    /* JADX WARN: Code duplicated, block: B:122:0x0273  */
    /* JADX WARN: Code duplicated, block: B:125:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:127:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:128:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:130:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:132:0x0301  */
    /* JADX WARN: Code duplicated, block: B:135:0x030d  */
    /* JADX WARN: Code duplicated, block: B:137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:47:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:53:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00be  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:70:0x0120  */
    /* JADX WARN: Code duplicated, block: B:73:0x013a  */
    /* JADX WARN: Code duplicated, block: B:74:0x014c  */
    /* JADX WARN: Code duplicated, block: B:76:0x015a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x015c  */
    /* JADX WARN: Code duplicated, block: B:79:0x015f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0171  */
    /* JADX WARN: Code duplicated, block: B:82:0x0179  */
    /* JADX WARN: Code duplicated, block: B:83:0x018b  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:91:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:95:0x01db  */
    /* JADX WARN: Code duplicated, block: B:97:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:98:0x01f5  */
    public static final void c(Modifier modifier, LVSwitchLegalState lVSwitchLegalState, boolean z, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        boolean z3;
        boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z5;
        HapticFeedback hapticFeedback;
        int[] iArr;
        int i5;
        float f2;
        State stateB;
        boolean zC;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i6;
        long j2;
        int i7;
        long j3;
        long j4;
        int i8;
        boolean z6;
        Object objX2;
        Object objX3;
        boolean z7;
        boolean z8;
        boolean z9;
        Object objX4;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        int i9;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSwitchLegal");
        }
        GapComposer gapComposerH = composer.h(-767892303);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(lVSwitchLegalState == null ? -1 : lVSwitchLegalState.ordinal()) ? 32 : 16;
        }
        int i10 = i3 & 4;
        if (i10 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.y(function1)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i4 |= i9;
            }
            if ((i4 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i10 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                Dp.Companion companion = Dp.f11004c;
                RoundedCornerShape roundedCornerShape = LVAppDesignKitTheme.j(gapComposerH).f48412e;
                iArr = WhenMappings.f48508b;
                i5 = iArr[lVSwitchLegalState.ordinal()];
                if (i5 != 1) {
                    gapComposerH.L(-1283289011);
                    if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Ltr) {
                        f2 = 1.0f;
                    } else {
                        f2 = -1.0f;
                    }
                    gapComposerH.Z(false);
                } else if (i5 != 2) {
                    gapComposerH.L(-1283147155);
                    if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Ltr) {
                        f2 = -1.0f;
                    } else {
                        f2 = 1.0f;
                    }
                    gapComposerH.Z(false);
                } else {
                    if (i5 == 3) {
                        throw d21.u(gapComposerH, 789885972, false);
                    }
                    gapComposerH.L(-1283009331);
                    gapComposerH.Z(false);
                    f2 = 0.0f;
                }
                stateB = AnimateAsStateKt.b(f2, null, "", gapComposerH, 3072, 22);
                zC = gapComposerH.c(((Number) stateB.getF10755b()).floatValue());
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zC || objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(new BiasAlignment(((Number) stateB.getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    gapComposerH.q(objX);
                }
                MutableState mutableState = (MutableState) objX;
                if (z5) {
                    gapComposerH.L(-1282860188);
                    i6 = iArr[lVSwitchLegalState.ordinal()];
                    if (i6 != 1) {
                        gapComposerH.L(789903992);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                        gapComposerH.Z(false);
                    } else if (i6 != 2) {
                        gapComposerH.L(789906550);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.x;
                        gapComposerH.Z(false);
                    } else {
                        if (i6 == 3) {
                            throw d21.u(gapComposerH, 789901406, false);
                        }
                        gapComposerH.L(789909022);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.o;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1282942059);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c;
                    gapComposerH.Z(false);
                }
                if (z5) {
                    gapComposerH.L(-1282470332);
                    i7 = iArr[lVSwitchLegalState.ordinal()];
                    if (i7 != 1) {
                        gapComposerH.L(789916568);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                        gapComposerH.Z(false);
                    } else if (i7 != 2) {
                        gapComposerH.L(789919126);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.x;
                        gapComposerH.Z(false);
                    } else {
                        if (i7 == 3) {
                            throw d21.u(gapComposerH, 789913982, false);
                        }
                        gapComposerH.L(789921598);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                        gapComposerH.Z(false);
                    }
                    j4 = j3;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1282552203);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c;
                    gapComposerH.Z(false);
                }
                i8 = i4 & 112;
                if (i8 == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX2 = gapComposerH.x();
                if (z6 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new l00(lVSwitchLegalState, 17);
                    gapComposerH.q(objX2);
                }
                Modifier modifierA = BorderKt.a(ClipKt.a(SizeKt.p(SemanticsModifierKt.b(modifierE, true, (Function1) objX2), 52.0f, 32.0f), roundedCornerShape), 2.0f, j2, roundedCornerShape);
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = InteractionSourceKt.a();
                    gapComposerH.q(objX3);
                }
                MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX3;
                boolean zY = gapComposerH.y(hapticFeedback);
                if ((i4 & 7168) == 2048) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                boolean z10 = zY | z7;
                if (i8 == 32) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z9 = z10 | z8;
                objX4 = gapComposerH.x();
                if (z9 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new pp((Object) hapticFeedback, function1, (Object) lVSwitchLegalState, 18);
                    gapComposerH.q(objX4);
                }
                Modifier modifierB = ClickableKt.b(modifierA, mutableInteractionSource, null, z5, null, null, (Function0) objX4, 24);
                measurePolicyD = BoxKt.d((BiasAlignment) mutableState.getF10755b(), false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                BoxKt.a(BackgroundKt.b(SizeKt.o(PaddingKt.k(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "LVSwitchLegal"), 8.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 16.0f), j4, RoundedCornerShapeKt.f5846a), gapComposerH, 0);
                gapComposerH.Z(true);
                z4 = z5;
            } else {
                gapComposerH.D();
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oh(modifierE, lVSwitchLegalState, z4, function1, i2, i3, 3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.y(function1)) {
                i9 = 2048;
            } else {
                i9 = 1024;
            }
            i4 |= i9;
        }
        if ((i4 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            if (i10 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Dp.Companion companion2 = Dp.f11004c;
            RoundedCornerShape roundedCornerShape2 = LVAppDesignKitTheme.j(gapComposerH).f48412e;
            iArr = WhenMappings.f48508b;
            i5 = iArr[lVSwitchLegalState.ordinal()];
            if (i5 != 1) {
                gapComposerH.L(-1283289011);
                if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Ltr) {
                    f2 = 1.0f;
                } else {
                    f2 = -1.0f;
                }
                gapComposerH.Z(false);
            } else if (i5 != 2) {
                gapComposerH.L(-1283147155);
                if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Ltr) {
                    f2 = -1.0f;
                } else {
                    f2 = 1.0f;
                }
                gapComposerH.Z(false);
            } else {
                if (i5 == 3) {
                    throw d21.u(gapComposerH, 789885972, false);
                }
                gapComposerH.L(-1283009331);
                gapComposerH.Z(false);
                f2 = 0.0f;
            }
            stateB = AnimateAsStateKt.b(f2, null, "", gapComposerH, 3072, 22);
            zC = gapComposerH.c(((Number) stateB.getF10755b()).floatValue());
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zC) {
                objX = SnapshotStateKt.g(new BiasAlignment(((Number) stateB.getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX);
            } else {
                objX = SnapshotStateKt.g(new BiasAlignment(((Number) stateB.getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX);
            }
            MutableState mutableState2 = (MutableState) objX;
            if (z5) {
                gapComposerH.L(-1282942059);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1282860188);
                i6 = iArr[lVSwitchLegalState.ordinal()];
                if (i6 != 1) {
                    gapComposerH.L(789903992);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                    gapComposerH.Z(false);
                } else if (i6 != 2) {
                    gapComposerH.L(789906550);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.x;
                    gapComposerH.Z(false);
                } else {
                    if (i6 == 3) {
                        throw d21.u(gapComposerH, 789901406, false);
                    }
                    gapComposerH.L(789909022);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.o;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            if (z5) {
                gapComposerH.L(-1282552203);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48376c;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1282470332);
                i7 = iArr[lVSwitchLegalState.ordinal()];
                if (i7 != 1) {
                    gapComposerH.L(789916568);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
                    gapComposerH.Z(false);
                } else if (i7 != 2) {
                    gapComposerH.L(789919126);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.x;
                    gapComposerH.Z(false);
                } else {
                    if (i7 == 3) {
                        throw d21.u(gapComposerH, 789913982, false);
                    }
                    gapComposerH.L(789921598);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                }
                j4 = j3;
                gapComposerH.Z(false);
            }
            i8 = i4 & 112;
            if (i8 == 32) {
                z6 = true;
            } else {
                z6 = false;
            }
            objX2 = gapComposerH.x();
            if (z6) {
                objX2 = new l00(lVSwitchLegalState, 17);
                gapComposerH.q(objX2);
            } else {
                objX2 = new l00(lVSwitchLegalState, 17);
                gapComposerH.q(objX2);
            }
            Modifier modifierA2 = BorderKt.a(ClipKt.a(SizeKt.p(SemanticsModifierKt.b(modifierE, true, (Function1) objX2), 52.0f, 32.0f), roundedCornerShape2), 2.0f, j2, roundedCornerShape2);
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = InteractionSourceKt.a();
                gapComposerH.q(objX3);
            }
            MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) objX3;
            boolean zY2 = gapComposerH.y(hapticFeedback);
            if ((i4 & 7168) == 2048) {
                z7 = true;
            } else {
                z7 = false;
            }
            boolean z11 = zY2 | z7;
            if (i8 == 32) {
                z8 = true;
            } else {
                z8 = false;
            }
            z9 = z11 | z8;
            objX4 = gapComposerH.x();
            if (z9) {
                objX4 = new pp((Object) hapticFeedback, function1, (Object) lVSwitchLegalState, 18);
                gapComposerH.q(objX4);
            } else {
                objX4 = new pp((Object) hapticFeedback, function1, (Object) lVSwitchLegalState, 18);
                gapComposerH.q(objX4);
            }
            Modifier modifierB2 = ClickableKt.b(modifierA2, mutableInteractionSource2, null, z5, null, null, (Function0) objX4, 24);
            measurePolicyD = BoxKt.d((BiasAlignment) mutableState2.getF10755b(), false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            BoxKt.a(BackgroundKt.b(SizeKt.o(PaddingKt.k(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "LVSwitchLegal"), 8.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), 16.0f), j4, RoundedCornerShapeKt.f5846a), gapComposerH, 0);
            gapComposerH.Z(true);
            z4 = z5;
        } else {
            gapComposerH.D();
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oh(modifierE, lVSwitchLegalState, z4, function1, i2, i3, 3);
        }
    }
}
