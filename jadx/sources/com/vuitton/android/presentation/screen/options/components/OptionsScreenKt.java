package com.vuitton.android.presentation.screen.options.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SwitchKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.options.components.OptionsScreenKt;
import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import defpackage.ai;
import defpackage.cj;
import defpackage.ee0;
import defpackage.gh0;
import defpackage.kc;
import defpackage.n00;
import defpackage.n50;
import defpackage.nb0;
import defpackage.tr;
import defpackage.y2;
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
public abstract class OptionsScreenKt {
    public static final void a(final PaddingValues paddingValues, final OptionsViewState optionsViewState, final Function0 function0, final Function0 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function0 function8, final Function0 function9, final Function0 function10, final Function0 function11, final Function0 function12, final Function0 function13, final Function0 function14, final Function0 function15, final Function0 function16, final Function0 function17, final Function0 function18, Composer composer, final int i2) {
        int i3;
        Function0 function19;
        GapComposer gapComposer;
        GapComposer gapComposer2;
        paddingValues.getClass();
        optionsViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        defpackage.a.D(function3, function4, function5, function6, function7);
        defpackage.a.D(function8, function9, function10, function11, function12);
        defpackage.a.D(function13, function14, function15, function16, function17);
        function18.getClass();
        GapComposer gapComposerH = composer.h(86244398);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(paddingValues) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(optionsViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function19 = function2;
            i3 |= gapComposerH.y(function19) ? 16384 : 8192;
        } else {
            function19 = function2;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i4 = (gapComposerH.y(function8) ? (char) 4 : (char) 2) | (gapComposerH.y(function9) ? ' ' : (char) 16) | (gapComposerH.y(function10) ? 256 : 128) | (gapComposerH.y(function11) ? 2048 : 1024) | (gapComposerH.y(function12) ? (char) 16384 : (char) 8192) | (gapComposerH.y(function13) ? (char) 0 : (char) 0) | (gapComposerH.y(function14) ? (char) 0 : (char) 0) | (gapComposerH.y(function15) ? (char) 0 : (char) 0) | (gapComposerH.y(function16) ? (char) 0 : (char) 0) | (gapComposerH.y(function17) ? (char) 0 : (char) 0);
        char c2 = gapComposerH.y(function18) ? (char) 4 : (char) 2;
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 306783379) == 306783378 && (c2 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierH = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("OptionsScreen").o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a), paddingValues);
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            boolean zY = ((i3 & 1879048192) == 536870912) | gapComposerH.y(optionsViewState) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048) | ((i3 & 57344) == 16384) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i3 & 3670016) == 1048576) | ((i3 & 29360128) == 8388608) | ((i3 & 234881024) == 67108864) | ((i4 & 14) == 4) | ((i4 & 112) == 32) | ((i4 & 896) == 256) | ((i4 & 7168) == 2048) | ((i4 & 57344) == 16384) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i4 & 3670016) == 1048576) | ((i4 & 234881024) == 67108864) | ((i4 & 1879048192) == 536870912) | ((c2 & 14) == 4) | ((i4 & 29360128) == 8388608);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                gapComposer2 = gapComposerH;
                gh0 gh0Var = new gh0(optionsViewState, function0, function1, function19, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function16, function17, function18, function15);
                gapComposer2.q(gh0Var);
                objX = gh0Var;
            } else {
                gapComposer2 = gapComposerH;
            }
            gapComposer = gapComposer2;
            LazyDslKt.a(modifierH, lazyListStateA, null, arrangement$SpaceBetween$1, horizontal, null, true, null, (Function1) objX, gapComposer, 12804096, 332);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: uh0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    OptionsScreenKt.a(paddingValues, optionsViewState, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0135  */
    /* JADX WARN: Code duplicated, block: B:107:0x0155  */
    /* JADX WARN: Code duplicated, block: B:110:0x0171  */
    /* JADX WARN: Code duplicated, block: B:113:0x0187  */
    /* JADX WARN: Code duplicated, block: B:116:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:117:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:120:0x01b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:121:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:124:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:126:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:129:0x0215  */
    /* JADX WARN: Code duplicated, block: B:131:0x021c  */
    /* JADX WARN: Code duplicated, block: B:132:0x0220  */
    /* JADX WARN: Code duplicated, block: B:135:0x0246  */
    /* JADX WARN: Code duplicated, block: B:136:0x0254  */
    /* JADX WARN: Code duplicated, block: B:139:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:141:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:144:0x02de  */
    /* JADX WARN: Code duplicated, block: B:145:0x0318  */
    /* JADX WARN: Code duplicated, block: B:148:0x0333  */
    /* JADX WARN: Code duplicated, block: B:150:0x0398 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x039e  */
    /* JADX WARN: Code duplicated, block: B:155:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:156:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:158:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:160:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:163:0x0430  */
    /* JADX WARN: Code duplicated, block: B:165:0x0467  */
    /* JADX WARN: Code duplicated, block: B:167:0x046b  */
    /* JADX WARN: Code duplicated, block: B:170:0x047b  */
    /* JADX WARN: Code duplicated, block: B:172:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    /* JADX WARN: Code duplicated, block: B:35:0x0067  */
    /* JADX WARN: Code duplicated, block: B:37:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0072  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0082  */
    /* JADX WARN: Code duplicated, block: B:48:0x008a  */
    /* JADX WARN: Code duplicated, block: B:49:0x008d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0096  */
    /* JADX WARN: Code duplicated, block: B:55:0x009a  */
    /* JADX WARN: Code duplicated, block: B:57:0x009d  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:78:0x00df  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:86:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:89:0x0102  */
    /* JADX WARN: Code duplicated, block: B:91:0x0105  */
    /* JADX WARN: Code duplicated, block: B:92:0x0107  */
    /* JADX WARN: Code duplicated, block: B:94:0x010a  */
    /* JADX WARN: Code duplicated, block: B:95:0x010c  */
    /* JADX WARN: Code duplicated, block: B:97:0x0110  */
    /* JADX WARN: Code duplicated, block: B:98:0x0112  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v13 */
    public static final void b(InAppDispatch inAppDispatch, String str, String str2, String str3, String str4, boolean z, boolean z2, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        String str5;
        int i5;
        String str6;
        int i6;
        int i7;
        String str7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z3;
        boolean z4;
        String str8;
        String str9;
        String str10;
        boolean z5;
        GapComposer gapComposer;
        RecomposeScopeImpl recomposeScopeImplB0;
        String str11;
        boolean z6;
        boolean z7;
        Object objX;
        Object obj;
        Object objX2;
        Object objX3;
        boolean zBooleanValue;
        float f2;
        boolean z8;
        Object objX4;
        Modifier dTFunctionNameModifier;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        String strB;
        ?? r0;
        boolean z9;
        GapComposer gapComposer2;
        Modifier dTFunctionNameModifier2;
        GapComposer gapComposer3;
        GapComposer gapComposer4;
        GapComposer gapComposer5;
        String str12;
        String str13;
        float f3;
        GapComposer gapComposer6;
        int i16;
        inAppDispatch.getClass();
        String str14 = inAppDispatch.f67483j;
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-956595037);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i17 = i3 & 4;
        if (i17 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                str5 = str2;
                i4 |= gapComposerH.K(str5) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    str6 = str3;
                    if (gapComposerH.K(str6)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                if (i7 != 0) {
                    if ((i2 & 24576) == 0) {
                        str7 = str4;
                        if (gapComposerH.K(str7)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i4 |= i8;
                    }
                    i9 = i3 & 32;
                    if (i9 != 0) {
                        if ((196608 & i2) == 0) {
                            if (gapComposerH.b(z)) {
                                i10 = 131072;
                            } else {
                                i10 = 65536;
                            }
                            i4 |= i10;
                        }
                        i11 = i3 & 64;
                        if (i11 != 0) {
                            i13 = i4 | 1572864;
                        } else {
                            i12 = i4;
                            if ((i2 & 1572864) == 0) {
                                if (gapComposerH.b(z2)) {
                                    i14 = 1048576;
                                } else {
                                    i14 = 524288;
                                }
                                i13 = i12 | i14;
                            } else {
                                i13 = i12;
                            }
                        }
                        if ((i2 & 12582912) == 0) {
                            if (gapComposerH.y(function0)) {
                                i16 = 8388608;
                            } else {
                                i16 = 4194304;
                            }
                            i13 |= i16;
                        }
                        i15 = i13;
                        if ((i15 & 4793491) != 4793490) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (gapComposerH.p(i15 & 1, z3)) {
                            if (i17 != 0) {
                                str5 = null;
                            }
                            if (i5 != 0) {
                                str6 = null;
                            }
                            if (i7 != 0) {
                                str11 = null;
                            } else {
                                str11 = str7;
                            }
                            if (i9 != 0) {
                                z6 = false;
                            } else {
                                z6 = z;
                            }
                            if (i11 != 0) {
                                z7 = false;
                            } else {
                                z7 = z2;
                            }
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            objX = gapComposerH.x();
                            obj = Composer.Companion.f7939a;
                            if (objX == obj) {
                                objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                                gapComposerH.q(objX);
                            }
                            boolean zBooleanValue2 = ((Boolean) objX).booleanValue();
                            objX2 = gapComposerH.x();
                            if (objX2 == obj) {
                                List list = InAppDispatchExtKt.f67487a;
                                RegionCode.f67513b.getClass();
                                objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                                gapComposerH.q(objX2);
                            }
                            boolean zBooleanValue3 = ((Boolean) objX2).booleanValue();
                            objX3 = gapComposerH.x();
                            if (objX3 == obj) {
                                List list2 = InAppDispatchExtKt.f67487a;
                                RegionCode.f67513b.getClass();
                                objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                                gapComposerH.q(objX3);
                            }
                            zBooleanValue = ((Boolean) objX3).booleanValue();
                            if (str5 == null && StringExtKt.a(str5)) {
                                gapComposerH.L(-814207895);
                                f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-814148375);
                                f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                gapComposerH.Z(false);
                            }
                            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("SettingItemView");
                            if ((i15 & 29360128) == 8388608) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            objX4 = gapComposerH.x();
                            if (z8 || objX4 == obj) {
                                objX4 = new ee0(function0, 11);
                                gapComposerH.q(objX4);
                            }
                            Modifier modifierK = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier3, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                            if (str6 != null || (dTFunctionNameModifier = n00.g("SettingItemView", str6)) == null) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                            }
                            Modifier modifierO = modifierK.o(dTFunctionNameModifier);
                            Alignment.f8582a.getClass();
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
                            strB = StringExtKt.b(str5);
                            if (strB == null) {
                                gapComposerH.L(929152087);
                                r0 = 0;
                                gapComposerH.Z(false);
                                z9 = true;
                                gapComposer2 = gapComposerH;
                            } else {
                                r0 = 0;
                                z9 = true;
                                ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                                GapComposer gapComposer7 = gapComposerH;
                                SpacerKt.a(gapComposer7, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer7).f48415c));
                                gapComposer7.Z(false);
                                gapComposer2 = gapComposer7;
                            }
                            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                            long j2 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                            if (str11 != null || (dTFunctionNameModifier2 = n00.g("SettingItemView", str11)) == null) {
                                dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                            }
                            GapComposer gapComposer8 = gapComposer2;
                            TextKt.c(str, dTFunctionNameModifier2, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer8, (i15 >> 3) & 14, 0, 131064);
                            gapComposer3 = gapComposer8;
                            if (z7) {
                                Modifier modifierM = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                Painter painterA = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                                Color.f8866b.getClass();
                                IconKt.a(painterA, str, modifierM, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                                gapComposer3.Z(r0);
                            } else {
                                gapComposer3.L(930034875);
                                gapComposer3.Z(r0);
                            }
                            SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                            if (z6 != 0) {
                                Modifier modifierD = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                                String str15 = inAppDispatch.f67480f;
                                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposer3).l;
                                TextDirection.f10969b.getClass();
                                TextKt.c(str15, modifierD, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle2, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                                str12 = inAppDispatch.f67482i;
                                if (StringExtKt.a(str12) || zBooleanValue2 || zBooleanValue3) {
                                    gapComposer5 = gapComposer3;
                                    str13 = null;
                                } else {
                                    str13 = str12;
                                }
                                if (str13 == null) {
                                    gapComposer5.L(930614667);
                                    gapComposer5.Z(r0);
                                    gapComposer6 = gapComposer5;
                                } else {
                                    SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                                    Modifier modifierS = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                                    if (zBooleanValue) {
                                        gapComposer5.L(2102904387);
                                        f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                                    } else {
                                        gapComposer5.L(2102905699);
                                        f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                                    }
                                    gapComposer5.Z(r0);
                                    Modifier modifierE = ModifierExtKt.e(SizeKt.f(modifierS, f3), "privacySettings_dispatchCountryFlag_image");
                                    ContentScale.f9447a.getClass();
                                    ImageLoaderKt.b(modifierE, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                                    GapComposer gapComposer9 = gapComposer5;
                                    gapComposer9.Z(r0);
                                    gapComposer6 = gapComposer9;
                                }
                                SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                                gapComposer6.Z(r0);
                                gapComposer4 = gapComposer6;
                            } else {
                                gapComposer3.L(931277851);
                                gapComposer3.Z(r0);
                                gapComposer4 = gapComposer3;
                            }
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                            gapComposer4.Z(z9);
                            String str16 = str5;
                            str10 = str11;
                            str8 = str16;
                            str9 = str6;
                            z5 = z7;
                            z4 = z6;
                            gapComposer = gapComposer4;
                        } else {
                            gapComposerH.D();
                            z4 = z;
                            str8 = str5;
                            str9 = str6;
                            str10 = str7;
                            z5 = z2;
                            gapComposer = gapComposerH;
                        }
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                        }
                    }
                    i4 |= ImageMetadata.EDGE_MODE;
                    i11 = i3 & 64;
                    if (i11 != 0) {
                        i13 = i4 | 1572864;
                    } else {
                        i12 = i4;
                        if ((i2 & 1572864) == 0) {
                            if (gapComposerH.b(z2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i13 = i12 | i14;
                        } else {
                            i13 = i12;
                        }
                    }
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.y(function0)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i13 |= i16;
                    }
                    i15 = i13;
                    if ((i15 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i15 & 1, z3)) {
                        if (i17 != 0) {
                            str5 = null;
                        }
                        if (i5 != 0) {
                            str6 = null;
                        }
                        if (i7 != 0) {
                            str11 = null;
                        } else {
                            str11 = str7;
                        }
                        if (i9 != 0) {
                            z6 = false;
                        } else {
                            z6 = z;
                        }
                        if (i11 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        obj = Composer.Companion.f7939a;
                        if (objX == obj) {
                            objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                            gapComposerH.q(objX);
                        }
                        boolean zBooleanValue4 = ((Boolean) objX).booleanValue();
                        objX2 = gapComposerH.x();
                        if (objX2 == obj) {
                            List list3 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                            gapComposerH.q(objX2);
                        }
                        boolean zBooleanValue5 = ((Boolean) objX2).booleanValue();
                        objX3 = gapComposerH.x();
                        if (objX3 == obj) {
                            List list4 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                            gapComposerH.q(objX3);
                        }
                        zBooleanValue = ((Boolean) objX3).booleanValue();
                        if (str5 == null) {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("SettingItemView");
                        if ((i15 & 29360128) == 8388608) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        objX4 = gapComposerH.x();
                        if (z8) {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        } else {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        }
                        Modifier modifierK2 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier4, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                        if (str6 != null) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        }
                        Modifier modifierO2 = modifierK2.o(dTFunctionNameModifier);
                        Alignment.f8582a.getClass();
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierO2);
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
                        strB = StringExtKt.b(str5);
                        if (strB == null) {
                            gapComposerH.L(929152087);
                            r0 = 0;
                            gapComposerH.Z(false);
                            z9 = true;
                            gapComposer2 = gapComposerH;
                        } else {
                            r0 = 0;
                            z9 = true;
                            ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                            GapComposer gapComposer10 = gapComposerH;
                            SpacerKt.a(gapComposer10, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer10).f48415c));
                            gapComposer10.Z(false);
                            gapComposer2 = gapComposer10;
                        }
                        TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                        long j3 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                        if (str11 != null) {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        }
                        GapComposer gapComposer11 = gapComposer2;
                        TextKt.c(str, dTFunctionNameModifier2, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle3, gapComposer11, (i15 >> 3) & 14, 0, 131064);
                        gapComposer3 = gapComposer11;
                        if (z7) {
                            Modifier modifierM2 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            Painter painterA2 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                            Color.f8866b.getClass();
                            IconKt.a(painterA2, str, modifierM2, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                            gapComposer3.Z(r0);
                        } else {
                            gapComposer3.L(930034875);
                            gapComposer3.Z(r0);
                        }
                        SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                        if (z6 != 0) {
                            Modifier modifierD2 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                            String str17 = inAppDispatch.f67480f;
                            TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposer3).l;
                            TextDirection.f10969b.getClass();
                            TextKt.c(str17, modifierD2, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle4, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                            str12 = inAppDispatch.f67482i;
                            if (StringExtKt.a(str12)) {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            } else {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            }
                            if (str13 == null) {
                                gapComposer5.L(930614667);
                                gapComposer5.Z(r0);
                                gapComposer6 = gapComposer5;
                            } else {
                                SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                                Modifier modifierS2 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                                if (zBooleanValue) {
                                    gapComposer5.L(2102904387);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                                } else {
                                    gapComposer5.L(2102905699);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                                }
                                gapComposer5.Z(r0);
                                Modifier modifierE2 = ModifierExtKt.e(SizeKt.f(modifierS2, f3), "privacySettings_dispatchCountryFlag_image");
                                ContentScale.f9447a.getClass();
                                ImageLoaderKt.b(modifierE2, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                                GapComposer gapComposer12 = gapComposer5;
                                gapComposer12.Z(r0);
                                gapComposer6 = gapComposer12;
                            }
                            SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                            gapComposer6.Z(r0);
                            gapComposer4 = gapComposer6;
                        } else {
                            gapComposer3.L(931277851);
                            gapComposer3.Z(r0);
                            gapComposer4 = gapComposer3;
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                        gapComposer4.Z(z9);
                        String str18 = str5;
                        str10 = str11;
                        str8 = str18;
                        str9 = str6;
                        z5 = z7;
                        z4 = z6;
                        gapComposer = gapComposer4;
                    } else {
                        gapComposerH.D();
                        z4 = z;
                        str8 = str5;
                        str9 = str6;
                        str10 = str7;
                        z5 = z2;
                        gapComposer = gapComposerH;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                    }
                }
                i4 |= 24576;
                str7 = str4;
                i9 = i3 & 32;
                if (i9 != 0) {
                    if ((196608 & i2) == 0) {
                        if (gapComposerH.b(z)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i4 |= i10;
                    }
                    i11 = i3 & 64;
                    if (i11 != 0) {
                        i13 = i4 | 1572864;
                    } else {
                        i12 = i4;
                        if ((i2 & 1572864) == 0) {
                            if (gapComposerH.b(z2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i13 = i12 | i14;
                        } else {
                            i13 = i12;
                        }
                    }
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.y(function0)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i13 |= i16;
                    }
                    i15 = i13;
                    if ((i15 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i15 & 1, z3)) {
                        if (i17 != 0) {
                            str5 = null;
                        }
                        if (i5 != 0) {
                            str6 = null;
                        }
                        if (i7 != 0) {
                            str11 = null;
                        } else {
                            str11 = str7;
                        }
                        if (i9 != 0) {
                            z6 = false;
                        } else {
                            z6 = z;
                        }
                        if (i11 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        obj = Composer.Companion.f7939a;
                        if (objX == obj) {
                            objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                            gapComposerH.q(objX);
                        }
                        boolean zBooleanValue6 = ((Boolean) objX).booleanValue();
                        objX2 = gapComposerH.x();
                        if (objX2 == obj) {
                            List list5 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                            gapComposerH.q(objX2);
                        }
                        boolean zBooleanValue7 = ((Boolean) objX2).booleanValue();
                        objX3 = gapComposerH.x();
                        if (objX3 == obj) {
                            List list6 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                            gapComposerH.q(objX3);
                        }
                        zBooleanValue = ((Boolean) objX3).booleanValue();
                        if (str5 == null) {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("SettingItemView");
                        if ((i15 & 29360128) == 8388608) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        objX4 = gapComposerH.x();
                        if (z8) {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        } else {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        }
                        Modifier modifierK3 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier5, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                        if (str6 != null) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        }
                        Modifier modifierO3 = modifierK3.o(dTFunctionNameModifier);
                        Alignment.f8582a.getClass();
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierO3);
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
                        strB = StringExtKt.b(str5);
                        if (strB == null) {
                            gapComposerH.L(929152087);
                            r0 = 0;
                            gapComposerH.Z(false);
                            z9 = true;
                            gapComposer2 = gapComposerH;
                        } else {
                            r0 = 0;
                            z9 = true;
                            ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                            GapComposer gapComposer13 = gapComposerH;
                            SpacerKt.a(gapComposer13, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer13).f48415c));
                            gapComposer13.Z(false);
                            gapComposer2 = gapComposer13;
                        }
                        TextStyle textStyle5 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                        long j4 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                        if (str11 != null) {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        }
                        GapComposer gapComposer14 = gapComposer2;
                        TextKt.c(str, dTFunctionNameModifier2, j4, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer14, (i15 >> 3) & 14, 0, 131064);
                        gapComposer3 = gapComposer14;
                        if (z7) {
                            Modifier modifierM3 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            Painter painterA3 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                            Color.f8866b.getClass();
                            IconKt.a(painterA3, str, modifierM3, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                            gapComposer3.Z(r0);
                        } else {
                            gapComposer3.L(930034875);
                            gapComposer3.Z(r0);
                        }
                        SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                        if (z6 != 0) {
                            Modifier modifierD3 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                            String str19 = inAppDispatch.f67480f;
                            TextStyle textStyle6 = LVAppDesignKitTheme.n(gapComposer3).l;
                            TextDirection.f10969b.getClass();
                            TextKt.c(str19, modifierD3, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle6, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                            str12 = inAppDispatch.f67482i;
                            if (StringExtKt.a(str12)) {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            } else {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            }
                            if (str13 == null) {
                                gapComposer5.L(930614667);
                                gapComposer5.Z(r0);
                                gapComposer6 = gapComposer5;
                            } else {
                                SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                                Modifier modifierS3 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                                if (zBooleanValue) {
                                    gapComposer5.L(2102904387);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                                } else {
                                    gapComposer5.L(2102905699);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                                }
                                gapComposer5.Z(r0);
                                Modifier modifierE3 = ModifierExtKt.e(SizeKt.f(modifierS3, f3), "privacySettings_dispatchCountryFlag_image");
                                ContentScale.f9447a.getClass();
                                ImageLoaderKt.b(modifierE3, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                                GapComposer gapComposer15 = gapComposer5;
                                gapComposer15.Z(r0);
                                gapComposer6 = gapComposer15;
                            }
                            SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                            gapComposer6.Z(r0);
                            gapComposer4 = gapComposer6;
                        } else {
                            gapComposer3.L(931277851);
                            gapComposer3.Z(r0);
                            gapComposer4 = gapComposer3;
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                        gapComposer4.Z(z9);
                        String str110 = str5;
                        str10 = str11;
                        str8 = str110;
                        str9 = str6;
                        z5 = z7;
                        z4 = z6;
                        gapComposer = gapComposer4;
                    } else {
                        gapComposerH.D();
                        z4 = z;
                        str8 = str5;
                        str9 = str6;
                        str10 = str7;
                        z5 = z2;
                        gapComposer = gapComposerH;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                i11 = i3 & 64;
                if (i11 != 0) {
                    i13 = i4 | 1572864;
                } else {
                    i12 = i4;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.b(z2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i13 = i12 | i14;
                    } else {
                        i13 = i12;
                    }
                }
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function0)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i13 |= i16;
                }
                i15 = i13;
                if ((i15 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i15 & 1, z3)) {
                    if (i17 != 0) {
                        str5 = null;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    }
                    if (i7 != 0) {
                        str11 = null;
                    } else {
                        str11 = str7;
                    }
                    if (i9 != 0) {
                        z6 = false;
                    } else {
                        z6 = z;
                    }
                    if (i11 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    obj = Composer.Companion.f7939a;
                    if (objX == obj) {
                        objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                        gapComposerH.q(objX);
                    }
                    boolean zBooleanValue8 = ((Boolean) objX).booleanValue();
                    objX2 = gapComposerH.x();
                    if (objX2 == obj) {
                        List list7 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                        gapComposerH.q(objX2);
                    }
                    boolean zBooleanValue9 = ((Boolean) objX2).booleanValue();
                    objX3 = gapComposerH.x();
                    if (objX3 == obj) {
                        List list8 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                        gapComposerH.q(objX3);
                    }
                    zBooleanValue = ((Boolean) objX3).booleanValue();
                    if (str5 == null) {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("SettingItemView");
                    if ((i15 & 29360128) == 8388608) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    objX4 = gapComposerH.x();
                    if (z8) {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierK4 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier6, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                    if (str6 != null) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    }
                    Modifier modifierO4 = modifierK4.o(dTFunctionNameModifier);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO4);
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
                    strB = StringExtKt.b(str5);
                    if (strB == null) {
                        gapComposerH.L(929152087);
                        r0 = 0;
                        gapComposerH.Z(false);
                        z9 = true;
                        gapComposer2 = gapComposerH;
                    } else {
                        r0 = 0;
                        z9 = true;
                        ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                        GapComposer gapComposer16 = gapComposerH;
                        SpacerKt.a(gapComposer16, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer16).f48415c));
                        gapComposer16.Z(false);
                        gapComposer2 = gapComposer16;
                    }
                    TextStyle textStyle7 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                    long j5 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                    if (str11 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    }
                    GapComposer gapComposer17 = gapComposer2;
                    TextKt.c(str, dTFunctionNameModifier2, j5, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle7, gapComposer17, (i15 >> 3) & 14, 0, 131064);
                    gapComposer3 = gapComposer17;
                    if (z7) {
                        Modifier modifierM4 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        Painter painterA4 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                        Color.f8866b.getClass();
                        IconKt.a(painterA4, str, modifierM4, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                        gapComposer3.Z(r0);
                    } else {
                        gapComposer3.L(930034875);
                        gapComposer3.Z(r0);
                    }
                    SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                    if (z6 != 0) {
                        Modifier modifierD4 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                        String str111 = inAppDispatch.f67480f;
                        TextStyle textStyle8 = LVAppDesignKitTheme.n(gapComposer3).l;
                        TextDirection.f10969b.getClass();
                        TextKt.c(str111, modifierD4, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle8, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                        str12 = inAppDispatch.f67482i;
                        if (StringExtKt.a(str12)) {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        } else {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        }
                        if (str13 == null) {
                            gapComposer5.L(930614667);
                            gapComposer5.Z(r0);
                            gapComposer6 = gapComposer5;
                        } else {
                            SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                            Modifier modifierS4 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                            if (zBooleanValue) {
                                gapComposer5.L(2102904387);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                            } else {
                                gapComposer5.L(2102905699);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                            }
                            gapComposer5.Z(r0);
                            Modifier modifierE4 = ModifierExtKt.e(SizeKt.f(modifierS4, f3), "privacySettings_dispatchCountryFlag_image");
                            ContentScale.f9447a.getClass();
                            ImageLoaderKt.b(modifierE4, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                            GapComposer gapComposer18 = gapComposer5;
                            gapComposer18.Z(r0);
                            gapComposer6 = gapComposer18;
                        }
                        SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                        gapComposer6.Z(r0);
                        gapComposer4 = gapComposer6;
                    } else {
                        gapComposer3.L(931277851);
                        gapComposer3.Z(r0);
                        gapComposer4 = gapComposer3;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(z9);
                    String str112 = str5;
                    str10 = str11;
                    str8 = str112;
                    str9 = str6;
                    z5 = z7;
                    z4 = z6;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    z4 = z;
                    str8 = str5;
                    str9 = str6;
                    str10 = str7;
                    z5 = z2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                }
            }
            i4 |= 3072;
            str6 = str3;
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    str7 = str4;
                    if (gapComposerH.K(str7)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 32;
                if (i9 != 0) {
                    if ((196608 & i2) == 0) {
                        if (gapComposerH.b(z)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i4 |= i10;
                    }
                    i11 = i3 & 64;
                    if (i11 != 0) {
                        i13 = i4 | 1572864;
                    } else {
                        i12 = i4;
                        if ((i2 & 1572864) == 0) {
                            if (gapComposerH.b(z2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i13 = i12 | i14;
                        } else {
                            i13 = i12;
                        }
                    }
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.y(function0)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i13 |= i16;
                    }
                    i15 = i13;
                    if ((i15 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i15 & 1, z3)) {
                        if (i17 != 0) {
                            str5 = null;
                        }
                        if (i5 != 0) {
                            str6 = null;
                        }
                        if (i7 != 0) {
                            str11 = null;
                        } else {
                            str11 = str7;
                        }
                        if (i9 != 0) {
                            z6 = false;
                        } else {
                            z6 = z;
                        }
                        if (i11 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        obj = Composer.Companion.f7939a;
                        if (objX == obj) {
                            objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                            gapComposerH.q(objX);
                        }
                        boolean zBooleanValue10 = ((Boolean) objX).booleanValue();
                        objX2 = gapComposerH.x();
                        if (objX2 == obj) {
                            List list9 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                            gapComposerH.q(objX2);
                        }
                        boolean zBooleanValue11 = ((Boolean) objX2).booleanValue();
                        objX3 = gapComposerH.x();
                        if (objX3 == obj) {
                            List list10 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                            gapComposerH.q(objX3);
                        }
                        zBooleanValue = ((Boolean) objX3).booleanValue();
                        if (str5 == null) {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("SettingItemView");
                        if ((i15 & 29360128) == 8388608) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        objX4 = gapComposerH.x();
                        if (z8) {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        } else {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        }
                        Modifier modifierK5 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier7, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                        if (str6 != null) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        }
                        Modifier modifierO5 = modifierK5.o(dTFunctionNameModifier);
                        Alignment.f8582a.getClass();
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierO5);
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
                        strB = StringExtKt.b(str5);
                        if (strB == null) {
                            gapComposerH.L(929152087);
                            r0 = 0;
                            gapComposerH.Z(false);
                            z9 = true;
                            gapComposer2 = gapComposerH;
                        } else {
                            r0 = 0;
                            z9 = true;
                            ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                            GapComposer gapComposer19 = gapComposerH;
                            SpacerKt.a(gapComposer19, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer19).f48415c));
                            gapComposer19.Z(false);
                            gapComposer2 = gapComposer19;
                        }
                        TextStyle textStyle9 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                        long j6 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                        if (str11 != null) {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        }
                        GapComposer gapComposer110 = gapComposer2;
                        TextKt.c(str, dTFunctionNameModifier2, j6, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle9, gapComposer110, (i15 >> 3) & 14, 0, 131064);
                        gapComposer3 = gapComposer110;
                        if (z7) {
                            Modifier modifierM5 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            Painter painterA5 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                            Color.f8866b.getClass();
                            IconKt.a(painterA5, str, modifierM5, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                            gapComposer3.Z(r0);
                        } else {
                            gapComposer3.L(930034875);
                            gapComposer3.Z(r0);
                        }
                        SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                        if (z6 != 0) {
                            Modifier modifierD5 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                            String str113 = inAppDispatch.f67480f;
                            TextStyle textStyle10 = LVAppDesignKitTheme.n(gapComposer3).l;
                            TextDirection.f10969b.getClass();
                            TextKt.c(str113, modifierD5, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle10, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                            str12 = inAppDispatch.f67482i;
                            if (StringExtKt.a(str12)) {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            } else {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            }
                            if (str13 == null) {
                                gapComposer5.L(930614667);
                                gapComposer5.Z(r0);
                                gapComposer6 = gapComposer5;
                            } else {
                                SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                                Modifier modifierS5 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                                if (zBooleanValue) {
                                    gapComposer5.L(2102904387);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                                } else {
                                    gapComposer5.L(2102905699);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                                }
                                gapComposer5.Z(r0);
                                Modifier modifierE5 = ModifierExtKt.e(SizeKt.f(modifierS5, f3), "privacySettings_dispatchCountryFlag_image");
                                ContentScale.f9447a.getClass();
                                ImageLoaderKt.b(modifierE5, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                                GapComposer gapComposer111 = gapComposer5;
                                gapComposer111.Z(r0);
                                gapComposer6 = gapComposer111;
                            }
                            SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                            gapComposer6.Z(r0);
                            gapComposer4 = gapComposer6;
                        } else {
                            gapComposer3.L(931277851);
                            gapComposer3.Z(r0);
                            gapComposer4 = gapComposer3;
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                        gapComposer4.Z(z9);
                        String str114 = str5;
                        str10 = str11;
                        str8 = str114;
                        str9 = str6;
                        z5 = z7;
                        z4 = z6;
                        gapComposer = gapComposer4;
                    } else {
                        gapComposerH.D();
                        z4 = z;
                        str8 = str5;
                        str9 = str6;
                        str10 = str7;
                        z5 = z2;
                        gapComposer = gapComposerH;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                i11 = i3 & 64;
                if (i11 != 0) {
                    i13 = i4 | 1572864;
                } else {
                    i12 = i4;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.b(z2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i13 = i12 | i14;
                    } else {
                        i13 = i12;
                    }
                }
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function0)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i13 |= i16;
                }
                i15 = i13;
                if ((i15 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i15 & 1, z3)) {
                    if (i17 != 0) {
                        str5 = null;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    }
                    if (i7 != 0) {
                        str11 = null;
                    } else {
                        str11 = str7;
                    }
                    if (i9 != 0) {
                        z6 = false;
                    } else {
                        z6 = z;
                    }
                    if (i11 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    obj = Composer.Companion.f7939a;
                    if (objX == obj) {
                        objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                        gapComposerH.q(objX);
                    }
                    boolean zBooleanValue12 = ((Boolean) objX).booleanValue();
                    objX2 = gapComposerH.x();
                    if (objX2 == obj) {
                        List list11 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                        gapComposerH.q(objX2);
                    }
                    boolean zBooleanValue13 = ((Boolean) objX2).booleanValue();
                    objX3 = gapComposerH.x();
                    if (objX3 == obj) {
                        List list12 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                        gapComposerH.q(objX3);
                    }
                    zBooleanValue = ((Boolean) objX3).booleanValue();
                    if (str5 == null) {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("SettingItemView");
                    if ((i15 & 29360128) == 8388608) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    objX4 = gapComposerH.x();
                    if (z8) {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierK6 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier8, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                    if (str6 != null) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    }
                    Modifier modifierO6 = modifierK6.o(dTFunctionNameModifier);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO6);
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
                    strB = StringExtKt.b(str5);
                    if (strB == null) {
                        gapComposerH.L(929152087);
                        r0 = 0;
                        gapComposerH.Z(false);
                        z9 = true;
                        gapComposer2 = gapComposerH;
                    } else {
                        r0 = 0;
                        z9 = true;
                        ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                        GapComposer gapComposer112 = gapComposerH;
                        SpacerKt.a(gapComposer112, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer112).f48415c));
                        gapComposer112.Z(false);
                        gapComposer2 = gapComposer112;
                    }
                    TextStyle textStyle11 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                    long j7 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                    if (str11 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    }
                    GapComposer gapComposer113 = gapComposer2;
                    TextKt.c(str, dTFunctionNameModifier2, j7, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle11, gapComposer113, (i15 >> 3) & 14, 0, 131064);
                    gapComposer3 = gapComposer113;
                    if (z7) {
                        Modifier modifierM6 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        Painter painterA6 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                        Color.f8866b.getClass();
                        IconKt.a(painterA6, str, modifierM6, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                        gapComposer3.Z(r0);
                    } else {
                        gapComposer3.L(930034875);
                        gapComposer3.Z(r0);
                    }
                    SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                    if (z6 != 0) {
                        Modifier modifierD6 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                        String str115 = inAppDispatch.f67480f;
                        TextStyle textStyle12 = LVAppDesignKitTheme.n(gapComposer3).l;
                        TextDirection.f10969b.getClass();
                        TextKt.c(str115, modifierD6, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle12, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                        str12 = inAppDispatch.f67482i;
                        if (StringExtKt.a(str12)) {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        } else {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        }
                        if (str13 == null) {
                            gapComposer5.L(930614667);
                            gapComposer5.Z(r0);
                            gapComposer6 = gapComposer5;
                        } else {
                            SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                            Modifier modifierS6 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                            if (zBooleanValue) {
                                gapComposer5.L(2102904387);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                            } else {
                                gapComposer5.L(2102905699);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                            }
                            gapComposer5.Z(r0);
                            Modifier modifierE6 = ModifierExtKt.e(SizeKt.f(modifierS6, f3), "privacySettings_dispatchCountryFlag_image");
                            ContentScale.f9447a.getClass();
                            ImageLoaderKt.b(modifierE6, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                            GapComposer gapComposer114 = gapComposer5;
                            gapComposer114.Z(r0);
                            gapComposer6 = gapComposer114;
                        }
                        SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                        gapComposer6.Z(r0);
                        gapComposer4 = gapComposer6;
                    } else {
                        gapComposer3.L(931277851);
                        gapComposer3.Z(r0);
                        gapComposer4 = gapComposer3;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(z9);
                    String str116 = str5;
                    str10 = str11;
                    str8 = str116;
                    str9 = str6;
                    z5 = z7;
                    z4 = z6;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    z4 = z;
                    str8 = str5;
                    str9 = str6;
                    str10 = str7;
                    z5 = z2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                }
            }
            i4 |= 24576;
            str7 = str4;
            i9 = i3 & 32;
            if (i9 != 0) {
                if ((196608 & i2) == 0) {
                    if (gapComposerH.b(z)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                i11 = i3 & 64;
                if (i11 != 0) {
                    i13 = i4 | 1572864;
                } else {
                    i12 = i4;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.b(z2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i13 = i12 | i14;
                    } else {
                        i13 = i12;
                    }
                }
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function0)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i13 |= i16;
                }
                i15 = i13;
                if ((i15 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i15 & 1, z3)) {
                    if (i17 != 0) {
                        str5 = null;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    }
                    if (i7 != 0) {
                        str11 = null;
                    } else {
                        str11 = str7;
                    }
                    if (i9 != 0) {
                        z6 = false;
                    } else {
                        z6 = z;
                    }
                    if (i11 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    obj = Composer.Companion.f7939a;
                    if (objX == obj) {
                        objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                        gapComposerH.q(objX);
                    }
                    boolean zBooleanValue14 = ((Boolean) objX).booleanValue();
                    objX2 = gapComposerH.x();
                    if (objX2 == obj) {
                        List list13 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                        gapComposerH.q(objX2);
                    }
                    boolean zBooleanValue15 = ((Boolean) objX2).booleanValue();
                    objX3 = gapComposerH.x();
                    if (objX3 == obj) {
                        List list14 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                        gapComposerH.q(objX3);
                    }
                    zBooleanValue = ((Boolean) objX3).booleanValue();
                    if (str5 == null) {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("SettingItemView");
                    if ((i15 & 29360128) == 8388608) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    objX4 = gapComposerH.x();
                    if (z8) {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierK7 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier9, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                    if (str6 != null) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    }
                    Modifier modifierO7 = modifierK7.o(dTFunctionNameModifier);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO7);
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
                    strB = StringExtKt.b(str5);
                    if (strB == null) {
                        gapComposerH.L(929152087);
                        r0 = 0;
                        gapComposerH.Z(false);
                        z9 = true;
                        gapComposer2 = gapComposerH;
                    } else {
                        r0 = 0;
                        z9 = true;
                        ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                        GapComposer gapComposer115 = gapComposerH;
                        SpacerKt.a(gapComposer115, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer115).f48415c));
                        gapComposer115.Z(false);
                        gapComposer2 = gapComposer115;
                    }
                    TextStyle textStyle13 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                    long j8 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                    if (str11 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    }
                    GapComposer gapComposer116 = gapComposer2;
                    TextKt.c(str, dTFunctionNameModifier2, j8, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle13, gapComposer116, (i15 >> 3) & 14, 0, 131064);
                    gapComposer3 = gapComposer116;
                    if (z7) {
                        Modifier modifierM7 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        Painter painterA7 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                        Color.f8866b.getClass();
                        IconKt.a(painterA7, str, modifierM7, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                        gapComposer3.Z(r0);
                    } else {
                        gapComposer3.L(930034875);
                        gapComposer3.Z(r0);
                    }
                    SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                    if (z6 != 0) {
                        Modifier modifierD7 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                        String str117 = inAppDispatch.f67480f;
                        TextStyle textStyle14 = LVAppDesignKitTheme.n(gapComposer3).l;
                        TextDirection.f10969b.getClass();
                        TextKt.c(str117, modifierD7, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle14, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                        str12 = inAppDispatch.f67482i;
                        if (StringExtKt.a(str12)) {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        } else {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        }
                        if (str13 == null) {
                            gapComposer5.L(930614667);
                            gapComposer5.Z(r0);
                            gapComposer6 = gapComposer5;
                        } else {
                            SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                            Modifier modifierS7 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                            if (zBooleanValue) {
                                gapComposer5.L(2102904387);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                            } else {
                                gapComposer5.L(2102905699);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                            }
                            gapComposer5.Z(r0);
                            Modifier modifierE7 = ModifierExtKt.e(SizeKt.f(modifierS7, f3), "privacySettings_dispatchCountryFlag_image");
                            ContentScale.f9447a.getClass();
                            ImageLoaderKt.b(modifierE7, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                            GapComposer gapComposer117 = gapComposer5;
                            gapComposer117.Z(r0);
                            gapComposer6 = gapComposer117;
                        }
                        SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                        gapComposer6.Z(r0);
                        gapComposer4 = gapComposer6;
                    } else {
                        gapComposer3.L(931277851);
                        gapComposer3.Z(r0);
                        gapComposer4 = gapComposer3;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(z9);
                    String str118 = str5;
                    str10 = str11;
                    str8 = str118;
                    str9 = str6;
                    z5 = z7;
                    z4 = z6;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    z4 = z;
                    str8 = str5;
                    str9 = str6;
                    str10 = str7;
                    z5 = z2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            i11 = i3 & 64;
            if (i11 != 0) {
                i13 = i4 | 1572864;
            } else {
                i12 = i4;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.b(z2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i13 = i12 | i14;
                } else {
                    i13 = i12;
                }
            }
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function0)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i13 |= i16;
            }
            i15 = i13;
            if ((i15 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i15 & 1, z3)) {
                if (i17 != 0) {
                    str5 = null;
                }
                if (i5 != 0) {
                    str6 = null;
                }
                if (i7 != 0) {
                    str11 = null;
                } else {
                    str11 = str7;
                }
                if (i9 != 0) {
                    z6 = false;
                } else {
                    z6 = z;
                }
                if (i11 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                obj = Composer.Companion.f7939a;
                if (objX == obj) {
                    objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                    gapComposerH.q(objX);
                }
                boolean zBooleanValue16 = ((Boolean) objX).booleanValue();
                objX2 = gapComposerH.x();
                if (objX2 == obj) {
                    List list15 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                    gapComposerH.q(objX2);
                }
                boolean zBooleanValue17 = ((Boolean) objX2).booleanValue();
                objX3 = gapComposerH.x();
                if (objX3 == obj) {
                    List list16 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                    gapComposerH.q(objX3);
                }
                zBooleanValue = ((Boolean) objX3).booleanValue();
                if (str5 == null) {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("SettingItemView");
                if ((i15 & 29360128) == 8388608) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                objX4 = gapComposerH.x();
                if (z8) {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                }
                Modifier modifierK8 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier10, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                if (str6 != null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                }
                Modifier modifierO8 = modifierK8.o(dTFunctionNameModifier);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO8);
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
                strB = StringExtKt.b(str5);
                if (strB == null) {
                    gapComposerH.L(929152087);
                    r0 = 0;
                    gapComposerH.Z(false);
                    z9 = true;
                    gapComposer2 = gapComposerH;
                } else {
                    r0 = 0;
                    z9 = true;
                    ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                    GapComposer gapComposer118 = gapComposerH;
                    SpacerKt.a(gapComposer118, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer118).f48415c));
                    gapComposer118.Z(false);
                    gapComposer2 = gapComposer118;
                }
                TextStyle textStyle15 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                long j9 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                if (str11 != null) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                }
                GapComposer gapComposer119 = gapComposer2;
                TextKt.c(str, dTFunctionNameModifier2, j9, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle15, gapComposer119, (i15 >> 3) & 14, 0, 131064);
                gapComposer3 = gapComposer119;
                if (z7) {
                    Modifier modifierM8 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    Painter painterA8 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                    Color.f8866b.getClass();
                    IconKt.a(painterA8, str, modifierM8, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                    gapComposer3.Z(r0);
                } else {
                    gapComposer3.L(930034875);
                    gapComposer3.Z(r0);
                }
                SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                if (z6 != 0) {
                    Modifier modifierD8 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                    String str119 = inAppDispatch.f67480f;
                    TextStyle textStyle16 = LVAppDesignKitTheme.n(gapComposer3).l;
                    TextDirection.f10969b.getClass();
                    TextKt.c(str119, modifierD8, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle16, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                    str12 = inAppDispatch.f67482i;
                    if (StringExtKt.a(str12)) {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    } else {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    }
                    if (str13 == null) {
                        gapComposer5.L(930614667);
                        gapComposer5.Z(r0);
                        gapComposer6 = gapComposer5;
                    } else {
                        SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                        Modifier modifierS8 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                        if (zBooleanValue) {
                            gapComposer5.L(2102904387);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                        } else {
                            gapComposer5.L(2102905699);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                        }
                        gapComposer5.Z(r0);
                        Modifier modifierE8 = ModifierExtKt.e(SizeKt.f(modifierS8, f3), "privacySettings_dispatchCountryFlag_image");
                        ContentScale.f9447a.getClass();
                        ImageLoaderKt.b(modifierE8, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                        GapComposer gapComposer1110 = gapComposer5;
                        gapComposer1110.Z(r0);
                        gapComposer6 = gapComposer1110;
                    }
                    SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                    gapComposer6.Z(r0);
                    gapComposer4 = gapComposer6;
                } else {
                    gapComposer3.L(931277851);
                    gapComposer3.Z(r0);
                    gapComposer4 = gapComposer3;
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                gapComposer4.Z(z9);
                String str1110 = str5;
                str10 = str11;
                str8 = str1110;
                str9 = str6;
                z5 = z7;
                z4 = z6;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                z4 = z;
                str8 = str5;
                str9 = str6;
                str10 = str7;
                z5 = z2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        str5 = str2;
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                str6 = str3;
                if (gapComposerH.K(str6)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    str7 = str4;
                    if (gapComposerH.K(str7)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 32;
                if (i9 != 0) {
                    if ((196608 & i2) == 0) {
                        if (gapComposerH.b(z)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i4 |= i10;
                    }
                    i11 = i3 & 64;
                    if (i11 != 0) {
                        i13 = i4 | 1572864;
                    } else {
                        i12 = i4;
                        if ((i2 & 1572864) == 0) {
                            if (gapComposerH.b(z2)) {
                                i14 = 1048576;
                            } else {
                                i14 = 524288;
                            }
                            i13 = i12 | i14;
                        } else {
                            i13 = i12;
                        }
                    }
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.y(function0)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i13 |= i16;
                    }
                    i15 = i13;
                    if ((i15 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i15 & 1, z3)) {
                        if (i17 != 0) {
                            str5 = null;
                        }
                        if (i5 != 0) {
                            str6 = null;
                        }
                        if (i7 != 0) {
                            str11 = null;
                        } else {
                            str11 = str7;
                        }
                        if (i9 != 0) {
                            z6 = false;
                        } else {
                            z6 = z;
                        }
                        if (i11 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        objX = gapComposerH.x();
                        obj = Composer.Companion.f7939a;
                        if (objX == obj) {
                            objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                            gapComposerH.q(objX);
                        }
                        boolean zBooleanValue18 = ((Boolean) objX).booleanValue();
                        objX2 = gapComposerH.x();
                        if (objX2 == obj) {
                            List list17 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                            gapComposerH.q(objX2);
                        }
                        boolean zBooleanValue19 = ((Boolean) objX2).booleanValue();
                        objX3 = gapComposerH.x();
                        if (objX3 == obj) {
                            List list18 = InAppDispatchExtKt.f67487a;
                            RegionCode.f67513b.getClass();
                            objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                            gapComposerH.q(objX3);
                        }
                        zBooleanValue = ((Boolean) objX3).booleanValue();
                        if (str5 == null) {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-814148375);
                            f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        DTFunctionNameModifier dTFunctionNameModifier11 = new DTFunctionNameModifier("SettingItemView");
                        if ((i15 & 29360128) == 8388608) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        objX4 = gapComposerH.x();
                        if (z8) {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        } else {
                            objX4 = new ee0(function0, 11);
                            gapComposerH.q(objX4);
                        }
                        Modifier modifierK9 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier11, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                        if (str6 != null) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                        }
                        Modifier modifierO9 = modifierK9.o(dTFunctionNameModifier);
                        Alignment.f8582a.getClass();
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierO9);
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
                        strB = StringExtKt.b(str5);
                        if (strB == null) {
                            gapComposerH.L(929152087);
                            r0 = 0;
                            gapComposerH.Z(false);
                            z9 = true;
                            gapComposer2 = gapComposerH;
                        } else {
                            r0 = 0;
                            z9 = true;
                            ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                            GapComposer gapComposer1111 = gapComposerH;
                            SpacerKt.a(gapComposer1111, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer1111).f48415c));
                            gapComposer1111.Z(false);
                            gapComposer2 = gapComposer1111;
                        }
                        TextStyle textStyle17 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                        long j10 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                        if (str11 != null) {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        } else {
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                        }
                        GapComposer gapComposer1112 = gapComposer2;
                        TextKt.c(str, dTFunctionNameModifier2, j10, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle17, gapComposer1112, (i15 >> 3) & 14, 0, 131064);
                        gapComposer3 = gapComposer1112;
                        if (z7) {
                            Modifier modifierM9 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            Painter painterA9 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                            Color.f8866b.getClass();
                            IconKt.a(painterA9, str, modifierM9, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                            gapComposer3.Z(r0);
                        } else {
                            gapComposer3.L(930034875);
                            gapComposer3.Z(r0);
                        }
                        SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                        if (z6 != 0) {
                            Modifier modifierD9 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                            String str1111 = inAppDispatch.f67480f;
                            TextStyle textStyle18 = LVAppDesignKitTheme.n(gapComposer3).l;
                            TextDirection.f10969b.getClass();
                            TextKt.c(str1111, modifierD9, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle18, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                            str12 = inAppDispatch.f67482i;
                            if (StringExtKt.a(str12)) {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            } else {
                                gapComposer5 = gapComposer3;
                                str13 = null;
                            }
                            if (str13 == null) {
                                gapComposer5.L(930614667);
                                gapComposer5.Z(r0);
                                gapComposer6 = gapComposer5;
                            } else {
                                SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                                Modifier modifierS9 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                                if (zBooleanValue) {
                                    gapComposer5.L(2102904387);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                                } else {
                                    gapComposer5.L(2102905699);
                                    f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                                }
                                gapComposer5.Z(r0);
                                Modifier modifierE9 = ModifierExtKt.e(SizeKt.f(modifierS9, f3), "privacySettings_dispatchCountryFlag_image");
                                ContentScale.f9447a.getClass();
                                ImageLoaderKt.b(modifierE9, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                                GapComposer gapComposer1113 = gapComposer5;
                                gapComposer1113.Z(r0);
                                gapComposer6 = gapComposer1113;
                            }
                            SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                            gapComposer6.Z(r0);
                            gapComposer4 = gapComposer6;
                        } else {
                            gapComposer3.L(931277851);
                            gapComposer3.Z(r0);
                            gapComposer4 = gapComposer3;
                        }
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                        gapComposer4.Z(z9);
                        String str1112 = str5;
                        str10 = str11;
                        str8 = str1112;
                        str9 = str6;
                        z5 = z7;
                        z4 = z6;
                        gapComposer = gapComposer4;
                    } else {
                        gapComposerH.D();
                        z4 = z;
                        str8 = str5;
                        str9 = str6;
                        str10 = str7;
                        z5 = z2;
                        gapComposer = gapComposerH;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                i11 = i3 & 64;
                if (i11 != 0) {
                    i13 = i4 | 1572864;
                } else {
                    i12 = i4;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.b(z2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i13 = i12 | i14;
                    } else {
                        i13 = i12;
                    }
                }
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function0)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i13 |= i16;
                }
                i15 = i13;
                if ((i15 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i15 & 1, z3)) {
                    if (i17 != 0) {
                        str5 = null;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    }
                    if (i7 != 0) {
                        str11 = null;
                    } else {
                        str11 = str7;
                    }
                    if (i9 != 0) {
                        z6 = false;
                    } else {
                        z6 = z;
                    }
                    if (i11 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    obj = Composer.Companion.f7939a;
                    if (objX == obj) {
                        objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                        gapComposerH.q(objX);
                    }
                    boolean zBooleanValue110 = ((Boolean) objX).booleanValue();
                    objX2 = gapComposerH.x();
                    if (objX2 == obj) {
                        List list19 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                        gapComposerH.q(objX2);
                    }
                    boolean zBooleanValue111 = ((Boolean) objX2).booleanValue();
                    objX3 = gapComposerH.x();
                    if (objX3 == obj) {
                        List list110 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                        gapComposerH.q(objX3);
                    }
                    zBooleanValue = ((Boolean) objX3).booleanValue();
                    if (str5 == null) {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifier12 = new DTFunctionNameModifier("SettingItemView");
                    if ((i15 & 29360128) == 8388608) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    objX4 = gapComposerH.x();
                    if (z8) {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierK10 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier12, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                    if (str6 != null) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    }
                    Modifier modifierO10 = modifierK10.o(dTFunctionNameModifier);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO10);
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
                    strB = StringExtKt.b(str5);
                    if (strB == null) {
                        gapComposerH.L(929152087);
                        r0 = 0;
                        gapComposerH.Z(false);
                        z9 = true;
                        gapComposer2 = gapComposerH;
                    } else {
                        r0 = 0;
                        z9 = true;
                        ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                        GapComposer gapComposer1114 = gapComposerH;
                        SpacerKt.a(gapComposer1114, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer1114).f48415c));
                        gapComposer1114.Z(false);
                        gapComposer2 = gapComposer1114;
                    }
                    TextStyle textStyle19 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                    long j11 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                    if (str11 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    }
                    GapComposer gapComposer1115 = gapComposer2;
                    TextKt.c(str, dTFunctionNameModifier2, j11, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle19, gapComposer1115, (i15 >> 3) & 14, 0, 131064);
                    gapComposer3 = gapComposer1115;
                    if (z7) {
                        Modifier modifierM10 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        Painter painterA10 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                        Color.f8866b.getClass();
                        IconKt.a(painterA10, str, modifierM10, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                        gapComposer3.Z(r0);
                    } else {
                        gapComposer3.L(930034875);
                        gapComposer3.Z(r0);
                    }
                    SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                    if (z6 != 0) {
                        Modifier modifierD10 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                        String str1113 = inAppDispatch.f67480f;
                        TextStyle textStyle110 = LVAppDesignKitTheme.n(gapComposer3).l;
                        TextDirection.f10969b.getClass();
                        TextKt.c(str1113, modifierD10, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle110, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                        str12 = inAppDispatch.f67482i;
                        if (StringExtKt.a(str12)) {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        } else {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        }
                        if (str13 == null) {
                            gapComposer5.L(930614667);
                            gapComposer5.Z(r0);
                            gapComposer6 = gapComposer5;
                        } else {
                            SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                            Modifier modifierS10 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                            if (zBooleanValue) {
                                gapComposer5.L(2102904387);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                            } else {
                                gapComposer5.L(2102905699);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                            }
                            gapComposer5.Z(r0);
                            Modifier modifierE10 = ModifierExtKt.e(SizeKt.f(modifierS10, f3), "privacySettings_dispatchCountryFlag_image");
                            ContentScale.f9447a.getClass();
                            ImageLoaderKt.b(modifierE10, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                            GapComposer gapComposer1116 = gapComposer5;
                            gapComposer1116.Z(r0);
                            gapComposer6 = gapComposer1116;
                        }
                        SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                        gapComposer6.Z(r0);
                        gapComposer4 = gapComposer6;
                    } else {
                        gapComposer3.L(931277851);
                        gapComposer3.Z(r0);
                        gapComposer4 = gapComposer3;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(z9);
                    String str1114 = str5;
                    str10 = str11;
                    str8 = str1114;
                    str9 = str6;
                    z5 = z7;
                    z4 = z6;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    z4 = z;
                    str8 = str5;
                    str9 = str6;
                    str10 = str7;
                    z5 = z2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                }
            }
            i4 |= 24576;
            str7 = str4;
            i9 = i3 & 32;
            if (i9 != 0) {
                if ((196608 & i2) == 0) {
                    if (gapComposerH.b(z)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                i11 = i3 & 64;
                if (i11 != 0) {
                    i13 = i4 | 1572864;
                } else {
                    i12 = i4;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.b(z2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i13 = i12 | i14;
                    } else {
                        i13 = i12;
                    }
                }
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function0)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i13 |= i16;
                }
                i15 = i13;
                if ((i15 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i15 & 1, z3)) {
                    if (i17 != 0) {
                        str5 = null;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    }
                    if (i7 != 0) {
                        str11 = null;
                    } else {
                        str11 = str7;
                    }
                    if (i9 != 0) {
                        z6 = false;
                    } else {
                        z6 = z;
                    }
                    if (i11 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    obj = Composer.Companion.f7939a;
                    if (objX == obj) {
                        objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                        gapComposerH.q(objX);
                    }
                    boolean zBooleanValue112 = ((Boolean) objX).booleanValue();
                    objX2 = gapComposerH.x();
                    if (objX2 == obj) {
                        List list111 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                        gapComposerH.q(objX2);
                    }
                    boolean zBooleanValue113 = ((Boolean) objX2).booleanValue();
                    objX3 = gapComposerH.x();
                    if (objX3 == obj) {
                        List list112 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                        gapComposerH.q(objX3);
                    }
                    zBooleanValue = ((Boolean) objX3).booleanValue();
                    if (str5 == null) {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifier13 = new DTFunctionNameModifier("SettingItemView");
                    if ((i15 & 29360128) == 8388608) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    objX4 = gapComposerH.x();
                    if (z8) {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierK11 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier13, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                    if (str6 != null) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    }
                    Modifier modifierO11 = modifierK11.o(dTFunctionNameModifier);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO11);
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
                    strB = StringExtKt.b(str5);
                    if (strB == null) {
                        gapComposerH.L(929152087);
                        r0 = 0;
                        gapComposerH.Z(false);
                        z9 = true;
                        gapComposer2 = gapComposerH;
                    } else {
                        r0 = 0;
                        z9 = true;
                        ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                        GapComposer gapComposer1117 = gapComposerH;
                        SpacerKt.a(gapComposer1117, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer1117).f48415c));
                        gapComposer1117.Z(false);
                        gapComposer2 = gapComposer1117;
                    }
                    TextStyle textStyle111 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                    long j12 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                    if (str11 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    }
                    GapComposer gapComposer1118 = gapComposer2;
                    TextKt.c(str, dTFunctionNameModifier2, j12, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle111, gapComposer1118, (i15 >> 3) & 14, 0, 131064);
                    gapComposer3 = gapComposer1118;
                    if (z7) {
                        Modifier modifierM11 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        Painter painterA11 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                        Color.f8866b.getClass();
                        IconKt.a(painterA11, str, modifierM11, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                        gapComposer3.Z(r0);
                    } else {
                        gapComposer3.L(930034875);
                        gapComposer3.Z(r0);
                    }
                    SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                    if (z6 != 0) {
                        Modifier modifierD11 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                        String str1115 = inAppDispatch.f67480f;
                        TextStyle textStyle112 = LVAppDesignKitTheme.n(gapComposer3).l;
                        TextDirection.f10969b.getClass();
                        TextKt.c(str1115, modifierD11, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle112, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                        str12 = inAppDispatch.f67482i;
                        if (StringExtKt.a(str12)) {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        } else {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        }
                        if (str13 == null) {
                            gapComposer5.L(930614667);
                            gapComposer5.Z(r0);
                            gapComposer6 = gapComposer5;
                        } else {
                            SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                            Modifier modifierS11 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                            if (zBooleanValue) {
                                gapComposer5.L(2102904387);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                            } else {
                                gapComposer5.L(2102905699);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                            }
                            gapComposer5.Z(r0);
                            Modifier modifierE11 = ModifierExtKt.e(SizeKt.f(modifierS11, f3), "privacySettings_dispatchCountryFlag_image");
                            ContentScale.f9447a.getClass();
                            ImageLoaderKt.b(modifierE11, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                            GapComposer gapComposer1119 = gapComposer5;
                            gapComposer1119.Z(r0);
                            gapComposer6 = gapComposer1119;
                        }
                        SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                        gapComposer6.Z(r0);
                        gapComposer4 = gapComposer6;
                    } else {
                        gapComposer3.L(931277851);
                        gapComposer3.Z(r0);
                        gapComposer4 = gapComposer3;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(z9);
                    String str1116 = str5;
                    str10 = str11;
                    str8 = str1116;
                    str9 = str6;
                    z5 = z7;
                    z4 = z6;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    z4 = z;
                    str8 = str5;
                    str9 = str6;
                    str10 = str7;
                    z5 = z2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            i11 = i3 & 64;
            if (i11 != 0) {
                i13 = i4 | 1572864;
            } else {
                i12 = i4;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.b(z2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i13 = i12 | i14;
                } else {
                    i13 = i12;
                }
            }
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function0)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i13 |= i16;
            }
            i15 = i13;
            if ((i15 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i15 & 1, z3)) {
                if (i17 != 0) {
                    str5 = null;
                }
                if (i5 != 0) {
                    str6 = null;
                }
                if (i7 != 0) {
                    str11 = null;
                } else {
                    str11 = str7;
                }
                if (i9 != 0) {
                    z6 = false;
                } else {
                    z6 = z;
                }
                if (i11 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                obj = Composer.Companion.f7939a;
                if (objX == obj) {
                    objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                    gapComposerH.q(objX);
                }
                boolean zBooleanValue114 = ((Boolean) objX).booleanValue();
                objX2 = gapComposerH.x();
                if (objX2 == obj) {
                    List list113 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                    gapComposerH.q(objX2);
                }
                boolean zBooleanValue115 = ((Boolean) objX2).booleanValue();
                objX3 = gapComposerH.x();
                if (objX3 == obj) {
                    List list114 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                    gapComposerH.q(objX3);
                }
                zBooleanValue = ((Boolean) objX3).booleanValue();
                if (str5 == null) {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                DTFunctionNameModifier dTFunctionNameModifier14 = new DTFunctionNameModifier("SettingItemView");
                if ((i15 & 29360128) == 8388608) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                objX4 = gapComposerH.x();
                if (z8) {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                }
                Modifier modifierK12 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier14, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                if (str6 != null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                }
                Modifier modifierO12 = modifierK12.o(dTFunctionNameModifier);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO12);
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
                strB = StringExtKt.b(str5);
                if (strB == null) {
                    gapComposerH.L(929152087);
                    r0 = 0;
                    gapComposerH.Z(false);
                    z9 = true;
                    gapComposer2 = gapComposerH;
                } else {
                    r0 = 0;
                    z9 = true;
                    ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                    GapComposer gapComposer11110 = gapComposerH;
                    SpacerKt.a(gapComposer11110, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer11110).f48415c));
                    gapComposer11110.Z(false);
                    gapComposer2 = gapComposer11110;
                }
                TextStyle textStyle113 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                long j13 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                if (str11 != null) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                }
                GapComposer gapComposer11111 = gapComposer2;
                TextKt.c(str, dTFunctionNameModifier2, j13, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle113, gapComposer11111, (i15 >> 3) & 14, 0, 131064);
                gapComposer3 = gapComposer11111;
                if (z7) {
                    Modifier modifierM12 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    Painter painterA12 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                    Color.f8866b.getClass();
                    IconKt.a(painterA12, str, modifierM12, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                    gapComposer3.Z(r0);
                } else {
                    gapComposer3.L(930034875);
                    gapComposer3.Z(r0);
                }
                SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                if (z6 != 0) {
                    Modifier modifierD12 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                    String str1117 = inAppDispatch.f67480f;
                    TextStyle textStyle114 = LVAppDesignKitTheme.n(gapComposer3).l;
                    TextDirection.f10969b.getClass();
                    TextKt.c(str1117, modifierD12, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle114, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                    str12 = inAppDispatch.f67482i;
                    if (StringExtKt.a(str12)) {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    } else {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    }
                    if (str13 == null) {
                        gapComposer5.L(930614667);
                        gapComposer5.Z(r0);
                        gapComposer6 = gapComposer5;
                    } else {
                        SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                        Modifier modifierS12 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                        if (zBooleanValue) {
                            gapComposer5.L(2102904387);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                        } else {
                            gapComposer5.L(2102905699);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                        }
                        gapComposer5.Z(r0);
                        Modifier modifierE12 = ModifierExtKt.e(SizeKt.f(modifierS12, f3), "privacySettings_dispatchCountryFlag_image");
                        ContentScale.f9447a.getClass();
                        ImageLoaderKt.b(modifierE12, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                        GapComposer gapComposer11112 = gapComposer5;
                        gapComposer11112.Z(r0);
                        gapComposer6 = gapComposer11112;
                    }
                    SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                    gapComposer6.Z(r0);
                    gapComposer4 = gapComposer6;
                } else {
                    gapComposer3.L(931277851);
                    gapComposer3.Z(r0);
                    gapComposer4 = gapComposer3;
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                gapComposer4.Z(z9);
                String str1118 = str5;
                str10 = str11;
                str8 = str1118;
                str9 = str6;
                z5 = z7;
                z4 = z6;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                z4 = z;
                str8 = str5;
                str9 = str6;
                str10 = str7;
                z5 = z2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
            }
        }
        i4 |= 3072;
        str6 = str3;
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i2 & 24576) == 0) {
                str7 = str4;
                if (gapComposerH.K(str7)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            i9 = i3 & 32;
            if (i9 != 0) {
                if ((196608 & i2) == 0) {
                    if (gapComposerH.b(z)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i4 |= i10;
                }
                i11 = i3 & 64;
                if (i11 != 0) {
                    i13 = i4 | 1572864;
                } else {
                    i12 = i4;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.b(z2)) {
                            i14 = 1048576;
                        } else {
                            i14 = 524288;
                        }
                        i13 = i12 | i14;
                    } else {
                        i13 = i12;
                    }
                }
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function0)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i13 |= i16;
                }
                i15 = i13;
                if ((i15 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i15 & 1, z3)) {
                    if (i17 != 0) {
                        str5 = null;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    }
                    if (i7 != 0) {
                        str11 = null;
                    } else {
                        str11 = str7;
                    }
                    if (i9 != 0) {
                        z6 = false;
                    } else {
                        z6 = z;
                    }
                    if (i11 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    obj = Composer.Companion.f7939a;
                    if (objX == obj) {
                        objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                        gapComposerH.q(objX);
                    }
                    boolean zBooleanValue116 = ((Boolean) objX).booleanValue();
                    objX2 = gapComposerH.x();
                    if (objX2 == obj) {
                        List list115 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                        gapComposerH.q(objX2);
                    }
                    boolean zBooleanValue117 = ((Boolean) objX2).booleanValue();
                    objX3 = gapComposerH.x();
                    if (objX3 == obj) {
                        List list116 = InAppDispatchExtKt.f67487a;
                        RegionCode.f67513b.getClass();
                        objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                        gapComposerH.q(objX3);
                    }
                    zBooleanValue = ((Boolean) objX3).booleanValue();
                    if (str5 == null) {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-814148375);
                        f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    DTFunctionNameModifier dTFunctionNameModifier15 = new DTFunctionNameModifier("SettingItemView");
                    if ((i15 & 29360128) == 8388608) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    objX4 = gapComposerH.x();
                    if (z8) {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    } else {
                        objX4 = new ee0(function0, 11);
                        gapComposerH.q(objX4);
                    }
                    Modifier modifierK13 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier15, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                    if (str6 != null) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                    }
                    Modifier modifierO13 = modifierK13.o(dTFunctionNameModifier);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO13);
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
                    strB = StringExtKt.b(str5);
                    if (strB == null) {
                        gapComposerH.L(929152087);
                        r0 = 0;
                        gapComposerH.Z(false);
                        z9 = true;
                        gapComposer2 = gapComposerH;
                    } else {
                        r0 = 0;
                        z9 = true;
                        ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                        GapComposer gapComposer11113 = gapComposerH;
                        SpacerKt.a(gapComposer11113, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer11113).f48415c));
                        gapComposer11113.Z(false);
                        gapComposer2 = gapComposer11113;
                    }
                    TextStyle textStyle115 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                    long j14 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                    if (str11 != null) {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    } else {
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                    }
                    GapComposer gapComposer11114 = gapComposer2;
                    TextKt.c(str, dTFunctionNameModifier2, j14, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle115, gapComposer11114, (i15 >> 3) & 14, 0, 131064);
                    gapComposer3 = gapComposer11114;
                    if (z7) {
                        Modifier modifierM13 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        Painter painterA13 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                        Color.f8866b.getClass();
                        IconKt.a(painterA13, str, modifierM13, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                        gapComposer3.Z(r0);
                    } else {
                        gapComposer3.L(930034875);
                        gapComposer3.Z(r0);
                    }
                    SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                    if (z6 != 0) {
                        Modifier modifierD13 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                        String str1119 = inAppDispatch.f67480f;
                        TextStyle textStyle116 = LVAppDesignKitTheme.n(gapComposer3).l;
                        TextDirection.f10969b.getClass();
                        TextKt.c(str1119, modifierD13, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle116, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                        str12 = inAppDispatch.f67482i;
                        if (StringExtKt.a(str12)) {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        } else {
                            gapComposer5 = gapComposer3;
                            str13 = null;
                        }
                        if (str13 == null) {
                            gapComposer5.L(930614667);
                            gapComposer5.Z(r0);
                            gapComposer6 = gapComposer5;
                        } else {
                            SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                            Modifier modifierS13 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                            if (zBooleanValue) {
                                gapComposer5.L(2102904387);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                            } else {
                                gapComposer5.L(2102905699);
                                f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                            }
                            gapComposer5.Z(r0);
                            Modifier modifierE13 = ModifierExtKt.e(SizeKt.f(modifierS13, f3), "privacySettings_dispatchCountryFlag_image");
                            ContentScale.f9447a.getClass();
                            ImageLoaderKt.b(modifierE13, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                            GapComposer gapComposer11115 = gapComposer5;
                            gapComposer11115.Z(r0);
                            gapComposer6 = gapComposer11115;
                        }
                        SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                        gapComposer6.Z(r0);
                        gapComposer4 = gapComposer6;
                    } else {
                        gapComposer3.L(931277851);
                        gapComposer3.Z(r0);
                        gapComposer4 = gapComposer3;
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(z9);
                    String str11110 = str5;
                    str10 = str11;
                    str8 = str11110;
                    str9 = str6;
                    z5 = z7;
                    z4 = z6;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    z4 = z;
                    str8 = str5;
                    str9 = str6;
                    str10 = str7;
                    z5 = z2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            i11 = i3 & 64;
            if (i11 != 0) {
                i13 = i4 | 1572864;
            } else {
                i12 = i4;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.b(z2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i13 = i12 | i14;
                } else {
                    i13 = i12;
                }
            }
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function0)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i13 |= i16;
            }
            i15 = i13;
            if ((i15 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i15 & 1, z3)) {
                if (i17 != 0) {
                    str5 = null;
                }
                if (i5 != 0) {
                    str6 = null;
                }
                if (i7 != 0) {
                    str11 = null;
                } else {
                    str11 = str7;
                }
                if (i9 != 0) {
                    z6 = false;
                } else {
                    z6 = z;
                }
                if (i11 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                obj = Composer.Companion.f7939a;
                if (objX == obj) {
                    objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                    gapComposerH.q(objX);
                }
                boolean zBooleanValue118 = ((Boolean) objX).booleanValue();
                objX2 = gapComposerH.x();
                if (objX2 == obj) {
                    List list117 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                    gapComposerH.q(objX2);
                }
                boolean zBooleanValue119 = ((Boolean) objX2).booleanValue();
                objX3 = gapComposerH.x();
                if (objX3 == obj) {
                    List list118 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                    gapComposerH.q(objX3);
                }
                zBooleanValue = ((Boolean) objX3).booleanValue();
                if (str5 == null) {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                DTFunctionNameModifier dTFunctionNameModifier16 = new DTFunctionNameModifier("SettingItemView");
                if ((i15 & 29360128) == 8388608) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                objX4 = gapComposerH.x();
                if (z8) {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                }
                Modifier modifierK14 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier16, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                if (str6 != null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                }
                Modifier modifierO14 = modifierK14.o(dTFunctionNameModifier);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO14);
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
                strB = StringExtKt.b(str5);
                if (strB == null) {
                    gapComposerH.L(929152087);
                    r0 = 0;
                    gapComposerH.Z(false);
                    z9 = true;
                    gapComposer2 = gapComposerH;
                } else {
                    r0 = 0;
                    z9 = true;
                    ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                    GapComposer gapComposer11116 = gapComposerH;
                    SpacerKt.a(gapComposer11116, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer11116).f48415c));
                    gapComposer11116.Z(false);
                    gapComposer2 = gapComposer11116;
                }
                TextStyle textStyle117 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                long j15 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                if (str11 != null) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                }
                GapComposer gapComposer11117 = gapComposer2;
                TextKt.c(str, dTFunctionNameModifier2, j15, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle117, gapComposer11117, (i15 >> 3) & 14, 0, 131064);
                gapComposer3 = gapComposer11117;
                if (z7) {
                    Modifier modifierM14 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    Painter painterA14 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                    Color.f8866b.getClass();
                    IconKt.a(painterA14, str, modifierM14, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                    gapComposer3.Z(r0);
                } else {
                    gapComposer3.L(930034875);
                    gapComposer3.Z(r0);
                }
                SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                if (z6 != 0) {
                    Modifier modifierD14 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                    String str11111 = inAppDispatch.f67480f;
                    TextStyle textStyle118 = LVAppDesignKitTheme.n(gapComposer3).l;
                    TextDirection.f10969b.getClass();
                    TextKt.c(str11111, modifierD14, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle118, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                    str12 = inAppDispatch.f67482i;
                    if (StringExtKt.a(str12)) {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    } else {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    }
                    if (str13 == null) {
                        gapComposer5.L(930614667);
                        gapComposer5.Z(r0);
                        gapComposer6 = gapComposer5;
                    } else {
                        SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                        Modifier modifierS14 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                        if (zBooleanValue) {
                            gapComposer5.L(2102904387);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                        } else {
                            gapComposer5.L(2102905699);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                        }
                        gapComposer5.Z(r0);
                        Modifier modifierE14 = ModifierExtKt.e(SizeKt.f(modifierS14, f3), "privacySettings_dispatchCountryFlag_image");
                        ContentScale.f9447a.getClass();
                        ImageLoaderKt.b(modifierE14, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                        GapComposer gapComposer11118 = gapComposer5;
                        gapComposer11118.Z(r0);
                        gapComposer6 = gapComposer11118;
                    }
                    SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                    gapComposer6.Z(r0);
                    gapComposer4 = gapComposer6;
                } else {
                    gapComposer3.L(931277851);
                    gapComposer3.Z(r0);
                    gapComposer4 = gapComposer3;
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                gapComposer4.Z(z9);
                String str11112 = str5;
                str10 = str11;
                str8 = str11112;
                str9 = str6;
                z5 = z7;
                z4 = z6;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                z4 = z;
                str8 = str5;
                str9 = str6;
                str10 = str7;
                z5 = z2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
            }
        }
        i4 |= 24576;
        str7 = str4;
        i9 = i3 & 32;
        if (i9 != 0) {
            if ((196608 & i2) == 0) {
                if (gapComposerH.b(z)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i4 |= i10;
            }
            i11 = i3 & 64;
            if (i11 != 0) {
                i13 = i4 | 1572864;
            } else {
                i12 = i4;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.b(z2)) {
                        i14 = 1048576;
                    } else {
                        i14 = 524288;
                    }
                    i13 = i12 | i14;
                } else {
                    i13 = i12;
                }
            }
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function0)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i13 |= i16;
            }
            i15 = i13;
            if ((i15 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i15 & 1, z3)) {
                if (i17 != 0) {
                    str5 = null;
                }
                if (i5 != 0) {
                    str6 = null;
                }
                if (i7 != 0) {
                    str11 = null;
                } else {
                    str11 = str7;
                }
                if (i9 != 0) {
                    z6 = false;
                } else {
                    z6 = z;
                }
                if (i11 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                obj = Composer.Companion.f7939a;
                if (objX == obj) {
                    objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                    gapComposerH.q(objX);
                }
                boolean zBooleanValue1110 = ((Boolean) objX).booleanValue();
                objX2 = gapComposerH.x();
                if (objX2 == obj) {
                    List list119 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                    gapComposerH.q(objX2);
                }
                boolean zBooleanValue1111 = ((Boolean) objX2).booleanValue();
                objX3 = gapComposerH.x();
                if (objX3 == obj) {
                    List list1110 = InAppDispatchExtKt.f67487a;
                    RegionCode.f67513b.getClass();
                    objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                    gapComposerH.q(objX3);
                }
                zBooleanValue = ((Boolean) objX3).booleanValue();
                if (str5 == null) {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-814148375);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                DTFunctionNameModifier dTFunctionNameModifier17 = new DTFunctionNameModifier("SettingItemView");
                if ((i15 & 29360128) == 8388608) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                objX4 = gapComposerH.x();
                if (z8) {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new ee0(function0, 11);
                    gapComposerH.q(objX4);
                }
                Modifier modifierK15 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier17, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
                if (str6 != null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
                }
                Modifier modifierO15 = modifierK15.o(dTFunctionNameModifier);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO15);
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
                strB = StringExtKt.b(str5);
                if (strB == null) {
                    gapComposerH.L(929152087);
                    r0 = 0;
                    gapComposerH.Z(false);
                    z9 = true;
                    gapComposer2 = gapComposerH;
                } else {
                    r0 = 0;
                    z9 = true;
                    ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                    GapComposer gapComposer11119 = gapComposerH;
                    SpacerKt.a(gapComposer11119, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer11119).f48415c));
                    gapComposer11119.Z(false);
                    gapComposer2 = gapComposer11119;
                }
                TextStyle textStyle119 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
                long j16 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
                if (str11 != null) {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                } else {
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
                }
                GapComposer gapComposer111110 = gapComposer2;
                TextKt.c(str, dTFunctionNameModifier2, j16, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle119, gapComposer111110, (i15 >> 3) & 14, 0, 131064);
                gapComposer3 = gapComposer111110;
                if (z7) {
                    Modifier modifierM15 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    Painter painterA15 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                    Color.f8866b.getClass();
                    IconKt.a(painterA15, str, modifierM15, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                    gapComposer3.Z(r0);
                } else {
                    gapComposer3.L(930034875);
                    gapComposer3.Z(r0);
                }
                SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
                if (z6 != 0) {
                    Modifier modifierD15 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                    String str11113 = inAppDispatch.f67480f;
                    TextStyle textStyle1110 = LVAppDesignKitTheme.n(gapComposer3).l;
                    TextDirection.f10969b.getClass();
                    TextKt.c(str11113, modifierD15, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle1110, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                    str12 = inAppDispatch.f67482i;
                    if (StringExtKt.a(str12)) {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    } else {
                        gapComposer5 = gapComposer3;
                        str13 = null;
                    }
                    if (str13 == null) {
                        gapComposer5.L(930614667);
                        gapComposer5.Z(r0);
                        gapComposer6 = gapComposer5;
                    } else {
                        SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                        Modifier modifierS15 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                        if (zBooleanValue) {
                            gapComposer5.L(2102904387);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                        } else {
                            gapComposer5.L(2102905699);
                            f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                        }
                        gapComposer5.Z(r0);
                        Modifier modifierE15 = ModifierExtKt.e(SizeKt.f(modifierS15, f3), "privacySettings_dispatchCountryFlag_image");
                        ContentScale.f9447a.getClass();
                        ImageLoaderKt.b(modifierE15, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                        GapComposer gapComposer111111 = gapComposer5;
                        gapComposer111111.Z(r0);
                        gapComposer6 = gapComposer111111;
                    }
                    SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                    gapComposer6.Z(r0);
                    gapComposer4 = gapComposer6;
                } else {
                    gapComposer3.L(931277851);
                    gapComposer3.Z(r0);
                    gapComposer4 = gapComposer3;
                }
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                gapComposer4.Z(z9);
                String str11114 = str5;
                str10 = str11;
                str8 = str11114;
                str9 = str6;
                z5 = z7;
                z4 = z6;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                z4 = z;
                str8 = str5;
                str9 = str6;
                str10 = str7;
                z5 = z2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        i11 = i3 & 64;
        if (i11 != 0) {
            i13 = i4 | 1572864;
        } else {
            i12 = i4;
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.b(z2)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i13 = i12 | i14;
            } else {
                i13 = i12;
            }
        }
        if ((i2 & 12582912) == 0) {
            if (gapComposerH.y(function0)) {
                i16 = 8388608;
            } else {
                i16 = 4194304;
            }
            i13 |= i16;
        }
        i15 = i13;
        if ((i15 & 4793491) != 4793490) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i15 & 1, z3)) {
            if (i17 != 0) {
                str5 = null;
            }
            if (i5 != 0) {
                str6 = null;
            }
            if (i7 != 0) {
                str11 = null;
            } else {
                str11 = str7;
            }
            if (i9 != 0) {
                z6 = false;
            } else {
                z6 = z;
            }
            if (i11 != 0) {
                z7 = false;
            } else {
                z7 = z2;
            }
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            obj = Composer.Companion.f7939a;
            if (objX == obj) {
                objX = Boolean.valueOf(InAppDispatchExtKt.i(inAppDispatch));
                gapComposerH.q(objX);
            }
            boolean zBooleanValue1112 = ((Boolean) objX).booleanValue();
            objX2 = gapComposerH.x();
            if (objX2 == obj) {
                List list1111 = InAppDispatchExtKt.f67487a;
                RegionCode.f67513b.getClass();
                objX2 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.m));
                gapComposerH.q(objX2);
            }
            boolean zBooleanValue1113 = ((Boolean) objX2).booleanValue();
            objX3 = gapComposerH.x();
            if (objX3 == obj) {
                List list1112 = InAppDispatchExtKt.f67487a;
                RegionCode.f67513b.getClass();
                objX3 = Boolean.valueOf(Intrinsics.c(str14, RegionCode.G));
                gapComposerH.q(objX3);
            }
            zBooleanValue = ((Boolean) objX3).booleanValue();
            if (str5 == null) {
                gapComposerH.L(-814148375);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-814148375);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                gapComposerH.Z(false);
            }
            DTFunctionNameModifier dTFunctionNameModifier18 = new DTFunctionNameModifier("SettingItemView");
            if ((i15 & 29360128) == 8388608) {
                z8 = true;
            } else {
                z8 = false;
            }
            objX4 = gapComposerH.x();
            if (z8) {
                objX4 = new ee0(function0, 11);
                gapComposerH.q(objX4);
            } else {
                objX4 = new ee0(function0, 11);
                gapComposerH.q(objX4);
            }
            Modifier modifierK16 = PaddingKt.k(SizeKt.d(ModifierExtKt.c(dTFunctionNameModifier18, false, null, null, (Function0) objX4, 31), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1);
            if (str6 != null) {
                dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("SettingItemView");
            }
            Modifier modifierO16 = modifierK16.o(dTFunctionNameModifier);
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierO16);
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
            strB = StringExtKt.b(str5);
            if (strB == null) {
                gapComposerH.L(929152087);
                r0 = 0;
                gapComposerH.Z(false);
                z9 = true;
                gapComposer2 = gapComposerH;
            } else {
                r0 = 0;
                z9 = true;
                ImageLoaderKt.b(SizeKt.o(n00.i(gapComposerH, 929152088, "SettingItemView"), LVAppDesignKitTheme.d(gapComposerH).t), strB, null, null, null, 0, false, null, null, null, gapComposerH, 0, 2044);
                GapComposer gapComposer111112 = gapComposerH;
                SpacerKt.a(gapComposer111112, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer111112).f48415c));
                gapComposer111112.Z(false);
                gapComposer2 = gapComposer111112;
            }
            TextStyle textStyle1111 = LVAppDesignKitTheme.n(gapComposer2).f48429j;
            long j17 = LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k;
            if (str11 != null) {
                dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
            } else {
                dTFunctionNameModifier2 = new DTFunctionNameModifier("SettingItemView");
            }
            GapComposer gapComposer111113 = gapComposer2;
            TextKt.c(str, dTFunctionNameModifier2, j17, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle1111, gapComposer111113, (i15 >> 3) & 14, 0, 131064);
            gapComposer3 = gapComposer111113;
            if (z7) {
                Modifier modifierM16 = PaddingKt.m(n00.i(gapComposer3, 929758758, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer3).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                Painter painterA16 = PainterResources_androidKt.a(R.drawable.ic_privacy_choices, gapComposer3, r0);
                Color.f8866b.getClass();
                IconKt.a(painterA16, str, modifierM16, Color.f8871i, gapComposer3, 3080 | (i15 & 112), 0);
                gapComposer3.Z(r0);
            } else {
                gapComposer3.L(930034875);
                gapComposer3.Z(r0);
            }
            SpacerKt.a(gapComposer3, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("SettingItemView"), 1.0f, z9));
            if (z6 != 0) {
                Modifier modifierD16 = n00.d(gapComposer3, 930148676, "SettingItemView", "privacySettings_dispatchCountryName_text");
                String str11115 = inAppDispatch.f67480f;
                TextStyle textStyle1112 = LVAppDesignKitTheme.n(gapComposer3).l;
                TextDirection.f10969b.getClass();
                TextKt.c(str11115, modifierD16, LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle1112, 0L, 0L, null, null, 0L, null, 0, TextDirection.f10970c, 0L, null, null, 16711679), gapComposer3, 0, 0, 131064);
                str12 = inAppDispatch.f67482i;
                if (StringExtKt.a(str12)) {
                    gapComposer5 = gapComposer3;
                    str13 = null;
                } else {
                    gapComposer5 = gapComposer3;
                    str13 = null;
                }
                if (str13 == null) {
                    gapComposer5.L(930614667);
                    gapComposer5.Z(r0);
                    gapComposer6 = gapComposer5;
                } else {
                    SpacerKt.a(gapComposer5, SizeKt.s(n00.i(gapComposer5, 930614668, "SettingItemView"), LVAppDesignKitTheme.l(gapComposer5).f48415c));
                    Modifier modifierS16 = SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer5).o);
                    if (zBooleanValue) {
                        gapComposer5.L(2102904387);
                        f3 = LVAppDesignKitTheme.d(gapComposer5).o;
                    } else {
                        gapComposer5.L(2102905699);
                        f3 = LVAppDesignKitTheme.d(gapComposer5).f48390j;
                    }
                    gapComposer5.Z(r0);
                    Modifier modifierE16 = ModifierExtKt.e(SizeKt.f(modifierS16, f3), "privacySettings_dispatchCountryFlag_image");
                    ContentScale.f9447a.getClass();
                    ImageLoaderKt.b(modifierE16, str13, ContentScale.Companion.f9451e, null, null, 0, false, null, null, null, gapComposer5, KyberEngine.KyberPolyBytes, 2040);
                    GapComposer gapComposer111114 = gapComposer5;
                    gapComposer111114.Z(r0);
                    gapComposer6 = gapComposer111114;
                }
                SpacerKt.a(gapComposer6, SizeKt.s(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.l(gapComposer6).f48415c));
                gapComposer6.Z(r0);
                gapComposer4 = gapComposer6;
            } else {
                gapComposer3.L(931277851);
                gapComposer3.Z(r0);
                gapComposer4 = gapComposer3;
            }
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r0), null, SizeKt.o(new DTFunctionNameModifier("SettingItemView"), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
            gapComposer4.Z(z9);
            String str11116 = str5;
            str10 = str11;
            str8 = str11116;
            str9 = str6;
            z5 = z7;
            z4 = z6;
            gapComposer = gapComposer4;
        } else {
            gapComposerH.D();
            z4 = z;
            str8 = str5;
            str9 = str6;
            str10 = str7;
            z5 = z2;
            gapComposer = gapComposerH;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai(inAppDispatch, str, str8, str9, str10, z4, z5, function0, i2, i3);
        }
    }

    public static final void c(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(53271794);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DividerKt.a(tr.d("SettingsDividerView", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 6, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 25);
        }
    }

    public static final void d(Modifier modifier, OptionsViewState optionsViewState, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function0 function10, Function0 function11, Function0 function12, Function0 function13, Function0 function14, Function0 function15, Function0 function16, Function0 function17, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SettingsListView");
        }
        GapComposer gapComposerH = composer.h(-154428514);
        int i3 = i2 | 6 | (gapComposerH.y(optionsViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? 536870912 : 268435456);
        int i4 = (gapComposerH.y(function8) ? 4 : 2) | (gapComposerH.y(function9) ? 32 : 16) | (gapComposerH.y(function10) ? 256 : 128) | (gapComposerH.y(function11) ? 2048 : 1024) | (gapComposerH.y(function12) ? 16384 : 8192) | (gapComposerH.y(function13) ? 131072 : 65536) | (gapComposerH.y(function14) ? 1048576 : 524288) | (gapComposerH.y(function15) ? 8388608 : 4194304) | (gapComposerH.y(function16) ? 67108864 : 33554432) | (gapComposerH.y(function17) ? 536870912 : 268435456);
        Modifier modifier3 = modifierE;
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 306783379) == 306783378) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SettingsListView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(dTFunctionNameModifier, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function18 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function18);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            InAppDispatch inAppDispatch = optionsViewState.f59856a;
            boolean z = optionsViewState.f59858c;
            b(inAppDispatch, StringResources_androidKt.c(gapComposerH, R.string.share_menu), null, "privacySettings_shareApp_view", "privacySettings_shareApp_text", false, false, function0, gapComposerH, ((i3 << 15) & 29360128) | 27648, 100);
            c(gapComposerH, 0);
            b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.legal_mentions_title), null, "privacySettings_termsOfUse_view", "privacySettings_termsOfUse_text", false, false, function1, gapComposerH, ((i3 << 12) & 29360128) | 27648, 100);
            if (z) {
                gapComposerH.L(1753695471);
                c(gapComposerH, 0);
                b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.contact_and_privacy_setting_section), null, "privacySettings_contactPrivacySettings_view", "privacySettings_contactPrivacySettings_text", false, false, function3, gapComposerH, ((i3 << 6) & 29360128) | 27648, 100);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1754213047);
                if (optionsViewState.f59859e) {
                    gapComposerH.L(1754260787);
                    if (InAppDispatchExtKt.j(optionsViewState.f59856a) && optionsViewState.f59862i) {
                        gapComposerH.L(1754417120);
                        c(gapComposerH, 0);
                        b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.mylv_settings_gcm_lva_optout_title), null, "", "", false, true, function5, gapComposerH, (i3 & 29360128) | 1600512, 36);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(1754925365);
                        c(gapComposerH, 0);
                        b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.manage_privacy_settings), null, "privacySettings_settings_view", "privacySettings_settings_text", false, false, function4, gapComposerH, ((i3 << 3) & 29360128) | 27648, 100);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1755436090);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            c(gapComposerH, 0);
            b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.menu_privacy_policy_entry), null, "privacySettings_privacyPolicy_view", "privacySettings_privacyPolicy_text", false, false, function2, gapComposerH, ((i3 << 9) & 29360128) | 27648, 100);
            c(gapComposerH, 0);
            b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.notif_section_settings), null, "privacySettings_notifications_view", "privacySettings_notifications_text", false, false, function9, gapComposerH, ((i4 << 18) & 29360128) | 27648, 100);
            c(gapComposerH, 0);
            if (optionsViewState.f59864k) {
                gapComposerH.L(1756369128);
                b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.accessibility_settings_menu), null, "privacySettings_accessibility_view", "privacySettings_accessibility_text", false, false, function10, gapComposerH, ((i4 << 15) & 29360128) | 27648, 100);
                c(gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1756816954);
                gapComposerH.Z(false);
            }
            b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.contact_menu), null, "privacySettings_needHelp_view", "privacySettings_needHelp_text", false, false, function6, gapComposerH, ((i3 >> 3) & 29360128) | 27648, 100);
            if (StringExtKt.a(optionsViewState.d) && optionsViewState.f59860f) {
                gapComposerH.L(1757276436);
                c(gapComposerH, 0);
                b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.consumer_rights_title), StringResources_androidKt.c(gapComposerH, R.string.consumer_rights_image_url), null, null, false, false, function7, gapComposerH, (i3 >> 6) & 29360128, 120);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1757620474);
                gapComposerH.Z(false);
            }
            c(gapComposerH, 0);
            b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.shipping_menu), null, "privacySettings_dispatchCountry_view", "privacySettings_dispatchCountry_text", true, false, function8, gapComposerH, ((i4 << 21) & 29360128) | 224256, 68);
            c(gapComposerH, 0);
            if (z) {
                gapComposerH.L(1758143227);
                c(gapComposerH, 0);
                b(optionsViewState.f59856a, StringResources_androidKt.c(gapComposerH, R.string.mylv_lvpass_menu_disconnectfrommylv), null, "privacySettings_disconnectMyLV_view", "privacySettings_disconnectMyLV_text", false, false, function11, gapComposerH, ((i4 << 12) & 29360128) | 27648, 100);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1758603546);
                gapComposerH.Z(false);
            }
            if (optionsViewState.g) {
                gapComposerH.L(1758663965);
                e(optionsViewState.f59856a, optionsViewState.f59863j, function12, function13, function14, function15, function16, function17, gapComposerH, (i4 >> 6) & 33554304);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1759122362);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new nb0(modifier2, optionsViewState, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, i2);
        }
    }

    public static final void e(InAppDispatch inAppDispatch, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Composer composer, int i2) {
        int i3;
        inAppDispatch.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(334569445);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            c(gapComposerH, 0);
            int i4 = i3 & 14;
            b(inAppDispatch, StringResources_androidKt.c(gapComposerH, R.string.change_test_environment), null, "privacySettings_changeEnv_view", "privacySettings_changeEnv_text", false, false, function0, gapComposerH, i4 | 27648 | ((i3 << 15) & 29360128), 100);
            c(gapComposerH, 0);
            int i5 = i4 | 48;
            b(inAppDispatch, "Feature flags Menu", null, null, null, false, false, function1, gapComposerH, i5 | ((i3 << 12) & 29360128), 124);
            c(gapComposerH, 0);
            b(inAppDispatch, "Book an Experience", null, null, null, false, false, function4, gapComposerH, i5 | ((i3 << 3) & 29360128), 124);
            c(gapComposerH, 0);
            b(inAppDispatch, "Thank You Page (Test)", null, null, null, false, false, function3, gapComposerH, i5 | ((i3 << 6) & 29360128), 124);
            c(gapComposerH, 0);
            Modifier modifierK = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("SettingsPreProdItemsView"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c("UI Test mode (inspectable)", cj.b("SettingsPreProdItemsView", RowScopeInstance.f5040a, 1.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 6, 0, 131064);
            boolean z2 = (i3 & 29360128) == 8388608;
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new y2(function5, 26);
                gapComposerH.q(objX);
            }
            SwitchKt.a(z, (Function1) objX, null, false, null, gapComposerH, (i3 >> 3) & 14, 124);
            gapComposerH.Z(true);
            c(gapComposerH, 0);
            b(inAppDispatch, StringResources_androidKt.c(gapComposerH, R.string.title_app_info), null, null, null, false, false, function2, gapComposerH, i4 | ((i3 << 9) & 29360128), 124);
            gapComposerH = gapComposerH;
            c(gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kc(inAppDispatch, z, function0, function1, function2, function3, function4, function5, i2);
        }
    }
}
