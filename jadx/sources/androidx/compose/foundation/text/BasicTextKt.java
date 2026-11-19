package androidx.compose.foundation.text;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.modifiers.SelectableTextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.TextStringSimpleElement;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.StringAnnotation;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTBasicTextModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.ad;
import defpackage.d0;
import defpackage.gd;
import defpackage.j6;
import defpackage.u5;
import defpackage.w1;
import defpackage.yc;
import defpackage.zc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString;", "displayedText", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BasicTextKt {
    /* JADX WARN: Code duplicated, block: B:102:0x011b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x011d  */
    /* JADX WARN: Code duplicated, block: B:104:0x011f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0123  */
    /* JADX WARN: Code duplicated, block: B:107:0x012a  */
    /* JADX WARN: Code duplicated, block: B:110:0x013d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0174  */
    /* JADX WARN: Code duplicated, block: B:119:0x019f  */
    /* JADX WARN: Code duplicated, block: B:121:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:124:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:126:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:128:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:134:0x0207  */
    /* JADX WARN: Code duplicated, block: B:136:0x020f A[EDGE_INSN: B:136:0x020f->B:137:0x0211 BREAK  A[LOOP:0: B:125:0x01de->B:135:0x020a]] */
    /* JADX WARN: Code duplicated, block: B:149:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:151:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:152:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:155:0x02c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:156:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:159:0x02db A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:160:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:163:0x0332  */
    /* JADX WARN: Code duplicated, block: B:166:0x0341  */
    /* JADX WARN: Code duplicated, block: B:168:0x0203 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x020f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x020a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:99:0x0112  */
    public static final void a(final AnnotatedString annotatedString, Modifier modifier, final TextStyle textStyle, final Function1 function1, final int i2, final boolean z, final int i3, int i4, Map map, Composer composer, final int i5, final int i6, final int i7) {
        int i8;
        Function1 function2;
        int i9;
        Map map2;
        int i10;
        int i11;
        int i12;
        boolean zY;
        int i13;
        Modifier modifier2;
        boolean z2;
        GapComposer gapComposer;
        Modifier modifier3;
        final int i14;
        final Map map3;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i15;
        Map mapC;
        SelectionRegistrar selectionRegistrar;
        SelectionController selectionController;
        int length;
        List list;
        boolean z3;
        boolean z4;
        FontFamily.Resolver resolver;
        boolean z5;
        boolean z6;
        Object objX;
        MutableState mutableState;
        boolean zK;
        Object objX2;
        Map map4;
        int i16;
        int size;
        int i17;
        AnnotatedString.Range range;
        List list2;
        long j2;
        boolean zY2;
        Object objX3;
        int i18;
        long jLongValue;
        boolean zE;
        Object objX4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BasicText-CL7eQgs");
        }
        GapComposer gapComposerH = composer.h(-1343466571);
        if ((i5 & 6) == 0) {
            i8 = (gapComposerH.K(annotatedString) ? 4 : 2) | i5;
        } else {
            i8 = i5;
        }
        if ((i5 & 48) == 0) {
            i8 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.K(textStyle) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            function2 = function1;
            i8 |= gapComposerH.y(function2) ? 2048 : 1024;
        } else {
            function2 = function1;
        }
        if ((i5 & 24576) == 0) {
            i8 |= gapComposerH.d(i2) ? 16384 : 8192;
        }
        if ((196608 & i5) == 0) {
            i8 |= gapComposerH.b(z) ? 131072 : 65536;
        }
        if ((1572864 & i5) == 0) {
            i8 |= gapComposerH.d(i3) ? 1048576 : 524288;
        }
        int i19 = i7 & 128;
        if (i19 == 0) {
            if ((12582912 & i5) == 0) {
                i8 |= gapComposerH.d(i4) ? 8388608 : 4194304;
            }
            i9 = i7 & 256;
            if (i9 != 0) {
                i8 |= 100663296;
                map2 = map;
            } else {
                map2 = map;
                if ((i5 & 100663296) == 0) {
                    if (gapComposerH.y(map2)) {
                        i10 = 67108864;
                    } else {
                        i10 = 33554432;
                    }
                    i8 |= i10;
                }
            }
            i11 = i8 | 805306368;
            if ((i7 & 1024) != 0) {
                i12 = i6 | 6;
            } else if ((i6 & 6) == 0) {
                if ((i6 & 8) == 0) {
                    zY = gapComposerH.K(null);
                } else {
                    zY = gapComposerH.y(null);
                }
                if (zY) {
                    i13 = 4;
                } else {
                    i13 = 2;
                }
                i12 = i6 | i13;
            } else {
                i12 = i6;
            }
            modifier2 = modifierE;
            if ((i11 & 306783379) == 306783378 || (i12 & 3) != 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i11 & 1, z2)) {
                if (i19 != 0) {
                    i15 = 1;
                } else {
                    i15 = i4;
                }
                if (i9 != 0) {
                    mapC = MapsKt.c();
                } else {
                    mapC = map2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                HeightInLinesModifierKt.a(i15, i3);
                selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (selectionRegistrar != null) {
                    gapComposerH.L(1588268245);
                    j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                    Object[] objArr = {selectionRegistrar};
                    SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                    zY2 = gapComposerH.y(selectionRegistrar);
                    objX3 = gapComposerH.x();
                    if (!zY2 || objX3 == composer$Companion$Empty$1) {
                        i18 = 0;
                        objX3 = new yc(selectionRegistrar, 0);
                        gapComposerH.q(objX3);
                    } else {
                        i18 = 0;
                    }
                    jLongValue = ((Number) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX3, gapComposerH, i18)).longValue();
                    zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                    objX4 = gapComposerH.x();
                    if (zE || objX4 == composer$Companion$Empty$1) {
                        objX4 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                        gapComposerH.q(objX4);
                    }
                    gapComposerH.Z(false);
                    selectionController = (SelectionController) objX4;
                } else {
                    gapComposerH.L(1588759409);
                    gapComposerH.Z(false);
                    selectionController = null;
                }
                Pair pair = AnnotatedStringResolveInlineContentKt.f5849a;
                length = annotatedString.f10420c.length();
                list = annotatedString.f10419b;
                if (list != null) {
                    z3 = false;
                    z4 = false;
                    break;
                }
                size = list.size();
                i17 = 0;
                while (true) {
                    if (i17 < size) {
                        z3 = false;
                        z4 = false;
                        break;
                    }
                    range = (AnnotatedString.Range) list.get(i17);
                    if (range.f10428a instanceof StringAnnotation) {
                        list2 = list;
                        if ("androidx.compose.foundation.text.inlineContent".equals(range.d)) {
                            z3 = false;
                            if (AnnotatedStringKt.b(0, length, range.f10429b, range.f10430c)) {
                                z4 = true;
                                break;
                            }
                        }
                        i17++;
                        list = list2;
                    } else {
                        list2 = list;
                    }
                    i17++;
                    list = list2;
                }
                boolean zD = annotatedString.d(annotatedString.f10420c.length());
                resolver = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                z5 = z3;
                if (!z4 || zD) {
                    gapComposer = gapComposerH;
                    modifier3 = modifier2;
                    gapComposer.L(1590022070);
                    if ((i11 & 14) == 4) {
                        z6 = true;
                    } else {
                        z6 = z5;
                    }
                    objX = gapComposer.x();
                    if (z6 || objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(annotatedString);
                        gapComposer.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    AnnotatedString annotatedString2 = (AnnotatedString) mutableState.getF10755b();
                    zK = gapComposer.K(mutableState);
                    objX2 = gapComposer.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new j6(5, mutableState);
                        gapComposer.q(objX2);
                    }
                    int i20 = i11 << 6;
                    int i21 = ((i11 >> 3) & 910) | ((i11 >> 12) & 57344) | ((i11 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (3670016 & i20) | (29360128 & i20) | (234881024 & i20) | (i20 & 1879048192);
                    int i22 = ((i11 >> 21) & 896) | ((i12 << 12) & 57344);
                    boolean z7 = z4;
                    map4 = mapC;
                    c(modifier3, annotatedString2, function1, z7, map4, textStyle, i2, z, i3, i15, resolver, selectionController, (Function1) objX2, null, gapComposer, i21, i22);
                    i16 = i15;
                    gapComposer.Z(false);
                } else {
                    gapComposerH.L(1589006262);
                    BasicText_androidKt.a(annotatedString, textStyle, resolver, null, gapComposerH);
                    int i23 = i15;
                    gapComposer = gapComposerH;
                    modifier3 = modifier2;
                    Modifier modifierE2 = e(modifier3, annotatedString, textStyle, function2, i2, z, i3, i23, resolver, null, null, selectionController, null, null);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int iHashCode = Long.hashCode(gapComposer.T);
                    Modifier modifierC = ComposedModifierKt.c(gapComposer, modifierE2);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer.U();
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer.f7976a == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    gapComposer.Z(true);
                    gapComposer.Z(false);
                    i16 = i23;
                    map4 = mapC;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                map3 = map4;
                i14 = i16;
            } else {
                gapComposer = gapComposerH;
                modifier3 = modifier2;
                gapComposer.D();
                i14 = i4;
                map3 = map2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier4 = modifier3;
                recomposeScopeImplB0.d = new Function2() { // from class: cd
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        BasicTextKt.a(annotatedString, modifier4, textStyle, function1, i2, z, i3, i14, map3, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), RecomposeScopeImplKt.a(i6), i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= 12582912;
        i9 = i7 & 256;
        if (i9 != 0) {
            i8 |= 100663296;
            map2 = map;
        } else {
            map2 = map;
            if ((i5 & 100663296) == 0) {
                if (gapComposerH.y(map2)) {
                    i10 = 67108864;
                } else {
                    i10 = 33554432;
                }
                i8 |= i10;
            }
        }
        i11 = i8 | 805306368;
        if ((i7 & 1024) != 0) {
            i12 = i6 | 6;
        } else if ((i6 & 6) == 0) {
            if ((i6 & 8) == 0) {
                zY = gapComposerH.K(null);
            } else {
                zY = gapComposerH.y(null);
            }
            if (zY) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i6 | i13;
        } else {
            i12 = i6;
        }
        modifier2 = modifierE;
        if ((i11 & 306783379) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (gapComposerH.p(i11 & 1, z2)) {
            if (i19 != 0) {
                i15 = 1;
            } else {
                i15 = i4;
            }
            if (i9 != 0) {
                mapC = MapsKt.c();
            } else {
                mapC = map2;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            HeightInLinesModifierKt.a(i15, i3);
            selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (selectionRegistrar != null) {
                gapComposerH.L(1588268245);
                j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                Object[] objArr2 = {selectionRegistrar};
                SaverKt$Saver$1 saverKt$Saver$2 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                zY2 = gapComposerH.y(selectionRegistrar);
                objX3 = gapComposerH.x();
                if (zY2) {
                    i18 = 0;
                    objX3 = new yc(selectionRegistrar, 0);
                    gapComposerH.q(objX3);
                } else {
                    i18 = 0;
                    objX3 = new yc(selectionRegistrar, 0);
                    gapComposerH.q(objX3);
                }
                jLongValue = ((Number) RememberSaveableKt.b(objArr2, saverKt$Saver$2, (Function0) objX3, gapComposerH, i18)).longValue();
                zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                objX4 = gapComposerH.x();
                if (zE) {
                    objX4 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                    gapComposerH.q(objX4);
                }
                gapComposerH.Z(false);
                selectionController = (SelectionController) objX4;
            } else {
                gapComposerH.L(1588759409);
                gapComposerH.Z(false);
                selectionController = null;
            }
            Pair pair2 = AnnotatedStringResolveInlineContentKt.f5849a;
            length = annotatedString.f10420c.length();
            list = annotatedString.f10419b;
            if (list != null) {
                z3 = false;
                z4 = false;
                break;
            }
            size = list.size();
            i17 = 0;
            while (true) {
                if (i17 < size) {
                    z3 = false;
                    z4 = false;
                    break;
                }
                range = (AnnotatedString.Range) list.get(i17);
                if (range.f10428a instanceof StringAnnotation) {
                    list2 = list;
                    if ("androidx.compose.foundation.text.inlineContent".equals(range.d)) {
                        z3 = false;
                        if (AnnotatedStringKt.b(0, length, range.f10429b, range.f10430c)) {
                            z4 = true;
                            break;
                        }
                    }
                    i17++;
                    list = list2;
                } else {
                    list2 = list;
                }
                i17++;
                list = list2;
            }
            boolean zD2 = annotatedString.d(annotatedString.f10420c.length());
            resolver = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
            z5 = z3;
            if (z4) {
                gapComposer = gapComposerH;
                modifier3 = modifier2;
                gapComposer.L(1590022070);
                if ((i11 & 14) == 4) {
                    z6 = true;
                } else {
                    z6 = z5;
                }
                objX = gapComposer.x();
                if (z6) {
                    objX = SnapshotStateKt.g(annotatedString);
                    gapComposer.q(objX);
                } else {
                    objX = SnapshotStateKt.g(annotatedString);
                    gapComposer.q(objX);
                }
                mutableState = (MutableState) objX;
                AnnotatedString annotatedString3 = (AnnotatedString) mutableState.getF10755b();
                zK = gapComposer.K(mutableState);
                objX2 = gapComposer.x();
                if (zK) {
                    objX2 = new j6(5, mutableState);
                    gapComposer.q(objX2);
                } else {
                    objX2 = new j6(5, mutableState);
                    gapComposer.q(objX2);
                }
                int i24 = i11 << 6;
                int i25 = ((i11 >> 3) & 910) | ((i11 >> 12) & 57344) | ((i11 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (3670016 & i24) | (29360128 & i24) | (234881024 & i24) | (i24 & 1879048192);
                int i26 = ((i11 >> 21) & 896) | ((i12 << 12) & 57344);
                boolean z8 = z4;
                map4 = mapC;
                c(modifier3, annotatedString3, function1, z8, map4, textStyle, i2, z, i3, i15, resolver, selectionController, (Function1) objX2, null, gapComposer, i25, i26);
                i16 = i15;
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                modifier3 = modifier2;
                gapComposer.L(1590022070);
                if ((i11 & 14) == 4) {
                    z6 = true;
                } else {
                    z6 = z5;
                }
                objX = gapComposer.x();
                if (z6) {
                    objX = SnapshotStateKt.g(annotatedString);
                    gapComposer.q(objX);
                } else {
                    objX = SnapshotStateKt.g(annotatedString);
                    gapComposer.q(objX);
                }
                mutableState = (MutableState) objX;
                AnnotatedString annotatedString4 = (AnnotatedString) mutableState.getF10755b();
                zK = gapComposer.K(mutableState);
                objX2 = gapComposer.x();
                if (zK) {
                    objX2 = new j6(5, mutableState);
                    gapComposer.q(objX2);
                } else {
                    objX2 = new j6(5, mutableState);
                    gapComposer.q(objX2);
                }
                int i27 = i11 << 6;
                int i28 = ((i11 >> 3) & 910) | ((i11 >> 12) & 57344) | ((i11 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | (3670016 & i27) | (29360128 & i27) | (234881024 & i27) | (i27 & 1879048192);
                int i29 = ((i11 >> 21) & 896) | ((i12 << 12) & 57344);
                boolean z9 = z4;
                map4 = mapC;
                c(modifier3, annotatedString4, function1, z9, map4, textStyle, i2, z, i3, i15, resolver, selectionController, (Function1) objX2, null, gapComposer, i28, i29);
                i16 = i15;
                gapComposer.Z(false);
            }
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            map3 = map4;
            i14 = i16;
        } else {
            gapComposer = gapComposerH;
            modifier3 = modifier2;
            gapComposer.D();
            i14 = i4;
            map3 = map2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier5 = modifier3;
            recomposeScopeImplB0.d = new Function2() { // from class: cd
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    BasicTextKt.a(annotatedString, modifier5, textStyle, function1, i2, z, i3, i14, map3, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), RecomposeScopeImplKt.a(i6), i7);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0126  */
    /* JADX WARN: Code duplicated, block: B:103:0x0130  */
    /* JADX WARN: Code duplicated, block: B:104:0x0133  */
    /* JADX WARN: Code duplicated, block: B:106:0x0137  */
    /* JADX WARN: Code duplicated, block: B:109:0x0147  */
    /* JADX WARN: Code duplicated, block: B:111:0x0179 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:114:0x017e  */
    /* JADX WARN: Code duplicated, block: B:117:0x01a8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:118:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:120:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:123:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:128:0x0219  */
    /* JADX WARN: Code duplicated, block: B:131:0x0227 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:133:0x0250  */
    /* JADX WARN: Code duplicated, block: B:136:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:138:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:139:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:142:0x02db  */
    /* JADX WARN: Code duplicated, block: B:144:0x02df  */
    /* JADX WARN: Code duplicated, block: B:147:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:152:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0078  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0081  */
    /* JADX WARN: Code duplicated, block: B:47:0x0089  */
    /* JADX WARN: Code duplicated, block: B:48:0x008c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00af  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:89:0x0101  */
    /* JADX WARN: Code duplicated, block: B:93:0x0114  */
    /* JADX WARN: Code duplicated, block: B:94:0x0116  */
    /* JADX WARN: Code duplicated, block: B:97:0x011f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0121  */
    /* JADX WARN: Code duplicated, block: B:99:0x0123  */
    public static final void b(final String str, Modifier modifier, final TextStyle textStyle, Function1 function1, int i2, boolean z, final int i3, int i4, Composer composer, final int i5, final int i6) throws Throwable {
        int i7;
        final Function1 function2;
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
        boolean zY;
        int i18;
        boolean z2;
        Modifier modifier2;
        GapComposer gapComposer;
        final boolean z3;
        final int i19;
        final int i20;
        RecomposeScopeImpl recomposeScopeImplB0;
        Function1 function3;
        boolean z4;
        SelectionRegistrar selectionRegistrar;
        SelectionController selectionController;
        Executor executor;
        boolean z5;
        int i21;
        boolean z6;
        Function1 function4;
        Throwable th;
        Modifier modifierE;
        int iHashCode;
        Modifier modifierC;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Function0 function0;
        long j2;
        boolean zY2;
        Object objX;
        long jLongValue;
        boolean zE;
        Object objX2;
        int i22;
        Modifier modifierE2 = modifier;
        if (modifierE2 != null) {
            modifierE2 = defpackage.a.e(modifierE2, "BasicText-RWo7tUw");
        }
        Modifier modifierO = modifierE2.o(new DTBasicTextModifier(str));
        GapComposer gapComposerH = composer.h(-1040751001);
        if ((i5 & 6) == 0) {
            i7 = (gapComposerH.K(str) ? 4 : 2) | i5;
        } else {
            i7 = i5;
        }
        if ((i5 & 48) == 0) {
            i7 |= gapComposerH.K(modifierO) ? 32 : 16;
        }
        if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.K(textStyle) ? 256 : 128;
        }
        int i23 = i6 & 8;
        if (i23 == 0) {
            if ((i5 & 3072) == 0) {
                function2 = function1;
                i7 |= gapComposerH.y(function2) ? 2048 : 1024;
            }
            i8 = i6 & 16;
            if (i8 != 0) {
                if ((i5 & 24576) == 0) {
                    i9 = i2;
                    if (gapComposerH.d(i9)) {
                        i10 = 16384;
                    } else {
                        i10 = 8192;
                    }
                    i7 |= i10;
                }
                i11 = i6 & 32;
                if (i11 != 0) {
                    if ((196608 & i5) == 0) {
                        if (gapComposerH.b(z)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i7 |= i12;
                    }
                    if ((1572864 & i5) == 0) {
                        if (gapComposerH.d(i3)) {
                            i22 = 1048576;
                        } else {
                            i22 = 524288;
                        }
                        i7 |= i22;
                    }
                    i13 = i6 & 128;
                    if (i13 != 0) {
                        i7 |= 12582912;
                        i14 = i4;
                    } else {
                        i14 = i4;
                        if ((i5 & 12582912) == 0) {
                            if (gapComposerH.d(i14)) {
                                i15 = 8388608;
                            } else {
                                i15 = 4194304;
                            }
                            i7 |= i15;
                        }
                    }
                    i16 = i7 | 100663296;
                    i17 = i7;
                    if ((i6 & 512) != 0) {
                        i16 = i17 | 905969664;
                    } else if ((805306368 & i5) == 0) {
                        if ((1073741824 & i5) == 0) {
                            zY = gapComposerH.K(null);
                        } else {
                            zY = gapComposerH.y(null);
                        }
                        if (zY) {
                            i18 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i18 = 268435456;
                        }
                        i16 |= i18;
                    }
                    if ((i16 & 306783379) != 306783378) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (gapComposerH.p(i16 & 1, z2)) {
                        if (i23 != 0) {
                            function3 = null;
                        } else {
                            function3 = function2;
                        }
                        if (i8 != 0) {
                            TextOverflow.f10989a.getClass();
                            i9 = TextOverflow.f10990b;
                        }
                        if (i11 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i13 != 0) {
                            i14 = 1;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        HeightInLinesModifierKt.a(i14, i3);
                        selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                        if (selectionRegistrar != null) {
                            gapComposerH.L(356423075);
                            j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                            Object[] objArr = {selectionRegistrar};
                            SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                            zY2 = gapComposerH.y(selectionRegistrar);
                            objX = gapComposerH.x();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (zY2 || objX == composer$Companion$Empty$1) {
                                objX = new yc(selectionRegistrar, 1);
                                gapComposerH.q(objX);
                            }
                            jLongValue = ((Number) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, gapComposerH, 0)).longValue();
                            zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                            objX2 = gapComposerH.x();
                            if (zE || objX2 == composer$Companion$Empty$1) {
                                objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                                gapComposerH.q(objX2);
                            }
                            selectionController = (SelectionController) objX2;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(356914239);
                            gapComposerH.Z(false);
                            selectionController = null;
                        }
                        FontFamily.Resolver resolver = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                        executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
                        if (executor == null && BasicText_androidKt.b(str.length())) {
                            gapComposerH.L(1254298614);
                            try {
                                executor.execute(new gd(textStyle, (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n), str, (Density) gapComposerH.k(CompositionLocalsKt.f10031h), resolver));
                            } catch (RejectedExecutionException unused) {
                            }
                            z5 = false;
                            gapComposerH.Z(false);
                        } else {
                            z5 = false;
                            gapComposerH.L(1255914055);
                            gapComposerH.Z(false);
                        }
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        if (selectionController == null || function3 != null) {
                            i21 = i9;
                            z6 = z4;
                            gapComposerH.L(357232113);
                            boolean z7 = z5;
                            modifier2 = modifierO;
                            function4 = function3;
                            gapComposer = gapComposerH;
                            th = null;
                            modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                            gapComposer.Z(z7);
                        } else {
                            gapComposerH.L(357875859);
                            gapComposerH.Z(z5);
                            i21 = i9;
                            z6 = z4;
                            modifierE = modifierO.o(new TextStringSimpleElement(str, textStyle, resolver, i21, z6, i3, i14, null, null));
                            modifier2 = modifierO;
                            gapComposer = gapComposerH;
                            function4 = function3;
                            th = null;
                        }
                        iHashCode = Long.hashCode(gapComposer.T);
                        modifierC = ComposedModifierKt.c(gapComposer, modifierE);
                        persistentCompositionLocalMapU = gapComposer.U();
                        ComposeUiNode.b0.getClass();
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposer.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposer.B();
                        if (gapComposer.S) {
                            gapComposer.C(function0);
                        } else {
                            gapComposer.o();
                        }
                        Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                        Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        gapComposer.Z(true);
                        z3 = z6;
                        i19 = i21;
                        function2 = function4;
                    } else {
                        modifier2 = modifierO;
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        i19 = i9;
                    }
                    i20 = i14;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier3 = modifier2;
                        recomposeScopeImplB0.d = new Function2() { // from class: dd
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) throws Throwable {
                                ((Integer) obj2).getClass();
                                BasicTextKt.b(str, modifier3, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i7 |= ImageMetadata.EDGE_MODE;
                if ((1572864 & i5) == 0) {
                    if (gapComposerH.d(i3)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i7 |= i22;
                }
                i13 = i6 & 128;
                if (i13 != 0) {
                    i7 |= 12582912;
                    i14 = i4;
                } else {
                    i14 = i4;
                    if ((i5 & 12582912) == 0) {
                        if (gapComposerH.d(i14)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i7 |= i15;
                    }
                }
                i16 = i7 | 100663296;
                i17 = i7;
                if ((i6 & 512) != 0) {
                    i16 = i17 | 905969664;
                } else if ((805306368 & i5) == 0) {
                    if ((1073741824 & i5) == 0) {
                        zY = gapComposerH.K(null);
                    } else {
                        zY = gapComposerH.y(null);
                    }
                    if (zY) {
                        i18 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i18 = 268435456;
                    }
                    i16 |= i18;
                }
                if ((i16 & 306783379) != 306783378) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (gapComposerH.p(i16 & 1, z2)) {
                    if (i23 != 0) {
                        function3 = null;
                    } else {
                        function3 = function2;
                    }
                    if (i8 != 0) {
                        TextOverflow.f10989a.getClass();
                        i9 = TextOverflow.f10990b;
                    }
                    if (i11 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        i14 = 1;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    HeightInLinesModifierKt.a(i14, i3);
                    selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                    if (selectionRegistrar != null) {
                        gapComposerH.L(356423075);
                        j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                        Object[] objArr2 = {selectionRegistrar};
                        SaverKt$Saver$1 saverKt$Saver$2 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                        zY2 = gapComposerH.y(selectionRegistrar);
                        objX = gapComposerH.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY2) {
                            objX = new yc(selectionRegistrar, 1);
                            gapComposerH.q(objX);
                        } else {
                            objX = new yc(selectionRegistrar, 1);
                            gapComposerH.q(objX);
                        }
                        jLongValue = ((Number) RememberSaveableKt.b(objArr2, saverKt$Saver$2, (Function0) objX, gapComposerH, 0)).longValue();
                        zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                        objX2 = gapComposerH.x();
                        if (zE) {
                            objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                            gapComposerH.q(objX2);
                        }
                        selectionController = (SelectionController) objX2;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(356914239);
                        gapComposerH.Z(false);
                        selectionController = null;
                    }
                    FontFamily.Resolver resolver2 = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                    executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
                    if (executor == null) {
                        z5 = false;
                        gapComposerH.L(1255914055);
                        gapComposerH.Z(false);
                    } else {
                        z5 = false;
                        gapComposerH.L(1255914055);
                        gapComposerH.Z(false);
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    if (selectionController == null) {
                        i21 = i9;
                        z6 = z4;
                        gapComposerH.L(357232113);
                        boolean z8 = z5;
                        modifier2 = modifierO;
                        function4 = function3;
                        gapComposer = gapComposerH;
                        th = null;
                        modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                        gapComposer.Z(z8);
                    } else {
                        i21 = i9;
                        z6 = z4;
                        gapComposerH.L(357232113);
                        boolean z9 = z5;
                        modifier2 = modifierO;
                        function4 = function3;
                        gapComposer = gapComposerH;
                        th = null;
                        modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                        gapComposer.Z(z9);
                    }
                    iHashCode = Long.hashCode(gapComposer.T);
                    modifierC = ComposedModifierKt.c(gapComposer, modifierE);
                    persistentCompositionLocalMapU = gapComposer.U();
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    gapComposer.Z(true);
                    z3 = z6;
                    i19 = i21;
                    function2 = function4;
                } else {
                    modifier2 = modifierO;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    i19 = i9;
                }
                i20 = i14;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier4 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: dd
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) throws Throwable {
                            ((Integer) obj2).getClass();
                            BasicTextKt.b(str, modifier4, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= 24576;
            i9 = i2;
            i11 = i6 & 32;
            if (i11 != 0) {
                if ((196608 & i5) == 0) {
                    if (gapComposerH.b(z)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i7 |= i12;
                }
                if ((1572864 & i5) == 0) {
                    if (gapComposerH.d(i3)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i7 |= i22;
                }
                i13 = i6 & 128;
                if (i13 != 0) {
                    i7 |= 12582912;
                    i14 = i4;
                } else {
                    i14 = i4;
                    if ((i5 & 12582912) == 0) {
                        if (gapComposerH.d(i14)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i7 |= i15;
                    }
                }
                i16 = i7 | 100663296;
                i17 = i7;
                if ((i6 & 512) != 0) {
                    i16 = i17 | 905969664;
                } else if ((805306368 & i5) == 0) {
                    if ((1073741824 & i5) == 0) {
                        zY = gapComposerH.K(null);
                    } else {
                        zY = gapComposerH.y(null);
                    }
                    if (zY) {
                        i18 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i18 = 268435456;
                    }
                    i16 |= i18;
                }
                if ((i16 & 306783379) != 306783378) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (gapComposerH.p(i16 & 1, z2)) {
                    if (i23 != 0) {
                        function3 = null;
                    } else {
                        function3 = function2;
                    }
                    if (i8 != 0) {
                        TextOverflow.f10989a.getClass();
                        i9 = TextOverflow.f10990b;
                    }
                    if (i11 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        i14 = 1;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    HeightInLinesModifierKt.a(i14, i3);
                    selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                    if (selectionRegistrar != null) {
                        gapComposerH.L(356423075);
                        j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                        Object[] objArr3 = {selectionRegistrar};
                        SaverKt$Saver$1 saverKt$Saver$3 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                        zY2 = gapComposerH.y(selectionRegistrar);
                        objX = gapComposerH.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY2) {
                            objX = new yc(selectionRegistrar, 1);
                            gapComposerH.q(objX);
                        } else {
                            objX = new yc(selectionRegistrar, 1);
                            gapComposerH.q(objX);
                        }
                        jLongValue = ((Number) RememberSaveableKt.b(objArr3, saverKt$Saver$3, (Function0) objX, gapComposerH, 0)).longValue();
                        zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                        objX2 = gapComposerH.x();
                        if (zE) {
                            objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                            gapComposerH.q(objX2);
                        }
                        selectionController = (SelectionController) objX2;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(356914239);
                        gapComposerH.Z(false);
                        selectionController = null;
                    }
                    FontFamily.Resolver resolver3 = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                    executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
                    if (executor == null) {
                        z5 = false;
                        gapComposerH.L(1255914055);
                        gapComposerH.Z(false);
                    } else {
                        z5 = false;
                        gapComposerH.L(1255914055);
                        gapComposerH.Z(false);
                    }
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    if (selectionController == null) {
                        i21 = i9;
                        z6 = z4;
                        gapComposerH.L(357232113);
                        boolean z10 = z5;
                        modifier2 = modifierO;
                        function4 = function3;
                        gapComposer = gapComposerH;
                        th = null;
                        modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                        gapComposer.Z(z10);
                    } else {
                        i21 = i9;
                        z6 = z4;
                        gapComposerH.L(357232113);
                        boolean z11 = z5;
                        modifier2 = modifierO;
                        function4 = function3;
                        gapComposer = gapComposerH;
                        th = null;
                        modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                        gapComposer.Z(z11);
                    }
                    iHashCode = Long.hashCode(gapComposer.T);
                    modifierC = ComposedModifierKt.c(gapComposer, modifierE);
                    persistentCompositionLocalMapU = gapComposer.U();
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    gapComposer.Z(true);
                    z3 = z6;
                    i19 = i21;
                    function2 = function4;
                } else {
                    modifier2 = modifierO;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    i19 = i9;
                }
                i20 = i14;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier5 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: dd
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) throws Throwable {
                            ((Integer) obj2).getClass();
                            BasicTextKt.b(str, modifier5, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= ImageMetadata.EDGE_MODE;
            if ((1572864 & i5) == 0) {
                if (gapComposerH.d(i3)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i7 |= i22;
            }
            i13 = i6 & 128;
            if (i13 != 0) {
                i7 |= 12582912;
                i14 = i4;
            } else {
                i14 = i4;
                if ((i5 & 12582912) == 0) {
                    if (gapComposerH.d(i14)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i7 |= i15;
                }
            }
            i16 = i7 | 100663296;
            i17 = i7;
            if ((i6 & 512) != 0) {
                i16 = i17 | 905969664;
            } else if ((805306368 & i5) == 0) {
                if ((1073741824 & i5) == 0) {
                    zY = gapComposerH.K(null);
                } else {
                    zY = gapComposerH.y(null);
                }
                if (zY) {
                    i18 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i18 = 268435456;
                }
                i16 |= i18;
            }
            if ((i16 & 306783379) != 306783378) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i16 & 1, z2)) {
                if (i23 != 0) {
                    function3 = null;
                } else {
                    function3 = function2;
                }
                if (i8 != 0) {
                    TextOverflow.f10989a.getClass();
                    i9 = TextOverflow.f10990b;
                }
                if (i11 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i13 != 0) {
                    i14 = 1;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                HeightInLinesModifierKt.a(i14, i3);
                selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                if (selectionRegistrar != null) {
                    gapComposerH.L(356423075);
                    j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                    Object[] objArr4 = {selectionRegistrar};
                    SaverKt$Saver$1 saverKt$Saver$4 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                    zY2 = gapComposerH.y(selectionRegistrar);
                    objX = gapComposerH.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                    if (zY2) {
                        objX = new yc(selectionRegistrar, 1);
                        gapComposerH.q(objX);
                    } else {
                        objX = new yc(selectionRegistrar, 1);
                        gapComposerH.q(objX);
                    }
                    jLongValue = ((Number) RememberSaveableKt.b(objArr4, saverKt$Saver$4, (Function0) objX, gapComposerH, 0)).longValue();
                    zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                        gapComposerH.q(objX2);
                    }
                    selectionController = (SelectionController) objX2;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(356914239);
                    gapComposerH.Z(false);
                    selectionController = null;
                }
                FontFamily.Resolver resolver4 = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
                if (executor == null) {
                    z5 = false;
                    gapComposerH.L(1255914055);
                    gapComposerH.Z(false);
                } else {
                    z5 = false;
                    gapComposerH.L(1255914055);
                    gapComposerH.Z(false);
                }
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                if (selectionController == null) {
                    i21 = i9;
                    z6 = z4;
                    gapComposerH.L(357232113);
                    boolean z12 = z5;
                    modifier2 = modifierO;
                    function4 = function3;
                    gapComposer = gapComposerH;
                    th = null;
                    modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                    gapComposer.Z(z12);
                } else {
                    i21 = i9;
                    z6 = z4;
                    gapComposerH.L(357232113);
                    boolean z13 = z5;
                    modifier2 = modifierO;
                    function4 = function3;
                    gapComposer = gapComposerH;
                    th = null;
                    modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                    gapComposer.Z(z13);
                }
                iHashCode = Long.hashCode(gapComposer.T);
                modifierC = ComposedModifierKt.c(gapComposer, modifierE);
                persistentCompositionLocalMapU = gapComposer.U();
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposer.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                gapComposer.Z(true);
                z3 = z6;
                i19 = i21;
                function2 = function4;
            } else {
                modifier2 = modifierO;
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                i19 = i9;
            }
            i20 = i14;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier6 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: dd
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) throws Throwable {
                        ((Integer) obj2).getClass();
                        BasicTextKt.b(str, modifier6, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 3072;
        function2 = function1;
        i8 = i6 & 16;
        if (i8 != 0) {
            if ((i5 & 24576) == 0) {
                i9 = i2;
                if (gapComposerH.d(i9)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i7 |= i10;
            }
            i11 = i6 & 32;
            if (i11 != 0) {
                if ((196608 & i5) == 0) {
                    if (gapComposerH.b(z)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i7 |= i12;
                }
                if ((1572864 & i5) == 0) {
                    if (gapComposerH.d(i3)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i7 |= i22;
                }
                i13 = i6 & 128;
                if (i13 != 0) {
                    i7 |= 12582912;
                    i14 = i4;
                } else {
                    i14 = i4;
                    if ((i5 & 12582912) == 0) {
                        if (gapComposerH.d(i14)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i7 |= i15;
                    }
                }
                i16 = i7 | 100663296;
                i17 = i7;
                if ((i6 & 512) != 0) {
                    i16 = i17 | 905969664;
                } else if ((805306368 & i5) == 0) {
                    if ((1073741824 & i5) == 0) {
                        zY = gapComposerH.K(null);
                    } else {
                        zY = gapComposerH.y(null);
                    }
                    if (zY) {
                        i18 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i18 = 268435456;
                    }
                    i16 |= i18;
                }
                if ((i16 & 306783379) != 306783378) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (gapComposerH.p(i16 & 1, z2)) {
                    if (i23 != 0) {
                        function3 = null;
                    } else {
                        function3 = function2;
                    }
                    if (i8 != 0) {
                        TextOverflow.f10989a.getClass();
                        i9 = TextOverflow.f10990b;
                    }
                    if (i11 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i13 != 0) {
                        i14 = 1;
                    }
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    HeightInLinesModifierKt.a(i14, i3);
                    selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                    if (selectionRegistrar != null) {
                        gapComposerH.L(356423075);
                        j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                        Object[] objArr5 = {selectionRegistrar};
                        SaverKt$Saver$1 saverKt$Saver$5 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                        zY2 = gapComposerH.y(selectionRegistrar);
                        objX = gapComposerH.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                        if (zY2) {
                            objX = new yc(selectionRegistrar, 1);
                            gapComposerH.q(objX);
                        } else {
                            objX = new yc(selectionRegistrar, 1);
                            gapComposerH.q(objX);
                        }
                        jLongValue = ((Number) RememberSaveableKt.b(objArr5, saverKt$Saver$5, (Function0) objX, gapComposerH, 0)).longValue();
                        zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                        objX2 = gapComposerH.x();
                        if (zE) {
                            objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                            gapComposerH.q(objX2);
                        }
                        selectionController = (SelectionController) objX2;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(356914239);
                        gapComposerH.Z(false);
                        selectionController = null;
                    }
                    FontFamily.Resolver resolver5 = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                    executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
                    if (executor == null) {
                        z5 = false;
                        gapComposerH.L(1255914055);
                        gapComposerH.Z(false);
                    } else {
                        z5 = false;
                        gapComposerH.L(1255914055);
                        gapComposerH.Z(false);
                    }
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    if (selectionController == null) {
                        i21 = i9;
                        z6 = z4;
                        gapComposerH.L(357232113);
                        boolean z14 = z5;
                        modifier2 = modifierO;
                        function4 = function3;
                        gapComposer = gapComposerH;
                        th = null;
                        modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                        gapComposer.Z(z14);
                    } else {
                        i21 = i9;
                        z6 = z4;
                        gapComposerH.L(357232113);
                        boolean z15 = z5;
                        modifier2 = modifierO;
                        function4 = function3;
                        gapComposer = gapComposerH;
                        th = null;
                        modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                        gapComposer.Z(z15);
                    }
                    iHashCode = Long.hashCode(gapComposer.T);
                    modifierC = ComposedModifierKt.c(gapComposer, modifierE);
                    persistentCompositionLocalMapU = gapComposer.U();
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposer.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    gapComposer.Z(true);
                    z3 = z6;
                    i19 = i21;
                    function2 = function4;
                } else {
                    modifier2 = modifierO;
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    i19 = i9;
                }
                i20 = i14;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier7 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: dd
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) throws Throwable {
                            ((Integer) obj2).getClass();
                            BasicTextKt.b(str, modifier7, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= ImageMetadata.EDGE_MODE;
            if ((1572864 & i5) == 0) {
                if (gapComposerH.d(i3)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i7 |= i22;
            }
            i13 = i6 & 128;
            if (i13 != 0) {
                i7 |= 12582912;
                i14 = i4;
            } else {
                i14 = i4;
                if ((i5 & 12582912) == 0) {
                    if (gapComposerH.d(i14)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i7 |= i15;
                }
            }
            i16 = i7 | 100663296;
            i17 = i7;
            if ((i6 & 512) != 0) {
                i16 = i17 | 905969664;
            } else if ((805306368 & i5) == 0) {
                if ((1073741824 & i5) == 0) {
                    zY = gapComposerH.K(null);
                } else {
                    zY = gapComposerH.y(null);
                }
                if (zY) {
                    i18 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i18 = 268435456;
                }
                i16 |= i18;
            }
            if ((i16 & 306783379) != 306783378) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i16 & 1, z2)) {
                if (i23 != 0) {
                    function3 = null;
                } else {
                    function3 = function2;
                }
                if (i8 != 0) {
                    TextOverflow.f10989a.getClass();
                    i9 = TextOverflow.f10990b;
                }
                if (i11 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i13 != 0) {
                    i14 = 1;
                }
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                HeightInLinesModifierKt.a(i14, i3);
                selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                if (selectionRegistrar != null) {
                    gapComposerH.L(356423075);
                    j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                    Object[] objArr6 = {selectionRegistrar};
                    SaverKt$Saver$1 saverKt$Saver$6 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                    zY2 = gapComposerH.y(selectionRegistrar);
                    objX = gapComposerH.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$6 = Composer.Companion.f7939a;
                    if (zY2) {
                        objX = new yc(selectionRegistrar, 1);
                        gapComposerH.q(objX);
                    } else {
                        objX = new yc(selectionRegistrar, 1);
                        gapComposerH.q(objX);
                    }
                    jLongValue = ((Number) RememberSaveableKt.b(objArr6, saverKt$Saver$6, (Function0) objX, gapComposerH, 0)).longValue();
                    zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                        gapComposerH.q(objX2);
                    }
                    selectionController = (SelectionController) objX2;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(356914239);
                    gapComposerH.Z(false);
                    selectionController = null;
                }
                FontFamily.Resolver resolver6 = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
                if (executor == null) {
                    z5 = false;
                    gapComposerH.L(1255914055);
                    gapComposerH.Z(false);
                } else {
                    z5 = false;
                    gapComposerH.L(1255914055);
                    gapComposerH.Z(false);
                }
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                if (selectionController == null) {
                    i21 = i9;
                    z6 = z4;
                    gapComposerH.L(357232113);
                    boolean z16 = z5;
                    modifier2 = modifierO;
                    function4 = function3;
                    gapComposer = gapComposerH;
                    th = null;
                    modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                    gapComposer.Z(z16);
                } else {
                    i21 = i9;
                    z6 = z4;
                    gapComposerH.L(357232113);
                    boolean z17 = z5;
                    modifier2 = modifierO;
                    function4 = function3;
                    gapComposer = gapComposerH;
                    th = null;
                    modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                    gapComposer.Z(z17);
                }
                iHashCode = Long.hashCode(gapComposer.T);
                modifierC = ComposedModifierKt.c(gapComposer, modifierE);
                persistentCompositionLocalMapU = gapComposer.U();
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposer.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                gapComposer.Z(true);
                z3 = z6;
                i19 = i21;
                function2 = function4;
            } else {
                modifier2 = modifierO;
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                i19 = i9;
            }
            i20 = i14;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier8 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: dd
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) throws Throwable {
                        ((Integer) obj2).getClass();
                        BasicTextKt.b(str, modifier8, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 24576;
        i9 = i2;
        i11 = i6 & 32;
        if (i11 != 0) {
            if ((196608 & i5) == 0) {
                if (gapComposerH.b(z)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i7 |= i12;
            }
            if ((1572864 & i5) == 0) {
                if (gapComposerH.d(i3)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i7 |= i22;
            }
            i13 = i6 & 128;
            if (i13 != 0) {
                i7 |= 12582912;
                i14 = i4;
            } else {
                i14 = i4;
                if ((i5 & 12582912) == 0) {
                    if (gapComposerH.d(i14)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i7 |= i15;
                }
            }
            i16 = i7 | 100663296;
            i17 = i7;
            if ((i6 & 512) != 0) {
                i16 = i17 | 905969664;
            } else if ((805306368 & i5) == 0) {
                if ((1073741824 & i5) == 0) {
                    zY = gapComposerH.K(null);
                } else {
                    zY = gapComposerH.y(null);
                }
                if (zY) {
                    i18 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i18 = 268435456;
                }
                i16 |= i18;
            }
            if ((i16 & 306783379) != 306783378) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i16 & 1, z2)) {
                if (i23 != 0) {
                    function3 = null;
                } else {
                    function3 = function2;
                }
                if (i8 != 0) {
                    TextOverflow.f10989a.getClass();
                    i9 = TextOverflow.f10990b;
                }
                if (i11 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i13 != 0) {
                    i14 = 1;
                }
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                HeightInLinesModifierKt.a(i14, i3);
                selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
                if (selectionRegistrar != null) {
                    gapComposerH.L(356423075);
                    j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                    Object[] objArr7 = {selectionRegistrar};
                    SaverKt$Saver$1 saverKt$Saver$7 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                    zY2 = gapComposerH.y(selectionRegistrar);
                    objX = gapComposerH.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$7 = Composer.Companion.f7939a;
                    if (zY2) {
                        objX = new yc(selectionRegistrar, 1);
                        gapComposerH.q(objX);
                    } else {
                        objX = new yc(selectionRegistrar, 1);
                        gapComposerH.q(objX);
                    }
                    jLongValue = ((Number) RememberSaveableKt.b(objArr7, saverKt$Saver$7, (Function0) objX, gapComposerH, 0)).longValue();
                    zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                    objX2 = gapComposerH.x();
                    if (zE) {
                        objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                        gapComposerH.q(objX2);
                    }
                    selectionController = (SelectionController) objX2;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(356914239);
                    gapComposerH.Z(false);
                    selectionController = null;
                }
                FontFamily.Resolver resolver7 = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
                executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
                if (executor == null) {
                    z5 = false;
                    gapComposerH.L(1255914055);
                    gapComposerH.Z(false);
                } else {
                    z5 = false;
                    gapComposerH.L(1255914055);
                    gapComposerH.Z(false);
                }
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                if (selectionController == null) {
                    i21 = i9;
                    z6 = z4;
                    gapComposerH.L(357232113);
                    boolean z18 = z5;
                    modifier2 = modifierO;
                    function4 = function3;
                    gapComposer = gapComposerH;
                    th = null;
                    modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                    gapComposer.Z(z18);
                } else {
                    i21 = i9;
                    z6 = z4;
                    gapComposerH.L(357232113);
                    boolean z19 = z5;
                    modifier2 = modifierO;
                    function4 = function3;
                    gapComposer = gapComposerH;
                    th = null;
                    modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                    gapComposer.Z(z19);
                }
                iHashCode = Long.hashCode(gapComposer.T);
                modifierC = ComposedModifierKt.c(gapComposer, modifierE);
                persistentCompositionLocalMapU = gapComposer.U();
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposer.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
                Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                gapComposer.Z(true);
                z3 = z6;
                i19 = i21;
                function2 = function4;
            } else {
                modifier2 = modifierO;
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                i19 = i9;
            }
            i20 = i14;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier9 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: dd
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) throws Throwable {
                        ((Integer) obj2).getClass();
                        BasicTextKt.b(str, modifier9, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= ImageMetadata.EDGE_MODE;
        if ((1572864 & i5) == 0) {
            if (gapComposerH.d(i3)) {
                i22 = 1048576;
            } else {
                i22 = 524288;
            }
            i7 |= i22;
        }
        i13 = i6 & 128;
        if (i13 != 0) {
            i7 |= 12582912;
            i14 = i4;
        } else {
            i14 = i4;
            if ((i5 & 12582912) == 0) {
                if (gapComposerH.d(i14)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
                i7 |= i15;
            }
        }
        i16 = i7 | 100663296;
        i17 = i7;
        if ((i6 & 512) != 0) {
            i16 = i17 | 905969664;
        } else if ((805306368 & i5) == 0) {
            if ((1073741824 & i5) == 0) {
                zY = gapComposerH.K(null);
            } else {
                zY = gapComposerH.y(null);
            }
            if (zY) {
                i18 = PKIFailureInfo.duplicateCertReq;
            } else {
                i18 = 268435456;
            }
            i16 |= i18;
        }
        if ((i16 & 306783379) != 306783378) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i16 & 1, z2)) {
            if (i23 != 0) {
                function3 = null;
            } else {
                function3 = function2;
            }
            if (i8 != 0) {
                TextOverflow.f10989a.getClass();
                i9 = TextOverflow.f10990b;
            }
            if (i11 != 0) {
                z4 = true;
            } else {
                z4 = z;
            }
            if (i13 != 0) {
                i14 = 1;
            }
            OpaqueKey opaqueKey15 = ComposerKt.f7940a;
            HeightInLinesModifierKt.a(i14, i3);
            selectionRegistrar = (SelectionRegistrar) gapComposerH.k(SelectionRegistrarKt.f6442a);
            if (selectionRegistrar != null) {
                gapComposerH.L(356423075);
                j2 = ((TextSelectionColors) gapComposerH.k(TextSelectionColorsKt.f6503a)).f6502b;
                Object[] objArr8 = {selectionRegistrar};
                SaverKt$Saver$1 saverKt$Saver$8 = new SaverKt$Saver$1(new defpackage.c(selectionRegistrar, 6), new u5(20));
                zY2 = gapComposerH.y(selectionRegistrar);
                objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$8 = Composer.Companion.f7939a;
                if (zY2) {
                    objX = new yc(selectionRegistrar, 1);
                    gapComposerH.q(objX);
                } else {
                    objX = new yc(selectionRegistrar, 1);
                    gapComposerH.q(objX);
                }
                jLongValue = ((Number) RememberSaveableKt.b(objArr8, saverKt$Saver$8, (Function0) objX, gapComposerH, 0)).longValue();
                zE = gapComposerH.e(jLongValue) | gapComposerH.K(selectionRegistrar) | gapComposerH.e(j2);
                objX2 = gapComposerH.x();
                if (zE) {
                    objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new SelectionController(jLongValue, selectionRegistrar, j2, null, 8, null);
                    gapComposerH.q(objX2);
                }
                selectionController = (SelectionController) objX2;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(356914239);
                gapComposerH.Z(false);
                selectionController = null;
            }
            FontFamily.Resolver resolver8 = (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k);
            executor = (Executor) gapComposerH.k(BasicText_androidKt.f5855a);
            if (executor == null) {
                z5 = false;
                gapComposerH.L(1255914055);
                gapComposerH.Z(false);
            } else {
                z5 = false;
                gapComposerH.L(1255914055);
                gapComposerH.Z(false);
            }
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            if (selectionController == null) {
                i21 = i9;
                z6 = z4;
                gapComposerH.L(357232113);
                boolean z110 = z5;
                modifier2 = modifierO;
                function4 = function3;
                gapComposer = gapComposerH;
                th = null;
                modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                gapComposer.Z(z110);
            } else {
                i21 = i9;
                z6 = z4;
                gapComposerH.L(357232113);
                boolean z111 = z5;
                modifier2 = modifierO;
                function4 = function3;
                gapComposer = gapComposerH;
                th = null;
                modifierE = e(modifier2, new AnnotatedString(str, null, 2, null), textStyle, function4, i21, z6, i3, i14, (FontFamily.Resolver) gapComposerH.k(CompositionLocalsKt.f10034k), null, null, selectionController, null, null);
                gapComposer.Z(z111);
            }
            iHashCode = Long.hashCode(gapComposer.T);
            modifierC = ComposedModifierKt.c(gapComposer, modifierE);
            persistentCompositionLocalMapU = gapComposer.U();
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposer.f7976a != null) {
                ComposablesKt.b();
                throw th;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, EmptyMeasurePolicy.f5891a, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposer, modifierC, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            gapComposer.Z(true);
            z3 = z6;
            i19 = i21;
            function2 = function4;
        } else {
            modifier2 = modifierO;
            gapComposer = gapComposerH;
            gapComposer.D();
            z3 = z;
            i19 = i9;
        }
        i20 = i14;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier10 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: dd
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) throws Throwable {
                    ((Integer) obj2).getClass();
                    BasicTextKt.b(str, modifier10, textStyle, function2, i19, z3, i3, i20, (Composer) obj, RecomposeScopeImplKt.a(i5 | 1), i6);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:160:0x021f  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void c(Modifier modifier, final AnnotatedString annotatedString, final Function1 function1, final boolean z, final Map map, final TextStyle textStyle, final int i2, final boolean z2, final int i3, final int i4, final FontFamily.Resolver resolver, final SelectionController selectionController, final Function1 function2, final TextAutoSize textAutoSize, Composer composer, final int i5, final int i6) {
        int i7;
        int i8;
        Modifier modifier2;
        GapComposer gapComposer;
        final TextLinkScope textLinkScope;
        Function0 function0;
        int i9;
        Pair pair;
        Object obj;
        MutableState mutableState;
        boolean z3;
        Function1 function3;
        int i10;
        Object obj2;
        Object obj3;
        Object textMeasurePolicy;
        Object obj4;
        Object obj5;
        Object obj6;
        Modifier modifierE = modifier;
        Map map2 = map;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LayoutWithLinksAndInlineContent-11Od_4g");
        }
        GapComposer gapComposerH = composer.h(-2118572703);
        if ((i5 & 6) == 0) {
            i7 = (gapComposerH.K(modifierE) ? 4 : 2) | i5;
        } else {
            i7 = i5;
        }
        if ((i5 & 48) == 0) {
            i7 |= gapComposerH.K(annotatedString) ? 32 : 16;
        }
        if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i7 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i5 & 24576) == 0) {
            i7 |= gapComposerH.y(map2) ? 16384 : 8192;
        }
        if ((196608 & i5) == 0) {
            i7 |= gapComposerH.K(textStyle) ? 131072 : 65536;
        }
        if ((1572864 & i5) == 0) {
            i7 |= gapComposerH.d(i2) ? 1048576 : 524288;
        }
        if ((i5 & 12582912) == 0) {
            i7 |= gapComposerH.b(z2) ? 8388608 : 4194304;
        }
        if ((i5 & 100663296) == 0) {
            i7 |= gapComposerH.d(i3) ? 67108864 : 33554432;
        }
        if ((i5 & 805306368) == 0) {
            i7 |= gapComposerH.d(i4) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i6 & 6) == 0) {
            i8 = i6 | (gapComposerH.y(resolver) ? 4 : 2);
        } else {
            i8 = i6;
        }
        if ((i6 & 48) == 0) {
            i8 |= gapComposerH.y(selectionController) ? 32 : 16;
        }
        if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.y(null) ? 256 : 128;
        }
        if ((i6 & 3072) == 0) {
            i8 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i6 & 24576) == 0) {
            i8 |= (32768 & i6) == 0 ? gapComposerH.K(textAutoSize) : gapComposerH.y(textAutoSize) ? 16384 : 8192;
        }
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && (i8 & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zD = annotatedString.d(annotatedString.f10420c.length());
            String str = annotatedString.f10420c;
            Object obj7 = Composer.Companion.f7939a;
            if (zD) {
                gapComposerH.L(145641571);
                boolean z4 = (i7 & 112) == 32;
                Object objX = gapComposerH.x();
                Object obj8 = objX;
                if (z4 || objX == obj7) {
                    Object textLinkScope2 = new TextLinkScope(annotatedString);
                    gapComposerH.q(textLinkScope2);
                    obj8 = textLinkScope2;
                }
                gapComposerH.Z(false);
                textLinkScope = (TextLinkScope) obj8;
            } else {
                gapComposerH.L(145707228);
                gapComposerH.Z(false);
                textLinkScope = null;
            }
            if (annotatedString.d(str.length())) {
                gapComposerH.L(145905443);
                boolean zK = ((i7 & 112) == 32) | gapComposerH.K(textLinkScope);
                Object objX2 = gapComposerH.x();
                Object obj9 = objX2;
                if (zK || objX2 == obj7) {
                    Object obj10 = new Function0() { // from class: androidx.compose.foundation.text.a
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            TextLinkScope textLinkScope3 = textLinkScope;
                            if (textLinkScope3 != null) {
                                SnapshotStateList snapshotStateList = textLinkScope3.f6016c;
                                boolean zIsEmpty = snapshotStateList.isEmpty();
                                AnnotatedString annotatedString2 = textLinkScope3.f6015b;
                                if (!zIsEmpty) {
                                    TextAnnotatorScope textAnnotatorScope = new TextAnnotatorScope(annotatedString2);
                                    int size = snapshotStateList.size();
                                    for (int i11 = 0; i11 < size; i11++) {
                                        ((Function1) snapshotStateList.get(i11)).invoke(textAnnotatorScope);
                                    }
                                    annotatedString2 = textAnnotatorScope.f5949b;
                                }
                                textLinkScope3.f6015b = annotatedString2;
                                if (annotatedString2 != null) {
                                    return annotatedString2;
                                }
                            }
                            return annotatedString;
                        }
                    };
                    gapComposerH.q(obj10);
                    obj9 = obj10;
                }
                function0 = (Function0) obj9;
                i9 = 0;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(146002721);
                boolean z5 = (i7 & 112) == 32;
                Object objX3 = gapComposerH.x();
                Object obj11 = objX3;
                if (z5 || objX3 == obj7) {
                    Object w1Var = new w1(annotatedString, 10);
                    gapComposerH.q(w1Var);
                    obj11 = w1Var;
                }
                function0 = (Function0) obj11;
                i9 = 0;
                gapComposerH.Z(false);
            }
            if (z) {
                if (map2 != null) {
                    Pair pair2 = AnnotatedStringResolveInlineContentKt.f5849a;
                    if (map2.isEmpty()) {
                        pair = AnnotatedStringResolveInlineContentKt.f5849a;
                    } else {
                        List listC = annotatedString.c(i9, str.length(), "androidx.compose.foundation.text.inlineContent");
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        int size = listC.size();
                        int i11 = 0;
                        while (i11 < size) {
                            List list = listC;
                            AnnotatedString.Range range = (AnnotatedString.Range) listC.get(i11);
                            int i12 = size;
                            Object obj12 = range.f10428a;
                            int i13 = i11;
                            int i14 = range.f10430c;
                            int i15 = range.f10429b;
                            InlineTextContent inlineTextContent = (InlineTextContent) map2.get(obj12);
                            if (inlineTextContent != null) {
                                arrayList.add(new AnnotatedString.Range(inlineTextContent.f5898a, i15, i14));
                                arrayList2.add(new AnnotatedString.Range(inlineTextContent.f5899b, i15, i14));
                            }
                            i11 = i13 + 1;
                            map2 = map;
                            size = i12;
                            listC = list;
                        }
                        pair = new Pair(arrayList, arrayList2);
                    }
                } else {
                    pair = AnnotatedStringResolveInlineContentKt.f5849a;
                }
                obj = null;
            } else {
                function0 = function0;
                obj = null;
                pair = new Pair(null, null);
            }
            List list2 = (List) pair.f71705b;
            List list3 = (List) pair.f71706c;
            if (z) {
                gapComposerH.L(146318828);
                Object objX4 = gapComposerH.x();
                if (objX4 == obj7) {
                    obj6 = objX4;
                    Object objG = SnapshotStateKt.g(obj);
                    gapComposerH.q(objG);
                    obj6 = objG;
                }
                obj6 = objX4;
                mutableState = (MutableState) obj6;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(146406588);
                gapComposerH.Z(false);
                mutableState = null;
            }
            if (z) {
                gapComposerH.L(146499837);
                boolean zK2 = gapComposerH.K(mutableState);
                Object objX5 = gapComposerH.x();
                if (zK2 || objX5 == obj7) {
                    obj5 = objX5;
                    Object j6Var = new j6(6, mutableState);
                    gapComposerH.q(j6Var);
                    obj5 = j6Var;
                }
                Function1 function4 = (Function1) obj5;
                z3 = false;
                gapComposerH.Z(false);
                function3 = function4;
            } else {
                z3 = false;
                gapComposerH.L(146571260);
                gapComposerH.Z(false);
                function3 = null;
            }
            int i16 = (i7 >> 3) & 14;
            BasicText_androidKt.a(annotatedString, textStyle, resolver, list2, gapComposerH);
            AnnotatedString annotatedString2 = (AnnotatedString) function0.mo47invoke();
            boolean zY = ((i7 & 896) == 256) | gapComposerH.y(textLinkScope);
            Object objX6 = gapComposerH.x();
            if (zY || objX6 == obj7) {
                i10 = 0;
                Object zcVar = new zc(textLinkScope, function1, i10);
                gapComposerH.q(zcVar);
                obj2 = zcVar;
            } else {
                i10 = 0;
                obj2 = objX6;
            }
            GapComposer gapComposer2 = gapComposerH;
            boolean z6 = i10;
            modifier2 = modifierE;
            Modifier modifierE2 = e(modifier2, annotatedString2, textStyle, (Function1) obj2, i2, z2, i3, i4, resolver, list2, function3, selectionController, function2, textAutoSize);
            if (z) {
                gapComposer2.L(147927697);
                boolean zY2 = gapComposer2.y(textLinkScope);
                Object objX7 = gapComposer2.x();
                if (zY2 || objX7 == obj7) {
                    obj3 = objX7;
                    Object adVar = new ad(textLinkScope, 1);
                    gapComposer2.q(adVar);
                    obj3 = adVar;
                }
                Function0 function5 = (Function0) obj3;
                boolean zK3 = gapComposer2.K(mutableState);
                Object objX8 = gapComposer2.x();
                Object obj13 = objX8;
                if (zK3 || objX8 == obj7) {
                    Object d0Var = new d0(12, mutableState);
                    gapComposer2.q(d0Var);
                    obj13 = d0Var;
                }
                textMeasurePolicy = new TextMeasurePolicy(function5, (Function0) obj13);
                gapComposer2.Z(z6);
            } else {
                gapComposer2.L(147750935);
                boolean zY3 = gapComposer2.y(textLinkScope);
                Object objX9 = gapComposer2.x();
                if (zY3 || objX9 == obj7) {
                    obj4 = objX9;
                    Object adVar2 = new ad(textLinkScope, z6 ? 1 : 0);
                    gapComposer2.q(adVar2);
                    obj4 = adVar2;
                }
                textMeasurePolicy = new LinksTextMeasurePolicy((Function0) obj4);
                gapComposer2.Z(z6);
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer2.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposer2, modifierE2);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (gapComposer2.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function6);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, textMeasurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer2, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposer2, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposer2, modifierC, ComposeUiNode.Companion.d);
            if (textLinkScope == null) {
                gapComposer2.L(-433557001);
            } else {
                gapComposer2.L(-291080374);
                textLinkScope.a(gapComposer2, z6 ? 1 : 0);
            }
            gapComposer2.Z(z6);
            if (list3 == null) {
                gapComposer2.L(-433506223);
                gapComposer2.Z(z6);
            } else {
                gapComposer2.L(-433506222);
                AnnotatedStringResolveInlineContentKt.a(annotatedString, list3, gapComposer2, i16);
                gapComposer2.Z(z6);
            }
            gapComposer2.Z(true);
            gapComposer = gapComposer2;
        } else {
            GapComposer gapComposer3 = gapComposerH;
            modifier2 = modifierE;
            gapComposer3.D();
            gapComposer = gapComposer3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: bd
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj14, Object obj15) {
                    ((Integer) obj15).getClass();
                    int iA = RecomposeScopeImplKt.a(i5 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i6);
                    BasicTextKt.c(modifier3, annotatedString, function1, z, map, textStyle, i2, z2, i3, i4, resolver, selectionController, function2, textAutoSize, (Composer) obj14, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final ArrayList d(List list, Function0 function0) {
        if (!((Boolean) function0.mo47invoke()).booleanValue()) {
            return null;
        }
        TextRangeLayoutMeasureScope textRangeLayoutMeasureScope = new TextRangeLayoutMeasureScope();
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Measurable measurable = (Measurable) list.get(i2);
            Object t = measurable.getZ();
            t.getClass();
            TextRangeLayoutMeasureResult textRangeLayoutMeasureResultB = ((TextRangeLayoutModifier) t).f6028b.b(textRangeLayoutMeasureScope);
            Constraints.Companion companion = Constraints.f10998b;
            int i3 = textRangeLayoutMeasureResultB.f6025a;
            int i4 = textRangeLayoutMeasureResultB.f6026b;
            companion.getClass();
            arrayList.add(new Pair(measurable.T(Constraints.Companion.b(i3, i3, i4, i4)), textRangeLayoutMeasureResultB.f6027c));
        }
        return arrayList;
    }

    public static final Modifier e(Modifier modifier, AnnotatedString annotatedString, TextStyle textStyle, Function1 function1, int i2, boolean z, int i3, int i4, FontFamily.Resolver resolver, List list, Function1 function2, SelectionController selectionController, Function1 function3, TextAutoSize textAutoSize) {
        if (selectionController == null) {
            return modifier.o(Modifier.Companion.f8607b).o(new TextAnnotatedStringElement(annotatedString, textStyle, resolver, function1, i2, z, i3, i4, list, function2, null, null, textAutoSize, function3, null));
        }
        return modifier.o(selectionController.g).o(new SelectableTextAnnotatedStringElement(annotatedString, textStyle, resolver, function1, i2, z, i3, i4, list, function2, selectionController, null, textAutoSize, null));
    }
}
