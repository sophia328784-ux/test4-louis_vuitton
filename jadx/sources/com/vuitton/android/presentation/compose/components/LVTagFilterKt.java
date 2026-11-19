package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.components.LVTagFilterKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.d1;
import defpackage.d21;
import defpackage.f;
import defpackage.n00;
import defpackage.n50;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTagFilterKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50997a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f50998b;

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
            f50997a = iArr;
            int[] iArr2 = new int[TagFilterType.values().length];
            try {
                iArr2[TagFilterType.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[TagFilterType.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TagFilterType.ACTIVE_DELETABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TagFilterType.ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            f50998b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0131  */
    /* JADX WARN: Code duplicated, block: B:101:0x0134  */
    /* JADX WARN: Code duplicated, block: B:103:0x0138  */
    /* JADX WARN: Code duplicated, block: B:104:0x013b  */
    /* JADX WARN: Code duplicated, block: B:107:0x0152  */
    /* JADX WARN: Code duplicated, block: B:124:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:126:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:128:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:131:0x01db  */
    /* JADX WARN: Code duplicated, block: B:135:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:139:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:148:0x0245  */
    /* JADX WARN: Code duplicated, block: B:152:0x024d  */
    /* JADX WARN: Code duplicated, block: B:157:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:159:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:162:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:163:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:166:0x02da  */
    /* JADX WARN: Code duplicated, block: B:167:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:170:0x02ea A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:171:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:174:0x0309  */
    /* JADX WARN: Code duplicated, block: B:175:0x030b  */
    /* JADX WARN: Code duplicated, block: B:178:0x031a  */
    /* JADX WARN: Code duplicated, block: B:179:0x031c  */
    /* JADX WARN: Code duplicated, block: B:182:0x0329 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:185:0x0333  */
    /* JADX WARN: Code duplicated, block: B:188:0x0376  */
    /* JADX WARN: Code duplicated, block: B:190:0x037d  */
    /* JADX WARN: Code duplicated, block: B:191:0x0381  */
    /* JADX WARN: Code duplicated, block: B:194:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:197:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:199:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:200:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:203:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:205:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:207:0x045d  */
    /* JADX WARN: Code duplicated, block: B:209:0x0461  */
    /* JADX WARN: Code duplicated, block: B:211:0x046b  */
    /* JADX WARN: Code duplicated, block: B:212:0x046d  */
    /* JADX WARN: Code duplicated, block: B:216:0x0478  */
    /* JADX WARN: Code duplicated, block: B:218:0x047c  */
    /* JADX WARN: Code duplicated, block: B:219:0x047e  */
    /* JADX WARN: Code duplicated, block: B:222:0x0486 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:223:0x0488  */
    /* JADX WARN: Code duplicated, block: B:225:0x04ae  */
    /* JADX WARN: Code duplicated, block: B:228:0x04fa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:230:0x0549  */
    /* JADX WARN: Code duplicated, block: B:233:0x0559  */
    /* JADX WARN: Code duplicated, block: B:236:0x0561 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:241:0x059b  */
    /* JADX WARN: Code duplicated, block: B:243:0x05a0  */
    /* JADX WARN: Code duplicated, block: B:246:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:248:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0062  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:33:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0076  */
    /* JADX WARN: Code duplicated, block: B:38:0x007b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0083  */
    /* JADX WARN: Code duplicated, block: B:41:0x0086  */
    /* JADX WARN: Code duplicated, block: B:45:0x008e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0095  */
    /* JADX WARN: Code duplicated, block: B:48:0x009d  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00da  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:82:0x0105  */
    /* JADX WARN: Code duplicated, block: B:83:0x0107  */
    /* JADX WARN: Code duplicated, block: B:86:0x0110 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x0112  */
    /* JADX WARN: Code duplicated, block: B:88:0x0118  */
    /* JADX WARN: Code duplicated, block: B:90:0x011c  */
    /* JADX WARN: Code duplicated, block: B:91:0x011f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0124  */
    /* JADX WARN: Code duplicated, block: B:95:0x0126  */
    /* JADX WARN: Code duplicated, block: B:97:0x012a  */
    /* JADX WARN: Code duplicated, block: B:98:0x012d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    public static final void a(Modifier modifier, final String str, String str2, final TagFilterType tagFilterType, String str3, boolean z, LVColorScheme lVColorScheme, boolean z2, final Function0 function0, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z3;
        int i9;
        int i10;
        int i11;
        int iOrdinal;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z4;
        final String str4;
        final LVColorScheme lVColorScheme2;
        final boolean z5;
        final boolean z6;
        final Modifier modifier2;
        final String str5;
        GapComposer gapComposer;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        String str6;
        String str7;
        boolean z7;
        LVColorScheme lVColorScheme3;
        boolean z8;
        HapticFeedback hapticFeedback;
        int[] iArr;
        int i17;
        int i18;
        boolean z9;
        long j2;
        LVColorScheme lVColorScheme4;
        long j3;
        long j4;
        String strC;
        long j5;
        String strC2;
        Modifier modifier3;
        TagFilterType tagFilterType2;
        LVColorScheme lVColorScheme5;
        boolean z10;
        LVColorScheme lVColorScheme6;
        boolean z11;
        int i19;
        boolean z12;
        boolean zY;
        Object objX;
        boolean z13;
        boolean z14;
        boolean zY2;
        Object objX2;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        boolean z15;
        float f2;
        boolean z16;
        String str8;
        boolean z17;
        final long j6;
        final String str9;
        int i20;
        int i21;
        boolean z18;
        boolean z19;
        Object objX3;
        GapComposer gapComposer2;
        ?? r10;
        GapComposer gapComposer3;
        TagFilterType tagFilterType3;
        GapComposer gapComposer4;
        float f3;
        boolean z20;
        int i22;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTagFilter");
        }
        str.getClass();
        tagFilterType.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(175313461);
        int i23 = i3 & 1;
        if (i23 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        }
        int i24 = i4 | (gapComposerH.K(str) ? 32 : 16);
        int i25 = i3 & 4;
        if (i25 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                i24 |= gapComposerH.K(str2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.d(tagFilterType.ordinal())) {
                    i22 = 2048;
                } else {
                    i22 = 1024;
                }
                i24 |= i22;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                i7 = i24 | 24576;
            } else {
                if (gapComposerH.K(str3)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i7 = i24 | i6;
            }
            i8 = i3 & 32;
            if (i8 != 0) {
                i10 = i7 | ImageMetadata.EDGE_MODE;
                z3 = z;
            } else {
                z3 = z;
                if (gapComposerH.b(z3)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i10 = i7 | i9;
            }
            i11 = i3 & 64;
            if (i11 != 0) {
                i10 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i12 = 1048576;
                } else {
                    i12 = 524288;
                }
                i10 |= i12;
            }
            i13 = i3 & 128;
            if (i13 != 0) {
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i14 = 8388608;
                    } else {
                        i14 = 4194304;
                    }
                    i10 |= i14;
                }
                if (gapComposerH.y(function0)) {
                    i15 = 67108864;
                } else {
                    i15 = 33554432;
                }
                i16 = i10 | i15;
                if ((i16 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i16 & 1, z4)) {
                    if (i23 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVTagFilter");
                    }
                    if (i25 != 0) {
                        dTFunctionNameModifier = modifierE;
                        str6 = "";
                    } else {
                        dTFunctionNameModifier = modifierE;
                        str6 = str2;
                    }
                    if (i5 != 0) {
                        str7 = null;
                    } else {
                        str7 = str3;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i11 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i13 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                    iArr = WhenMappings.f50998b;
                    i17 = iArr[tagFilterType.ordinal()];
                    if (i17 != 1 || i17 == 2) {
                        gapComposerH.L(83531210);
                        i18 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                        if (i18 == 1) {
                            z9 = false;
                            gapComposerH.L(972528543);
                            j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                            gapComposerH.Z(false);
                        } else {
                            if (i18 != 2) {
                                throw d21.u(gapComposerH, 972525880, false);
                            }
                            gapComposerH.L(972531047);
                            j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.s;
                            z9 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z9);
                    } else {
                        if (i17 != 3 && i17 != 4) {
                            throw d21.u(gapComposerH, 972523943, false);
                        }
                        gapComposerH.L(83790029);
                        int i26 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                        if (i26 == 1) {
                            z20 = false;
                            gapComposerH.L(972536898);
                            j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.o;
                            gapComposerH.Z(false);
                        } else {
                            if (i26 != 2) {
                                throw d21.u(gapComposerH, 972534229, false);
                            }
                            gapComposerH.L(972539489);
                            j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.y;
                            z20 = false;
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(z20);
                    }
                    lVColorScheme4 = LVColorScheme.DEFAULT;
                    if (lVColorScheme3 != lVColorScheme4 || tagFilterType == TagFilterType.ACTIVE_DELETABLE || tagFilterType == TagFilterType.ACTIVE) {
                        gapComposerH.L(972547142);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                        gapComposerH.Z(false);
                    } else if (lVColorScheme3 == LVColorScheme.INVERT && tagFilterType == TagFilterType.DISABLED) {
                        gapComposerH.L(972551337);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48380i;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(972552704);
                        gapComposerH.Z(false);
                        Color.f8866b.getClass();
                        j3 = Color.f8870h;
                    }
                    if (lVColorScheme3 != lVColorScheme4 || tagFilterType == TagFilterType.ACTIVE_DELETABLE || tagFilterType == TagFilterType.ACTIVE) {
                        gapComposerH.L(972559811);
                        j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(972561833);
                        j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                        gapComposerH.Z(false);
                    }
                    strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
                    j5 = j4;
                    strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_disabled);
                    modifier3 = dTFunctionNameModifier;
                    Modifier modifierA = ClipKt.a(SizeKt.f(dTFunctionNameModifier, LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48412e);
                    tagFilterType2 = TagFilterType.DISABLED;
                    lVColorScheme5 = lVColorScheme3;
                    if (tagFilterType == tagFilterType2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    lVColorScheme6 = lVColorScheme4;
                    Modifier modifierA2 = BorderKt.a(BackgroundKt.b(ModifierExtKt.b(modifierA, z10, new n50(3), gapComposerH, 0), j3, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).f48385c, j2, LVAppDesignKitTheme.j(gapComposerH).f48412e);
                    if (tagFilterType != tagFilterType2) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    i19 = 234881024 & i16;
                    if (i19 == 67108864) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    zY = z12 | gapComposerH.y(hapticFeedback);
                    objX = gapComposerH.x();
                    Object obj = Composer.Companion.f7939a;
                    if (zY || objX == obj) {
                        objX = new f(function0, hapticFeedback, 4);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierC2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA2, z11, null, null, (Function0) objX, 30);
                    if ((i16 & 7168) == 2048) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    boolean zK = z13 | gapComposerH.K(strC2) | gapComposerH.K(strC);
                    if (i19 == 67108864) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    zY2 = zK | z14 | gapComposerH.y(hapticFeedback);
                    objX2 = gapComposerH.x();
                    if (zY2 || objX2 == obj) {
                        Object d1Var = new d1((Object) tagFilterType, strC2, strC, function0, (Object) hapticFeedback, 9);
                        gapComposerH.q(d1Var);
                        objX2 = d1Var;
                    }
                    Modifier modifierB = SemanticsModifierKt.b(modifierC2, true, (Function1) objX2);
                    Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, gapComposerH, 54);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVTagFilter");
                    if (str7 == 0 && StringExtKt.a(str7)) {
                        gapComposerH.L(1770950425);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48414b;
                        z15 = false;
                        gapComposerH.Z(false);
                    } else {
                        z15 = false;
                        if (z8) {
                            gapComposerH.L(1770954874);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(1770952792);
                            f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        }
                    }
                    SpacerKt.a(gapComposerH, SizeKt.s(dTFunctionNameModifier2, f2));
                    if (str7 != 0) {
                        z16 = true;
                        if (StringExtKt.a(str7)) {
                            str9 = str6;
                            boolean z21 = z15;
                            j6 = j5;
                            String str10 = str7;
                            i21 = 2;
                            i20 = 3;
                            ImageLoaderKt.b(ClipKt.a(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -934868166, "LVTagFilter"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).q), RoundedCornerShapeKt.f5846a), str10, null, null, Integer.valueOf(R.drawable.placeholder_transparent), 0, false, null, null, null, gapComposerH, 0, 2028);
                            GapComposer gapComposer5 = gapComposerH;
                            str8 = str10;
                            gapComposer5.Z(z21);
                            r10 = z21;
                            gapComposer2 = gapComposer5;
                        }
                        GapComposer gapComposer6 = gapComposer2;
                        boolean z22 = z7;
                        AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z22, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj2, Object obj3, Object obj4) {
                                Composer composer2 = (Composer) obj3;
                                ((Integer) obj4).getClass();
                                ((AnimatedVisibilityScope) obj2).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                                TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                                TextOverflow.f10989a.getClass();
                                TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                                return Unit.f71739a;
                            }
                        }, gapComposer2), gapComposer6, 1600518 | ((i16 >> 12) & 112), 18);
                        gapComposer3 = gapComposer6;
                        tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
                        if (tagFilterType == tagFilterType3 || !z8) {
                            gapComposer3.L(-933105103);
                            gapComposer3.Z(r10);
                            gapComposer4 = gapComposer3;
                        } else {
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer3).A, gapComposer3, r10), null, SizeKt.o(PaddingKt.m(n00.d(gapComposer3, -933558044, "LVTagFilter", "QAF_ActiveFilterCrossItem_image"), LVAppDesignKitTheme.l(gapComposer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), IconSize.f48348b), Color.b(LVAppDesignKitTheme.h(gapComposer3).d, LVAppDesignKitTheme.c(gapComposer3).f48361b.l), gapComposer3, 56, 0);
                            GapComposer gapComposer7 = gapComposer3;
                            gapComposer7.Z(r10);
                            gapComposer4 = gapComposer7;
                        }
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVTagFilter");
                        if ((str8 == null && StringExtKt.a(str8)) || (tagFilterType == tagFilterType3 && z8)) {
                            gapComposer4.L(1771022970);
                            f3 = LVAppDesignKitTheme.l(gapComposer4).d;
                            gapComposer4.Z(r10);
                        } else {
                            gapComposer4.L(1771025146);
                            f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                            gapComposer4.Z(r10);
                        }
                        SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier3, f3));
                        gapComposer4.Z(true);
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        z6 = z22;
                        str4 = str9;
                        lVColorScheme2 = lVColorScheme5;
                        str5 = str8;
                        z5 = z8;
                        modifier2 = modifier3;
                        gapComposer = gapComposer4;
                    } else {
                        z16 = true;
                    }
                    str8 = str7;
                    z17 = z15;
                    j6 = j5;
                    str9 = str6;
                    i20 = 3;
                    if (z8) {
                        boolean z23 = z17;
                        i21 = 2;
                        gapComposerH.L(-934144719);
                        gapComposerH.Z(z23);
                        r10 = z23;
                        gapComposer2 = gapComposerH;
                    } else {
                        gapComposerH.L(-934458315);
                        if (tagFilterType == TagFilterType.ACTIVE_DELETABLE) {
                            z18 = z16;
                        } else {
                            z18 = z17;
                        }
                        if (iArr[tagFilterType.ordinal()] != 3) {
                            lVColorScheme6 = lVColorScheme5;
                        }
                        if (i19 == 67108864) {
                            z19 = z16;
                        } else {
                            z19 = z17;
                        }
                        objX3 = gapComposerH.x();
                        if (z19 || objX3 == obj) {
                            objX3 = new y2(function0, 17);
                            gapComposerH.q(objX3);
                        }
                        i21 = 2;
                        boolean z24 = z17;
                        LVRadioButtonKt.a(null, false, z18, lVColorScheme6, (Function1) objX3, gapComposerH, 0, 3);
                        GapComposer gapComposer8 = gapComposerH;
                        gapComposer8.Z(z24);
                        r10 = z24;
                        gapComposer2 = gapComposer8;
                    }
                    GapComposer gapComposer9 = gapComposer2;
                    boolean z25 = z7;
                    AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z25, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj2, Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            ((Integer) obj4).getClass();
                            ((AnimatedVisibilityScope) obj2).getClass();
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                            TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                            TextOverflow.f10989a.getClass();
                            TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                            return Unit.f71739a;
                        }
                    }, gapComposer2), gapComposer9, 1600518 | ((i16 >> 12) & 112), 18);
                    gapComposer3 = gapComposer9;
                    tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
                    if (tagFilterType == tagFilterType3) {
                        gapComposer3.L(-933105103);
                        gapComposer3.Z(r10);
                        gapComposer4 = gapComposer3;
                    } else {
                        gapComposer3.L(-933105103);
                        gapComposer3.Z(r10);
                        gapComposer4 = gapComposer3;
                    }
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVTagFilter");
                    if (str8 == null) {
                        gapComposer4.L(1771025146);
                        f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                        gapComposer4.Z(r10);
                    } else {
                        gapComposer4.L(1771025146);
                        f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                        gapComposer4.Z(r10);
                    }
                    SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier4, f3));
                    gapComposer4.Z(true);
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    z6 = z25;
                    str4 = str9;
                    lVColorScheme2 = lVColorScheme5;
                    str5 = str8;
                    z5 = z8;
                    modifier2 = modifier3;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    str4 = str2;
                    lVColorScheme2 = lVColorScheme;
                    z5 = z2;
                    z6 = z3;
                    modifier2 = modifierE;
                    str5 = str3;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: f80
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            ((Integer) obj3).getClass();
                            LVTagFilterKt.a(modifier2, str, str4, tagFilterType, str5, z6, lVColorScheme2, z5, function0, (Composer) obj2, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i10 |= 12582912;
            if (gapComposerH.y(function0)) {
                i15 = 67108864;
            } else {
                i15 = 33554432;
            }
            i16 = i10 | i15;
            if ((i16 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i16 & 1, z4)) {
                if (i23 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVTagFilter");
                }
                if (i25 != 0) {
                    dTFunctionNameModifier = modifierE;
                    str6 = "";
                } else {
                    dTFunctionNameModifier = modifierE;
                    str6 = str2;
                }
                if (i5 != 0) {
                    str7 = null;
                } else {
                    str7 = str3;
                }
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i11 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i13 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                iArr = WhenMappings.f50998b;
                i17 = iArr[tagFilterType.ordinal()];
                if (i17 != 1) {
                    gapComposerH.L(83531210);
                    i18 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                    if (i18 == 1) {
                        z9 = false;
                        gapComposerH.L(972528543);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                        gapComposerH.Z(false);
                    } else {
                        if (i18 != 2) {
                            throw d21.u(gapComposerH, 972525880, false);
                        }
                        gapComposerH.L(972531047);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.s;
                        z9 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z9);
                } else {
                    gapComposerH.L(83531210);
                    i18 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                    if (i18 == 1) {
                        z9 = false;
                        gapComposerH.L(972528543);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                        gapComposerH.Z(false);
                    } else {
                        if (i18 != 2) {
                            throw d21.u(gapComposerH, 972525880, false);
                        }
                        gapComposerH.L(972531047);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.s;
                        z9 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z9);
                }
                lVColorScheme4 = LVColorScheme.DEFAULT;
                if (lVColorScheme3 != lVColorScheme4) {
                    gapComposerH.L(972547142);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(972547142);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    gapComposerH.Z(false);
                }
                if (lVColorScheme3 != lVColorScheme4) {
                    gapComposerH.L(972559811);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(972559811);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                }
                strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
                j5 = j4;
                strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_disabled);
                modifier3 = dTFunctionNameModifier;
                Modifier modifierA3 = ClipKt.a(SizeKt.f(dTFunctionNameModifier, LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48412e);
                tagFilterType2 = TagFilterType.DISABLED;
                lVColorScheme5 = lVColorScheme3;
                if (tagFilterType == tagFilterType2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                lVColorScheme6 = lVColorScheme4;
                Modifier modifierA4 = BorderKt.a(BackgroundKt.b(ModifierExtKt.b(modifierA3, z10, new n50(3), gapComposerH, 0), j3, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).f48385c, j2, LVAppDesignKitTheme.j(gapComposerH).f48412e);
                if (tagFilterType != tagFilterType2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                i19 = 234881024 & i16;
                if (i19 == 67108864) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                zY = z12 | gapComposerH.y(hapticFeedback);
                objX = gapComposerH.x();
                Object obj2 = Composer.Companion.f7939a;
                if (zY) {
                    objX = new f(function0, hapticFeedback, 4);
                    gapComposerH.q(objX);
                } else {
                    objX = new f(function0, hapticFeedback, 4);
                    gapComposerH.q(objX);
                }
                Modifier modifierC3 = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA4, z11, null, null, (Function0) objX, 30);
                if ((i16 & 7168) == 2048) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean zK2 = z13 | gapComposerH.K(strC2) | gapComposerH.K(strC);
                if (i19 == 67108864) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                zY2 = zK2 | z14 | gapComposerH.y(hapticFeedback);
                objX2 = gapComposerH.x();
                if (zY2) {
                    Object d1Var2 = new d1((Object) tagFilterType, strC2, strC, function0, (Object) hapticFeedback, 9);
                    gapComposerH.q(d1Var2);
                    objX2 = d1Var2;
                } else {
                    Object d1Var3 = new d1((Object) tagFilterType, strC2, strC, function0, (Object) hapticFeedback, 9);
                    gapComposerH.q(d1Var3);
                    objX2 = d1Var3;
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierC3, true, (Function1) objX2);
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$2 = Arrangement.g;
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$2, Alignment.Companion.l, gapComposerH, 54);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVTagFilter");
                if (str7 == 0) {
                    z15 = false;
                    if (z8) {
                        gapComposerH.L(1770952792);
                        f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1770954874);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        gapComposerH.Z(false);
                    }
                } else {
                    z15 = false;
                    if (z8) {
                        gapComposerH.L(1770952792);
                        f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1770954874);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        gapComposerH.Z(false);
                    }
                }
                SpacerKt.a(gapComposerH, SizeKt.s(dTFunctionNameModifier5, f2));
                if (str7 != 0) {
                    z16 = true;
                    if (StringExtKt.a(str7)) {
                        str9 = str6;
                        boolean z26 = z15;
                        j6 = j5;
                        String str11 = str7;
                        i21 = 2;
                        i20 = 3;
                        ImageLoaderKt.b(ClipKt.a(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -934868166, "LVTagFilter"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).q), RoundedCornerShapeKt.f5846a), str11, null, null, Integer.valueOf(R.drawable.placeholder_transparent), 0, false, null, null, null, gapComposerH, 0, 2028);
                        GapComposer gapComposer10 = gapComposerH;
                        str8 = str11;
                        gapComposer10.Z(z26);
                        r10 = z26;
                        gapComposer2 = gapComposer10;
                    }
                    GapComposer gapComposer11 = gapComposer2;
                    boolean z27 = z7;
                    AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z27, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj3, Object obj4, Object obj5) {
                            Composer composer2 = (Composer) obj4;
                            ((Integer) obj5).getClass();
                            ((AnimatedVisibilityScope) obj3).getClass();
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                            TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                            TextOverflow.f10989a.getClass();
                            TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                            return Unit.f71739a;
                        }
                    }, gapComposer2), gapComposer11, 1600518 | ((i16 >> 12) & 112), 18);
                    gapComposer3 = gapComposer11;
                    tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
                    if (tagFilterType == tagFilterType3) {
                        gapComposer3.L(-933105103);
                        gapComposer3.Z(r10);
                        gapComposer4 = gapComposer3;
                    } else {
                        gapComposer3.L(-933105103);
                        gapComposer3.Z(r10);
                        gapComposer4 = gapComposer3;
                    }
                    DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("LVTagFilter");
                    if (str8 == null) {
                        gapComposer4.L(1771025146);
                        f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                        gapComposer4.Z(r10);
                    } else {
                        gapComposer4.L(1771025146);
                        f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                        gapComposer4.Z(r10);
                    }
                    SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier6, f3));
                    gapComposer4.Z(true);
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    z6 = z27;
                    str4 = str9;
                    lVColorScheme2 = lVColorScheme5;
                    str5 = str8;
                    z5 = z8;
                    modifier2 = modifier3;
                    gapComposer = gapComposer4;
                } else {
                    z16 = true;
                }
                str8 = str7;
                z17 = z15;
                j6 = j5;
                str9 = str6;
                i20 = 3;
                if (z8) {
                    gapComposerH.L(-934458315);
                    if (tagFilterType == TagFilterType.ACTIVE_DELETABLE) {
                        z18 = z16;
                    } else {
                        z18 = z17;
                    }
                    if (iArr[tagFilterType.ordinal()] != 3) {
                        lVColorScheme6 = lVColorScheme5;
                    }
                    if (i19 == 67108864) {
                        z19 = z16;
                    } else {
                        z19 = z17;
                    }
                    objX3 = gapComposerH.x();
                    if (z19) {
                        objX3 = new y2(function0, 17);
                        gapComposerH.q(objX3);
                    } else {
                        objX3 = new y2(function0, 17);
                        gapComposerH.q(objX3);
                    }
                    i21 = 2;
                    boolean z28 = z17;
                    LVRadioButtonKt.a(null, false, z18, lVColorScheme6, (Function1) objX3, gapComposerH, 0, 3);
                    GapComposer gapComposer12 = gapComposerH;
                    gapComposer12.Z(z28);
                    r10 = z28;
                    gapComposer2 = gapComposer12;
                } else {
                    boolean z29 = z17;
                    i21 = 2;
                    gapComposerH.L(-934144719);
                    gapComposerH.Z(z29);
                    r10 = z29;
                    gapComposer2 = gapComposerH;
                }
                GapComposer gapComposer13 = gapComposer2;
                boolean z210 = z7;
                AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z210, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj3, Object obj4, Object obj5) {
                        Composer composer2 = (Composer) obj4;
                        ((Integer) obj5).getClass();
                        ((AnimatedVisibilityScope) obj3).getClass();
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                        TextOverflow.f10989a.getClass();
                        TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                        return Unit.f71739a;
                    }
                }, gapComposer2), gapComposer13, 1600518 | ((i16 >> 12) & 112), 18);
                gapComposer3 = gapComposer13;
                tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
                if (tagFilterType == tagFilterType3) {
                    gapComposer3.L(-933105103);
                    gapComposer3.Z(r10);
                    gapComposer4 = gapComposer3;
                } else {
                    gapComposer3.L(-933105103);
                    gapComposer3.Z(r10);
                    gapComposer4 = gapComposer3;
                }
                DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("LVTagFilter");
                if (str8 == null) {
                    gapComposer4.L(1771025146);
                    f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                    gapComposer4.Z(r10);
                } else {
                    gapComposer4.L(1771025146);
                    f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                    gapComposer4.Z(r10);
                }
                SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier7, f3));
                gapComposer4.Z(true);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                z6 = z210;
                str4 = str9;
                lVColorScheme2 = lVColorScheme5;
                str5 = str8;
                z5 = z8;
                modifier2 = modifier3;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                str4 = str2;
                lVColorScheme2 = lVColorScheme;
                z5 = z2;
                z6 = z3;
                modifier2 = modifierE;
                str5 = str3;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: f80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        ((Integer) obj4).getClass();
                        LVTagFilterKt.a(modifier2, str, str4, tagFilterType, str5, z6, lVColorScheme2, z5, function0, (Composer) obj3, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i24 |= KyberEngine.KyberPolyBytes;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.d(tagFilterType.ordinal())) {
                i22 = 2048;
            } else {
                i22 = 1024;
            }
            i24 |= i22;
        }
        i5 = i3 & 16;
        if (i5 != 0) {
            i7 = i24 | 24576;
        } else {
            if (gapComposerH.K(str3)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i7 = i24 | i6;
        }
        i8 = i3 & 32;
        if (i8 != 0) {
            i10 = i7 | ImageMetadata.EDGE_MODE;
            z3 = z;
        } else {
            z3 = z;
            if (gapComposerH.b(z3)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i10 = i7 | i9;
        }
        i11 = i3 & 64;
        if (i11 != 0) {
            i10 |= 1572864;
        } else if ((i2 & 1572864) == 0) {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i12 = 1048576;
            } else {
                i12 = 524288;
            }
            i10 |= i12;
        }
        i13 = i3 & 128;
        if (i13 != 0) {
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.b(z2)) {
                    i14 = 8388608;
                } else {
                    i14 = 4194304;
                }
                i10 |= i14;
            }
            if (gapComposerH.y(function0)) {
                i15 = 67108864;
            } else {
                i15 = 33554432;
            }
            i16 = i10 | i15;
            if ((i16 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i16 & 1, z4)) {
                if (i23 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVTagFilter");
                }
                if (i25 != 0) {
                    dTFunctionNameModifier = modifierE;
                    str6 = "";
                } else {
                    dTFunctionNameModifier = modifierE;
                    str6 = str2;
                }
                if (i5 != 0) {
                    str7 = null;
                } else {
                    str7 = str3;
                }
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i11 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i13 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
                iArr = WhenMappings.f50998b;
                i17 = iArr[tagFilterType.ordinal()];
                if (i17 != 1) {
                    gapComposerH.L(83531210);
                    i18 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                    if (i18 == 1) {
                        z9 = false;
                        gapComposerH.L(972528543);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                        gapComposerH.Z(false);
                    } else {
                        if (i18 != 2) {
                            throw d21.u(gapComposerH, 972525880, false);
                        }
                        gapComposerH.L(972531047);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.s;
                        z9 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z9);
                } else {
                    gapComposerH.L(83531210);
                    i18 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                    if (i18 == 1) {
                        z9 = false;
                        gapComposerH.L(972528543);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                        gapComposerH.Z(false);
                    } else {
                        if (i18 != 2) {
                            throw d21.u(gapComposerH, 972525880, false);
                        }
                        gapComposerH.L(972531047);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.s;
                        z9 = false;
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(z9);
                }
                lVColorScheme4 = LVColorScheme.DEFAULT;
                if (lVColorScheme3 != lVColorScheme4) {
                    gapComposerH.L(972547142);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(972547142);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                    gapComposerH.Z(false);
                }
                if (lVColorScheme3 != lVColorScheme4) {
                    gapComposerH.L(972559811);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(972559811);
                    j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                }
                strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
                j5 = j4;
                strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_disabled);
                modifier3 = dTFunctionNameModifier;
                Modifier modifierA5 = ClipKt.a(SizeKt.f(dTFunctionNameModifier, LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48412e);
                tagFilterType2 = TagFilterType.DISABLED;
                lVColorScheme5 = lVColorScheme3;
                if (tagFilterType == tagFilterType2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                lVColorScheme6 = lVColorScheme4;
                Modifier modifierA6 = BorderKt.a(BackgroundKt.b(ModifierExtKt.b(modifierA5, z10, new n50(3), gapComposerH, 0), j3, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).f48385c, j2, LVAppDesignKitTheme.j(gapComposerH).f48412e);
                if (tagFilterType != tagFilterType2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                i19 = 234881024 & i16;
                if (i19 == 67108864) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                zY = z12 | gapComposerH.y(hapticFeedback);
                objX = gapComposerH.x();
                Object obj3 = Composer.Companion.f7939a;
                if (zY) {
                    objX = new f(function0, hapticFeedback, 4);
                    gapComposerH.q(objX);
                } else {
                    objX = new f(function0, hapticFeedback, 4);
                    gapComposerH.q(objX);
                }
                Modifier modifierC4 = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA6, z11, null, null, (Function0) objX, 30);
                if ((i16 & 7168) == 2048) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean zK3 = z13 | gapComposerH.K(strC2) | gapComposerH.K(strC);
                if (i19 == 67108864) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                zY2 = zK3 | z14 | gapComposerH.y(hapticFeedback);
                objX2 = gapComposerH.x();
                if (zY2) {
                    Object d1Var4 = new d1((Object) tagFilterType, strC2, strC, function0, (Object) hapticFeedback, 9);
                    gapComposerH.q(d1Var4);
                    objX2 = d1Var4;
                } else {
                    Object d1Var5 = new d1((Object) tagFilterType, strC2, strC, function0, (Object) hapticFeedback, 9);
                    gapComposerH.q(d1Var5);
                    objX2 = d1Var5;
                }
                Modifier modifierB3 = SemanticsModifierKt.b(modifierC4, true, (Function1) objX2);
                Arrangement$SpaceBetween$1 arrangement$SpaceBetween$3 = Arrangement.g;
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$3, Alignment.Companion.l, gapComposerH, 54);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB3);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("LVTagFilter");
                if (str7 == 0) {
                    z15 = false;
                    if (z8) {
                        gapComposerH.L(1770952792);
                        f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1770954874);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        gapComposerH.Z(false);
                    }
                } else {
                    z15 = false;
                    if (z8) {
                        gapComposerH.L(1770952792);
                        f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1770954874);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                        gapComposerH.Z(false);
                    }
                }
                SpacerKt.a(gapComposerH, SizeKt.s(dTFunctionNameModifier8, f2));
                if (str7 != 0) {
                    z16 = true;
                    if (StringExtKt.a(str7)) {
                        str9 = str6;
                        boolean z211 = z15;
                        j6 = j5;
                        String str12 = str7;
                        i21 = 2;
                        i20 = 3;
                        ImageLoaderKt.b(ClipKt.a(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -934868166, "LVTagFilter"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).q), RoundedCornerShapeKt.f5846a), str12, null, null, Integer.valueOf(R.drawable.placeholder_transparent), 0, false, null, null, null, gapComposerH, 0, 2028);
                        GapComposer gapComposer14 = gapComposerH;
                        str8 = str12;
                        gapComposer14.Z(z211);
                        r10 = z211;
                        gapComposer2 = gapComposer14;
                    }
                    GapComposer gapComposer15 = gapComposer2;
                    boolean z212 = z7;
                    AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z212, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj4, Object obj5, Object obj6) {
                            Composer composer2 = (Composer) obj5;
                            ((Integer) obj6).getClass();
                            ((AnimatedVisibilityScope) obj4).getClass();
                            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                            Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                            TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                            TextOverflow.f10989a.getClass();
                            TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                            return Unit.f71739a;
                        }
                    }, gapComposer2), gapComposer15, 1600518 | ((i16 >> 12) & 112), 18);
                    gapComposer3 = gapComposer15;
                    tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
                    if (tagFilterType == tagFilterType3) {
                        gapComposer3.L(-933105103);
                        gapComposer3.Z(r10);
                        gapComposer4 = gapComposer3;
                    } else {
                        gapComposer3.L(-933105103);
                        gapComposer3.Z(r10);
                        gapComposer4 = gapComposer3;
                    }
                    DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("LVTagFilter");
                    if (str8 == null) {
                        gapComposer4.L(1771025146);
                        f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                        gapComposer4.Z(r10);
                    } else {
                        gapComposer4.L(1771025146);
                        f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                        gapComposer4.Z(r10);
                    }
                    SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier9, f3));
                    gapComposer4.Z(true);
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    z6 = z212;
                    str4 = str9;
                    lVColorScheme2 = lVColorScheme5;
                    str5 = str8;
                    z5 = z8;
                    modifier2 = modifier3;
                    gapComposer = gapComposer4;
                } else {
                    z16 = true;
                }
                str8 = str7;
                z17 = z15;
                j6 = j5;
                str9 = str6;
                i20 = 3;
                if (z8) {
                    gapComposerH.L(-934458315);
                    if (tagFilterType == TagFilterType.ACTIVE_DELETABLE) {
                        z18 = z16;
                    } else {
                        z18 = z17;
                    }
                    if (iArr[tagFilterType.ordinal()] != 3) {
                        lVColorScheme6 = lVColorScheme5;
                    }
                    if (i19 == 67108864) {
                        z19 = z16;
                    } else {
                        z19 = z17;
                    }
                    objX3 = gapComposerH.x();
                    if (z19) {
                        objX3 = new y2(function0, 17);
                        gapComposerH.q(objX3);
                    } else {
                        objX3 = new y2(function0, 17);
                        gapComposerH.q(objX3);
                    }
                    i21 = 2;
                    boolean z213 = z17;
                    LVRadioButtonKt.a(null, false, z18, lVColorScheme6, (Function1) objX3, gapComposerH, 0, 3);
                    GapComposer gapComposer16 = gapComposerH;
                    gapComposer16.Z(z213);
                    r10 = z213;
                    gapComposer2 = gapComposer16;
                } else {
                    boolean z214 = z17;
                    i21 = 2;
                    gapComposerH.L(-934144719);
                    gapComposerH.Z(z214);
                    r10 = z214;
                    gapComposer2 = gapComposerH;
                }
                GapComposer gapComposer17 = gapComposer2;
                boolean z215 = z7;
                AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z215, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj4, Object obj5, Object obj6) {
                        Composer composer2 = (Composer) obj5;
                        ((Integer) obj6).getClass();
                        ((AnimatedVisibilityScope) obj4).getClass();
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                        TextOverflow.f10989a.getClass();
                        TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                        return Unit.f71739a;
                    }
                }, gapComposer2), gapComposer17, 1600518 | ((i16 >> 12) & 112), 18);
                gapComposer3 = gapComposer17;
                tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
                if (tagFilterType == tagFilterType3) {
                    gapComposer3.L(-933105103);
                    gapComposer3.Z(r10);
                    gapComposer4 = gapComposer3;
                } else {
                    gapComposer3.L(-933105103);
                    gapComposer3.Z(r10);
                    gapComposer4 = gapComposer3;
                }
                DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("LVTagFilter");
                if (str8 == null) {
                    gapComposer4.L(1771025146);
                    f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                    gapComposer4.Z(r10);
                } else {
                    gapComposer4.L(1771025146);
                    f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                    gapComposer4.Z(r10);
                }
                SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier10, f3));
                gapComposer4.Z(true);
                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                z6 = z215;
                str4 = str9;
                lVColorScheme2 = lVColorScheme5;
                str5 = str8;
                z5 = z8;
                modifier2 = modifier3;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                str4 = str2;
                lVColorScheme2 = lVColorScheme;
                z5 = z2;
                z6 = z3;
                modifier2 = modifierE;
                str5 = str3;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: f80
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        ((Integer) obj5).getClass();
                        LVTagFilterKt.a(modifier2, str, str4, tagFilterType, str5, z6, lVColorScheme2, z5, function0, (Composer) obj4, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i10 |= 12582912;
        if (gapComposerH.y(function0)) {
            i15 = 67108864;
        } else {
            i15 = 33554432;
        }
        i16 = i10 | i15;
        if ((i16 & 38347923) != 38347922) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i16 & 1, z4)) {
            if (i23 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVTagFilter");
            }
            if (i25 != 0) {
                dTFunctionNameModifier = modifierE;
                str6 = "";
            } else {
                dTFunctionNameModifier = modifierE;
                str6 = str2;
            }
            if (i5 != 0) {
                str7 = null;
            } else {
                str7 = str3;
            }
            if (i8 != 0) {
                z7 = true;
            } else {
                z7 = z3;
            }
            if (i11 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i13 != 0) {
                z8 = true;
            } else {
                z8 = z2;
            }
            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
            hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            iArr = WhenMappings.f50998b;
            i17 = iArr[tagFilterType.ordinal()];
            if (i17 != 1) {
                gapComposerH.L(83531210);
                i18 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                if (i18 == 1) {
                    z9 = false;
                    gapComposerH.L(972528543);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    gapComposerH.Z(false);
                } else {
                    if (i18 != 2) {
                        throw d21.u(gapComposerH, 972525880, false);
                    }
                    gapComposerH.L(972531047);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.s;
                    z9 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z9);
            } else {
                gapComposerH.L(83531210);
                i18 = WhenMappings.f50997a[lVColorScheme3.ordinal()];
                if (i18 == 1) {
                    z9 = false;
                    gapComposerH.L(972528543);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    gapComposerH.Z(false);
                } else {
                    if (i18 != 2) {
                        throw d21.u(gapComposerH, 972525880, false);
                    }
                    gapComposerH.L(972531047);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.s;
                    z9 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z9);
            }
            lVColorScheme4 = LVColorScheme.DEFAULT;
            if (lVColorScheme3 != lVColorScheme4) {
                gapComposerH.L(972547142);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(972547142);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            }
            if (lVColorScheme3 != lVColorScheme4) {
                gapComposerH.L(972559811);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(972559811);
                j4 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            }
            strC = StringResources_androidKt.c(gapComposerH, R.string.alt_selected);
            j5 = j4;
            strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_disabled);
            modifier3 = dTFunctionNameModifier;
            Modifier modifierA7 = ClipKt.a(SizeKt.f(dTFunctionNameModifier, LVAppDesignKitTheme.d(gapComposerH).t), LVAppDesignKitTheme.j(gapComposerH).f48412e);
            tagFilterType2 = TagFilterType.DISABLED;
            lVColorScheme5 = lVColorScheme3;
            if (tagFilterType == tagFilterType2) {
                z10 = true;
            } else {
                z10 = false;
            }
            lVColorScheme6 = lVColorScheme4;
            Modifier modifierA8 = BorderKt.a(BackgroundKt.b(ModifierExtKt.b(modifierA7, z10, new n50(3), gapComposerH, 0), j3, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).f48385c, j2, LVAppDesignKitTheme.j(gapComposerH).f48412e);
            if (tagFilterType != tagFilterType2) {
                z11 = true;
            } else {
                z11 = false;
            }
            i19 = 234881024 & i16;
            if (i19 == 67108864) {
                z12 = true;
            } else {
                z12 = false;
            }
            zY = z12 | gapComposerH.y(hapticFeedback);
            objX = gapComposerH.x();
            Object obj4 = Composer.Companion.f7939a;
            if (zY) {
                objX = new f(function0, hapticFeedback, 4);
                gapComposerH.q(objX);
            } else {
                objX = new f(function0, hapticFeedback, 4);
                gapComposerH.q(objX);
            }
            Modifier modifierC5 = com.vuitton.android.designkit.ui.common.ModifierExtKt.c(modifierA8, z11, null, null, (Function0) objX, 30);
            if ((i16 & 7168) == 2048) {
                z13 = true;
            } else {
                z13 = false;
            }
            boolean zK4 = z13 | gapComposerH.K(strC2) | gapComposerH.K(strC);
            if (i19 == 67108864) {
                z14 = true;
            } else {
                z14 = false;
            }
            zY2 = zK4 | z14 | gapComposerH.y(hapticFeedback);
            objX2 = gapComposerH.x();
            if (zY2) {
                Object d1Var6 = new d1((Object) tagFilterType, strC2, strC, function0, (Object) hapticFeedback, 9);
                gapComposerH.q(d1Var6);
                objX2 = d1Var6;
            } else {
                Object d1Var7 = new d1((Object) tagFilterType, strC2, strC, function0, (Object) hapticFeedback, 9);
                gapComposerH.q(d1Var7);
                objX2 = d1Var7;
            }
            Modifier modifierB4 = SemanticsModifierKt.b(modifierC5, true, (Function1) objX2);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$4 = Arrangement.g;
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$4, Alignment.Companion.l, gapComposerH, 54);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            DTFunctionNameModifier dTFunctionNameModifier11 = new DTFunctionNameModifier("LVTagFilter");
            if (str7 == 0) {
                z15 = false;
                if (z8) {
                    gapComposerH.L(1770952792);
                    f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1770954874);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    gapComposerH.Z(false);
                }
            } else {
                z15 = false;
                if (z8) {
                    gapComposerH.L(1770952792);
                    f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1770954874);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                    gapComposerH.Z(false);
                }
            }
            SpacerKt.a(gapComposerH, SizeKt.s(dTFunctionNameModifier11, f2));
            if (str7 != 0) {
                z16 = true;
                if (StringExtKt.a(str7)) {
                    str9 = str6;
                    boolean z216 = z15;
                    j6 = j5;
                    String str13 = str7;
                    i21 = 2;
                    i20 = 3;
                    ImageLoaderKt.b(ClipKt.a(SizeKt.o(PaddingKt.m(n00.i(gapComposerH, -934868166, "LVTagFilter"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.d(gapComposerH).q), RoundedCornerShapeKt.f5846a), str13, null, null, Integer.valueOf(R.drawable.placeholder_transparent), 0, false, null, null, null, gapComposerH, 0, 2028);
                    GapComposer gapComposer18 = gapComposerH;
                    str8 = str13;
                    gapComposer18.Z(z216);
                    r10 = z216;
                    gapComposer2 = gapComposer18;
                }
                GapComposer gapComposer19 = gapComposer2;
                boolean z217 = z7;
                AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z217, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj5, Object obj6, Object obj7) {
                        Composer composer2 = (Composer) obj6;
                        ((Integer) obj7).getClass();
                        ((AnimatedVisibilityScope) obj5).getClass();
                        OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                        Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                        TextOverflow.f10989a.getClass();
                        TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                        return Unit.f71739a;
                    }
                }, gapComposer2), gapComposer19, 1600518 | ((i16 >> 12) & 112), 18);
                gapComposer3 = gapComposer19;
                tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
                if (tagFilterType == tagFilterType3) {
                    gapComposer3.L(-933105103);
                    gapComposer3.Z(r10);
                    gapComposer4 = gapComposer3;
                } else {
                    gapComposer3.L(-933105103);
                    gapComposer3.Z(r10);
                    gapComposer4 = gapComposer3;
                }
                DTFunctionNameModifier dTFunctionNameModifier12 = new DTFunctionNameModifier("LVTagFilter");
                if (str8 == null) {
                    gapComposer4.L(1771025146);
                    f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                    gapComposer4.Z(r10);
                } else {
                    gapComposer4.L(1771025146);
                    f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                    gapComposer4.Z(r10);
                }
                SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier12, f3));
                gapComposer4.Z(true);
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                z6 = z217;
                str4 = str9;
                lVColorScheme2 = lVColorScheme5;
                str5 = str8;
                z5 = z8;
                modifier2 = modifier3;
                gapComposer = gapComposer4;
            } else {
                z16 = true;
            }
            str8 = str7;
            z17 = z15;
            j6 = j5;
            str9 = str6;
            i20 = 3;
            if (z8) {
                gapComposerH.L(-934458315);
                if (tagFilterType == TagFilterType.ACTIVE_DELETABLE) {
                    z18 = z16;
                } else {
                    z18 = z17;
                }
                if (iArr[tagFilterType.ordinal()] != 3) {
                    lVColorScheme6 = lVColorScheme5;
                }
                if (i19 == 67108864) {
                    z19 = z16;
                } else {
                    z19 = z17;
                }
                objX3 = gapComposerH.x();
                if (z19) {
                    objX3 = new y2(function0, 17);
                    gapComposerH.q(objX3);
                } else {
                    objX3 = new y2(function0, 17);
                    gapComposerH.q(objX3);
                }
                i21 = 2;
                boolean z218 = z17;
                LVRadioButtonKt.a(null, false, z18, lVColorScheme6, (Function1) objX3, gapComposerH, 0, 3);
                GapComposer gapComposer110 = gapComposerH;
                gapComposer110.Z(z218);
                r10 = z218;
                gapComposer2 = gapComposer110;
            } else {
                boolean z219 = z17;
                i21 = 2;
                gapComposerH.L(-934144719);
                gapComposerH.Z(z219);
                r10 = z219;
                gapComposer2 = gapComposerH;
            }
            GapComposer gapComposer111 = gapComposer2;
            boolean z2110 = z7;
            AnimatedVisibilityKt.d(RowScopeInstance.f5040a, z2110, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i20), EnterExitTransitionKt.h(AnimationSpecKt.c(200, r10, null, 6), i21), null, ComposableLambdaKt.b(136552825, new Function3() { // from class: e80
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj5, Object obj6, Object obj7) {
                    Composer composer2 = (Composer) obj6;
                    ((Integer) obj7).getClass();
                    ((AnimatedVisibilityScope) obj5).getClass();
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    Modifier modifierG = n00.g("LVTagFilter$lambda$3$1", str9);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer2).l;
                    TextOverflow.f10989a.getClass();
                    TextKt.c(str, modifierG, j6, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                    return Unit.f71739a;
                }
            }, gapComposer2), gapComposer111, 1600518 | ((i16 >> 12) & 112), 18);
            gapComposer3 = gapComposer111;
            tagFilterType3 = TagFilterType.ACTIVE_DELETABLE;
            if (tagFilterType == tagFilterType3) {
                gapComposer3.L(-933105103);
                gapComposer3.Z(r10);
                gapComposer4 = gapComposer3;
            } else {
                gapComposer3.L(-933105103);
                gapComposer3.Z(r10);
                gapComposer4 = gapComposer3;
            }
            DTFunctionNameModifier dTFunctionNameModifier13 = new DTFunctionNameModifier("LVTagFilter");
            if (str8 == null) {
                gapComposer4.L(1771025146);
                f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                gapComposer4.Z(r10);
            } else {
                gapComposer4.L(1771025146);
                f3 = LVAppDesignKitTheme.l(gapComposer4).f48416e;
                gapComposer4.Z(r10);
            }
            SpacerKt.a(gapComposer4, SizeKt.s(dTFunctionNameModifier13, f3));
            gapComposer4.Z(true);
            OpaqueKey opaqueKey12 = ComposerKt.f7940a;
            z6 = z2110;
            str4 = str9;
            lVColorScheme2 = lVColorScheme5;
            str5 = str8;
            z5 = z8;
            modifier2 = modifier3;
            gapComposer = gapComposer4;
        } else {
            gapComposerH.D();
            str4 = str2;
            lVColorScheme2 = lVColorScheme;
            z5 = z2;
            z6 = z3;
            modifier2 = modifierE;
            str5 = str3;
            gapComposer = gapComposerH;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: f80
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj5, Object obj6) {
                    ((Integer) obj6).getClass();
                    LVTagFilterKt.a(modifier2, str, str4, tagFilterType, str5, z6, lVColorScheme2, z5, function0, (Composer) obj5, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
