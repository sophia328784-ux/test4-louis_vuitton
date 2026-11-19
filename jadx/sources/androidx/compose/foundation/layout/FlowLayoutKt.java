package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import com.google.ar.core.ImageMetadata;
import defpackage.oa;
import defpackage.oz;
import defpackage.ql;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class FlowLayoutKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f4978a = 0;

    static {
        CrossAxisAlignment.Companion companion = CrossAxisAlignment.f4951a;
        Alignment.f8582a.getClass();
        BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
        companion.getClass();
        new CrossAxisAlignment.VerticalCrossAxisAlignment(vertical);
        new CrossAxisAlignment.HorizontalCrossAxisAlignment(Alignment.Companion.n);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0045  */
    /* JADX WARN: Code duplicated, block: B:27:0x004a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0052  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:34:0x005e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0063  */
    /* JADX WARN: Code duplicated, block: B:38:0x0067  */
    /* JADX WARN: Code duplicated, block: B:40:0x006f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x0081  */
    /* JADX WARN: Code duplicated, block: B:46:0x0083  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0092  */
    /* JADX WARN: Code duplicated, block: B:53:0x0095  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i2, int i3, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i4, int i5) {
        int i6;
        Arrangement.Horizontal horizontal2;
        int i7;
        Arrangement.Vertical vertical3;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z;
        GapComposer gapComposer;
        Alignment.Vertical vertical4;
        int i15;
        Arrangement.Horizontal horizontal3;
        Arrangement.Vertical vertical5;
        int i16;
        RecomposeScopeImpl recomposeScopeImplB0;
        Arrangement.Horizontal horizontal4;
        Arrangement.Vertical vertical6;
        int i17;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FlowRow");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1303174015);
        if ((i4 & 6) == 0) {
            i6 = (gapComposerH.K(modifier2) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        int i18 = i5 & 2;
        if (i18 == 0) {
            if ((i4 & 48) == 0) {
                horizontal2 = horizontal;
                i6 |= gapComposerH.K(horizontal2) ? 32 : 16;
            }
            i7 = i5 & 4;
            if (i7 != 0) {
                i9 = i6 | KyberEngine.KyberPolyBytes;
                vertical3 = vertical;
            } else {
                vertical3 = vertical;
                if (gapComposerH.K(vertical3)) {
                    i8 = 256;
                } else {
                    i8 = 128;
                }
                i9 = i6 | i8;
            }
            i10 = i9 | 3072;
            i11 = i5 & 16;
            if (i11 != 0) {
                if ((i4 & 24576) == 0) {
                    i12 = i2;
                    if (gapComposerH.d(i12)) {
                        i13 = 16384;
                    } else {
                        i13 = 8192;
                    }
                    i10 |= i13;
                }
                i14 = i10 | ImageMetadata.EDGE_MODE;
                if ((599187 & i14) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i14 & 1, z)) {
                    if (i18 != 0) {
                        horizontal4 = Arrangement.f4918a;
                    } else {
                        horizontal4 = horizontal2;
                    }
                    if (i7 != 0) {
                        vertical6 = Arrangement.f4920c;
                    } else {
                        vertical6 = vertical3;
                    }
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical7 = Alignment.Companion.f8591k;
                    if (i11 != 0) {
                        i17 = Integer.MAX_VALUE;
                    } else {
                        i17 = i12;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    FlowRowOverflow.f4999f.getClass();
                    gapComposer = gapComposerH;
                    b(modifier2, horizontal4, vertical6, vertical7, i17, FlowRowOverflow.g, composableLambdaImpl, gapComposer, (i14 & 14) | 1572864 | (i14 & 112) | (i14 & 896) | 3072 | (57344 & i14) | 12779520);
                    i15 = Integer.MAX_VALUE;
                    horizontal3 = horizontal4;
                    vertical5 = vertical6;
                    vertical4 = vertical7;
                    i16 = i17;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    vertical4 = vertical2;
                    i15 = i3;
                    horizontal3 = horizontal2;
                    vertical5 = vertical3;
                    i16 = i12;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new oz(modifier2, horizontal3, vertical5, vertical4, i16, i15, composableLambdaImpl, i4, i5);
                }
            }
            i10 = i9 | 27648;
            i12 = i2;
            i14 = i10 | ImageMetadata.EDGE_MODE;
            if ((599187 & i14) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i14 & 1, z)) {
                if (i18 != 0) {
                    horizontal4 = Arrangement.f4918a;
                } else {
                    horizontal4 = horizontal2;
                }
                if (i7 != 0) {
                    vertical6 = Arrangement.f4920c;
                } else {
                    vertical6 = vertical3;
                }
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical8 = Alignment.Companion.f8591k;
                if (i11 != 0) {
                    i17 = Integer.MAX_VALUE;
                } else {
                    i17 = i12;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                FlowRowOverflow.f4999f.getClass();
                gapComposer = gapComposerH;
                b(modifier2, horizontal4, vertical6, vertical8, i17, FlowRowOverflow.g, composableLambdaImpl, gapComposer, (i14 & 14) | 1572864 | (i14 & 112) | (i14 & 896) | 3072 | (57344 & i14) | 12779520);
                i15 = Integer.MAX_VALUE;
                horizontal3 = horizontal4;
                vertical5 = vertical6;
                vertical4 = vertical8;
                i16 = i17;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical4 = vertical2;
                i15 = i3;
                horizontal3 = horizontal2;
                vertical5 = vertical3;
                i16 = i12;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oz(modifier2, horizontal3, vertical5, vertical4, i16, i15, composableLambdaImpl, i4, i5);
            }
        }
        i6 |= 48;
        horizontal2 = horizontal;
        i7 = i5 & 4;
        if (i7 != 0) {
            i9 = i6 | KyberEngine.KyberPolyBytes;
            vertical3 = vertical;
        } else {
            vertical3 = vertical;
            if (gapComposerH.K(vertical3)) {
                i8 = 256;
            } else {
                i8 = 128;
            }
            i9 = i6 | i8;
        }
        i10 = i9 | 3072;
        i11 = i5 & 16;
        if (i11 != 0) {
            if ((i4 & 24576) == 0) {
                i12 = i2;
                if (gapComposerH.d(i12)) {
                    i13 = 16384;
                } else {
                    i13 = 8192;
                }
                i10 |= i13;
            }
            i14 = i10 | ImageMetadata.EDGE_MODE;
            if ((599187 & i14) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i14 & 1, z)) {
                if (i18 != 0) {
                    horizontal4 = Arrangement.f4918a;
                } else {
                    horizontal4 = horizontal2;
                }
                if (i7 != 0) {
                    vertical6 = Arrangement.f4920c;
                } else {
                    vertical6 = vertical3;
                }
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical9 = Alignment.Companion.f8591k;
                if (i11 != 0) {
                    i17 = Integer.MAX_VALUE;
                } else {
                    i17 = i12;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                FlowRowOverflow.f4999f.getClass();
                gapComposer = gapComposerH;
                b(modifier2, horizontal4, vertical6, vertical9, i17, FlowRowOverflow.g, composableLambdaImpl, gapComposer, (i14 & 14) | 1572864 | (i14 & 112) | (i14 & 896) | 3072 | (57344 & i14) | 12779520);
                i15 = Integer.MAX_VALUE;
                horizontal3 = horizontal4;
                vertical5 = vertical6;
                vertical4 = vertical9;
                i16 = i17;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                vertical4 = vertical2;
                i15 = i3;
                horizontal3 = horizontal2;
                vertical5 = vertical3;
                i16 = i12;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oz(modifier2, horizontal3, vertical5, vertical4, i16, i15, composableLambdaImpl, i4, i5);
            }
        }
        i10 = i9 | 27648;
        i12 = i2;
        i14 = i10 | ImageMetadata.EDGE_MODE;
        if ((599187 & i14) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i14 & 1, z)) {
            if (i18 != 0) {
                horizontal4 = Arrangement.f4918a;
            } else {
                horizontal4 = horizontal2;
            }
            if (i7 != 0) {
                vertical6 = Arrangement.f4920c;
            } else {
                vertical6 = vertical3;
            }
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical10 = Alignment.Companion.f8591k;
            if (i11 != 0) {
                i17 = Integer.MAX_VALUE;
            } else {
                i17 = i12;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            FlowRowOverflow.f4999f.getClass();
            gapComposer = gapComposerH;
            b(modifier2, horizontal4, vertical6, vertical10, i17, FlowRowOverflow.g, composableLambdaImpl, gapComposer, (i14 & 14) | 1572864 | (i14 & 112) | (i14 & 896) | 3072 | (57344 & i14) | 12779520);
            i15 = Integer.MAX_VALUE;
            horizontal3 = horizontal4;
            vertical5 = vertical6;
            vertical4 = vertical10;
            i16 = i17;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            vertical4 = vertical2;
            i15 = i3;
            horizontal3 = horizontal2;
            vertical5 = vertical3;
            i16 = i12;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oz(modifier2, horizontal3, vertical5, vertical4, i16, i15, composableLambdaImpl, i4, i5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:163:0x0246  */
    /* JADX WARN: Code duplicated, block: B:166:0x026b  */
    /* JADX WARN: Code duplicated, block: B:168:0x0272  */
    /* JADX WARN: Code duplicated, block: B:169:0x0276  */
    /* JADX WARN: Code duplicated, block: B:171:0x02a2  */
    public static final void b(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i2, FlowRowOverflow flowRowOverflow, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i3) {
        int i4;
        int i5;
        Modifier modifier2;
        GapComposer gapComposer;
        int i6;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i7;
        GapComposer gapComposer2;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        ComposableLambdaImpl composableLambdaImplB;
        boolean zK;
        Object objX;
        MeasurePolicy measurePolicy;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "FlowRow");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-1956591841);
        if ((i3 & 6) == 0) {
            i4 = (gapComposerH.K(modifier3) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.K(horizontal) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(vertical) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.K(vertical2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.d(i2) ? 16384 : 8192;
        }
        int i8 = i4;
        if ((196608 & i3) == 0) {
            i5 = i8 | (gapComposerH.d(Integer.MAX_VALUE) ? 131072 : 65536);
        } else {
            i5 = i8;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.K(flowRowOverflow) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposerH.y(composableLambdaImpl) ? 8388608 : 4194304;
        }
        int i9 = i5;
        if (gapComposerH.p(i9 & 1, (i9 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i10 = i9 & 3670016;
            boolean z = i10 == 1048576;
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (z || objX2 == composer$Companion$Empty$3) {
                objX2 = new FlowLayoutOverflowState(flowRowOverflow.f4979a, flowRowOverflow.f4980b, flowRowOverflow.f4981c);
                gapComposerH.q(objX2);
            }
            FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) objX2;
            int i11 = i9 >> 3;
            boolean zK2 = ((((57344 & i11) ^ 24576) > 16384 && gapComposerH.d(Integer.MAX_VALUE)) || (i11 & 24576) == 16384) | ((((i11 & 14) ^ 6) > 4 && gapComposerH.K(horizontal)) || (i11 & 6) == 4) | ((((i11 & 112) ^ 48) > 32 && gapComposerH.K(vertical)) || (i11 & 48) == 32) | ((((i11 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && gapComposerH.K(vertical2)) || (i11 & KyberEngine.KyberPolyBytes) == 256) | ((((i11 & 7168) ^ 3072) > 2048 && gapComposerH.d(i2)) || (i11 & 3072) == 2048) | gapComposerH.K(flowLayoutOverflowState);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$3) {
                float d = horizontal.getD();
                CrossAxisAlignment.f4951a.getClass();
                GapComposer gapComposer3 = gapComposerH;
                i6 = i10;
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                i7 = 1048576;
                FlowMeasurePolicy flowMeasurePolicy = new FlowMeasurePolicy(true, horizontal, vertical, d, new CrossAxisAlignment.VerticalCrossAxisAlignment(vertical2), vertical.getD(), i2, Integer.MAX_VALUE, flowLayoutOverflowState, null);
                gapComposer3.q(flowMeasurePolicy);
                objX3 = flowMeasurePolicy;
                gapComposer2 = gapComposer3;
            } else {
                gapComposer2 = gapComposerH;
                i6 = i10;
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                i7 = 1048576;
            }
            FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) objX3;
            boolean z2 = ((i9 & 29360128) == 8388608) | (i6 == i7) | ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX4 = gapComposer2.x();
            if (z2) {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
            } else {
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                if (objX4 == composer$Companion$Empty$2) {
                }
                Object obj = objX4;
                composableLambdaImplB = LayoutKt.b((List) obj);
                zK = gapComposer2.K(flowMeasurePolicy2);
                objX = gapComposer2.x();
                if (zK || objX == composer$Companion$Empty$2) {
                    objX = new MultiContentMeasurePolicyImpl(flowMeasurePolicy2);
                    gapComposer2.q(objX);
                }
                measurePolicy = (MeasurePolicy) objX;
                iHashCode = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU = gapComposer2.U();
                modifier2 = modifier3;
                modifierC = ComposedModifierKt.c(gapComposer2, modifier2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposer2.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function0);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, measurePolicy, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
                composableLambdaImplB.invoke(gapComposer2, 0);
                gapComposer2.Z(true);
                gapComposer = gapComposer2;
            }
            Object obj2 = objX4;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ComposableLambdaImpl(-1192950673, true, new ql(composableLambdaImpl, 2)));
            Function1 function1 = flowRowOverflow.d;
            Function2 function2 = function1 != null ? (Function2) function1.invoke(flowLayoutOverflowState) : null;
            Function1 function3 = flowRowOverflow.f4982e;
            Function2 function4 = function3 != null ? (Function2) function3.invoke(flowLayoutOverflowState) : null;
            int i12 = FlowLayoutOverflow.WhenMappings.f4983a[flowRowOverflow.f4979a.ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    if (function2 != null) {
                        arrayList.add(function2);
                    }
                    if (function4 != null) {
                        arrayList.add(function4);
                    }
                }
            } else if (function2 != null) {
                arrayList.add(function2);
            }
            gapComposer2.q(arrayList);
            obj2 = arrayList;
            Object obj3 = objX4;
            composableLambdaImplB = LayoutKt.b((List) obj3);
            zK = gapComposer2.K(flowMeasurePolicy2);
            objX = gapComposer2.x();
            if (zK) {
                objX = new MultiContentMeasurePolicyImpl(flowMeasurePolicy2);
                gapComposer2.q(objX);
            } else {
                objX = new MultiContentMeasurePolicyImpl(flowMeasurePolicy2);
                gapComposer2.q(objX);
            }
            measurePolicy = (MeasurePolicy) objX;
            iHashCode = Long.hashCode(gapComposer2.T);
            persistentCompositionLocalMapU = gapComposer2.U();
            modifier2 = modifier3;
            modifierC = ComposedModifierKt.c(gapComposer2, modifier2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposer2.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function0);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, measurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImplB.invoke(gapComposer2, 0);
            gapComposer2.Z(true);
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer4 = gapComposerH;
            modifier2 = modifier3;
            gapComposer4.D();
            gapComposer = gapComposer4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oa(modifier2, horizontal, vertical, vertical2, i2, flowRowOverflow, composableLambdaImpl, i3);
        }
    }

    public static final long c(Measurable measurable, FlowLineMeasurePolicy flowLineMeasurePolicy, long j2, Function1 function1) {
        FlowLayoutData flowLayoutData;
        if (RowColumnImplKt.b(RowColumnImplKt.a(measurable)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            RowColumnParentData rowColumnParentDataA = RowColumnImplKt.a(measurable);
            if (((rowColumnParentDataA == null || (flowLayoutData = rowColumnParentDataA.d) == null) ? null : Float.valueOf(flowLayoutData.f4977a)) == null) {
                Placeable placeableT = measurable.T(j2);
                function1.invoke(placeableT);
                return IntIntPair.a(flowLineMeasurePolicy.c(placeableT), flowLineMeasurePolicy.e(placeableT));
            }
        }
        boolean z = ((FlowMeasurePolicy) flowLineMeasurePolicy).f4992a;
        int iM = z ? measurable.M(Integer.MAX_VALUE) : measurable.H(Integer.MAX_VALUE);
        return IntIntPair.a(iM, z ? measurable.H(iM) : measurable.M(iM));
    }
}
