package androidx.compose.material3;

import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.FabPlacement;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.fc;
import defpackage.rp0;
import defpackage.z2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ScaffoldKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7171a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7171a = 16.0f;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0122  */
    /* JADX WARN: Code duplicated, block: B:101:0x0125  */
    /* JADX WARN: Code duplicated, block: B:104:0x012e  */
    /* JADX WARN: Code duplicated, block: B:106:0x013e  */
    /* JADX WARN: Code duplicated, block: B:119:0x016c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x016e  */
    /* JADX WARN: Code duplicated, block: B:121:0x0174  */
    /* JADX WARN: Code duplicated, block: B:123:0x0178  */
    /* JADX WARN: Code duplicated, block: B:124:0x0180  */
    /* JADX WARN: Code duplicated, block: B:126:0x0183  */
    /* JADX WARN: Code duplicated, block: B:127:0x018b  */
    /* JADX WARN: Code duplicated, block: B:129:0x018e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0196  */
    /* JADX WARN: Code duplicated, block: B:132:0x0199  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:136:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:137:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:140:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:141:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:144:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:146:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:149:0x0200  */
    /* JADX WARN: Code duplicated, block: B:151:0x0206  */
    /* JADX WARN: Code duplicated, block: B:157:0x0217 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:158:0x0219  */
    /* JADX WARN: Code duplicated, block: B:161:0x022d  */
    /* JADX WARN: Code duplicated, block: B:163:0x0233  */
    /* JADX WARN: Code duplicated, block: B:169:0x0246 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:170:0x0248  */
    /* JADX WARN: Code duplicated, block: B:173:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:176:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:33:0x0056  */
    /* JADX WARN: Code duplicated, block: B:35:0x005e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:42:0x006d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0071  */
    /* JADX WARN: Code duplicated, block: B:46:0x0079  */
    /* JADX WARN: Code duplicated, block: B:47:0x007c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:53:0x0088  */
    /* JADX WARN: Code duplicated, block: B:55:0x008c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0094  */
    /* JADX WARN: Code duplicated, block: B:58:0x0097  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:90:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:93:0x0109  */
    /* JADX WARN: Code duplicated, block: B:95:0x010f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0112  */
    public static final void a(Modifier modifier, Function2 function2, Function2 function3, Function2 function4, Function2 function5, int i2, long j2, long j3, WindowInsets windowInsets, final Function3 function6, Composer composer, final int i3, final int i4) {
        int i5;
        Function2 function7;
        int i6;
        Function2 function8;
        int i7;
        int i8;
        Function2 function9;
        int i9;
        int i10;
        Function2 function10;
        int i11;
        int i12;
        int i13;
        boolean z;
        GapComposer gapComposer;
        final WindowInsets windowInsets2;
        final Function2 function11;
        final Function2 function12;
        final Function2 function13;
        final Modifier modifier2;
        final int i14;
        final long j4;
        final long j5;
        final Function2 function14;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Function2 function15;
        Function2 function16;
        Function2 function17;
        Function2 function18;
        int i15;
        long j6;
        long jB;
        long j7;
        WindowInsets windowInsetsI;
        boolean z2;
        Object objX;
        final MutableWindowInsets mutableWindowInsets;
        boolean zK;
        Object objX2;
        int i16;
        int i17;
        int i18;
        int i19;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Scaffold-TvnljyQ");
        }
        GapComposer gapComposerH = composer.h(-1211482744);
        int i20 = i4 & 1;
        if (i20 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i21 = i4 & 2;
        if (i21 == 0) {
            if ((i3 & 48) == 0) {
                function7 = function2;
                i5 |= gapComposerH.y(function7) ? 32 : 16;
            }
            i6 = i4 & 4;
            if (i6 != 0) {
                if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                    function8 = function3;
                    if (gapComposerH.y(function8)) {
                        i7 = 256;
                    } else {
                        i7 = 128;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 8;
                if (i8 != 0) {
                    if ((i3 & 3072) == 0) {
                        function9 = function4;
                        if (gapComposerH.y(function9)) {
                            i9 = 2048;
                        } else {
                            i9 = 1024;
                        }
                        i5 |= i9;
                    }
                    i10 = i4 & 16;
                    if (i10 != 0) {
                        if ((i3 & 24576) == 0) {
                            function10 = function5;
                            if (gapComposerH.y(function10)) {
                                i11 = 16384;
                            } else {
                                i11 = 8192;
                            }
                            i5 |= i11;
                        }
                        i12 = i5 | ImageMetadata.EDGE_MODE;
                        if ((1572864 & i3) == 0) {
                            if ((i4 & 64) == 0 || !gapComposerH.e(j2)) {
                                i19 = 524288;
                            } else {
                                i19 = 1048576;
                            }
                            i13 = i12 | i19;
                        } else {
                            i13 = i12;
                        }
                        if ((i3 & 12582912) != 0) {
                            if ((i4 & 128) == 0 || !gapComposerH.e(j3)) {
                                i18 = 4194304;
                            } else {
                                i18 = 8388608;
                            }
                            i13 |= i18;
                        }
                        if ((i3 & 100663296) != 0) {
                            i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                        }
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.y(function6)) {
                                i17 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i17 = 268435456;
                            }
                            i13 |= i17;
                        }
                        if ((i13 & 306783379) != 306783378) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (gapComposerH.p(i13 & 1, z)) {
                            gapComposerH.y0();
                            if ((i3 & 1) != 0 || gapComposerH.h0()) {
                                if (i20 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                                }
                                if (i21 != 0) {
                                    dTFunctionNameModifier = modifierE;
                                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                    function15 = ComposableSingletons$ScaffoldKt.f6717b;
                                } else {
                                    dTFunctionNameModifier = modifierE;
                                    function15 = function7;
                                }
                                if (i6 != 0) {
                                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                    function16 = ComposableSingletons$ScaffoldKt.f6718c;
                                } else {
                                    function16 = function8;
                                }
                                if (i8 != 0) {
                                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                    function17 = ComposableSingletons$ScaffoldKt.d;
                                } else {
                                    function17 = function9;
                                }
                                if (i10 != 0) {
                                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                    function18 = ComposableSingletons$ScaffoldKt.f6719e;
                                } else {
                                    function18 = function10;
                                }
                                FabPosition.f6957a.getClass();
                                i15 = FabPosition.f6958b;
                                if ((i4 & 64) != 0) {
                                    j6 = MaterialTheme.a(gapComposerH).n;
                                    i13 &= -3670017;
                                } else {
                                    j6 = j2;
                                }
                                if ((i4 & 128) != 0) {
                                    jB = ColorSchemeKt.b(j6, gapComposerH);
                                    i13 &= -29360129;
                                } else {
                                    jB = j3;
                                }
                                if ((i4 & 256) != 0) {
                                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                                    AndroidWindowInsets androidWindowInsetsC = WindowInsets_androidKt.c(gapComposerH);
                                    WindowInsetsHolder.y.getClass();
                                    windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                    i13 &= -234881025;
                                    j7 = jB;
                                } else {
                                    j7 = jB;
                                    windowInsetsI = windowInsets;
                                }
                            } else {
                                gapComposerH.D();
                                if ((i4 & 64) != 0) {
                                    i13 &= -3670017;
                                }
                                if ((i4 & 128) != 0) {
                                    i13 &= -29360129;
                                }
                                if ((i4 & 256) != 0) {
                                    i13 &= -234881025;
                                }
                                windowInsetsI = windowInsets;
                                function15 = function7;
                                function16 = function8;
                                function17 = function9;
                                function18 = function10;
                                dTFunctionNameModifier = modifierE;
                                i15 = i2;
                                j6 = j2;
                                j7 = j3;
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            int i22 = (234881024 & i13) ^ 100663296;
                            z2 = (i22 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864;
                            objX = gapComposerH.x();
                            final Function2 function19 = function15;
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (z2 || objX == composer$Companion$Empty$1) {
                                objX = new MutableWindowInsets(windowInsetsI);
                                gapComposerH.q(objX);
                            }
                            mutableWindowInsets = (MutableWindowInsets) objX;
                            zK = gapComposerH.K(mutableWindowInsets) | ((i22 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                            objX2 = gapComposerH.x();
                            i16 = 12;
                            if (zK || objX2 == composer$Companion$Empty$1) {
                                objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                                gapComposerH.q(objX2);
                            }
                            Modifier modifierC = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                            final Function2 function20 = function16;
                            final Function2 function21 = function17;
                            final Function2 function22 = function18;
                            final int i23 = i15;
                            function10 = function22;
                            int i24 = i13 >> 12;
                            gapComposer = gapComposerH;
                            long j8 = j6;
                            SurfaceKt.a(modifierC, null, j8, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    Composer composer2 = (Composer) obj;
                                    int iIntValue = ((Number) obj2).intValue();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        ScaffoldKt.b(i23, function19, function6, function21, function22, mutableWindowInsets, function20, composer2, 0);
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, gapComposerH), gapComposer, (i24 & 896) | 12582912 | (i24 & 7168), 114);
                            modifier2 = dTFunctionNameModifier;
                            windowInsets2 = windowInsetsI;
                            function12 = function16;
                            function11 = function19;
                            function13 = function21;
                            i14 = i15;
                            j4 = j8;
                            j5 = j7;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            windowInsets2 = windowInsets;
                            function11 = function7;
                            function12 = function8;
                            function13 = function9;
                            modifier2 = modifierE;
                            i14 = i2;
                            j4 = j2;
                            j5 = j3;
                        }
                        function14 = function10;
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: au0
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                                    ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i5 |= 24576;
                    function10 = function5;
                    i12 = i5 | ImageMetadata.EDGE_MODE;
                    if ((1572864 & i3) == 0) {
                        if ((i4 & 64) == 0) {
                            i19 = 524288;
                        } else {
                            i19 = 524288;
                        }
                        i13 = i12 | i19;
                    } else {
                        i13 = i12;
                    }
                    if ((i3 & 12582912) != 0) {
                        if ((i4 & 128) == 0) {
                            i18 = 4194304;
                        } else {
                            i18 = 4194304;
                        }
                        i13 |= i18;
                    }
                    if ((i3 & 100663296) != 0) {
                        i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                    }
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function6)) {
                            i17 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i17 = 268435456;
                        }
                        i13 |= i17;
                    }
                    if ((i13 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i13 & 1, z)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC2 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC2, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        } else {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC3 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC3, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        int i25 = (234881024 & i13) ^ 100663296;
                        if (i25 <= 67108864) {
                        }
                        objX = gapComposerH.x();
                        final Function2 function110 = function15;
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (z2) {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        } else {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objX;
                        zK = gapComposerH.K(mutableWindowInsets) | ((i25 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                        objX2 = gapComposerH.x();
                        i16 = 12;
                        if (zK) {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        }
                        Modifier modifierC2 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                        final Function2 function23 = function16;
                        final Function2 function24 = function17;
                        final Function2 function25 = function18;
                        final int i26 = i15;
                        function10 = function25;
                        int i27 = i13 >> 12;
                        gapComposer = gapComposerH;
                        long j9 = j6;
                        SurfaceKt.a(modifierC2, null, j9, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                    ScaffoldKt.b(i26, function110, function6, function24, function25, mutableWindowInsets, function23, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, (i27 & 896) | 12582912 | (i27 & 7168), 114);
                        modifier2 = dTFunctionNameModifier;
                        windowInsets2 = windowInsetsI;
                        function12 = function16;
                        function11 = function110;
                        function13 = function24;
                        i14 = i15;
                        j4 = j9;
                        j5 = j7;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        windowInsets2 = windowInsets;
                        function11 = function7;
                        function12 = function8;
                        function13 = function9;
                        modifier2 = modifierE;
                        i14 = i2;
                        j4 = j2;
                        j5 = j3;
                    }
                    function14 = function10;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: au0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i5 |= 3072;
                function9 = function4;
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        function10 = function5;
                        if (gapComposerH.y(function10)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i5 |= i11;
                    }
                    i12 = i5 | ImageMetadata.EDGE_MODE;
                    if ((1572864 & i3) == 0) {
                        if ((i4 & 64) == 0) {
                            i19 = 524288;
                        } else {
                            i19 = 524288;
                        }
                        i13 = i12 | i19;
                    } else {
                        i13 = i12;
                    }
                    if ((i3 & 12582912) != 0) {
                        if ((i4 & 128) == 0) {
                            i18 = 4194304;
                        } else {
                            i18 = 4194304;
                        }
                        i13 |= i18;
                    }
                    if ((i3 & 100663296) != 0) {
                        i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                    }
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function6)) {
                            i17 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i17 = 268435456;
                        }
                        i13 |= i17;
                    }
                    if ((i13 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i13 & 1, z)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC4 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC4, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        } else {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC5 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC5, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                        int i28 = (234881024 & i13) ^ 100663296;
                        if (i28 <= 67108864) {
                        }
                        objX = gapComposerH.x();
                        final Function2 function111 = function15;
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (z2) {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        } else {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objX;
                        zK = gapComposerH.K(mutableWindowInsets) | ((i28 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                        objX2 = gapComposerH.x();
                        i16 = 12;
                        if (zK) {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        }
                        Modifier modifierC3 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                        final Function2 function26 = function16;
                        final Function2 function27 = function17;
                        final Function2 function28 = function18;
                        final int i29 = i15;
                        function10 = function28;
                        int i210 = i13 >> 12;
                        gapComposer = gapComposerH;
                        long j10 = j6;
                        SurfaceKt.a(modifierC3, null, j10, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                    ScaffoldKt.b(i29, function111, function6, function27, function28, mutableWindowInsets, function26, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, (i210 & 896) | 12582912 | (i210 & 7168), 114);
                        modifier2 = dTFunctionNameModifier;
                        windowInsets2 = windowInsetsI;
                        function12 = function16;
                        function11 = function111;
                        function13 = function27;
                        i14 = i15;
                        j4 = j10;
                        j5 = j7;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        windowInsets2 = windowInsets;
                        function11 = function7;
                        function12 = function8;
                        function13 = function9;
                        modifier2 = modifierE;
                        i14 = i2;
                        j4 = j2;
                        j5 = j3;
                    }
                    function14 = function10;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: au0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i5 |= 24576;
                function10 = function5;
                i12 = i5 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i3) == 0) {
                    if ((i4 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i13 = i12 | i19;
                } else {
                    i13 = i12;
                }
                if ((i3 & 12582912) != 0) {
                    if ((i4 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i13 |= i18;
                }
                if ((i3 & 100663296) != 0) {
                    i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                }
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function6)) {
                        i17 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i17 = 268435456;
                    }
                    i13 |= i17;
                }
                if ((i13 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i13 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC6 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC6, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    } else {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC7 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC7, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    int i211 = (234881024 & i13) ^ 100663296;
                    if (i211 <= 67108864) {
                    }
                    objX = gapComposerH.x();
                    final Function2 function112 = function15;
                    Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                    if (z2) {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    } else {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objX;
                    zK = gapComposerH.K(mutableWindowInsets) | ((i211 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                    objX2 = gapComposerH.x();
                    i16 = 12;
                    if (zK) {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierC4 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                    final Function2 function29 = function16;
                    final Function2 function210 = function17;
                    final Function2 function211 = function18;
                    final int i212 = i15;
                    function10 = function211;
                    int i213 = i13 >> 12;
                    gapComposer = gapComposerH;
                    long j11 = j6;
                    SurfaceKt.a(modifierC4, null, j11, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                ScaffoldKt.b(i212, function112, function6, function210, function211, mutableWindowInsets, function29, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, (i213 & 896) | 12582912 | (i213 & 7168), 114);
                    modifier2 = dTFunctionNameModifier;
                    windowInsets2 = windowInsetsI;
                    function12 = function16;
                    function11 = function112;
                    function13 = function210;
                    i14 = i15;
                    j4 = j11;
                    j5 = j7;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    windowInsets2 = windowInsets;
                    function11 = function7;
                    function12 = function8;
                    function13 = function9;
                    modifier2 = modifierE;
                    i14 = i2;
                    j4 = j2;
                    j5 = j3;
                }
                function14 = function10;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: au0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= KyberEngine.KyberPolyBytes;
            function8 = function3;
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    function9 = function4;
                    if (gapComposerH.y(function9)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        function10 = function5;
                        if (gapComposerH.y(function10)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i5 |= i11;
                    }
                    i12 = i5 | ImageMetadata.EDGE_MODE;
                    if ((1572864 & i3) == 0) {
                        if ((i4 & 64) == 0) {
                            i19 = 524288;
                        } else {
                            i19 = 524288;
                        }
                        i13 = i12 | i19;
                    } else {
                        i13 = i12;
                    }
                    if ((i3 & 12582912) != 0) {
                        if ((i4 & 128) == 0) {
                            i18 = 4194304;
                        } else {
                            i18 = 4194304;
                        }
                        i13 |= i18;
                    }
                    if ((i3 & 100663296) != 0) {
                        i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                    }
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function6)) {
                            i17 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i17 = 268435456;
                        }
                        i13 |= i17;
                    }
                    if ((i13 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i13 & 1, z)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC8 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC8, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        } else {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC9 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC9, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                        int i214 = (234881024 & i13) ^ 100663296;
                        if (i214 <= 67108864) {
                        }
                        objX = gapComposerH.x();
                        final Function2 function113 = function15;
                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                        if (z2) {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        } else {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objX;
                        zK = gapComposerH.K(mutableWindowInsets) | ((i214 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                        objX2 = gapComposerH.x();
                        i16 = 12;
                        if (zK) {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        }
                        Modifier modifierC5 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                        final Function2 function212 = function16;
                        final Function2 function213 = function17;
                        final Function2 function214 = function18;
                        final int i215 = i15;
                        function10 = function214;
                        int i216 = i13 >> 12;
                        gapComposer = gapComposerH;
                        long j12 = j6;
                        SurfaceKt.a(modifierC5, null, j12, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                    ScaffoldKt.b(i215, function113, function6, function213, function214, mutableWindowInsets, function212, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, (i216 & 896) | 12582912 | (i216 & 7168), 114);
                        modifier2 = dTFunctionNameModifier;
                        windowInsets2 = windowInsetsI;
                        function12 = function16;
                        function11 = function113;
                        function13 = function213;
                        i14 = i15;
                        j4 = j12;
                        j5 = j7;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        windowInsets2 = windowInsets;
                        function11 = function7;
                        function12 = function8;
                        function13 = function9;
                        modifier2 = modifierE;
                        i14 = i2;
                        j4 = j2;
                        j5 = j3;
                    }
                    function14 = function10;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: au0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i5 |= 24576;
                function10 = function5;
                i12 = i5 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i3) == 0) {
                    if ((i4 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i13 = i12 | i19;
                } else {
                    i13 = i12;
                }
                if ((i3 & 12582912) != 0) {
                    if ((i4 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i13 |= i18;
                }
                if ((i3 & 100663296) != 0) {
                    i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                }
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function6)) {
                        i17 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i17 = 268435456;
                    }
                    i13 |= i17;
                }
                if ((i13 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i13 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC10 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC10, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    } else {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC11 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC11, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                    int i217 = (234881024 & i13) ^ 100663296;
                    if (i217 <= 67108864) {
                    }
                    objX = gapComposerH.x();
                    final Function2 function114 = function15;
                    Composer$Companion$Empty$1 composer$Companion$Empty$6 = Composer.Companion.f7939a;
                    if (z2) {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    } else {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objX;
                    zK = gapComposerH.K(mutableWindowInsets) | ((i217 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                    objX2 = gapComposerH.x();
                    i16 = 12;
                    if (zK) {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierC6 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                    final Function2 function215 = function16;
                    final Function2 function216 = function17;
                    final Function2 function217 = function18;
                    final int i218 = i15;
                    function10 = function217;
                    int i219 = i13 >> 12;
                    gapComposer = gapComposerH;
                    long j13 = j6;
                    SurfaceKt.a(modifierC6, null, j13, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                                ScaffoldKt.b(i218, function114, function6, function216, function217, mutableWindowInsets, function215, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, (i219 & 896) | 12582912 | (i219 & 7168), 114);
                    modifier2 = dTFunctionNameModifier;
                    windowInsets2 = windowInsetsI;
                    function12 = function16;
                    function11 = function114;
                    function13 = function216;
                    i14 = i15;
                    j4 = j13;
                    j5 = j7;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    windowInsets2 = windowInsets;
                    function11 = function7;
                    function12 = function8;
                    function13 = function9;
                    modifier2 = modifierE;
                    i14 = i2;
                    j4 = j2;
                    j5 = j3;
                }
                function14 = function10;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: au0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 3072;
            function9 = function4;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    function10 = function5;
                    if (gapComposerH.y(function10)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i5 |= i11;
                }
                i12 = i5 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i3) == 0) {
                    if ((i4 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i13 = i12 | i19;
                } else {
                    i13 = i12;
                }
                if ((i3 & 12582912) != 0) {
                    if ((i4 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i13 |= i18;
                }
                if ((i3 & 100663296) != 0) {
                    i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                }
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function6)) {
                        i17 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i17 = 268435456;
                    }
                    i13 |= i17;
                }
                if ((i13 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i13 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC12 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC12, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    } else {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC13 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC13, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey110 = ComposerKt.f7940a;
                    int i2110 = (234881024 & i13) ^ 100663296;
                    if (i2110 <= 67108864) {
                    }
                    objX = gapComposerH.x();
                    final Function2 function115 = function15;
                    Composer$Companion$Empty$1 composer$Companion$Empty$7 = Composer.Companion.f7939a;
                    if (z2) {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    } else {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objX;
                    zK = gapComposerH.K(mutableWindowInsets) | ((i2110 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                    objX2 = gapComposerH.x();
                    i16 = 12;
                    if (zK) {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierC7 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                    final Function2 function218 = function16;
                    final Function2 function219 = function17;
                    final Function2 function2110 = function18;
                    final int i2111 = i15;
                    function10 = function2110;
                    int i2112 = i13 >> 12;
                    gapComposer = gapComposerH;
                    long j14 = j6;
                    SurfaceKt.a(modifierC7, null, j14, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                                ScaffoldKt.b(i2111, function115, function6, function219, function2110, mutableWindowInsets, function218, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, (i2112 & 896) | 12582912 | (i2112 & 7168), 114);
                    modifier2 = dTFunctionNameModifier;
                    windowInsets2 = windowInsetsI;
                    function12 = function16;
                    function11 = function115;
                    function13 = function219;
                    i14 = i15;
                    j4 = j14;
                    j5 = j7;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    windowInsets2 = windowInsets;
                    function11 = function7;
                    function12 = function8;
                    function13 = function9;
                    modifier2 = modifierE;
                    i14 = i2;
                    j4 = j2;
                    j5 = j3;
                }
                function14 = function10;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: au0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            function10 = function5;
            i12 = i5 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i3) == 0) {
                if ((i4 & 64) == 0) {
                    i19 = 524288;
                } else {
                    i19 = 524288;
                }
                i13 = i12 | i19;
            } else {
                i13 = i12;
            }
            if ((i3 & 12582912) != 0) {
                if ((i4 & 128) == 0) {
                    i18 = 4194304;
                } else {
                    i18 = 4194304;
                }
                i13 |= i18;
            }
            if ((i3 & 100663296) != 0) {
                i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
            }
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.y(function6)) {
                    i17 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i17 = 268435456;
                }
                i13 |= i17;
            }
            if ((i13 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i13 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC14 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC14, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                } else {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC15 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC15, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey113 = ComposerKt.f7940a;
                int i2113 = (234881024 & i13) ^ 100663296;
                if (i2113 <= 67108864) {
                }
                objX = gapComposerH.x();
                final Function2 function116 = function15;
                Composer$Companion$Empty$1 composer$Companion$Empty$8 = Composer.Companion.f7939a;
                if (z2) {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                } else {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                }
                mutableWindowInsets = (MutableWindowInsets) objX;
                zK = gapComposerH.K(mutableWindowInsets) | ((i2113 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                objX2 = gapComposerH.x();
                i16 = 12;
                if (zK) {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                }
                Modifier modifierC8 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                final Function2 function2111 = function16;
                final Function2 function2112 = function17;
                final Function2 function2113 = function18;
                final int i2114 = i15;
                function10 = function2113;
                int i2115 = i13 >> 12;
                gapComposer = gapComposerH;
                long j15 = j6;
                SurfaceKt.a(modifierC8, null, j15, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                            ScaffoldKt.b(i2114, function116, function6, function2112, function2113, mutableWindowInsets, function2111, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, (i2115 & 896) | 12582912 | (i2115 & 7168), 114);
                modifier2 = dTFunctionNameModifier;
                windowInsets2 = windowInsetsI;
                function12 = function16;
                function11 = function116;
                function13 = function2112;
                i14 = i15;
                j4 = j15;
                j5 = j7;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                windowInsets2 = windowInsets;
                function11 = function7;
                function12 = function8;
                function13 = function9;
                modifier2 = modifierE;
                i14 = i2;
                j4 = j2;
                j5 = j3;
            }
            function14 = function10;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: au0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 48;
        function7 = function2;
        i6 = i4 & 4;
        if (i6 != 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                function8 = function3;
                if (gapComposerH.y(function8)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i5 |= i7;
            }
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    function9 = function4;
                    if (gapComposerH.y(function9)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        function10 = function5;
                        if (gapComposerH.y(function10)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i5 |= i11;
                    }
                    i12 = i5 | ImageMetadata.EDGE_MODE;
                    if ((1572864 & i3) == 0) {
                        if ((i4 & 64) == 0) {
                            i19 = 524288;
                        } else {
                            i19 = 524288;
                        }
                        i13 = i12 | i19;
                    } else {
                        i13 = i12;
                    }
                    if ((i3 & 12582912) != 0) {
                        if ((i4 & 128) == 0) {
                            i18 = 4194304;
                        } else {
                            i18 = 4194304;
                        }
                        i13 |= i18;
                    }
                    if ((i3 & 100663296) != 0) {
                        i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                    }
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function6)) {
                            i17 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i17 = 268435456;
                        }
                        i13 |= i17;
                    }
                    if ((i13 & 306783379) != 306783378) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i13 & 1, z)) {
                        gapComposerH.y0();
                        if ((i3 & 1) != 0) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC16 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC16, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        } else {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                            }
                            if (i21 != 0) {
                                dTFunctionNameModifier = modifierE;
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function15 = ComposableSingletons$ScaffoldKt.f6717b;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                function15 = function7;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function16 = ComposableSingletons$ScaffoldKt.f6718c;
                            } else {
                                function16 = function8;
                            }
                            if (i8 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function17 = ComposableSingletons$ScaffoldKt.d;
                            } else {
                                function17 = function9;
                            }
                            if (i10 != 0) {
                                ComposableSingletons$ScaffoldKt.f6716a.getClass();
                                function18 = ComposableSingletons$ScaffoldKt.f6719e;
                            } else {
                                function18 = function10;
                            }
                            FabPosition.f6957a.getClass();
                            i15 = FabPosition.f6958b;
                            if ((i4 & 64) != 0) {
                                j6 = MaterialTheme.a(gapComposerH).n;
                                i13 &= -3670017;
                            } else {
                                j6 = j2;
                            }
                            if ((i4 & 128) != 0) {
                                jB = ColorSchemeKt.b(j6, gapComposerH);
                                i13 &= -29360129;
                            } else {
                                jB = j3;
                            }
                            if ((i4 & 256) != 0) {
                                OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                                AndroidWindowInsets androidWindowInsetsC17 = WindowInsets_androidKt.c(gapComposerH);
                                WindowInsetsHolder.y.getClass();
                                windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC17, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                                i13 &= -234881025;
                                j7 = jB;
                            } else {
                                j7 = jB;
                                windowInsetsI = windowInsets;
                            }
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey116 = ComposerKt.f7940a;
                        int i2116 = (234881024 & i13) ^ 100663296;
                        if (i2116 <= 67108864) {
                        }
                        objX = gapComposerH.x();
                        final Function2 function117 = function15;
                        Composer$Companion$Empty$1 composer$Companion$Empty$9 = Composer.Companion.f7939a;
                        if (z2) {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        } else {
                            objX = new MutableWindowInsets(windowInsetsI);
                            gapComposerH.q(objX);
                        }
                        mutableWindowInsets = (MutableWindowInsets) objX;
                        zK = gapComposerH.K(mutableWindowInsets) | ((i2116 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                        objX2 = gapComposerH.x();
                        i16 = 12;
                        if (zK) {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                            gapComposerH.q(objX2);
                        }
                        Modifier modifierC9 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                        final Function2 function2114 = function16;
                        final Function2 function2115 = function17;
                        final Function2 function2116 = function18;
                        final int i2117 = i15;
                        function10 = function2116;
                        int i2118 = i13 >> 12;
                        gapComposer = gapComposerH;
                        long j16 = j6;
                        SurfaceKt.a(modifierC9, null, j16, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey117 = ComposerKt.f7940a;
                                    ScaffoldKt.b(i2117, function117, function6, function2115, function2116, mutableWindowInsets, function2114, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposer, (i2118 & 896) | 12582912 | (i2118 & 7168), 114);
                        modifier2 = dTFunctionNameModifier;
                        windowInsets2 = windowInsetsI;
                        function12 = function16;
                        function11 = function117;
                        function13 = function2115;
                        i14 = i15;
                        j4 = j16;
                        j5 = j7;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        windowInsets2 = windowInsets;
                        function11 = function7;
                        function12 = function8;
                        function13 = function9;
                        modifier2 = modifierE;
                        i14 = i2;
                        j4 = j2;
                        j5 = j3;
                    }
                    function14 = function10;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: au0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i5 |= 24576;
                function10 = function5;
                i12 = i5 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i3) == 0) {
                    if ((i4 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i13 = i12 | i19;
                } else {
                    i13 = i12;
                }
                if ((i3 & 12582912) != 0) {
                    if ((i4 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i13 |= i18;
                }
                if ((i3 & 100663296) != 0) {
                    i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                }
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function6)) {
                        i17 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i17 = 268435456;
                    }
                    i13 |= i17;
                }
                if ((i13 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i13 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey117 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC18 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC18, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    } else {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey118 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC19 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC19, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey119 = ComposerKt.f7940a;
                    int i2119 = (234881024 & i13) ^ 100663296;
                    if (i2119 <= 67108864) {
                    }
                    objX = gapComposerH.x();
                    final Function2 function118 = function15;
                    Composer$Companion$Empty$1 composer$Companion$Empty$10 = Composer.Companion.f7939a;
                    if (z2) {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    } else {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objX;
                    zK = gapComposerH.K(mutableWindowInsets) | ((i2119 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                    objX2 = gapComposerH.x();
                    i16 = 12;
                    if (zK) {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierC10 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                    final Function2 function2117 = function16;
                    final Function2 function2118 = function17;
                    final Function2 function2119 = function18;
                    final int i21110 = i15;
                    function10 = function2119;
                    int i21111 = i13 >> 12;
                    gapComposer = gapComposerH;
                    long j17 = j6;
                    SurfaceKt.a(modifierC10, null, j17, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey1110 = ComposerKt.f7940a;
                                ScaffoldKt.b(i21110, function118, function6, function2118, function2119, mutableWindowInsets, function2117, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, (i21111 & 896) | 12582912 | (i21111 & 7168), 114);
                    modifier2 = dTFunctionNameModifier;
                    windowInsets2 = windowInsetsI;
                    function12 = function16;
                    function11 = function118;
                    function13 = function2118;
                    i14 = i15;
                    j4 = j17;
                    j5 = j7;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    windowInsets2 = windowInsets;
                    function11 = function7;
                    function12 = function8;
                    function13 = function9;
                    modifier2 = modifierE;
                    i14 = i2;
                    j4 = j2;
                    j5 = j3;
                }
                function14 = function10;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: au0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 3072;
            function9 = function4;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    function10 = function5;
                    if (gapComposerH.y(function10)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i5 |= i11;
                }
                i12 = i5 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i3) == 0) {
                    if ((i4 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i13 = i12 | i19;
                } else {
                    i13 = i12;
                }
                if ((i3 & 12582912) != 0) {
                    if ((i4 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i13 |= i18;
                }
                if ((i3 & 100663296) != 0) {
                    i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                }
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function6)) {
                        i17 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i17 = 268435456;
                    }
                    i13 |= i17;
                }
                if ((i13 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i13 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey1110 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC110 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC110, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    } else {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey1111 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC111 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC111, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey1112 = ComposerKt.f7940a;
                    int i21112 = (234881024 & i13) ^ 100663296;
                    if (i21112 <= 67108864) {
                    }
                    objX = gapComposerH.x();
                    final Function2 function119 = function15;
                    Composer$Companion$Empty$1 composer$Companion$Empty$11 = Composer.Companion.f7939a;
                    if (z2) {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    } else {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objX;
                    zK = gapComposerH.K(mutableWindowInsets) | ((i21112 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                    objX2 = gapComposerH.x();
                    i16 = 12;
                    if (zK) {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierC11 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                    final Function2 function21110 = function16;
                    final Function2 function21111 = function17;
                    final Function2 function21112 = function18;
                    final int i21113 = i15;
                    function10 = function21112;
                    int i21114 = i13 >> 12;
                    gapComposer = gapComposerH;
                    long j18 = j6;
                    SurfaceKt.a(modifierC11, null, j18, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey1113 = ComposerKt.f7940a;
                                ScaffoldKt.b(i21113, function119, function6, function21111, function21112, mutableWindowInsets, function21110, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, (i21114 & 896) | 12582912 | (i21114 & 7168), 114);
                    modifier2 = dTFunctionNameModifier;
                    windowInsets2 = windowInsetsI;
                    function12 = function16;
                    function11 = function119;
                    function13 = function21111;
                    i14 = i15;
                    j4 = j18;
                    j5 = j7;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    windowInsets2 = windowInsets;
                    function11 = function7;
                    function12 = function8;
                    function13 = function9;
                    modifier2 = modifierE;
                    i14 = i2;
                    j4 = j2;
                    j5 = j3;
                }
                function14 = function10;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: au0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            function10 = function5;
            i12 = i5 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i3) == 0) {
                if ((i4 & 64) == 0) {
                    i19 = 524288;
                } else {
                    i19 = 524288;
                }
                i13 = i12 | i19;
            } else {
                i13 = i12;
            }
            if ((i3 & 12582912) != 0) {
                if ((i4 & 128) == 0) {
                    i18 = 4194304;
                } else {
                    i18 = 4194304;
                }
                i13 |= i18;
            }
            if ((i3 & 100663296) != 0) {
                i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
            }
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.y(function6)) {
                    i17 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i17 = 268435456;
                }
                i13 |= i17;
            }
            if ((i13 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i13 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey1113 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC112 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC112, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                } else {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey1114 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC113 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC113, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey1115 = ComposerKt.f7940a;
                int i21115 = (234881024 & i13) ^ 100663296;
                if (i21115 <= 67108864) {
                }
                objX = gapComposerH.x();
                final Function2 function1110 = function15;
                Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.f7939a;
                if (z2) {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                } else {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                }
                mutableWindowInsets = (MutableWindowInsets) objX;
                zK = gapComposerH.K(mutableWindowInsets) | ((i21115 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                objX2 = gapComposerH.x();
                i16 = 12;
                if (zK) {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                }
                Modifier modifierC12 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                final Function2 function21113 = function16;
                final Function2 function21114 = function17;
                final Function2 function21115 = function18;
                final int i21116 = i15;
                function10 = function21115;
                int i21117 = i13 >> 12;
                gapComposer = gapComposerH;
                long j19 = j6;
                SurfaceKt.a(modifierC12, null, j19, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey1116 = ComposerKt.f7940a;
                            ScaffoldKt.b(i21116, function1110, function6, function21114, function21115, mutableWindowInsets, function21113, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, (i21117 & 896) | 12582912 | (i21117 & 7168), 114);
                modifier2 = dTFunctionNameModifier;
                windowInsets2 = windowInsetsI;
                function12 = function16;
                function11 = function1110;
                function13 = function21114;
                i14 = i15;
                j4 = j19;
                j5 = j7;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                windowInsets2 = windowInsets;
                function11 = function7;
                function12 = function8;
                function13 = function9;
                modifier2 = modifierE;
                i14 = i2;
                j4 = j2;
                j5 = j3;
            }
            function14 = function10;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: au0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= KyberEngine.KyberPolyBytes;
        function8 = function3;
        i8 = i4 & 8;
        if (i8 != 0) {
            if ((i3 & 3072) == 0) {
                function9 = function4;
                if (gapComposerH.y(function9)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i5 |= i9;
            }
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    function10 = function5;
                    if (gapComposerH.y(function10)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i5 |= i11;
                }
                i12 = i5 | ImageMetadata.EDGE_MODE;
                if ((1572864 & i3) == 0) {
                    if ((i4 & 64) == 0) {
                        i19 = 524288;
                    } else {
                        i19 = 524288;
                    }
                    i13 = i12 | i19;
                } else {
                    i13 = i12;
                }
                if ((i3 & 12582912) != 0) {
                    if ((i4 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i13 |= i18;
                }
                if ((i3 & 100663296) != 0) {
                    i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                }
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function6)) {
                        i17 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i17 = 268435456;
                    }
                    i13 |= i17;
                }
                if ((i13 & 306783379) != 306783378) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i13 & 1, z)) {
                    gapComposerH.y0();
                    if ((i3 & 1) != 0) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey1116 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC114 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC114, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    } else {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                        }
                        if (i21 != 0) {
                            dTFunctionNameModifier = modifierE;
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function15 = ComposableSingletons$ScaffoldKt.f6717b;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            function15 = function7;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function16 = ComposableSingletons$ScaffoldKt.f6718c;
                        } else {
                            function16 = function8;
                        }
                        if (i8 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function17 = ComposableSingletons$ScaffoldKt.d;
                        } else {
                            function17 = function9;
                        }
                        if (i10 != 0) {
                            ComposableSingletons$ScaffoldKt.f6716a.getClass();
                            function18 = ComposableSingletons$ScaffoldKt.f6719e;
                        } else {
                            function18 = function10;
                        }
                        FabPosition.f6957a.getClass();
                        i15 = FabPosition.f6958b;
                        if ((i4 & 64) != 0) {
                            j6 = MaterialTheme.a(gapComposerH).n;
                            i13 &= -3670017;
                        } else {
                            j6 = j2;
                        }
                        if ((i4 & 128) != 0) {
                            jB = ColorSchemeKt.b(j6, gapComposerH);
                            i13 &= -29360129;
                        } else {
                            jB = j3;
                        }
                        if ((i4 & 256) != 0) {
                            OpaqueKey opaqueKey1117 = ComposerKt.f7940a;
                            AndroidWindowInsets androidWindowInsetsC115 = WindowInsets_androidKt.c(gapComposerH);
                            WindowInsetsHolder.y.getClass();
                            windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC115, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                            i13 &= -234881025;
                            j7 = jB;
                        } else {
                            j7 = jB;
                            windowInsetsI = windowInsets;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey1118 = ComposerKt.f7940a;
                    int i21118 = (234881024 & i13) ^ 100663296;
                    if (i21118 <= 67108864) {
                    }
                    objX = gapComposerH.x();
                    final Function2 function1111 = function15;
                    Composer$Companion$Empty$1 composer$Companion$Empty$13 = Composer.Companion.f7939a;
                    if (z2) {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    } else {
                        objX = new MutableWindowInsets(windowInsetsI);
                        gapComposerH.q(objX);
                    }
                    mutableWindowInsets = (MutableWindowInsets) objX;
                    zK = gapComposerH.K(mutableWindowInsets) | ((i21118 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                    objX2 = gapComposerH.x();
                    i16 = 12;
                    if (zK) {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierC13 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                    final Function2 function21116 = function16;
                    final Function2 function21117 = function17;
                    final Function2 function21118 = function18;
                    final int i21119 = i15;
                    function10 = function21118;
                    int i211110 = i13 >> 12;
                    gapComposer = gapComposerH;
                    long j110 = j6;
                    SurfaceKt.a(modifierC13, null, j110, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey1119 = ComposerKt.f7940a;
                                ScaffoldKt.b(i21119, function1111, function6, function21117, function21118, mutableWindowInsets, function21116, composer2, 0);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposer, (i211110 & 896) | 12582912 | (i211110 & 7168), 114);
                    modifier2 = dTFunctionNameModifier;
                    windowInsets2 = windowInsetsI;
                    function12 = function16;
                    function11 = function1111;
                    function13 = function21117;
                    i14 = i15;
                    j4 = j110;
                    j5 = j7;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    windowInsets2 = windowInsets;
                    function11 = function7;
                    function12 = function8;
                    function13 = function9;
                    modifier2 = modifierE;
                    i14 = i2;
                    j4 = j2;
                    j5 = j3;
                }
                function14 = function10;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: au0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            function10 = function5;
            i12 = i5 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i3) == 0) {
                if ((i4 & 64) == 0) {
                    i19 = 524288;
                } else {
                    i19 = 524288;
                }
                i13 = i12 | i19;
            } else {
                i13 = i12;
            }
            if ((i3 & 12582912) != 0) {
                if ((i4 & 128) == 0) {
                    i18 = 4194304;
                } else {
                    i18 = 4194304;
                }
                i13 |= i18;
            }
            if ((i3 & 100663296) != 0) {
                i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
            }
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.y(function6)) {
                    i17 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i17 = 268435456;
                }
                i13 |= i17;
            }
            if ((i13 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i13 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey1119 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC116 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC116, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                } else {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey11110 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC117 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC117, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey11111 = ComposerKt.f7940a;
                int i211111 = (234881024 & i13) ^ 100663296;
                if (i211111 <= 67108864) {
                }
                objX = gapComposerH.x();
                final Function2 function1112 = function15;
                Composer$Companion$Empty$1 composer$Companion$Empty$14 = Composer.Companion.f7939a;
                if (z2) {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                } else {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                }
                mutableWindowInsets = (MutableWindowInsets) objX;
                zK = gapComposerH.K(mutableWindowInsets) | ((i211111 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                objX2 = gapComposerH.x();
                i16 = 12;
                if (zK) {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                }
                Modifier modifierC14 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                final Function2 function21119 = function16;
                final Function2 function211110 = function17;
                final Function2 function211111 = function18;
                final int i211112 = i15;
                function10 = function211111;
                int i211113 = i13 >> 12;
                gapComposer = gapComposerH;
                long j111 = j6;
                SurfaceKt.a(modifierC14, null, j111, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey11112 = ComposerKt.f7940a;
                            ScaffoldKt.b(i211112, function1112, function6, function211110, function211111, mutableWindowInsets, function21119, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, (i211113 & 896) | 12582912 | (i211113 & 7168), 114);
                modifier2 = dTFunctionNameModifier;
                windowInsets2 = windowInsetsI;
                function12 = function16;
                function11 = function1112;
                function13 = function211110;
                i14 = i15;
                j4 = j111;
                j5 = j7;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                windowInsets2 = windowInsets;
                function11 = function7;
                function12 = function8;
                function13 = function9;
                modifier2 = modifierE;
                i14 = i2;
                j4 = j2;
                j5 = j3;
            }
            function14 = function10;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: au0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 3072;
        function9 = function4;
        i10 = i4 & 16;
        if (i10 != 0) {
            if ((i3 & 24576) == 0) {
                function10 = function5;
                if (gapComposerH.y(function10)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i5 |= i11;
            }
            i12 = i5 | ImageMetadata.EDGE_MODE;
            if ((1572864 & i3) == 0) {
                if ((i4 & 64) == 0) {
                    i19 = 524288;
                } else {
                    i19 = 524288;
                }
                i13 = i12 | i19;
            } else {
                i13 = i12;
            }
            if ((i3 & 12582912) != 0) {
                if ((i4 & 128) == 0) {
                    i18 = 4194304;
                } else {
                    i18 = 4194304;
                }
                i13 |= i18;
            }
            if ((i3 & 100663296) != 0) {
                i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
            }
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.y(function6)) {
                    i17 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i17 = 268435456;
                }
                i13 |= i17;
            }
            if ((i13 & 306783379) != 306783378) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i13 & 1, z)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey11112 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC118 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC118, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                } else {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                    }
                    if (i21 != 0) {
                        dTFunctionNameModifier = modifierE;
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function15 = ComposableSingletons$ScaffoldKt.f6717b;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        function15 = function7;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function16 = ComposableSingletons$ScaffoldKt.f6718c;
                    } else {
                        function16 = function8;
                    }
                    if (i8 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function17 = ComposableSingletons$ScaffoldKt.d;
                    } else {
                        function17 = function9;
                    }
                    if (i10 != 0) {
                        ComposableSingletons$ScaffoldKt.f6716a.getClass();
                        function18 = ComposableSingletons$ScaffoldKt.f6719e;
                    } else {
                        function18 = function10;
                    }
                    FabPosition.f6957a.getClass();
                    i15 = FabPosition.f6958b;
                    if ((i4 & 64) != 0) {
                        j6 = MaterialTheme.a(gapComposerH).n;
                        i13 &= -3670017;
                    } else {
                        j6 = j2;
                    }
                    if ((i4 & 128) != 0) {
                        jB = ColorSchemeKt.b(j6, gapComposerH);
                        i13 &= -29360129;
                    } else {
                        jB = j3;
                    }
                    if ((i4 & 256) != 0) {
                        OpaqueKey opaqueKey11113 = ComposerKt.f7940a;
                        AndroidWindowInsets androidWindowInsetsC119 = WindowInsets_androidKt.c(gapComposerH);
                        WindowInsetsHolder.y.getClass();
                        windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC119, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                        i13 &= -234881025;
                        j7 = jB;
                    } else {
                        j7 = jB;
                        windowInsetsI = windowInsets;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey11114 = ComposerKt.f7940a;
                int i211114 = (234881024 & i13) ^ 100663296;
                if (i211114 <= 67108864) {
                }
                objX = gapComposerH.x();
                final Function2 function1113 = function15;
                Composer$Companion$Empty$1 composer$Companion$Empty$15 = Composer.Companion.f7939a;
                if (z2) {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                } else {
                    objX = new MutableWindowInsets(windowInsetsI);
                    gapComposerH.q(objX);
                }
                mutableWindowInsets = (MutableWindowInsets) objX;
                zK = gapComposerH.K(mutableWindowInsets) | ((i211114 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
                objX2 = gapComposerH.x();
                i16 = 12;
                if (zK) {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                    gapComposerH.q(objX2);
                }
                Modifier modifierC15 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
                final Function2 function211112 = function16;
                final Function2 function211113 = function17;
                final Function2 function211114 = function18;
                final int i211115 = i15;
                function10 = function211114;
                int i211116 = i13 >> 12;
                gapComposer = gapComposerH;
                long j112 = j6;
                SurfaceKt.a(modifierC15, null, j112, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey11115 = ComposerKt.f7940a;
                            ScaffoldKt.b(i211115, function1113, function6, function211113, function211114, mutableWindowInsets, function211112, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, (i211116 & 896) | 12582912 | (i211116 & 7168), 114);
                modifier2 = dTFunctionNameModifier;
                windowInsets2 = windowInsetsI;
                function12 = function16;
                function11 = function1113;
                function13 = function211113;
                i14 = i15;
                j4 = j112;
                j5 = j7;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                windowInsets2 = windowInsets;
                function11 = function7;
                function12 = function8;
                function13 = function9;
                modifier2 = modifierE;
                i14 = i2;
                j4 = j2;
                j5 = j3;
            }
            function14 = function10;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: au0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 24576;
        function10 = function5;
        i12 = i5 | ImageMetadata.EDGE_MODE;
        if ((1572864 & i3) == 0) {
            if ((i4 & 64) == 0) {
                i19 = 524288;
            } else {
                i19 = 524288;
            }
            i13 = i12 | i19;
        } else {
            i13 = i12;
        }
        if ((i3 & 12582912) != 0) {
            if ((i4 & 128) == 0) {
                i18 = 4194304;
            } else {
                i18 = 4194304;
            }
            i13 |= i18;
        }
        if ((i3 & 100663296) != 0) {
            i13 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
        }
        if ((i3 & 805306368) == 0) {
            if (gapComposerH.y(function6)) {
                i17 = PKIFailureInfo.duplicateCertReq;
            } else {
                i17 = 268435456;
            }
            i13 |= i17;
        }
        if ((i13 & 306783379) != 306783378) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i13 & 1, z)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0) {
                if (i20 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                }
                if (i21 != 0) {
                    dTFunctionNameModifier = modifierE;
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function15 = ComposableSingletons$ScaffoldKt.f6717b;
                } else {
                    dTFunctionNameModifier = modifierE;
                    function15 = function7;
                }
                if (i6 != 0) {
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function16 = ComposableSingletons$ScaffoldKt.f6718c;
                } else {
                    function16 = function8;
                }
                if (i8 != 0) {
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function17 = ComposableSingletons$ScaffoldKt.d;
                } else {
                    function17 = function9;
                }
                if (i10 != 0) {
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function18 = ComposableSingletons$ScaffoldKt.f6719e;
                } else {
                    function18 = function10;
                }
                FabPosition.f6957a.getClass();
                i15 = FabPosition.f6958b;
                if ((i4 & 64) != 0) {
                    j6 = MaterialTheme.a(gapComposerH).n;
                    i13 &= -3670017;
                } else {
                    j6 = j2;
                }
                if ((i4 & 128) != 0) {
                    jB = ColorSchemeKt.b(j6, gapComposerH);
                    i13 &= -29360129;
                } else {
                    jB = j3;
                }
                if ((i4 & 256) != 0) {
                    OpaqueKey opaqueKey11115 = ComposerKt.f7940a;
                    AndroidWindowInsets androidWindowInsetsC1110 = WindowInsets_androidKt.c(gapComposerH);
                    WindowInsetsHolder.y.getClass();
                    windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC1110, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                    i13 &= -234881025;
                    j7 = jB;
                } else {
                    j7 = jB;
                    windowInsetsI = windowInsets;
                }
            } else {
                if (i20 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Scaffold-TvnljyQ");
                }
                if (i21 != 0) {
                    dTFunctionNameModifier = modifierE;
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function15 = ComposableSingletons$ScaffoldKt.f6717b;
                } else {
                    dTFunctionNameModifier = modifierE;
                    function15 = function7;
                }
                if (i6 != 0) {
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function16 = ComposableSingletons$ScaffoldKt.f6718c;
                } else {
                    function16 = function8;
                }
                if (i8 != 0) {
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function17 = ComposableSingletons$ScaffoldKt.d;
                } else {
                    function17 = function9;
                }
                if (i10 != 0) {
                    ComposableSingletons$ScaffoldKt.f6716a.getClass();
                    function18 = ComposableSingletons$ScaffoldKt.f6719e;
                } else {
                    function18 = function10;
                }
                FabPosition.f6957a.getClass();
                i15 = FabPosition.f6958b;
                if ((i4 & 64) != 0) {
                    j6 = MaterialTheme.a(gapComposerH).n;
                    i13 &= -3670017;
                } else {
                    j6 = j2;
                }
                if ((i4 & 128) != 0) {
                    jB = ColorSchemeKt.b(j6, gapComposerH);
                    i13 &= -29360129;
                } else {
                    jB = j3;
                }
                if ((i4 & 256) != 0) {
                    OpaqueKey opaqueKey11116 = ComposerKt.f7940a;
                    AndroidWindowInsets androidWindowInsetsC1111 = WindowInsets_androidKt.c(gapComposerH);
                    WindowInsetsHolder.y.getClass();
                    windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC1111, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                    i13 &= -234881025;
                    j7 = jB;
                } else {
                    j7 = jB;
                    windowInsetsI = windowInsets;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey11117 = ComposerKt.f7940a;
            int i211117 = (234881024 & i13) ^ 100663296;
            if (i211117 <= 67108864) {
            }
            objX = gapComposerH.x();
            final Function2 function1114 = function15;
            Composer$Companion$Empty$1 composer$Companion$Empty$16 = Composer.Companion.f7939a;
            if (z2) {
                objX = new MutableWindowInsets(windowInsetsI);
                gapComposerH.q(objX);
            } else {
                objX = new MutableWindowInsets(windowInsetsI);
                gapComposerH.q(objX);
            }
            mutableWindowInsets = (MutableWindowInsets) objX;
            zK = gapComposerH.K(mutableWindowInsets) | ((i211117 <= 67108864 && gapComposerH.K(windowInsetsI)) || (i13 & 100663296) == 67108864);
            objX2 = gapComposerH.x();
            i16 = 12;
            if (zK) {
                objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                gapComposerH.q(objX2);
            } else {
                objX2 = new rp0(mutableWindowInsets, windowInsetsI, i16);
                gapComposerH.q(objX2);
            }
            Modifier modifierC16 = WindowInsetsPaddingKt.c(dTFunctionNameModifier, (Function1) objX2);
            final Function2 function211115 = function16;
            final Function2 function211116 = function17;
            final Function2 function211117 = function18;
            final int i211118 = i15;
            function10 = function211117;
            int i211119 = i13 >> 12;
            gapComposer = gapComposerH;
            long j113 = j6;
            SurfaceKt.a(modifierC16, null, j113, j7, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(848889571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey11118 = ComposerKt.f7940a;
                        ScaffoldKt.b(i211118, function1114, function6, function211116, function211117, mutableWindowInsets, function211115, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, (i211119 & 896) | 12582912 | (i211119 & 7168), 114);
            modifier2 = dTFunctionNameModifier;
            windowInsets2 = windowInsetsI;
            function12 = function16;
            function11 = function1114;
            function13 = function211116;
            i14 = i15;
            j4 = j113;
            j5 = j7;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            windowInsets2 = windowInsets;
            function11 = function7;
            function12 = function8;
            function13 = function9;
            modifier2 = modifierE;
            i14 = i2;
            j4 = j2;
            j5 = j3;
        }
        function14 = function10;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: au0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    ScaffoldKt.a(modifier2, function11, function12, function13, function14, i14, j4, j5, windowInsets2, function6, (Composer) obj, iA, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final int i2, final Function2 function2, final Function3 function3, final Function2 function4, final Function2 function5, final WindowInsets windowInsets, final Function2 function6, Composer composer, int i3) {
        GapComposer gapComposerH = composer.h(-280287501);
        int i4 = i3 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function4) ? 2048 : 1024) | (gapComposerH.y(function5) ? 16384 : 8192) | (gapComposerH.K(windowInsets) ? 131072 : 65536) | (gapComposerH.y(function6) ? 1048576 : 524288);
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new ScaffoldKt$ScaffoldLayout$contentPadding$1$1();
                gapComposerH.q(objX);
            }
            final ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) objX;
            boolean z = (i4 & 112) == 32;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new ComposableLambdaImpl(605195056, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$topBarContent$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function7 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function7, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            function2.invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                });
                gapComposerH.q(objX2);
            }
            final Function2 function7 = (Function2) objX2;
            boolean z2 = (i4 & 7168) == 2048;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new ComposableLambdaImpl(418899191, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$snackbarContent$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function8 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function8, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            function4.invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                });
                gapComposerH.q(objX3);
            }
            final Function2 function8 = (Function2) objX3;
            boolean z3 = (57344 & i4) == 16384;
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new ComposableLambdaImpl(338600263, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$fabContent$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function9 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function9, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            function5.invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                });
                gapComposerH.q(objX4);
            }
            final Function2 function9 = (Function2) objX4;
            boolean z4 = (i4 & 896) == 256;
            Object objX5 = gapComposerH.x();
            if (z4 || objX5 == composer$Companion$Empty$1) {
                objX5 = new ComposableLambdaImpl(-1776388365, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$bodyContent$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function10 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function10, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            function3.A(scaffoldKt$ScaffoldLayout$contentPadding$1$1, composer2, 6);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                });
                gapComposerH.q(objX5);
            }
            final Function2 function10 = (Function2) objX5;
            boolean z5 = (i4 & 3670016) == 1048576;
            Object objX6 = gapComposerH.x();
            if (z5 || objX6 == composer$Companion$Empty$1) {
                objX6 = new ComposableLambdaImpl(-1731662488, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$bottomBarContent$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function11 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function11, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            function6.invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                });
                gapComposerH.q(objX6);
            }
            final Function2 function11 = (Function2) objX6;
            boolean zK = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.K(function7) | gapComposerH.K(function8) | gapComposerH.K(function9) | ((i4 & 14) == 4) | gapComposerH.K(function11) | gapComposerH.K(function10);
            Object objX7 = gapComposerH.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                Function2 function12 = new Function2() { // from class: androidx.compose.material3.r
                    /* JADX WARN: Code duplicated, block: B:39:0x0109  */
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int iB0;
                        int iB1;
                        int i5;
                        FabPlacement fabPlacement;
                        Integer numValueOf;
                        int i6;
                        int iIntValue;
                        int iB2;
                        final SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                        Constraints constraints = (Constraints) obj2;
                        float f2 = ScaffoldKt.f7171a;
                        final int iH = Constraints.h(constraints.f10999a);
                        final int iG = Constraints.g(constraints.f10999a);
                        long jA = Constraints.a(constraints.f10999a, 0, 0, 0, 0, 10);
                        LayoutDirection f9421c = subcomposeMeasureScope.getF9421c();
                        final WindowInsets windowInsets2 = windowInsets;
                        int iD = windowInsets2.d(subcomposeMeasureScope, f9421c);
                        int iB = windowInsets2.b(subcomposeMeasureScope, subcomposeMeasureScope.getF9421c());
                        int iC = windowInsets2.c(subcomposeMeasureScope);
                        final Placeable placeableT = ((Measurable) CollectionsKt.B(subcomposeMeasureScope.N(ScaffoldLayoutContent.TopBar, function7))).T(jA);
                        int i7 = (-iD) - iB;
                        int i8 = -iC;
                        final Placeable placeableT2 = ((Measurable) CollectionsKt.B(subcomposeMeasureScope.N(ScaffoldLayoutContent.Snackbar, function8))).T(ConstraintsKt.i(i7, i8, jA));
                        final Placeable placeableT3 = ((Measurable) CollectionsKt.B(subcomposeMeasureScope.N(ScaffoldLayoutContent.Fab, function9))).T(ConstraintsKt.i(i7, i8, jA));
                        int i9 = placeableT3.f9548b;
                        int i10 = i2;
                        if (i9 == 0 && placeableT3.f9549c == 0) {
                            fabPlacement = null;
                        } else {
                            int i11 = placeableT3.f9549c;
                            FabPosition.f6957a.getClass();
                            if (i10 == 0) {
                                if (subcomposeMeasureScope.getF9421c() == LayoutDirection.Ltr) {
                                    iB0 = subcomposeMeasureScope.B0(f2);
                                    i5 = iB0 + iD;
                                } else {
                                    iB1 = subcomposeMeasureScope.B0(f2);
                                    i5 = ((iH - iB1) - i9) - iB;
                                }
                            } else if (i10 != FabPosition.f6958b && i10 != FabPosition.f6959c) {
                                i5 = (((iH - i9) + iD) - iB) / 2;
                            } else if (subcomposeMeasureScope.getF9421c() == LayoutDirection.Ltr) {
                                iB1 = subcomposeMeasureScope.B0(f2);
                                i5 = ((iH - iB1) - i9) - iB;
                            } else {
                                iB0 = subcomposeMeasureScope.B0(f2);
                                i5 = iB0 + iD;
                            }
                            fabPlacement = new FabPlacement(i5, i9, i11);
                        }
                        final Placeable placeableT4 = ((Measurable) CollectionsKt.B(subcomposeMeasureScope.N(ScaffoldLayoutContent.BottomBar, function11))).T(jA);
                        boolean z6 = placeableT4.f9548b == 0 && placeableT4.f9549c == 0;
                        if (fabPlacement != null) {
                            int i12 = fabPlacement.f6956b;
                            if (z6) {
                                iB2 = subcomposeMeasureScope.B0(f2) + i12 + windowInsets2.c(subcomposeMeasureScope);
                            } else {
                                FabPosition.f6957a.getClass();
                                if (i10 == FabPosition.f6959c) {
                                    iB2 = subcomposeMeasureScope.B0(f2) + i12 + windowInsets2.c(subcomposeMeasureScope);
                                } else {
                                    iB2 = subcomposeMeasureScope.B0(f2) + placeableT4.f9549c + i12;
                                }
                            }
                            numValueOf = Integer.valueOf(iB2);
                        } else {
                            numValueOf = null;
                        }
                        int i13 = placeableT2.f9549c;
                        if (i13 != 0) {
                            if (numValueOf != null) {
                                iIntValue = numValueOf.intValue();
                            } else {
                                Integer numValueOf2 = Integer.valueOf(placeableT4.f9549c);
                                if (z6) {
                                    numValueOf2 = null;
                                }
                                iIntValue = numValueOf2 != null ? numValueOf2.intValue() : windowInsets2.c(subcomposeMeasureScope);
                            }
                            i6 = iIntValue + i13;
                        } else {
                            i6 = 0;
                        }
                        PaddingValues paddingValuesF = WindowInsetsKt.f(windowInsets2, subcomposeMeasureScope);
                        final FabPlacement fabPlacement2 = fabPlacement;
                        final Integer num = numValueOf;
                        ((SnapshotMutableStateImpl) scaffoldKt$ScaffoldLayout$contentPadding$1$1.f7180a).setValue(PaddingKt.d(PaddingKt.g(paddingValuesF, subcomposeMeasureScope.getF9421c()), (placeableT.f9548b == 0 && placeableT.f9549c == 0) ? paddingValuesF.getF5031b() : subcomposeMeasureScope.k1(placeableT.f9549c), PaddingKt.f(paddingValuesF, subcomposeMeasureScope.getF9421c()), z6 ? paddingValuesF.getD() : subcomposeMeasureScope.k1(placeableT4.f9549c)));
                        final Placeable placeableT5 = ((Measurable) CollectionsKt.B(subcomposeMeasureScope.N(ScaffoldLayoutContent.MainContent, function10))).T(jA);
                        final int i14 = i6;
                        return subcomposeMeasureScope.V0(iH, iG, MapsKt.c(), new Function1() { // from class: bu0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                                float f3 = ScaffoldKt.f7171a;
                                placementScope.j(placeableT5, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                placementScope.j(placeableT, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                Placeable placeable = placeableT2;
                                int i15 = iH - placeable.f9548b;
                                SubcomposeMeasureScope subcomposeMeasureScope2 = subcomposeMeasureScope;
                                LayoutDirection f9421c2 = subcomposeMeasureScope2.getF9421c();
                                WindowInsets windowInsets3 = windowInsets2;
                                int iD2 = ((windowInsets3.d(subcomposeMeasureScope2, f9421c2) + i15) - windowInsets3.b(subcomposeMeasureScope2, subcomposeMeasureScope2.getF9421c())) / 2;
                                int i16 = iG;
                                placementScope.j(placeable, iD2, i16 - i14, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                Placeable placeable2 = placeableT4;
                                placementScope.j(placeable2, 0, i16 - placeable2.f9549c, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                FabPlacement fabPlacement3 = fabPlacement2;
                                if (fabPlacement3 != null) {
                                    int i17 = fabPlacement3.f6955a;
                                    Integer num2 = num;
                                    num2.getClass();
                                    placementScope.j(placeableT3, i17, i16 - num2.intValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                }
                                return Unit.f71739a;
                            }
                        });
                    }
                };
                gapComposerH.q(function12);
                objX7 = function12;
            }
            SubcomposeLayoutKt.a(null, (Function2) objX7, gapComposerH, 0, 1);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(i2, function2, function3, function4, function5, windowInsets, function6, i3);
        }
    }
}
