package com.vuitton.android.presentation.screen.mylv.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsSizeKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVNotificationIconKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.hotcontent.components.HotContentWidgetKt;
import com.vuitton.android.presentation.helper.PluralStringResourceHelperKt;
import com.vuitton.android.presentation.screen.account.editavatar.components.UserAvatarSectionKt;
import com.vuitton.android.presentation.screen.mylv.components.MyLvScreenKt;
import com.vuitton.android.presentation.screen.mylv.models.MyLvCounters;
import com.vuitton.android.presentation.screen.mylv.models.MyLvFeatureFlags;
import com.vuitton.android.presentation.screen.mylv.models.MyLvViewState;
import defpackage.cj;
import defpackage.ee0;
import defpackage.jx;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MyLvScreenKt {
    /* JADX WARN: Code duplicated, block: B:101:0x011d  */
    /* JADX WARN: Code duplicated, block: B:102:0x011f  */
    /* JADX WARN: Code duplicated, block: B:104:0x0122  */
    /* JADX WARN: Code duplicated, block: B:105:0x0124  */
    /* JADX WARN: Code duplicated, block: B:107:0x0128  */
    /* JADX WARN: Code duplicated, block: B:108:0x012b  */
    /* JADX WARN: Code duplicated, block: B:111:0x0131  */
    /* JADX WARN: Code duplicated, block: B:113:0x0145  */
    /* JADX WARN: Code duplicated, block: B:114:0x0147  */
    /* JADX WARN: Code duplicated, block: B:117:0x014e  */
    /* JADX WARN: Code duplicated, block: B:119:0x0152  */
    /* JADX WARN: Code duplicated, block: B:122:0x0194  */
    /* JADX WARN: Code duplicated, block: B:124:0x019d  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:128:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:131:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:134:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:135:0x02be  */
    /* JADX WARN: Code duplicated, block: B:137:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:138:0x0319  */
    /* JADX WARN: Code duplicated, block: B:141:0x0366  */
    /* JADX WARN: Code duplicated, block: B:142:0x0383  */
    /* JADX WARN: Code duplicated, block: B:144:0x0390  */
    /* JADX WARN: Code duplicated, block: B:146:0x0394  */
    /* JADX WARN: Code duplicated, block: B:148:0x0398  */
    /* JADX WARN: Code duplicated, block: B:150:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:153:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:155:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x006e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:46:0x007f  */
    /* JADX WARN: Code duplicated, block: B:47:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x008b  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0092  */
    /* JADX WARN: Code duplicated, block: B:57:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:64:0x00af  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:80:0x00de  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:91:0x0107  */
    /* JADX WARN: Code duplicated, block: B:92:0x0109  */
    /* JADX WARN: Code duplicated, block: B:95:0x0112 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0114  */
    /* JADX WARN: Code duplicated, block: B:98:0x0117  */
    /* JADX WARN: Code duplicated, block: B:99:0x0119  */
    public static final void a(final int i2, final int i3, Modifier modifier, boolean z, int i4, int i5, final Function0 function0, boolean z2, Boolean bool, Composer composer, final int i6, final int i7) {
        int i8;
        boolean z3;
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
        boolean z4;
        GapComposer gapComposer;
        final int i19;
        final boolean z5;
        final boolean z6;
        final int i20;
        final Boolean bool2;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i21;
        boolean z7;
        Boolean bool3;
        int i22;
        boolean z8;
        Boolean bool4;
        boolean z9;
        Object objX;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        Boolean bool5;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i23;
        int i24;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FeatureRow");
        }
        GapComposer gapComposerH = composer.h(1039776532);
        Applier applier = gapComposerH.f7976a;
        if ((i6 & 6) == 0) {
            i8 = (gapComposerH.d(i2) ? 4 : 2) | i6;
        } else {
            i8 = i6;
        }
        if ((i6 & 48) == 0) {
            i8 |= gapComposerH.d(i3) ? 32 : 16;
        }
        if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        int i25 = i7 & 8;
        if (i25 == 0) {
            if ((i6 & 3072) == 0) {
                z3 = z;
                i8 |= gapComposerH.b(z3) ? 2048 : 1024;
            }
            i9 = i7 & 16;
            if (i9 != 0) {
                if ((i6 & 24576) == 0) {
                    if (gapComposerH.d(i4)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i8 |= i10;
                }
                i11 = i7 & 32;
                if (i11 != 0) {
                    if ((196608 & i6) == 0) {
                        i12 = i5;
                        if (gapComposerH.d(i12)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i8 |= i13;
                    }
                    if ((i6 & 1572864) == 0) {
                        if (gapComposerH.y(function0)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i8 |= i24;
                    }
                    i14 = i7 & 128;
                    if (i14 != 0) {
                        if ((i6 & 12582912) == 0) {
                            if (gapComposerH.b(z2)) {
                                i15 = 8388608;
                            } else {
                                i15 = 4194304;
                            }
                            i8 |= i15;
                        }
                        i16 = i7 & 256;
                        if (i16 != 0) {
                            if ((i6 & 100663296) == 0) {
                                if (gapComposerH.K(bool)) {
                                    i17 = 67108864;
                                } else {
                                    i17 = 33554432;
                                }
                                i8 |= i17;
                            }
                            i18 = i8;
                            if ((i8 & 38347923) != 38347922) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (gapComposerH.p(i18 & 1, z4)) {
                                if (i25 != 0) {
                                    z3 = true;
                                }
                                if (i9 != 0) {
                                    i21 = 0;
                                } else {
                                    i21 = i4;
                                }
                                if (i11 != 0) {
                                    i20 = 0;
                                } else {
                                    i20 = i12;
                                }
                                if (i14 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                                if (i16 != 0) {
                                    bool3 = Boolean.FALSE;
                                } else {
                                    bool3 = bool;
                                }
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                if (z3) {
                                    gapComposerH.L(678906029);
                                    Modifier modifierD = SizeKt.d(modifierE, 1.0f);
                                    if ((i18 & 3670016) == 1048576) {
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                    objX = gapComposerH.x();
                                    if (z9 || objX == Composer.Companion.f7939a) {
                                        objX = new ee0(function0, 0);
                                        gapComposerH.q(objX);
                                    }
                                    Modifier modifierC3 = ModifierExtKt.c(modifierD, false, null, null, (Function0) objX, 31);
                                    Alignment.f8582a.getClass();
                                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    iHashCode = Long.hashCode(gapComposerH.T);
                                    persistentCompositionLocalMapU = gapComposerH.U();
                                    modifierC = ComposedModifierKt.c(gapComposerH, modifierC3);
                                    ComposeUiNode.b0.getClass();
                                    function1 = ComposeUiNode.Companion.f9641b;
                                    if (applier != null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    gapComposerH.B();
                                    z8 = z7;
                                    if (gapComposerH.S) {
                                        gapComposerH.C(function1);
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
                                    bool5 = bool3;
                                    Modifier modifierK = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                                    iHashCode2 = Long.hashCode(gapComposerH.T);
                                    persistentCompositionLocalMapU2 = gapComposerH.U();
                                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
                                    if (applier != null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    gapComposerH.B();
                                    i23 = i21;
                                    if (gapComposerH.S) {
                                        gapComposerH.C(function1);
                                    } else {
                                        gapComposerH.o();
                                    }
                                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                                    Updater.c(gapComposerH, modifierC2, function6);
                                    bool4 = bool5;
                                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                                    gapComposer = gapComposerH;
                                    TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                                    SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                                    if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                        gapComposer.L(-985163891);
                                        LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                        gapComposer.Z(false);
                                    } else {
                                        gapComposer.L(-985106231);
                                        gapComposer.Z(false);
                                    }
                                    if (i20 >= 1) {
                                        gapComposer.L(-985033443);
                                        i22 = i23;
                                        TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                        gapComposer.Z(false);
                                    } else {
                                        i22 = i23;
                                        gapComposer.L(-984542775);
                                        gapComposer.Z(false);
                                    }
                                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                                    gapComposer.Z(true);
                                    gapComposer.Z(true);
                                    if (z8) {
                                        gapComposer.L(681242034);
                                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                        gapComposer.Z(false);
                                    } else {
                                        gapComposer.L(681330446);
                                        gapComposer.Z(false);
                                    }
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer = gapComposerH;
                                    i22 = i21;
                                    z8 = z7;
                                    bool4 = bool3;
                                    gapComposer.L(681336398);
                                    gapComposer.Z(false);
                                }
                                z5 = z8;
                                bool2 = bool4;
                                i19 = i22;
                                z6 = z3;
                            } else {
                                modifierE = modifierE;
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                i19 = i4;
                                z5 = z2;
                                z6 = z3;
                                i20 = i12;
                                bool2 = bool;
                            }
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                final Modifier modifier2 = modifierE;
                                recomposeScopeImplB0.d = new Function2() { // from class: fe0
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        MyLvScreenKt.a(i2, i3, modifier2, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i8 |= 100663296;
                        i18 = i8;
                        if ((i8 & 38347923) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (gapComposerH.p(i18 & 1, z4)) {
                            if (i25 != 0) {
                                z3 = true;
                            }
                            if (i9 != 0) {
                                i21 = 0;
                            } else {
                                i21 = i4;
                            }
                            if (i11 != 0) {
                                i20 = 0;
                            } else {
                                i20 = i12;
                            }
                            if (i14 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            if (i16 != 0) {
                                bool3 = Boolean.FALSE;
                            } else {
                                bool3 = bool;
                            }
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            if (z3) {
                                gapComposerH.L(678906029);
                                Modifier modifierD2 = SizeKt.d(modifierE, 1.0f);
                                if ((i18 & 3670016) == 1048576) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                objX = gapComposerH.x();
                                if (z9) {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                } else {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                }
                                Modifier modifierC4 = ModifierExtKt.c(modifierD2, false, null, null, (Function0) objX, 31);
                                Alignment.f8582a.getClass();
                                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                iHashCode = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU = gapComposerH.U();
                                modifierC = ComposedModifierKt.c(gapComposerH, modifierC4);
                                ComposeUiNode.b0.getClass();
                                function1 = ComposeUiNode.Companion.f9641b;
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                z8 = z7;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
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
                                bool5 = bool3;
                                Modifier modifierK2 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                                iHashCode2 = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU2 = gapComposerH.U();
                                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK2);
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                i23 = i21;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                                Updater.c(gapComposerH, modifierC2, function6);
                                bool4 = bool5;
                                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                                gapComposer = gapComposerH;
                                TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                                SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    gapComposer.L(-985163891);
                                    LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(-985106231);
                                    gapComposer.Z(false);
                                }
                                if (i20 >= 1) {
                                    gapComposer.L(-985033443);
                                    i22 = i23;
                                    TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                    gapComposer.Z(false);
                                } else {
                                    i22 = i23;
                                    gapComposer.L(-984542775);
                                    gapComposer.Z(false);
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                                gapComposer.Z(true);
                                gapComposer.Z(true);
                                if (z8) {
                                    gapComposer.L(681242034);
                                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(681330446);
                                    gapComposer.Z(false);
                                }
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                i22 = i21;
                                z8 = z7;
                                bool4 = bool3;
                                gapComposer.L(681336398);
                                gapComposer.Z(false);
                            }
                            z5 = z8;
                            bool2 = bool4;
                            i19 = i22;
                            z6 = z3;
                        } else {
                            modifierE = modifierE;
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            i19 = i4;
                            z5 = z2;
                            z6 = z3;
                            i20 = i12;
                            bool2 = bool;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier3 = modifierE;
                            recomposeScopeImplB0.d = new Function2() { // from class: fe0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    MyLvScreenKt.a(i2, i3, modifier3, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i8 |= 12582912;
                    i16 = i7 & 256;
                    if (i16 != 0) {
                        if ((i6 & 100663296) == 0) {
                            if (gapComposerH.K(bool)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i8 |= i17;
                        }
                        i18 = i8;
                        if ((i8 & 38347923) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (gapComposerH.p(i18 & 1, z4)) {
                            if (i25 != 0) {
                                z3 = true;
                            }
                            if (i9 != 0) {
                                i21 = 0;
                            } else {
                                i21 = i4;
                            }
                            if (i11 != 0) {
                                i20 = 0;
                            } else {
                                i20 = i12;
                            }
                            if (i14 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            if (i16 != 0) {
                                bool3 = Boolean.FALSE;
                            } else {
                                bool3 = bool;
                            }
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            if (z3) {
                                gapComposerH.L(678906029);
                                Modifier modifierD3 = SizeKt.d(modifierE, 1.0f);
                                if ((i18 & 3670016) == 1048576) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                objX = gapComposerH.x();
                                if (z9) {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                } else {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                }
                                Modifier modifierC5 = ModifierExtKt.c(modifierD3, false, null, null, (Function0) objX, 31);
                                Alignment.f8582a.getClass();
                                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                iHashCode = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU = gapComposerH.U();
                                modifierC = ComposedModifierKt.c(gapComposerH, modifierC5);
                                ComposeUiNode.b0.getClass();
                                function1 = ComposeUiNode.Companion.f9641b;
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                z8 = z7;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                function2 = ComposeUiNode.Companion.f9644f;
                                Updater.c(gapComposerH, measurePolicyD, function2);
                                function3 = ComposeUiNode.Companion.f9643e;
                                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                                Integer numValueOf3 = Integer.valueOf(iHashCode);
                                function4 = ComposeUiNode.Companion.g;
                                Updater.c(gapComposerH, numValueOf3, function4);
                                function5 = ComposeUiNode.Companion.f9645h;
                                Updater.b(gapComposerH, function5);
                                function6 = ComposeUiNode.Companion.d;
                                bool5 = bool3;
                                Modifier modifierK3 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                                iHashCode2 = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU2 = gapComposerH.U();
                                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK3);
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                i23 = i21;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                                Updater.c(gapComposerH, modifierC2, function6);
                                bool4 = bool5;
                                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                                gapComposer = gapComposerH;
                                TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                                SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    gapComposer.L(-985163891);
                                    LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(-985106231);
                                    gapComposer.Z(false);
                                }
                                if (i20 >= 1) {
                                    gapComposer.L(-985033443);
                                    i22 = i23;
                                    TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                    gapComposer.Z(false);
                                } else {
                                    i22 = i23;
                                    gapComposer.L(-984542775);
                                    gapComposer.Z(false);
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                                gapComposer.Z(true);
                                gapComposer.Z(true);
                                if (z8) {
                                    gapComposer.L(681242034);
                                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(681330446);
                                    gapComposer.Z(false);
                                }
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                i22 = i21;
                                z8 = z7;
                                bool4 = bool3;
                                gapComposer.L(681336398);
                                gapComposer.Z(false);
                            }
                            z5 = z8;
                            bool2 = bool4;
                            i19 = i22;
                            z6 = z3;
                        } else {
                            modifierE = modifierE;
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            i19 = i4;
                            z5 = z2;
                            z6 = z3;
                            i20 = i12;
                            bool2 = bool;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier4 = modifierE;
                            recomposeScopeImplB0.d = new Function2() { // from class: fe0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    MyLvScreenKt.a(i2, i3, modifier4, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i8 |= 100663296;
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD4 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC6 = ModifierExtKt.c(modifierD4, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC6);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf4 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf4, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK4 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK4);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier5 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier5, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= ImageMetadata.EDGE_MODE;
                i12 = i5;
                if ((i6 & 1572864) == 0) {
                    if (gapComposerH.y(function0)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i8 |= i24;
                }
                i14 = i7 & 128;
                if (i14 != 0) {
                    if ((i6 & 12582912) == 0) {
                        if (gapComposerH.b(z2)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i8 |= i15;
                    }
                    i16 = i7 & 256;
                    if (i16 != 0) {
                        if ((i6 & 100663296) == 0) {
                            if (gapComposerH.K(bool)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i8 |= i17;
                        }
                        i18 = i8;
                        if ((i8 & 38347923) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (gapComposerH.p(i18 & 1, z4)) {
                            if (i25 != 0) {
                                z3 = true;
                            }
                            if (i9 != 0) {
                                i21 = 0;
                            } else {
                                i21 = i4;
                            }
                            if (i11 != 0) {
                                i20 = 0;
                            } else {
                                i20 = i12;
                            }
                            if (i14 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            if (i16 != 0) {
                                bool3 = Boolean.FALSE;
                            } else {
                                bool3 = bool;
                            }
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            if (z3) {
                                gapComposerH.L(678906029);
                                Modifier modifierD5 = SizeKt.d(modifierE, 1.0f);
                                if ((i18 & 3670016) == 1048576) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                objX = gapComposerH.x();
                                if (z9) {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                } else {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                }
                                Modifier modifierC7 = ModifierExtKt.c(modifierD5, false, null, null, (Function0) objX, 31);
                                Alignment.f8582a.getClass();
                                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                iHashCode = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU = gapComposerH.U();
                                modifierC = ComposedModifierKt.c(gapComposerH, modifierC7);
                                ComposeUiNode.b0.getClass();
                                function1 = ComposeUiNode.Companion.f9641b;
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                z8 = z7;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                function2 = ComposeUiNode.Companion.f9644f;
                                Updater.c(gapComposerH, measurePolicyD, function2);
                                function3 = ComposeUiNode.Companion.f9643e;
                                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                                Integer numValueOf5 = Integer.valueOf(iHashCode);
                                function4 = ComposeUiNode.Companion.g;
                                Updater.c(gapComposerH, numValueOf5, function4);
                                function5 = ComposeUiNode.Companion.f9645h;
                                Updater.b(gapComposerH, function5);
                                function6 = ComposeUiNode.Companion.d;
                                bool5 = bool3;
                                Modifier modifierK5 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                                iHashCode2 = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU2 = gapComposerH.U();
                                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK5);
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                i23 = i21;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                                Updater.c(gapComposerH, modifierC2, function6);
                                bool4 = bool5;
                                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                                gapComposer = gapComposerH;
                                TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                                SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    gapComposer.L(-985163891);
                                    LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(-985106231);
                                    gapComposer.Z(false);
                                }
                                if (i20 >= 1) {
                                    gapComposer.L(-985033443);
                                    i22 = i23;
                                    TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                    gapComposer.Z(false);
                                } else {
                                    i22 = i23;
                                    gapComposer.L(-984542775);
                                    gapComposer.Z(false);
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                                gapComposer.Z(true);
                                gapComposer.Z(true);
                                if (z8) {
                                    gapComposer.L(681242034);
                                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(681330446);
                                    gapComposer.Z(false);
                                }
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                i22 = i21;
                                z8 = z7;
                                bool4 = bool3;
                                gapComposer.L(681336398);
                                gapComposer.Z(false);
                            }
                            z5 = z8;
                            bool2 = bool4;
                            i19 = i22;
                            z6 = z3;
                        } else {
                            modifierE = modifierE;
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            i19 = i4;
                            z5 = z2;
                            z6 = z3;
                            i20 = i12;
                            bool2 = bool;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier6 = modifierE;
                            recomposeScopeImplB0.d = new Function2() { // from class: fe0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    MyLvScreenKt.a(i2, i3, modifier6, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i8 |= 100663296;
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD6 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC8 = ModifierExtKt.c(modifierD6, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC8);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf6 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf6, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK6 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK6);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier7 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier7, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 12582912;
                i16 = i7 & 256;
                if (i16 != 0) {
                    if ((i6 & 100663296) == 0) {
                        if (gapComposerH.K(bool)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i8 |= i17;
                    }
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD7 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC9 = ModifierExtKt.c(modifierD7, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC9);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf7 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf7, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK7 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK7);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier8 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier8, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 100663296;
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD8 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC10 = ModifierExtKt.c(modifierD8, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC10);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf8 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf8, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK8 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK8);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier9 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier9, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 24576;
            i11 = i7 & 32;
            if (i11 != 0) {
                if ((196608 & i6) == 0) {
                    i12 = i5;
                    if (gapComposerH.d(i12)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i8 |= i13;
                }
                if ((i6 & 1572864) == 0) {
                    if (gapComposerH.y(function0)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i8 |= i24;
                }
                i14 = i7 & 128;
                if (i14 != 0) {
                    if ((i6 & 12582912) == 0) {
                        if (gapComposerH.b(z2)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i8 |= i15;
                    }
                    i16 = i7 & 256;
                    if (i16 != 0) {
                        if ((i6 & 100663296) == 0) {
                            if (gapComposerH.K(bool)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i8 |= i17;
                        }
                        i18 = i8;
                        if ((i8 & 38347923) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (gapComposerH.p(i18 & 1, z4)) {
                            if (i25 != 0) {
                                z3 = true;
                            }
                            if (i9 != 0) {
                                i21 = 0;
                            } else {
                                i21 = i4;
                            }
                            if (i11 != 0) {
                                i20 = 0;
                            } else {
                                i20 = i12;
                            }
                            if (i14 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            if (i16 != 0) {
                                bool3 = Boolean.FALSE;
                            } else {
                                bool3 = bool;
                            }
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            if (z3) {
                                gapComposerH.L(678906029);
                                Modifier modifierD9 = SizeKt.d(modifierE, 1.0f);
                                if ((i18 & 3670016) == 1048576) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                objX = gapComposerH.x();
                                if (z9) {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                } else {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                }
                                Modifier modifierC11 = ModifierExtKt.c(modifierD9, false, null, null, (Function0) objX, 31);
                                Alignment.f8582a.getClass();
                                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                iHashCode = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU = gapComposerH.U();
                                modifierC = ComposedModifierKt.c(gapComposerH, modifierC11);
                                ComposeUiNode.b0.getClass();
                                function1 = ComposeUiNode.Companion.f9641b;
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                z8 = z7;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                function2 = ComposeUiNode.Companion.f9644f;
                                Updater.c(gapComposerH, measurePolicyD, function2);
                                function3 = ComposeUiNode.Companion.f9643e;
                                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                                Integer numValueOf9 = Integer.valueOf(iHashCode);
                                function4 = ComposeUiNode.Companion.g;
                                Updater.c(gapComposerH, numValueOf9, function4);
                                function5 = ComposeUiNode.Companion.f9645h;
                                Updater.b(gapComposerH, function5);
                                function6 = ComposeUiNode.Companion.d;
                                bool5 = bool3;
                                Modifier modifierK9 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                                iHashCode2 = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU2 = gapComposerH.U();
                                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK9);
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                i23 = i21;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                                Updater.c(gapComposerH, modifierC2, function6);
                                bool4 = bool5;
                                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                                gapComposer = gapComposerH;
                                TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                                SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    gapComposer.L(-985163891);
                                    LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(-985106231);
                                    gapComposer.Z(false);
                                }
                                if (i20 >= 1) {
                                    gapComposer.L(-985033443);
                                    i22 = i23;
                                    TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                    gapComposer.Z(false);
                                } else {
                                    i22 = i23;
                                    gapComposer.L(-984542775);
                                    gapComposer.Z(false);
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                                gapComposer.Z(true);
                                gapComposer.Z(true);
                                if (z8) {
                                    gapComposer.L(681242034);
                                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(681330446);
                                    gapComposer.Z(false);
                                }
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                i22 = i21;
                                z8 = z7;
                                bool4 = bool3;
                                gapComposer.L(681336398);
                                gapComposer.Z(false);
                            }
                            z5 = z8;
                            bool2 = bool4;
                            i19 = i22;
                            z6 = z3;
                        } else {
                            modifierE = modifierE;
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            i19 = i4;
                            z5 = z2;
                            z6 = z3;
                            i20 = i12;
                            bool2 = bool;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier10 = modifierE;
                            recomposeScopeImplB0.d = new Function2() { // from class: fe0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    MyLvScreenKt.a(i2, i3, modifier10, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i8 |= 100663296;
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD10 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC12 = ModifierExtKt.c(modifierD10, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC12);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf10 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf10, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK10 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK10);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier11 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier11, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 12582912;
                i16 = i7 & 256;
                if (i16 != 0) {
                    if ((i6 & 100663296) == 0) {
                        if (gapComposerH.K(bool)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i8 |= i17;
                    }
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD11 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC13 = ModifierExtKt.c(modifierD11, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC13);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf11 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf11, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK11 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK11);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier12 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier12, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 100663296;
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD12 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC14 = ModifierExtKt.c(modifierD12, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC14);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf12 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf12, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK12 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK12);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier13 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier13, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= ImageMetadata.EDGE_MODE;
            i12 = i5;
            if ((i6 & 1572864) == 0) {
                if (gapComposerH.y(function0)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i8 |= i24;
            }
            i14 = i7 & 128;
            if (i14 != 0) {
                if ((i6 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i8 |= i15;
                }
                i16 = i7 & 256;
                if (i16 != 0) {
                    if ((i6 & 100663296) == 0) {
                        if (gapComposerH.K(bool)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i8 |= i17;
                    }
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD13 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC15 = ModifierExtKt.c(modifierD13, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC15);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf13 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf13, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK13 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK13);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier14 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier14, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 100663296;
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD14 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC16 = ModifierExtKt.c(modifierD14, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC16);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf14 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf14, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK14 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK14);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier15 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier15, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 12582912;
            i16 = i7 & 256;
            if (i16 != 0) {
                if ((i6 & 100663296) == 0) {
                    if (gapComposerH.K(bool)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i8 |= i17;
                }
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD15 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC17 = ModifierExtKt.c(modifierD15, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC17);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf15 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf15, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK15 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK15);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier16 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier16, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 100663296;
            i18 = i8;
            if ((i8 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i18 & 1, z4)) {
                if (i25 != 0) {
                    z3 = true;
                }
                if (i9 != 0) {
                    i21 = 0;
                } else {
                    i21 = i4;
                }
                if (i11 != 0) {
                    i20 = 0;
                } else {
                    i20 = i12;
                }
                if (i14 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                if (i16 != 0) {
                    bool3 = Boolean.FALSE;
                } else {
                    bool3 = bool;
                }
                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                if (z3) {
                    gapComposerH.L(678906029);
                    Modifier modifierD16 = SizeKt.d(modifierE, 1.0f);
                    if ((i18 & 3670016) == 1048576) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objX = gapComposerH.x();
                    if (z9) {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierC18 = ModifierExtKt.c(modifierD16, false, null, null, (Function0) objX, 31);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierC18);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    z8 = z7;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf16 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf16, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    bool5 = bool3;
                    Modifier modifierK16 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK16);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    i23 = i21;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    bool4 = bool5;
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                    gapComposer = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                    SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                    if (Intrinsics.c(bool4, Boolean.TRUE)) {
                        gapComposer.L(-985163891);
                        LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(-985106231);
                        gapComposer.Z(false);
                    }
                    if (i20 >= 1) {
                        gapComposer.L(-985033443);
                        i22 = i23;
                        TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                        gapComposer.Z(false);
                    } else {
                        i22 = i23;
                        gapComposer.L(-984542775);
                        gapComposer.Z(false);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    if (z8) {
                        gapComposer.L(681242034);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(681330446);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    i22 = i21;
                    z8 = z7;
                    bool4 = bool3;
                    gapComposer.L(681336398);
                    gapComposer.Z(false);
                }
                z5 = z8;
                bool2 = bool4;
                i19 = i22;
                z6 = z3;
            } else {
                modifierE = modifierE;
                gapComposer = gapComposerH;
                gapComposer.D();
                i19 = i4;
                z5 = z2;
                z6 = z3;
                i20 = i12;
                bool2 = bool;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier17 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: fe0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        MyLvScreenKt.a(i2, i3, modifier17, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= 3072;
        z3 = z;
        i9 = i7 & 16;
        if (i9 != 0) {
            if ((i6 & 24576) == 0) {
                if (gapComposerH.d(i4)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i8 |= i10;
            }
            i11 = i7 & 32;
            if (i11 != 0) {
                if ((196608 & i6) == 0) {
                    i12 = i5;
                    if (gapComposerH.d(i12)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i8 |= i13;
                }
                if ((i6 & 1572864) == 0) {
                    if (gapComposerH.y(function0)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i8 |= i24;
                }
                i14 = i7 & 128;
                if (i14 != 0) {
                    if ((i6 & 12582912) == 0) {
                        if (gapComposerH.b(z2)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i8 |= i15;
                    }
                    i16 = i7 & 256;
                    if (i16 != 0) {
                        if ((i6 & 100663296) == 0) {
                            if (gapComposerH.K(bool)) {
                                i17 = 67108864;
                            } else {
                                i17 = 33554432;
                            }
                            i8 |= i17;
                        }
                        i18 = i8;
                        if ((i8 & 38347923) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (gapComposerH.p(i18 & 1, z4)) {
                            if (i25 != 0) {
                                z3 = true;
                            }
                            if (i9 != 0) {
                                i21 = 0;
                            } else {
                                i21 = i4;
                            }
                            if (i11 != 0) {
                                i20 = 0;
                            } else {
                                i20 = i12;
                            }
                            if (i14 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            if (i16 != 0) {
                                bool3 = Boolean.FALSE;
                            } else {
                                bool3 = bool;
                            }
                            OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                            if (z3) {
                                gapComposerH.L(678906029);
                                Modifier modifierD17 = SizeKt.d(modifierE, 1.0f);
                                if ((i18 & 3670016) == 1048576) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                objX = gapComposerH.x();
                                if (z9) {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                } else {
                                    objX = new ee0(function0, 0);
                                    gapComposerH.q(objX);
                                }
                                Modifier modifierC19 = ModifierExtKt.c(modifierD17, false, null, null, (Function0) objX, 31);
                                Alignment.f8582a.getClass();
                                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                iHashCode = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU = gapComposerH.U();
                                modifierC = ComposedModifierKt.c(gapComposerH, modifierC19);
                                ComposeUiNode.b0.getClass();
                                function1 = ComposeUiNode.Companion.f9641b;
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                z8 = z7;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                function2 = ComposeUiNode.Companion.f9644f;
                                Updater.c(gapComposerH, measurePolicyD, function2);
                                function3 = ComposeUiNode.Companion.f9643e;
                                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                                Integer numValueOf17 = Integer.valueOf(iHashCode);
                                function4 = ComposeUiNode.Companion.g;
                                Updater.c(gapComposerH, numValueOf17, function4);
                                function5 = ComposeUiNode.Companion.f9645h;
                                Updater.b(gapComposerH, function5);
                                function6 = ComposeUiNode.Companion.d;
                                bool5 = bool3;
                                Modifier modifierK17 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                                iHashCode2 = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU2 = gapComposerH.U();
                                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK17);
                                if (applier != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                i23 = i21;
                                if (gapComposerH.S) {
                                    gapComposerH.C(function1);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                                Updater.c(gapComposerH, modifierC2, function6);
                                bool4 = bool5;
                                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                                gapComposer = gapComposerH;
                                TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                                SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                    gapComposer.L(-985163891);
                                    LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(-985106231);
                                    gapComposer.Z(false);
                                }
                                if (i20 >= 1) {
                                    gapComposer.L(-985033443);
                                    i22 = i23;
                                    TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                    gapComposer.Z(false);
                                } else {
                                    i22 = i23;
                                    gapComposer.L(-984542775);
                                    gapComposer.Z(false);
                                }
                                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                                gapComposer.Z(true);
                                gapComposer.Z(true);
                                if (z8) {
                                    gapComposer.L(681242034);
                                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposer.L(681330446);
                                    gapComposer.Z(false);
                                }
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                i22 = i21;
                                z8 = z7;
                                bool4 = bool3;
                                gapComposer.L(681336398);
                                gapComposer.Z(false);
                            }
                            z5 = z8;
                            bool2 = bool4;
                            i19 = i22;
                            z6 = z3;
                        } else {
                            modifierE = modifierE;
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            i19 = i4;
                            z5 = z2;
                            z6 = z3;
                            i20 = i12;
                            bool2 = bool;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            final Modifier modifier18 = modifierE;
                            recomposeScopeImplB0.d = new Function2() { // from class: fe0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    MyLvScreenKt.a(i2, i3, modifier18, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i8 |= 100663296;
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD18 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC110 = ModifierExtKt.c(modifierD18, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC110);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf18 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf18, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK18 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK18);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier19 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier19, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 12582912;
                i16 = i7 & 256;
                if (i16 != 0) {
                    if ((i6 & 100663296) == 0) {
                        if (gapComposerH.K(bool)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i8 |= i17;
                    }
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD19 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC111 = ModifierExtKt.c(modifierD19, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC111);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf19 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf19, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK19 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK19);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier110 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier110, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 100663296;
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey110 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD110 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC112 = ModifierExtKt.c(modifierD110, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC112);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf110 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf110, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK110 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK110);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier111 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier111, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= ImageMetadata.EDGE_MODE;
            i12 = i5;
            if ((i6 & 1572864) == 0) {
                if (gapComposerH.y(function0)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i8 |= i24;
            }
            i14 = i7 & 128;
            if (i14 != 0) {
                if ((i6 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i8 |= i15;
                }
                i16 = i7 & 256;
                if (i16 != 0) {
                    if ((i6 & 100663296) == 0) {
                        if (gapComposerH.K(bool)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i8 |= i17;
                    }
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD111 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC113 = ModifierExtKt.c(modifierD111, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC113);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf111 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf111, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK111 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK111);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier112 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier112, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 100663296;
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD112 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC114 = ModifierExtKt.c(modifierD112, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC114);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf112 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf112, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK112 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK112);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier113 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier113, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 12582912;
            i16 = i7 & 256;
            if (i16 != 0) {
                if ((i6 & 100663296) == 0) {
                    if (gapComposerH.K(bool)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i8 |= i17;
                }
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey113 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD113 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC115 = ModifierExtKt.c(modifierD113, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC115);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf113 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf113, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK113 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK113);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier114 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier114, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 100663296;
            i18 = i8;
            if ((i8 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i18 & 1, z4)) {
                if (i25 != 0) {
                    z3 = true;
                }
                if (i9 != 0) {
                    i21 = 0;
                } else {
                    i21 = i4;
                }
                if (i11 != 0) {
                    i20 = 0;
                } else {
                    i20 = i12;
                }
                if (i14 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                if (i16 != 0) {
                    bool3 = Boolean.FALSE;
                } else {
                    bool3 = bool;
                }
                OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                if (z3) {
                    gapComposerH.L(678906029);
                    Modifier modifierD114 = SizeKt.d(modifierE, 1.0f);
                    if ((i18 & 3670016) == 1048576) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objX = gapComposerH.x();
                    if (z9) {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierC116 = ModifierExtKt.c(modifierD114, false, null, null, (Function0) objX, 31);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierC116);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    z8 = z7;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf114 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf114, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    bool5 = bool3;
                    Modifier modifierK114 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK114);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    i23 = i21;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    bool4 = bool5;
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                    gapComposer = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                    SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                    if (Intrinsics.c(bool4, Boolean.TRUE)) {
                        gapComposer.L(-985163891);
                        LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(-985106231);
                        gapComposer.Z(false);
                    }
                    if (i20 >= 1) {
                        gapComposer.L(-985033443);
                        i22 = i23;
                        TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                        gapComposer.Z(false);
                    } else {
                        i22 = i23;
                        gapComposer.L(-984542775);
                        gapComposer.Z(false);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    if (z8) {
                        gapComposer.L(681242034);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(681330446);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    i22 = i21;
                    z8 = z7;
                    bool4 = bool3;
                    gapComposer.L(681336398);
                    gapComposer.Z(false);
                }
                z5 = z8;
                bool2 = bool4;
                i19 = i22;
                z6 = z3;
            } else {
                modifierE = modifierE;
                gapComposer = gapComposerH;
                gapComposer.D();
                i19 = i4;
                z5 = z2;
                z6 = z3;
                i20 = i12;
                bool2 = bool;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier115 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: fe0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        MyLvScreenKt.a(i2, i3, modifier115, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= 24576;
        i11 = i7 & 32;
        if (i11 != 0) {
            if ((196608 & i6) == 0) {
                i12 = i5;
                if (gapComposerH.d(i12)) {
                    i13 = 131072;
                } else {
                    i13 = 65536;
                }
                i8 |= i13;
            }
            if ((i6 & 1572864) == 0) {
                if (gapComposerH.y(function0)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i8 |= i24;
            }
            i14 = i7 & 128;
            if (i14 != 0) {
                if ((i6 & 12582912) == 0) {
                    if (gapComposerH.b(z2)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i8 |= i15;
                }
                i16 = i7 & 256;
                if (i16 != 0) {
                    if ((i6 & 100663296) == 0) {
                        if (gapComposerH.K(bool)) {
                            i17 = 67108864;
                        } else {
                            i17 = 33554432;
                        }
                        i8 |= i17;
                    }
                    i18 = i8;
                    if ((i8 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (gapComposerH.p(i18 & 1, z4)) {
                        if (i25 != 0) {
                            z3 = true;
                        }
                        if (i9 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i4;
                        }
                        if (i11 != 0) {
                            i20 = 0;
                        } else {
                            i20 = i12;
                        }
                        if (i14 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        if (i16 != 0) {
                            bool3 = Boolean.FALSE;
                        } else {
                            bool3 = bool;
                        }
                        OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                        if (z3) {
                            gapComposerH.L(678906029);
                            Modifier modifierD115 = SizeKt.d(modifierE, 1.0f);
                            if ((i18 & 3670016) == 1048576) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objX = gapComposerH.x();
                            if (z9) {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            } else {
                                objX = new ee0(function0, 0);
                                gapComposerH.q(objX);
                            }
                            Modifier modifierC117 = ModifierExtKt.c(modifierD115, false, null, null, (Function0) objX, 31);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierC117);
                            ComposeUiNode.b0.getClass();
                            function1 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            z8 = z7;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            function2 = ComposeUiNode.Companion.f9644f;
                            Updater.c(gapComposerH, measurePolicyD, function2);
                            function3 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                            Integer numValueOf115 = Integer.valueOf(iHashCode);
                            function4 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf115, function4);
                            function5 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function5);
                            function6 = ComposeUiNode.Companion.d;
                            bool5 = bool3;
                            Modifier modifierK115 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK115);
                            if (applier != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            i23 = i21;
                            if (gapComposerH.S) {
                                gapComposerH.C(function1);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                            Updater.c(gapComposerH, modifierC2, function6);
                            bool4 = bool5;
                            IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                            gapComposer = gapComposerH;
                            TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                            SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                            if (Intrinsics.c(bool4, Boolean.TRUE)) {
                                gapComposer.L(-985163891);
                                LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(-985106231);
                                gapComposer.Z(false);
                            }
                            if (i20 >= 1) {
                                gapComposer.L(-985033443);
                                i22 = i23;
                                TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                                gapComposer.Z(false);
                            } else {
                                i22 = i23;
                                gapComposer.L(-984542775);
                                gapComposer.Z(false);
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                            gapComposer.Z(true);
                            gapComposer.Z(true);
                            if (z8) {
                                gapComposer.L(681242034);
                                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                                gapComposer.Z(false);
                            } else {
                                gapComposer.L(681330446);
                                gapComposer.Z(false);
                            }
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            i22 = i21;
                            z8 = z7;
                            bool4 = bool3;
                            gapComposer.L(681336398);
                            gapComposer.Z(false);
                        }
                        z5 = z8;
                        bool2 = bool4;
                        i19 = i22;
                        z6 = z3;
                    } else {
                        modifierE = modifierE;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        i19 = i4;
                        z5 = z2;
                        z6 = z3;
                        i20 = i12;
                        bool2 = bool;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier116 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: fe0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                MyLvScreenKt.a(i2, i3, modifier116, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i8 |= 100663296;
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey116 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD116 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC118 = ModifierExtKt.c(modifierD116, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC118);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf116 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf116, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK116 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK116);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier117 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier117, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 12582912;
            i16 = i7 & 256;
            if (i16 != 0) {
                if ((i6 & 100663296) == 0) {
                    if (gapComposerH.K(bool)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i8 |= i17;
                }
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey117 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD117 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC119 = ModifierExtKt.c(modifierD117, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC119);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf117 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf117, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK117 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK117);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier118 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier118, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 100663296;
            i18 = i8;
            if ((i8 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i18 & 1, z4)) {
                if (i25 != 0) {
                    z3 = true;
                }
                if (i9 != 0) {
                    i21 = 0;
                } else {
                    i21 = i4;
                }
                if (i11 != 0) {
                    i20 = 0;
                } else {
                    i20 = i12;
                }
                if (i14 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                if (i16 != 0) {
                    bool3 = Boolean.FALSE;
                } else {
                    bool3 = bool;
                }
                OpaqueKey opaqueKey118 = ComposerKt.f7940a;
                if (z3) {
                    gapComposerH.L(678906029);
                    Modifier modifierD118 = SizeKt.d(modifierE, 1.0f);
                    if ((i18 & 3670016) == 1048576) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objX = gapComposerH.x();
                    if (z9) {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierC1110 = ModifierExtKt.c(modifierD118, false, null, null, (Function0) objX, 31);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierC1110);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    z8 = z7;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf118 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf118, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    bool5 = bool3;
                    Modifier modifierK118 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK118);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    i23 = i21;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    bool4 = bool5;
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                    gapComposer = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                    SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                    if (Intrinsics.c(bool4, Boolean.TRUE)) {
                        gapComposer.L(-985163891);
                        LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(-985106231);
                        gapComposer.Z(false);
                    }
                    if (i20 >= 1) {
                        gapComposer.L(-985033443);
                        i22 = i23;
                        TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                        gapComposer.Z(false);
                    } else {
                        i22 = i23;
                        gapComposer.L(-984542775);
                        gapComposer.Z(false);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    if (z8) {
                        gapComposer.L(681242034);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(681330446);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    i22 = i21;
                    z8 = z7;
                    bool4 = bool3;
                    gapComposer.L(681336398);
                    gapComposer.Z(false);
                }
                z5 = z8;
                bool2 = bool4;
                i19 = i22;
                z6 = z3;
            } else {
                modifierE = modifierE;
                gapComposer = gapComposerH;
                gapComposer.D();
                i19 = i4;
                z5 = z2;
                z6 = z3;
                i20 = i12;
                bool2 = bool;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier119 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: fe0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        MyLvScreenKt.a(i2, i3, modifier119, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= ImageMetadata.EDGE_MODE;
        i12 = i5;
        if ((i6 & 1572864) == 0) {
            if (gapComposerH.y(function0)) {
                i24 = 1048576;
            } else {
                i24 = 524288;
            }
            i8 |= i24;
        }
        i14 = i7 & 128;
        if (i14 != 0) {
            if ((i6 & 12582912) == 0) {
                if (gapComposerH.b(z2)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
                i8 |= i15;
            }
            i16 = i7 & 256;
            if (i16 != 0) {
                if ((i6 & 100663296) == 0) {
                    if (gapComposerH.K(bool)) {
                        i17 = 67108864;
                    } else {
                        i17 = 33554432;
                    }
                    i8 |= i17;
                }
                i18 = i8;
                if ((i8 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i18 & 1, z4)) {
                    if (i25 != 0) {
                        z3 = true;
                    }
                    if (i9 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i4;
                    }
                    if (i11 != 0) {
                        i20 = 0;
                    } else {
                        i20 = i12;
                    }
                    if (i14 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    if (i16 != 0) {
                        bool3 = Boolean.FALSE;
                    } else {
                        bool3 = bool;
                    }
                    OpaqueKey opaqueKey119 = ComposerKt.f7940a;
                    if (z3) {
                        gapComposerH.L(678906029);
                        Modifier modifierD119 = SizeKt.d(modifierE, 1.0f);
                        if ((i18 & 3670016) == 1048576) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objX = gapComposerH.x();
                        if (z9) {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        } else {
                            objX = new ee0(function0, 0);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierC1111 = ModifierExtKt.c(modifierD119, false, null, null, (Function0) objX, 31);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierC1111);
                        ComposeUiNode.b0.getClass();
                        function1 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        z8 = z7;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                        Integer numValueOf119 = Integer.valueOf(iHashCode);
                        function4 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf119, function4);
                        function5 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function5);
                        function6 = ComposeUiNode.Companion.d;
                        bool5 = bool3;
                        Modifier modifierK119 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK119);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        i23 = i21;
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        bool4 = bool5;
                        IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                        gapComposer = gapComposerH;
                        TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                        SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                        if (Intrinsics.c(bool4, Boolean.TRUE)) {
                            gapComposer.L(-985163891);
                            LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(-985106231);
                            gapComposer.Z(false);
                        }
                        if (i20 >= 1) {
                            gapComposer.L(-985033443);
                            i22 = i23;
                            TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                            gapComposer.Z(false);
                        } else {
                            i22 = i23;
                            gapComposer.L(-984542775);
                            gapComposer.Z(false);
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        if (z8) {
                            gapComposer.L(681242034);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                            gapComposer.Z(false);
                        } else {
                            gapComposer.L(681330446);
                            gapComposer.Z(false);
                        }
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        i22 = i21;
                        z8 = z7;
                        bool4 = bool3;
                        gapComposer.L(681336398);
                        gapComposer.Z(false);
                    }
                    z5 = z8;
                    bool2 = bool4;
                    i19 = i22;
                    z6 = z3;
                } else {
                    modifierE = modifierE;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    i19 = i4;
                    z5 = z2;
                    z6 = z3;
                    i20 = i12;
                    bool2 = bool;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier1110 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: fe0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            MyLvScreenKt.a(i2, i3, modifier1110, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 |= 100663296;
            i18 = i8;
            if ((i8 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i18 & 1, z4)) {
                if (i25 != 0) {
                    z3 = true;
                }
                if (i9 != 0) {
                    i21 = 0;
                } else {
                    i21 = i4;
                }
                if (i11 != 0) {
                    i20 = 0;
                } else {
                    i20 = i12;
                }
                if (i14 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                if (i16 != 0) {
                    bool3 = Boolean.FALSE;
                } else {
                    bool3 = bool;
                }
                OpaqueKey opaqueKey1110 = ComposerKt.f7940a;
                if (z3) {
                    gapComposerH.L(678906029);
                    Modifier modifierD1110 = SizeKt.d(modifierE, 1.0f);
                    if ((i18 & 3670016) == 1048576) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objX = gapComposerH.x();
                    if (z9) {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierC1112 = ModifierExtKt.c(modifierD1110, false, null, null, (Function0) objX, 31);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierC1112);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    z8 = z7;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf1110 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf1110, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    bool5 = bool3;
                    Modifier modifierK1110 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK1110);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    i23 = i21;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    bool4 = bool5;
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                    gapComposer = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                    SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                    if (Intrinsics.c(bool4, Boolean.TRUE)) {
                        gapComposer.L(-985163891);
                        LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(-985106231);
                        gapComposer.Z(false);
                    }
                    if (i20 >= 1) {
                        gapComposer.L(-985033443);
                        i22 = i23;
                        TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                        gapComposer.Z(false);
                    } else {
                        i22 = i23;
                        gapComposer.L(-984542775);
                        gapComposer.Z(false);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    if (z8) {
                        gapComposer.L(681242034);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(681330446);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    i22 = i21;
                    z8 = z7;
                    bool4 = bool3;
                    gapComposer.L(681336398);
                    gapComposer.Z(false);
                }
                z5 = z8;
                bool2 = bool4;
                i19 = i22;
                z6 = z3;
            } else {
                modifierE = modifierE;
                gapComposer = gapComposerH;
                gapComposer.D();
                i19 = i4;
                z5 = z2;
                z6 = z3;
                i20 = i12;
                bool2 = bool;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier1111 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: fe0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        MyLvScreenKt.a(i2, i3, modifier1111, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= 12582912;
        i16 = i7 & 256;
        if (i16 != 0) {
            if ((i6 & 100663296) == 0) {
                if (gapComposerH.K(bool)) {
                    i17 = 67108864;
                } else {
                    i17 = 33554432;
                }
                i8 |= i17;
            }
            i18 = i8;
            if ((i8 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i18 & 1, z4)) {
                if (i25 != 0) {
                    z3 = true;
                }
                if (i9 != 0) {
                    i21 = 0;
                } else {
                    i21 = i4;
                }
                if (i11 != 0) {
                    i20 = 0;
                } else {
                    i20 = i12;
                }
                if (i14 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                if (i16 != 0) {
                    bool3 = Boolean.FALSE;
                } else {
                    bool3 = bool;
                }
                OpaqueKey opaqueKey1111 = ComposerKt.f7940a;
                if (z3) {
                    gapComposerH.L(678906029);
                    Modifier modifierD1111 = SizeKt.d(modifierE, 1.0f);
                    if ((i18 & 3670016) == 1048576) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objX = gapComposerH.x();
                    if (z9) {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ee0(function0, 0);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierC1113 = ModifierExtKt.c(modifierD1111, false, null, null, (Function0) objX, 31);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierC1113);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    z8 = z7;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf1111 = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf1111, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    bool5 = bool3;
                    Modifier modifierK1111 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK1111);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    i23 = i21;
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    bool4 = bool5;
                    IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                    gapComposer = gapComposerH;
                    TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                    SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                    if (Intrinsics.c(bool4, Boolean.TRUE)) {
                        gapComposer.L(-985163891);
                        LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(-985106231);
                        gapComposer.Z(false);
                    }
                    if (i20 >= 1) {
                        gapComposer.L(-985033443);
                        i22 = i23;
                        TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                        gapComposer.Z(false);
                    } else {
                        i22 = i23;
                        gapComposer.L(-984542775);
                        gapComposer.Z(false);
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    if (z8) {
                        gapComposer.L(681242034);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(681330446);
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    i22 = i21;
                    z8 = z7;
                    bool4 = bool3;
                    gapComposer.L(681336398);
                    gapComposer.Z(false);
                }
                z5 = z8;
                bool2 = bool4;
                i19 = i22;
                z6 = z3;
            } else {
                modifierE = modifierE;
                gapComposer = gapComposerH;
                gapComposer.D();
                i19 = i4;
                z5 = z2;
                z6 = z3;
                i20 = i12;
                bool2 = bool;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier1112 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: fe0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        MyLvScreenKt.a(i2, i3, modifier1112, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= 100663296;
        i18 = i8;
        if ((i8 & 38347923) != 38347922) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i18 & 1, z4)) {
            if (i25 != 0) {
                z3 = true;
            }
            if (i9 != 0) {
                i21 = 0;
            } else {
                i21 = i4;
            }
            if (i11 != 0) {
                i20 = 0;
            } else {
                i20 = i12;
            }
            if (i14 != 0) {
                z7 = true;
            } else {
                z7 = z2;
            }
            if (i16 != 0) {
                bool3 = Boolean.FALSE;
            } else {
                bool3 = bool;
            }
            OpaqueKey opaqueKey1112 = ComposerKt.f7940a;
            if (z3) {
                gapComposerH.L(678906029);
                Modifier modifierD1112 = SizeKt.d(modifierE, 1.0f);
                if ((i18 & 3670016) == 1048576) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                objX = gapComposerH.x();
                if (z9) {
                    objX = new ee0(function0, 0);
                    gapComposerH.q(objX);
                } else {
                    objX = new ee0(function0, 0);
                    gapComposerH.q(objX);
                }
                Modifier modifierC1114 = ModifierExtKt.c(modifierD1112, false, null, null, (Function0) objX, 31);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierC1114);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                z8 = z7;
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf1112 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf1112, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                bool5 = bool3;
                Modifier modifierK1112 = PaddingKt.k(n00.e(gapComposerH, modifierC, function6, "FeatureRow", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK1112);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                i23 = i21;
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                bool4 = bool5;
                IconKt.a(PainterResources_androidKt.a(i2, gapComposerH, i18 & 14), null, ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("FeatureRow"), IconSize.f48349c), "account_item_image"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 56, 0);
                gapComposer = gapComposerH;
                TextKt.c(StringResources_androidKt.c(gapComposer, i3), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), "account_itemTitle_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48429j, gapComposer, 0, 0, 131064);
                SpacerKt.a(gapComposer, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("FeatureRow"), 1.0f, true));
                if (Intrinsics.c(bool4, Boolean.TRUE)) {
                    gapComposer.L(-985163891);
                    LVNotificationIconKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0L, gapComposer, 0, 7);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(-985106231);
                    gapComposer.Z(false);
                }
                if (i20 >= 1) {
                    gapComposer.L(-985033443);
                    i22 = i23;
                    TextKt.c(PluralStringResourceHelperKt.a(i22, i20, new Object[]{Integer.valueOf(i20)}, gapComposer), n00.g("FeatureRow", "account_itemCounter_text"), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 0, 131064);
                    gapComposer.Z(false);
                } else {
                    i22 = i23;
                    gapComposer.L(-984542775);
                    gapComposer.Z(false);
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).I, gapComposer, 0), null, ModifierExtKt.e(SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("FeatureRow"), LVAppDesignKitTheme.l(gapComposer).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposer).m), "account_item_button"), 0L, gapComposer, 56, 8);
                gapComposer.Z(true);
                gapComposer.Z(true);
                if (z8) {
                    gapComposer.L(681242034);
                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 3);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(681330446);
                    gapComposer.Z(false);
                }
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                i22 = i21;
                z8 = z7;
                bool4 = bool3;
                gapComposer.L(681336398);
                gapComposer.Z(false);
            }
            z5 = z8;
            bool2 = bool4;
            i19 = i22;
            z6 = z3;
        } else {
            modifierE = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
            i19 = i4;
            z5 = z2;
            z6 = z3;
            i20 = i12;
            bool2 = bool;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier1113 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: fe0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    MyLvScreenKt.a(i2, i3, modifier1113, z6, i19, i20, function0, z5, bool2, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:139:0x042e  */
    public static final void b(final MyLvViewState myLvViewState, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function2 function7, final Function0 function8, final Function0 function9, final Function0 function10, final Function0 function11, final Function0 function12, final Function1 function13, final Function0 function14, final Function0 function15, Composer composer, final int i2) {
        MyLvCounters myLvCounters;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        myLvViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        GapComposer gapComposerC = defpackage.a.c(function14, function15, composer, 1955671688);
        Applier applier = gapComposerC.f7976a;
        int i3 = i2 | (gapComposerC.y(myLvViewState) ? 4 : 2) | (gapComposerC.y(function0) ? 32 : 16) | (gapComposerC.y(function1) ? 256 : 128) | (gapComposerC.y(function2) ? 2048 : 1024) | (gapComposerC.y(function3) ? 16384 : 8192) | (gapComposerC.y(function4) ? 131072 : 65536) | (gapComposerC.y(function5) ? 1048576 : 524288) | (gapComposerC.y(function6) ? 8388608 : 4194304) | (gapComposerC.y(function7) ? 67108864 : 33554432) | (gapComposerC.y(function8) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerC.y(function9) ? 4 : 2) | (gapComposerC.y(function10) ? 32 : 16) | (gapComposerC.y(function11) ? 256 : 128) | (gapComposerC.y(function12) ? 2048 : 1024) | (gapComposerC.y(function13) ? 16384 : 8192) | (gapComposerC.y(function14) ? 131072 : 65536) | (gapComposerC.y(function15) ? 1048576 : 524288);
        if (gapComposerC.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 599187) == 599186) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("MyLvScreen").o(SizeKt.f5052c), ScrollKt.b(gapComposerC), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerC, 0);
            int iHashCode = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerC.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerC, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function16 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function16);
            } else {
                gapComposerC.o();
            }
            Function2 function17 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerC, columnMeasurePolicyA, function17);
            Function2 function18 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerC, persistentCompositionLocalMapU, function18);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function19 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerC, numValueOf, function19);
            Function1 function20 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerC, function20);
            Function2 function21 = ComposeUiNode.Companion.d;
            SpacerKt.a(gapComposerC, SizeKt.f(tr.e(gapComposerC, modifierC, function21, "MyLvScreen"), LVAppDesignKitTheme.l(gapComposerC).f48416e));
            Modifier modifierK = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("MyLvScreen"), 1.0f), LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            String str = myLvViewState.f59451f;
            MyLvCounters myLvCounters2 = myLvViewState.f59452h;
            MyLvFeatureFlags myLvFeatureFlags = myLvViewState.f59453i;
            UserAvatarSectionKt.a(modifierK, str, myLvViewState.g, myLvViewState.o, function15, gapComposerC, (i4 >> 6) & 57344);
            List list = myLvViewState.l;
            List list2 = (list == null || list.isEmpty()) ? null : list;
            if (list2 == null) {
                gapComposerC.L(-2081043788);
                gapComposerC.Z(false);
            } else {
                SpacerKt.a(gapComposerC, SizeKt.f(n00.i(gapComposerC, -2081043787, "MyLvScreen"), LVAppDesignKitTheme.l(gapComposerC).f48416e));
                boolean z6 = myLvViewState.m;
                boolean z7 = myLvFeatureFlags.f59424k;
                boolean z8 = myLvViewState.p;
                boolean z9 = ((i3 & 234881024) == 67108864) | ((i3 & 57344) == 16384) | ((i4 & 57344) == 16384);
                Object objX = gapComposerC.x();
                if (z9 || objX == Composer.Companion.f7939a) {
                    objX = new jx(function7, function3, function13, 20);
                    gapComposerC.q(objX);
                }
                HotContentWidgetKt.c(null, list2, z6, z7, z8, null, (Function1) objX, function14, gapComposerC, (i4 << 6) & 29360128, 33);
                gapComposerC.Z(false);
            }
            SpacerKt.a(gapComposerC, SizeKt.f(new DTFunctionNameModifier("MyLvScreen"), LVAppDesignKitTheme.l(gapComposerC).f48415c));
            Modifier modifierK2 = PaddingKt.k(new DTFunctionNameModifier("MyLvScreen"), LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerC, 0);
            int iHashCode2 = Long.hashCode(gapComposerC.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerC.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerC, modifierK2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function16);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA2, function17);
            Updater.c(gapComposerC, persistentCompositionLocalMapU2, function18);
            cj.t(iHashCode2, gapComposerC, function19, gapComposerC, function20);
            Updater.c(gapComposerC, modifierC2, function21);
            int i5 = LVAppDesignKitTheme.g(gapComposerC).J0;
            boolean z10 = myLvFeatureFlags.f59419e;
            boolean z11 = myLvFeatureFlags.l;
            if (z10) {
                myLvCounters = myLvCounters2;
                if (myLvCounters.d > 0) {
                    z = true;
                }
                a(i5, R.string.mylv_dashboard_mysecureoutline, n00.g("MyLvScreen", "account_exclusiveOffer_view"), z, 0, 0, function10, false, null, gapComposerC, (i4 << 15) & 3670016, 432);
                a(LVAppDesignKitTheme.g(gapComposerC).E0, R.string.mylv_dashboard_myorders, n00.g("MyLvScreen", "account_myOrders_view"), false, R.plurals.welcome_page_orders_ongoing, myLvCounters.f59412b, function6, false, null, gapComposerC, (i3 >> 3) & 3670016, 392);
                a(LVAppDesignKitTheme.g(gapComposerC).Q, R.string.mylv_my_notifications_title, n00.g("MyLvScreen", "account_inbox_view"), myLvFeatureFlags.f59423j, 0, 0, function2, false, myLvViewState.f59455k, gapComposerC, (i3 << 9) & 3670016, 176);
                a(LVAppDesignKitTheme.g(gapComposerC).f48397h, R.string.my_lv_dashboard_care_services, n00.g("MyLvScreen", "account_myCareServices_view"), myLvFeatureFlags.d, R.plurals.welcome_page_distant_repairs, myLvCounters.f59411a, function5, false, null, gapComposerC, i3 & 3670016, KyberEngine.KyberPolyBytes);
                int i6 = LVAppDesignKitTheme.g(gapComposerC).I0;
                if (!z11 || myLvCounters.f59415f > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                a(i6, R.string.booking_my_experiences_title, n00.g("MyLvScreen", "account_myExperiences_view"), z2, R.plurals.booking_experiences_counter, myLvCounters.f59415f, function4, false, null, gapComposerC, (i3 << 3) & 3670016, KyberEngine.KyberPolyBytes);
                int i7 = LVAppDesignKitTheme.g(gapComposerC).I0;
                if ((!myLvFeatureFlags.f59417b || myLvCounters.f59414e > 0) && !z11) {
                    z3 = false;
                    z4 = true;
                } else {
                    z3 = false;
                    z4 = false;
                }
                MyLvCounters myLvCounters3 = myLvCounters;
                boolean z12 = z3;
                a(i7, R.string.mylv_dashboard_osa, n00.g("MyLvScreen", "account_myAppointments_view"), z4, R.plurals.welcome_page_appointments, myLvCounters.f59414e, function3, false, null, gapComposerC, (i3 << 6) & 3670016, KyberEngine.KyberPolyBytes);
                int i8 = LVAppDesignKitTheme.g(gapComposerC).J0;
                if (!myLvFeatureFlags.f59420f || myLvCounters3.f59413c > 0) {
                    z5 = true;
                } else {
                    z5 = z12;
                }
                a(i8, R.string.my_certificate_title, n00.g("MyLvScreen", "account_myCertificates_view"), z5, R.plurals.welcome_page_certificate, myLvCounters3.f59413c, function8, false, null, gapComposerC, (i3 >> 9) & 3670016, KyberEngine.KyberPolyBytes);
                a(LVAppDesignKitTheme.g(gapComposerC).y, R.string.mylv_myprofile_myinfosbrick_title, n00.g("MyLvScreen", "account_myInfo_view"), false, 0, 0, function0, false, null, gapComposerC, (i3 << 15) & 3670016, 440);
                a(LVAppDesignKitTheme.g(gapComposerC).Y0, R.string.mylv_dashboard_myaddress, n00.g("MyLvScreen", "account_myAddressBook_view"), myLvFeatureFlags.f59418c, 0, 0, function1, false, null, gapComposerC, (i3 << 12) & 3670016, 432);
                a(LVAppDesignKitTheme.g(gapComposerC).f48400k, R.string.mylv_dashboard_myicons_cta, n00.g("MyLvScreen", "account_myIcons_view"), myLvFeatureFlags.f59421h, 0, 0, function12, false, null, gapComposerC, (i4 << 9) & 3670016, 432);
                a(LVAppDesignKitTheme.g(gapComposerC).d, R.string.tabbar_connected_devices, n00.g("MyLvScreen", "account_connectivity_view"), false, 0, 0, function9, false, null, gapComposerC, (i4 << 18) & 3670016, 440);
                a(LVAppDesignKitTheme.g(gapComposerC).x, R.string.manage_privacy_settings, n00.g("MyLvScreen", "account_settings_view"), false, 0, 0, function11, false, null, gapComposerC, ((i4 << 12) & 3670016) | 12582912, 312);
                gapComposerC = gapComposerC;
                SpacerKt.a(gapComposerC, WindowInsetsSizeKt.a(new DTFunctionNameModifier("MyLvScreen"), WindowInsets_androidKt.a(gapComposerC)));
                gapComposerC.Z(true);
                gapComposerC.Z(true);
            } else {
                myLvCounters = myLvCounters2;
            }
            z = false;
            a(i5, R.string.mylv_dashboard_mysecureoutline, n00.g("MyLvScreen", "account_exclusiveOffer_view"), z, 0, 0, function10, false, null, gapComposerC, (i4 << 15) & 3670016, 432);
            a(LVAppDesignKitTheme.g(gapComposerC).E0, R.string.mylv_dashboard_myorders, n00.g("MyLvScreen", "account_myOrders_view"), false, R.plurals.welcome_page_orders_ongoing, myLvCounters.f59412b, function6, false, null, gapComposerC, (i3 >> 3) & 3670016, 392);
            a(LVAppDesignKitTheme.g(gapComposerC).Q, R.string.mylv_my_notifications_title, n00.g("MyLvScreen", "account_inbox_view"), myLvFeatureFlags.f59423j, 0, 0, function2, false, myLvViewState.f59455k, gapComposerC, (i3 << 9) & 3670016, 176);
            a(LVAppDesignKitTheme.g(gapComposerC).f48397h, R.string.my_lv_dashboard_care_services, n00.g("MyLvScreen", "account_myCareServices_view"), myLvFeatureFlags.d, R.plurals.welcome_page_distant_repairs, myLvCounters.f59411a, function5, false, null, gapComposerC, i3 & 3670016, KyberEngine.KyberPolyBytes);
            int i9 = LVAppDesignKitTheme.g(gapComposerC).I0;
            if (z11) {
                z2 = true;
            } else {
                z2 = true;
            }
            a(i9, R.string.booking_my_experiences_title, n00.g("MyLvScreen", "account_myExperiences_view"), z2, R.plurals.booking_experiences_counter, myLvCounters.f59415f, function4, false, null, gapComposerC, (i3 << 3) & 3670016, KyberEngine.KyberPolyBytes);
            int i10 = LVAppDesignKitTheme.g(gapComposerC).I0;
            if (myLvFeatureFlags.f59417b) {
                z3 = false;
                z4 = true;
            } else {
                z3 = false;
                z4 = true;
            }
            MyLvCounters myLvCounters4 = myLvCounters;
            boolean z13 = z3;
            a(i10, R.string.mylv_dashboard_osa, n00.g("MyLvScreen", "account_myAppointments_view"), z4, R.plurals.welcome_page_appointments, myLvCounters.f59414e, function3, false, null, gapComposerC, (i3 << 6) & 3670016, KyberEngine.KyberPolyBytes);
            int i11 = LVAppDesignKitTheme.g(gapComposerC).J0;
            if (myLvFeatureFlags.f59420f) {
                z5 = true;
            } else {
                z5 = true;
            }
            a(i11, R.string.my_certificate_title, n00.g("MyLvScreen", "account_myCertificates_view"), z5, R.plurals.welcome_page_certificate, myLvCounters4.f59413c, function8, false, null, gapComposerC, (i3 >> 9) & 3670016, KyberEngine.KyberPolyBytes);
            a(LVAppDesignKitTheme.g(gapComposerC).y, R.string.mylv_myprofile_myinfosbrick_title, n00.g("MyLvScreen", "account_myInfo_view"), false, 0, 0, function0, false, null, gapComposerC, (i3 << 15) & 3670016, 440);
            a(LVAppDesignKitTheme.g(gapComposerC).Y0, R.string.mylv_dashboard_myaddress, n00.g("MyLvScreen", "account_myAddressBook_view"), myLvFeatureFlags.f59418c, 0, 0, function1, false, null, gapComposerC, (i3 << 12) & 3670016, 432);
            a(LVAppDesignKitTheme.g(gapComposerC).f48400k, R.string.mylv_dashboard_myicons_cta, n00.g("MyLvScreen", "account_myIcons_view"), myLvFeatureFlags.f59421h, 0, 0, function12, false, null, gapComposerC, (i4 << 9) & 3670016, 432);
            a(LVAppDesignKitTheme.g(gapComposerC).d, R.string.tabbar_connected_devices, n00.g("MyLvScreen", "account_connectivity_view"), false, 0, 0, function9, false, null, gapComposerC, (i4 << 18) & 3670016, 440);
            a(LVAppDesignKitTheme.g(gapComposerC).x, R.string.manage_privacy_settings, n00.g("MyLvScreen", "account_settings_view"), false, 0, 0, function11, false, null, gapComposerC, ((i4 << 12) & 3670016) | 12582912, 312);
            gapComposerC = gapComposerC;
            SpacerKt.a(gapComposerC, WindowInsetsSizeKt.a(new DTFunctionNameModifier("MyLvScreen"), WindowInsets_androidKt.a(gapComposerC)));
            gapComposerC.Z(true);
            gapComposerC.Z(true);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, i2) { // from class: de0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Function0 f68557c;
                public final /* synthetic */ Function0 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f68558e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function0 f68559f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f68560h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f68561i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function2 f68562j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f68563k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function0 n;
                public final /* synthetic */ Function0 o;
                public final /* synthetic */ Function1 p;
                public final /* synthetic */ Function0 q;
                public final /* synthetic */ Function0 r;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    MyLvScreenKt.b(this.f68556b, this.f68557c, this.d, this.f68558e, this.f68559f, this.g, this.f68560h, this.f68561i, this.f68562j, this.f68563k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
