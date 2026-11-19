package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVTagKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContainer;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardContent;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationPushCardType;
import defpackage.b70;
import defpackage.cj;
import defpackage.gf;
import defpackage.gq;
import defpackage.j8;
import defpackage.k40;
import defpackage.lt;
import defpackage.n00;
import defpackage.oh;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVPushCardKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48653a = new StaticProvidableCompositionLocal(new k40(29));

    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    /* JADX WARN: Code duplicated, block: B:31:0x005c  */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    /* JADX WARN: Code duplicated, block: B:41:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x008b  */
    /* JADX WARN: Code duplicated, block: B:52:0x0093  */
    /* JADX WARN: Code duplicated, block: B:53:0x0095  */
    /* JADX WARN: Code duplicated, block: B:56:0x009c  */
    /* JADX WARN: Code duplicated, block: B:57:0x009e  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:73:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, boolean z, Function0 function0, Function3 function3, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        Function3 function4;
        int i5;
        boolean z3;
        Modifier modifier2;
        boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z5;
        boolean z6;
        boolean z7;
        Object objX;
        int i6;
        int i7;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVPushCard");
        }
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(764143268);
        int i8 = i3 & 1;
        if (i8 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i9 = i3 & 2;
        if (i9 == 0) {
            if ((i2 & 48) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.y(function0)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i4 |= i7;
            }
            if ((i2 & 3072) == 0) {
                function4 = function3;
                if (gapComposerH.y(function4)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            } else {
                function4 = function3;
            }
            i5 = 0;
            if ((i4 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVPushCard");
                }
                Modifier modifier3 = dTFunctionNameModifier;
                if (i9 != 0) {
                    z4 = true;
                } else {
                    z4 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if ((i4 & 112) == 32) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if ((i4 & 896) == 256) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z5 | z6;
                objX = gapComposerH.x();
                if (z7 || objX == Composer.Companion.f7939a) {
                    objX = new b70(z4, function0, i5);
                    gapComposerH.q(objX);
                }
                c(SemanticsModifierKt.b(modifier3, true, (Function1) objX), null, z4, function0, function4, gapComposerH, (i4 << 3) & 65408);
                modifier2 = modifier3;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oh(modifier2, z4, function0, function3, i2, i3, 2);
            }
        }
        i4 |= 48;
        z2 = z;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.y(function0)) {
                i7 = 256;
            } else {
                i7 = 128;
            }
            i4 |= i7;
        }
        if ((i2 & 3072) == 0) {
            function4 = function3;
            if (gapComposerH.y(function4)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i4 |= i6;
        } else {
            function4 = function3;
        }
        i5 = 0;
        if ((i4 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            if (i8 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVPushCard");
            }
            Modifier modifier4 = dTFunctionNameModifier;
            if (i9 != 0) {
                z4 = true;
            } else {
                z4 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            if ((i4 & 112) == 32) {
                z5 = true;
            } else {
                z5 = false;
            }
            if ((i4 & 896) == 256) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = z5 | z6;
            objX = gapComposerH.x();
            if (z7) {
                objX = new b70(z4, function0, i5);
                gapComposerH.q(objX);
            } else {
                objX = new b70(z4, function0, i5);
                gapComposerH.q(objX);
            }
            c(SemanticsModifierKt.b(modifier4, true, (Function1) objX), null, z4, function0, function4, gapComposerH, (i4 << 3) & 65408);
            modifier2 = modifier4;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oh(modifier2, z4, function0, function3, i2, i3, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:103:0x024e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0252  */
    /* JADX WARN: Code duplicated, block: B:107:0x0260  */
    /* JADX WARN: Code duplicated, block: B:108:0x0262  */
    /* JADX WARN: Code duplicated, block: B:111:0x0269  */
    /* JADX WARN: Code duplicated, block: B:113:0x026d  */
    /* JADX WARN: Code duplicated, block: B:116:0x028e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0290 A[PHI: r30
      0x0290: PHI (r30v3 java.lang.String) = (r30v2 java.lang.String), (r30v5 java.lang.String) binds: [B:102:0x024c, B:116:0x028e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:120:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:122:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:125:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:126:0x0317  */
    /* JADX WARN: Code duplicated, block: B:128:0x0327  */
    /* JADX WARN: Code duplicated, block: B:130:0x032b  */
    /* JADX WARN: Code duplicated, block: B:132:0x032f  */
    /* JADX WARN: Code duplicated, block: B:135:0x033b  */
    /* JADX WARN: Code duplicated, block: B:137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0085  */
    /* JADX WARN: Code duplicated, block: B:46:0x0088  */
    /* JADX WARN: Code duplicated, block: B:48:0x008c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0093  */
    /* JADX WARN: Code duplicated, block: B:53:0x0099  */
    /* JADX WARN: Code duplicated, block: B:54:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00da  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:86:0x010b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x010d  */
    /* JADX WARN: Code duplicated, block: B:88:0x015e  */
    /* JADX WARN: Code duplicated, block: B:91:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:94:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:97:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:99:0x01f7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    public static final void b(RowScope rowScope, ConfigurationPushCardContent configurationPushCardContent, Painter painter, Function2 function2, String str, String str2, String str3, Composer composer, int i2, int i3) {
        int i4;
        Function2 function3;
        int i5;
        String str4;
        int i6;
        boolean z;
        Painter painter2;
        Function2 function4;
        String str5;
        GapComposer gapComposer;
        RecomposeScopeImpl recomposeScopeImplB0;
        Painter painter3;
        Function2 function5;
        String str6;
        int i7;
        String str7;
        String str8;
        GapComposer gapComposer2;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function6;
        Function2 function7;
        Function2 function8;
        Function1 function1;
        Function2 function9;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        ConfigurationPushCardType configurationPushCardType;
        int i8;
        int i9;
        GapComposer gapComposer3;
        int i10;
        boolean z2;
        GapComposer gapComposer4;
        ?? r2;
        String str9;
        boolean z3;
        Object objX;
        int i11;
        int i12;
        rowScope.getClass();
        configurationPushCardContent.getClass();
        str.getClass();
        GapComposer gapComposerH = composer.h(-948698804);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(rowScope) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(configurationPushCardContent) ? 32 : 16;
        }
        int i13 = i3 & 2;
        if (i13 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= (i2 & 512) == 0 ? gapComposerH.K(painter) : gapComposerH.y(painter) ? 256 : 128;
        }
        int i14 = i3 & 4;
        if (i14 == 0) {
            if ((i2 & 3072) == 0) {
                function3 = function2;
                i4 |= gapComposerH.y(function3) ? 2048 : 1024;
            }
            if ((i2 & 24576) != 0) {
                if (gapComposerH.K(str)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i4 |= i12;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerH.K(str2)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i4 |= i11;
            }
            i5 = i3 & 32;
            if (i5 != 0) {
                if ((1572864 & i2) == 0) {
                    str4 = str3;
                    if (gapComposerH.K(str4)) {
                        i6 = 1048576;
                    } else {
                        i6 = 524288;
                    }
                    i4 |= i6;
                }
                if ((i4 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    if (i13 != 0) {
                        painter3 = null;
                    } else {
                        painter3 = painter;
                    }
                    if (i14 != 0) {
                        function5 = null;
                    } else {
                        function5 = function3;
                    }
                    if (i5 != 0) {
                        str6 = null;
                    } else {
                        str6 = str4;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (function5 != null) {
                        gapComposerH.L(-1800992613);
                        function5.invoke(gapComposerH, Integer.valueOf((i4 >> 9) & 14));
                        gapComposerH.Z(false);
                        i7 = 0;
                        str7 = str6;
                        str8 = "LVPushCardContent";
                        gapComposer2 = gapComposerH;
                    } else if (painter3 != null) {
                        DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1800922491, "LVPushCardContent");
                        Dp.Companion companion = Dp.f11004c;
                        Modifier modifierE = ModifierExtKt.e(ClipKt.a(SizeKt.o(dTFunctionNameModifierI, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), "pushCard_image");
                        ContentScale.f9447a.getClass();
                        str8 = "LVPushCardContent";
                        i7 = 0;
                        str7 = str6;
                        ImageKt.a(painter3, null, modifierE, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632 | ((i4 >> 6) & 14), 104);
                        GapComposer gapComposer5 = gapComposerH;
                        gapComposer5.Z(false);
                        gapComposer2 = gapComposer5;
                    } else {
                        i7 = 0;
                        str7 = str6;
                        str8 = "LVPushCardContent";
                        gapComposerH.L(-1800623434);
                        gapComposerH.Z(false);
                        gapComposer2 = gapComposerH;
                    }
                    Modifier modifierA = rowScope.a(new DTFunctionNameModifier(str8), 1.0f, true);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposer2).f48414b);
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposer2, i7);
                    iHashCode = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU = gapComposer2.U();
                    modifierC = ComposedModifierKt.c(gapComposer2, modifierA);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function0);
                    } else {
                        gapComposer2.o();
                    }
                    function6 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposer2, columnMeasurePolicyA, function6);
                    function7 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposer2, persistentCompositionLocalMapU, function7);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function8 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposer2, numValueOf, function8);
                    function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposer2, function1);
                    function9 = ComposeUiNode.Companion.d;
                    Modifier modifierE2 = n00.e(gapComposer2, modifierC, function9, str8, 1.0f);
                    rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposer2, 54);
                    iHashCode2 = Long.hashCode(gapComposer2.T);
                    persistentCompositionLocalMapU2 = gapComposer2.U();
                    modifierC2 = ComposedModifierKt.c(gapComposer2, modifierE2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer2.B();
                    if (gapComposer2.S) {
                        gapComposer2.C(function0);
                    } else {
                        gapComposer2.o();
                    }
                    Updater.c(gapComposer2, rowMeasurePolicyA, function6);
                    Updater.c(gapComposer2, persistentCompositionLocalMapU2, function7);
                    cj.t(iHashCode2, gapComposer2, function8, gapComposer2, function1);
                    Modifier modifierF = n00.f(gapComposer2, modifierC2, function9, str8, "pushCard_title_text");
                    TextStyle textStyle = configurationPushCardContent.f48569c;
                    configurationPushCardType = configurationPushCardContent.f48567a;
                    GapComposer gapComposer6 = gapComposer2;
                    long j2 = configurationPushCardContent.f48570e;
                    int i15 = configurationPushCardContent.f48568b;
                    TextOverflow.f10989a.getClass();
                    i8 = TextOverflow.f10991c;
                    i9 = i4 >> 12;
                    TextKt.c(str, modifierF, j2, 0L, null, 0L, null, null, 0L, i8, false, i15, 0, null, textStyle, gapComposer6, i9 & 14, KyberEngine.KyberPolyBytes, 110584);
                    gapComposer3 = gapComposer6;
                    i10 = 15;
                    if (configurationPushCardType != ConfigurationPushCardType.Service) {
                        z2 = false;
                        gapComposer3.L(945771356);
                        gapComposer3.Z(false);
                    } else {
                        str9 = str7;
                        if (str9 != null) {
                            DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposer3, 945502276, str8);
                            if ((3670016 & i4) == 1048576) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            objX = gapComposer3.x();
                            if (z3 || objX == Composer.Companion.f7939a) {
                                objX = new lt(str9, i10);
                                gapComposer3.q(objX);
                            }
                            LVTagKt.a(ModifierExtKt.b(dTFunctionNameModifierI2, "pushCard_tag_view", (Function1) objX, 2), null, str9, gapComposer3, i9 & 896, 26);
                            str7 = str9;
                            z2 = false;
                            gapComposer3.Z(false);
                        } else {
                            str7 = str9;
                            z2 = false;
                            gapComposer3.L(945771356);
                            gapComposer3.Z(false);
                        }
                    }
                    gapComposer3.Z(true);
                    if (str2 == null) {
                        gapComposer3.L(175631067);
                        gapComposer3.Z(z2);
                        r2 = z2;
                        gapComposer4 = gapComposer3;
                    } else {
                        boolean z4 = z2;
                        TextKt.c(str2, n00.d(gapComposer3, 175631068, str8, "pushCard_description_text"), configurationPushCardContent.f48571f, 0L, null, 0L, null, null, 0L, i8, false, 2, 0, null, configurationPushCardContent.d, gapComposer3, (i4 >> 15) & 14, 24960, 110584);
                        GapComposer gapComposer7 = gapComposer3;
                        gapComposer7.Z(z4);
                        r2 = z4;
                        gapComposer4 = gapComposer7;
                    }
                    gapComposer4.Z(true);
                    if (configurationPushCardType == ConfigurationPushCardType.Content) {
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r2), null, SizeKt.o(n00.i(gapComposer4, -1799093274, str8), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                        gapComposer4.Z(r2);
                    } else {
                        gapComposer4.L(-1798887434);
                        gapComposer4.Z(r2);
                    }
                    function4 = function5;
                    str5 = str7;
                    painter2 = painter3;
                    gapComposer = gapComposer4;
                } else {
                    gapComposerH.D();
                    painter2 = painter;
                    function4 = function3;
                    str5 = str4;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new gf(rowScope, configurationPushCardContent, painter2, function4, str, str2, str5, i2, i3);
                }
            }
            i4 |= 1572864;
            str4 = str3;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i13 != 0) {
                    painter3 = null;
                } else {
                    painter3 = painter;
                }
                if (i14 != 0) {
                    function5 = null;
                } else {
                    function5 = function3;
                }
                if (i5 != 0) {
                    str6 = null;
                } else {
                    str6 = str4;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                if (function5 != null) {
                    gapComposerH.L(-1800992613);
                    function5.invoke(gapComposerH, Integer.valueOf((i4 >> 9) & 14));
                    gapComposerH.Z(false);
                    i7 = 0;
                    str7 = str6;
                    str8 = "LVPushCardContent";
                    gapComposer2 = gapComposerH;
                } else if (painter3 != null) {
                    DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposerH, -1800922491, "LVPushCardContent");
                    Dp.Companion companion2 = Dp.f11004c;
                    Modifier modifierE3 = ModifierExtKt.e(ClipKt.a(SizeKt.o(dTFunctionNameModifierI3, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), "pushCard_image");
                    ContentScale.f9447a.getClass();
                    str8 = "LVPushCardContent";
                    i7 = 0;
                    str7 = str6;
                    ImageKt.a(painter3, null, modifierE3, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632 | ((i4 >> 6) & 14), 104);
                    GapComposer gapComposer8 = gapComposerH;
                    gapComposer8.Z(false);
                    gapComposer2 = gapComposer8;
                } else {
                    i7 = 0;
                    str7 = str6;
                    str8 = "LVPushCardContent";
                    gapComposerH.L(-1800623434);
                    gapComposerH.Z(false);
                    gapComposer2 = gapComposerH;
                }
                Modifier modifierA2 = rowScope.a(new DTFunctionNameModifier(str8), 1.0f, true);
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposer2).f48414b);
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF2, Alignment.Companion.n, gapComposer2, i7);
                iHashCode = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU = gapComposer2.U();
                modifierC = ComposedModifierKt.c(gapComposer2, modifierA2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function0);
                } else {
                    gapComposer2.o();
                }
                function6 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposer2, columnMeasurePolicyA, function6);
                function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposer2, persistentCompositionLocalMapU, function7);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposer2, numValueOf2, function8);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposer2, function1);
                function9 = ComposeUiNode.Companion.d;
                Modifier modifierE4 = n00.e(gapComposer2, modifierC, function9, str8, 1.0f);
                rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposer2, 54);
                iHashCode2 = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU2 = gapComposer2.U();
                modifierC2 = ComposedModifierKt.c(gapComposer2, modifierE4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function0);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, rowMeasurePolicyA, function6);
                Updater.c(gapComposer2, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposer2, function8, gapComposer2, function1);
                Modifier modifierF2 = n00.f(gapComposer2, modifierC2, function9, str8, "pushCard_title_text");
                TextStyle textStyle2 = configurationPushCardContent.f48569c;
                configurationPushCardType = configurationPushCardContent.f48567a;
                GapComposer gapComposer9 = gapComposer2;
                long j3 = configurationPushCardContent.f48570e;
                int i16 = configurationPushCardContent.f48568b;
                TextOverflow.f10989a.getClass();
                i8 = TextOverflow.f10991c;
                i9 = i4 >> 12;
                TextKt.c(str, modifierF2, j3, 0L, null, 0L, null, null, 0L, i8, false, i16, 0, null, textStyle2, gapComposer9, i9 & 14, KyberEngine.KyberPolyBytes, 110584);
                gapComposer3 = gapComposer9;
                i10 = 15;
                if (configurationPushCardType != ConfigurationPushCardType.Service) {
                    z2 = false;
                    gapComposer3.L(945771356);
                    gapComposer3.Z(false);
                } else {
                    str9 = str7;
                    if (str9 != null) {
                        DTFunctionNameModifier dTFunctionNameModifierI4 = n00.i(gapComposer3, 945502276, str8);
                        if ((3670016 & i4) == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objX = gapComposer3.x();
                        if (z3) {
                            objX = new lt(str9, i10);
                            gapComposer3.q(objX);
                        } else {
                            objX = new lt(str9, i10);
                            gapComposer3.q(objX);
                        }
                        LVTagKt.a(ModifierExtKt.b(dTFunctionNameModifierI4, "pushCard_tag_view", (Function1) objX, 2), null, str9, gapComposer3, i9 & 896, 26);
                        str7 = str9;
                        z2 = false;
                        gapComposer3.Z(false);
                    } else {
                        str7 = str9;
                        z2 = false;
                        gapComposer3.L(945771356);
                        gapComposer3.Z(false);
                    }
                }
                gapComposer3.Z(true);
                if (str2 == null) {
                    gapComposer3.L(175631067);
                    gapComposer3.Z(z2);
                    r2 = z2;
                    gapComposer4 = gapComposer3;
                } else {
                    boolean z5 = z2;
                    TextKt.c(str2, n00.d(gapComposer3, 175631068, str8, "pushCard_description_text"), configurationPushCardContent.f48571f, 0L, null, 0L, null, null, 0L, i8, false, 2, 0, null, configurationPushCardContent.d, gapComposer3, (i4 >> 15) & 14, 24960, 110584);
                    GapComposer gapComposer10 = gapComposer3;
                    gapComposer10.Z(z5);
                    r2 = z5;
                    gapComposer4 = gapComposer10;
                }
                gapComposer4.Z(true);
                if (configurationPushCardType == ConfigurationPushCardType.Content) {
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r2), null, SizeKt.o(n00.i(gapComposer4, -1799093274, str8), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(r2);
                } else {
                    gapComposer4.L(-1798887434);
                    gapComposer4.Z(r2);
                }
                function4 = function5;
                str5 = str7;
                painter2 = painter3;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                painter2 = painter;
                function4 = function3;
                str5 = str4;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(rowScope, configurationPushCardContent, painter2, function4, str, str2, str5, i2, i3);
            }
        }
        i4 |= 3072;
        function3 = function2;
        if ((i2 & 24576) != 0) {
            if (gapComposerH.K(str)) {
                i12 = 16384;
            } else {
                i12 = 8192;
            }
            i4 |= i12;
        }
        if ((196608 & i2) == 0) {
            if (gapComposerH.K(str2)) {
                i11 = 131072;
            } else {
                i11 = 65536;
            }
            i4 |= i11;
        }
        i5 = i3 & 32;
        if (i5 != 0) {
            if ((1572864 & i2) == 0) {
                str4 = str3;
                if (gapComposerH.K(str4)) {
                    i6 = 1048576;
                } else {
                    i6 = 524288;
                }
                i4 |= i6;
            }
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i13 != 0) {
                    painter3 = null;
                } else {
                    painter3 = painter;
                }
                if (i14 != 0) {
                    function5 = null;
                } else {
                    function5 = function3;
                }
                if (i5 != 0) {
                    str6 = null;
                } else {
                    str6 = str4;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                if (function5 != null) {
                    gapComposerH.L(-1800992613);
                    function5.invoke(gapComposerH, Integer.valueOf((i4 >> 9) & 14));
                    gapComposerH.Z(false);
                    i7 = 0;
                    str7 = str6;
                    str8 = "LVPushCardContent";
                    gapComposer2 = gapComposerH;
                } else if (painter3 != null) {
                    DTFunctionNameModifier dTFunctionNameModifierI5 = n00.i(gapComposerH, -1800922491, "LVPushCardContent");
                    Dp.Companion companion3 = Dp.f11004c;
                    Modifier modifierE5 = ModifierExtKt.e(ClipKt.a(SizeKt.o(dTFunctionNameModifierI5, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), "pushCard_image");
                    ContentScale.f9447a.getClass();
                    str8 = "LVPushCardContent";
                    i7 = 0;
                    str7 = str6;
                    ImageKt.a(painter3, null, modifierE5, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632 | ((i4 >> 6) & 14), 104);
                    GapComposer gapComposer11 = gapComposerH;
                    gapComposer11.Z(false);
                    gapComposer2 = gapComposer11;
                } else {
                    i7 = 0;
                    str7 = str6;
                    str8 = "LVPushCardContent";
                    gapComposerH.L(-1800623434);
                    gapComposerH.Z(false);
                    gapComposer2 = gapComposerH;
                }
                Modifier modifierA3 = rowScope.a(new DTFunctionNameModifier(str8), 1.0f, true);
                Arrangement$Start$1 arrangement$Start$3 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF3 = Arrangement.f(LVAppDesignKitTheme.l(gapComposer2).f48414b);
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF3, Alignment.Companion.n, gapComposer2, i7);
                iHashCode = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU = gapComposer2.U();
                modifierC = ComposedModifierKt.c(gapComposer2, modifierA3);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function0);
                } else {
                    gapComposer2.o();
                }
                function6 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposer2, columnMeasurePolicyA, function6);
                function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposer2, persistentCompositionLocalMapU, function7);
                Integer numValueOf3 = Integer.valueOf(iHashCode);
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposer2, numValueOf3, function8);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposer2, function1);
                function9 = ComposeUiNode.Companion.d;
                Modifier modifierE6 = n00.e(gapComposer2, modifierC, function9, str8, 1.0f);
                rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposer2, 54);
                iHashCode2 = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU2 = gapComposer2.U();
                modifierC2 = ComposedModifierKt.c(gapComposer2, modifierE6);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function0);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, rowMeasurePolicyA, function6);
                Updater.c(gapComposer2, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposer2, function8, gapComposer2, function1);
                Modifier modifierF3 = n00.f(gapComposer2, modifierC2, function9, str8, "pushCard_title_text");
                TextStyle textStyle3 = configurationPushCardContent.f48569c;
                configurationPushCardType = configurationPushCardContent.f48567a;
                GapComposer gapComposer12 = gapComposer2;
                long j4 = configurationPushCardContent.f48570e;
                int i17 = configurationPushCardContent.f48568b;
                TextOverflow.f10989a.getClass();
                i8 = TextOverflow.f10991c;
                i9 = i4 >> 12;
                TextKt.c(str, modifierF3, j4, 0L, null, 0L, null, null, 0L, i8, false, i17, 0, null, textStyle3, gapComposer12, i9 & 14, KyberEngine.KyberPolyBytes, 110584);
                gapComposer3 = gapComposer12;
                i10 = 15;
                if (configurationPushCardType != ConfigurationPushCardType.Service) {
                    z2 = false;
                    gapComposer3.L(945771356);
                    gapComposer3.Z(false);
                } else {
                    str9 = str7;
                    if (str9 != null) {
                        DTFunctionNameModifier dTFunctionNameModifierI6 = n00.i(gapComposer3, 945502276, str8);
                        if ((3670016 & i4) == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objX = gapComposer3.x();
                        if (z3) {
                            objX = new lt(str9, i10);
                            gapComposer3.q(objX);
                        } else {
                            objX = new lt(str9, i10);
                            gapComposer3.q(objX);
                        }
                        LVTagKt.a(ModifierExtKt.b(dTFunctionNameModifierI6, "pushCard_tag_view", (Function1) objX, 2), null, str9, gapComposer3, i9 & 896, 26);
                        str7 = str9;
                        z2 = false;
                        gapComposer3.Z(false);
                    } else {
                        str7 = str9;
                        z2 = false;
                        gapComposer3.L(945771356);
                        gapComposer3.Z(false);
                    }
                }
                gapComposer3.Z(true);
                if (str2 == null) {
                    gapComposer3.L(175631067);
                    gapComposer3.Z(z2);
                    r2 = z2;
                    gapComposer4 = gapComposer3;
                } else {
                    boolean z6 = z2;
                    TextKt.c(str2, n00.d(gapComposer3, 175631068, str8, "pushCard_description_text"), configurationPushCardContent.f48571f, 0L, null, 0L, null, null, 0L, i8, false, 2, 0, null, configurationPushCardContent.d, gapComposer3, (i4 >> 15) & 14, 24960, 110584);
                    GapComposer gapComposer13 = gapComposer3;
                    gapComposer13.Z(z6);
                    r2 = z6;
                    gapComposer4 = gapComposer13;
                }
                gapComposer4.Z(true);
                if (configurationPushCardType == ConfigurationPushCardType.Content) {
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r2), null, SizeKt.o(n00.i(gapComposer4, -1799093274, str8), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                    gapComposer4.Z(r2);
                } else {
                    gapComposer4.L(-1798887434);
                    gapComposer4.Z(r2);
                }
                function4 = function5;
                str5 = str7;
                painter2 = painter3;
                gapComposer = gapComposer4;
            } else {
                gapComposerH.D();
                painter2 = painter;
                function4 = function3;
                str5 = str4;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(rowScope, configurationPushCardContent, painter2, function4, str, str2, str5, i2, i3);
            }
        }
        i4 |= 1572864;
        str4 = str3;
        if ((i4 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            if (i13 != 0) {
                painter3 = null;
            } else {
                painter3 = painter;
            }
            if (i14 != 0) {
                function5 = null;
            } else {
                function5 = function3;
            }
            if (i5 != 0) {
                str6 = null;
            } else {
                str6 = str4;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            if (function5 != null) {
                gapComposerH.L(-1800992613);
                function5.invoke(gapComposerH, Integer.valueOf((i4 >> 9) & 14));
                gapComposerH.Z(false);
                i7 = 0;
                str7 = str6;
                str8 = "LVPushCardContent";
                gapComposer2 = gapComposerH;
            } else if (painter3 != null) {
                DTFunctionNameModifier dTFunctionNameModifierI7 = n00.i(gapComposerH, -1800922491, "LVPushCardContent");
                Dp.Companion companion4 = Dp.f11004c;
                Modifier modifierE7 = ModifierExtKt.e(ClipKt.a(SizeKt.o(dTFunctionNameModifierI7, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), "pushCard_image");
                ContentScale.f9447a.getClass();
                str8 = "LVPushCardContent";
                i7 = 0;
                str7 = str6;
                ImageKt.a(painter3, null, modifierE7, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24632 | ((i4 >> 6) & 14), 104);
                GapComposer gapComposer14 = gapComposerH;
                gapComposer14.Z(false);
                gapComposer2 = gapComposer14;
            } else {
                i7 = 0;
                str7 = str6;
                str8 = "LVPushCardContent";
                gapComposerH.L(-1800623434);
                gapComposerH.Z(false);
                gapComposer2 = gapComposerH;
            }
            Modifier modifierA4 = rowScope.a(new DTFunctionNameModifier(str8), 1.0f, true);
            Arrangement$Start$1 arrangement$Start$4 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF4 = Arrangement.f(LVAppDesignKitTheme.l(gapComposer2).f48414b);
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(spacedAlignedF4, Alignment.Companion.n, gapComposer2, i7);
            iHashCode = Long.hashCode(gapComposer2.T);
            persistentCompositionLocalMapU = gapComposer2.U();
            modifierC = ComposedModifierKt.c(gapComposer2, modifierA4);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposer2, columnMeasurePolicyA, function6);
            function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposer2, persistentCompositionLocalMapU, function7);
            Integer numValueOf4 = Integer.valueOf(iHashCode);
            function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposer2, numValueOf4, function8);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposer2, function1);
            function9 = ComposeUiNode.Companion.d;
            Modifier modifierE8 = n00.e(gapComposer2, modifierC, function9, str8, 1.0f);
            rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposer2, 54);
            iHashCode2 = Long.hashCode(gapComposer2.T);
            persistentCompositionLocalMapU2 = gapComposer2.U();
            modifierC2 = ComposedModifierKt.c(gapComposer2, modifierE8);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, rowMeasurePolicyA, function6);
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposer2, function8, gapComposer2, function1);
            Modifier modifierF4 = n00.f(gapComposer2, modifierC2, function9, str8, "pushCard_title_text");
            TextStyle textStyle4 = configurationPushCardContent.f48569c;
            configurationPushCardType = configurationPushCardContent.f48567a;
            GapComposer gapComposer15 = gapComposer2;
            long j5 = configurationPushCardContent.f48570e;
            int i18 = configurationPushCardContent.f48568b;
            TextOverflow.f10989a.getClass();
            i8 = TextOverflow.f10991c;
            i9 = i4 >> 12;
            TextKt.c(str, modifierF4, j5, 0L, null, 0L, null, null, 0L, i8, false, i18, 0, null, textStyle4, gapComposer15, i9 & 14, KyberEngine.KyberPolyBytes, 110584);
            gapComposer3 = gapComposer15;
            i10 = 15;
            if (configurationPushCardType != ConfigurationPushCardType.Service) {
                z2 = false;
                gapComposer3.L(945771356);
                gapComposer3.Z(false);
            } else {
                str9 = str7;
                if (str9 != null) {
                    DTFunctionNameModifier dTFunctionNameModifierI8 = n00.i(gapComposer3, 945502276, str8);
                    if ((3670016 & i4) == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objX = gapComposer3.x();
                    if (z3) {
                        objX = new lt(str9, i10);
                        gapComposer3.q(objX);
                    } else {
                        objX = new lt(str9, i10);
                        gapComposer3.q(objX);
                    }
                    LVTagKt.a(ModifierExtKt.b(dTFunctionNameModifierI8, "pushCard_tag_view", (Function1) objX, 2), null, str9, gapComposer3, i9 & 896, 26);
                    str7 = str9;
                    z2 = false;
                    gapComposer3.Z(false);
                } else {
                    str7 = str9;
                    z2 = false;
                    gapComposer3.L(945771356);
                    gapComposer3.Z(false);
                }
            }
            gapComposer3.Z(true);
            if (str2 == null) {
                gapComposer3.L(175631067);
                gapComposer3.Z(z2);
                r2 = z2;
                gapComposer4 = gapComposer3;
            } else {
                boolean z7 = z2;
                TextKt.c(str2, n00.d(gapComposer3, 175631068, str8, "pushCard_description_text"), configurationPushCardContent.f48571f, 0L, null, 0L, null, null, 0L, i8, false, 2, 0, null, configurationPushCardContent.d, gapComposer3, (i4 >> 15) & 14, 24960, 110584);
                GapComposer gapComposer16 = gapComposer3;
                gapComposer16.Z(z7);
                r2 = z7;
                gapComposer4 = gapComposer16;
            }
            gapComposer4.Z(true);
            if (configurationPushCardType == ConfigurationPushCardType.Content) {
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer4).I, gapComposer4, r2), null, SizeKt.o(n00.i(gapComposer4, -1799093274, str8), LVAppDesignKitTheme.d(gapComposer4).m), 0L, gapComposer4, 56, 8);
                gapComposer4.Z(r2);
            } else {
                gapComposer4.L(-1798887434);
                gapComposer4.Z(r2);
            }
            function4 = function5;
            str5 = str7;
            painter2 = painter3;
            gapComposer = gapComposer4;
        } else {
            gapComposerH.D();
            painter2 = painter;
            function4 = function3;
            str5 = str4;
            gapComposer = gapComposerH;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gf(rowScope, configurationPushCardContent, painter2, function4, str, str2, str5, i2, i3);
        }
    }

    public static final void c(Modifier modifier, ConfigurationPushCardContainer configurationPushCardContainer, boolean z, Function0 function0, Function3 function3, Composer composer, int i2) {
        int i3;
        ConfigurationPushCardContainer configurationPushCardContainer2;
        int i4;
        Modifier modifierJ;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVPushCardInternal");
        }
        GapComposer gapComposerH = composer.h(866071508);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                configurationPushCardContainer2 = new ConfigurationPushCardContainer(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.j(gapComposerH).f48411c, null);
                i4 = i3 & (-113);
            } else {
                gapComposerH.D();
                i4 = i3 & (-113);
                configurationPushCardContainer2 = configurationPushCardContainer;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            Shape shape = configurationPushCardContainer2.f48566b;
            boolean z2 = ((i4 & 896) == 256) | ((i4 & 7168) == 2048);
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new gq(z, function0, 1);
                gapComposerH.q(objX2);
            }
            Modifier modifierD = ModifierExtKt.d(modifierE, mutableInteractionSource, (Function0) objX2, gapComposerH, (i4 & 14) | 48);
            if (z) {
                modifierJ = ModifierExtKt.a(n00.i(gapComposerH, 1268369277, "LVPushCardInternal"), function0, gapComposerH, ((i4 >> 6) & 112) | 6);
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, 1268454558, false, "LVPushCardInternal");
            }
            Modifier modifierI = PaddingKt.i(BorderKt.a(BackgroundKt.b(ClipKt.a(modifierD.o(modifierJ), shape), configurationPushCardContainer2.f48565a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, shape), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            function3.A(RowScopeInstance.f5040a, gapComposerH, Integer.valueOf(((i4 >> 9) & 112) | 6));
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
            configurationPushCardContainer2 = configurationPushCardContainer;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(modifierE, configurationPushCardContainer2, z, function0, function3, i2);
        }
    }
}
