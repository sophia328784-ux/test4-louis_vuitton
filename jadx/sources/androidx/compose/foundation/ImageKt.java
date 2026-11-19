package androidx.compose.foundation;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.BitmapPainterKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.lt;
import defpackage.n00;
import defpackage.x6;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ImageKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0123  */
    /* JADX WARN: Code duplicated, block: B:103:0x012a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:104:0x012c  */
    /* JADX WARN: Code duplicated, block: B:106:0x0140  */
    /* JADX WARN: Code duplicated, block: B:109:0x0164  */
    /* JADX WARN: Code duplicated, block: B:112:0x0184  */
    /* JADX WARN: Code duplicated, block: B:114:0x018b  */
    /* JADX WARN: Code duplicated, block: B:115:0x018f  */
    /* JADX WARN: Code duplicated, block: B:118:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:120:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:123:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0078  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0081  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x0099  */
    /* JADX WARN: Code duplicated, block: B:61:0x009c  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:78:0x00da  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:90:0x0105  */
    /* JADX WARN: Code duplicated, block: B:91:0x0109  */
    /* JADX WARN: Code duplicated, block: B:94:0x010d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0114  */
    /* JADX WARN: Code duplicated, block: B:99:0x0121  */
    public static final void a(Painter painter, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f2, ColorFilter colorFilter, Composer composer, int i2, int i3) {
        int i4;
        Alignment alignment2;
        int i5;
        ContentScale contentScale2;
        int i6;
        int i7;
        float f3;
        int i8;
        int i9;
        ColorFilter colorFilter2;
        int i10;
        Modifier modifier2;
        int i11;
        boolean z;
        ColorFilter colorFilter3;
        Alignment alignment3;
        ContentScale contentScale3;
        float f4;
        Modifier modifier3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        float f5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier modifierJ;
        Alignment alignment4;
        ContentScale contentScale4;
        Object objX;
        MeasurePolicy measurePolicy;
        int iHashCode;
        Modifier modifierC;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Function0 function0;
        boolean z2;
        Object objX2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Image");
        }
        GapComposer gapComposerH = composer.h(1142754848);
        if ((i2 & 6) == 0) {
            i4 = ((i2 & 8) == 0 ? gapComposerH.K(painter) : gapComposerH.y(painter) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i12 = i3 & 4;
        if (i12 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        int i13 = i3 & 8;
        if (i13 == 0) {
            if ((i2 & 3072) == 0) {
                alignment2 = alignment;
                i4 |= gapComposerH.K(alignment2) ? 2048 : 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    contentScale2 = contentScale;
                    if (gapComposerH.K(contentScale2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    if ((196608 & i2) == 0) {
                        f3 = f2;
                        if (gapComposerH.c(f3)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                    i9 = i3 & 64;
                    if (i9 != 0) {
                        i4 |= 1572864;
                        colorFilter2 = colorFilter;
                    } else {
                        colorFilter2 = colorFilter;
                        if ((i2 & 1572864) == 0) {
                            if (gapComposerH.K(colorFilter2)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i4 |= i10;
                        }
                    }
                    modifier2 = modifierE;
                    i11 = i4;
                    if ((i4 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i11 & 1, z)) {
                        if (i12 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("Image");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i13 != 0) {
                            Alignment.f8582a.getClass();
                            alignment2 = Alignment.Companion.f8587f;
                        }
                        if (i5 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.f9450c;
                        }
                        if (i7 != 0) {
                            f5 = 1.0f;
                        } else {
                            f5 = f3;
                        }
                        if (i9 != 0) {
                            colorFilter2 = null;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (str != null) {
                            DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 1899222916, "Image");
                            if ((i11 & 112) == 32) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objX2 = gapComposerH.x();
                            if (z2 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new lt(str, 8);
                                gapComposerH.q(objX2);
                            }
                            modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX2);
                            gapComposerH.Z(false);
                        } else {
                            modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
                        }
                        alignment4 = alignment2;
                        modifier2 = dTFunctionNameModifier;
                        contentScale4 = contentScale2;
                        Modifier modifierA = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = ImageKt$Image$1$1.f4230a;
                            gapComposerH.q(objX);
                        }
                        measurePolicy = (MeasurePolicy) objX;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
                        persistentCompositionLocalMapU = gapComposerH.U();
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
                        Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        gapComposerH.Z(true);
                        f4 = f5;
                        colorFilter3 = colorFilter2;
                        alignment3 = alignment4;
                        contentScale3 = contentScale4;
                    } else {
                        gapComposerH.D();
                        colorFilter3 = colorFilter2;
                        alignment3 = alignment2;
                        contentScale3 = contentScale2;
                        f4 = f3;
                    }
                    modifier3 = modifier2;
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                f3 = f2;
                i9 = i3 & 64;
                if (i9 != 0) {
                    i4 |= 1572864;
                    colorFilter2 = colorFilter;
                } else {
                    colorFilter2 = colorFilter;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.K(colorFilter2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                }
                modifier2 = modifierE;
                i11 = i4;
                if ((i4 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i11 & 1, z)) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Image");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        Alignment.f8582a.getClass();
                        alignment2 = Alignment.Companion.f8587f;
                    }
                    if (i5 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.f9450c;
                    }
                    if (i7 != 0) {
                        f5 = 1.0f;
                    } else {
                        f5 = f3;
                    }
                    if (i9 != 0) {
                        colorFilter2 = null;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (str != null) {
                        DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, 1899222916, "Image");
                        if ((i11 & 112) == 32) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objX2 = gapComposerH.x();
                        if (z2) {
                            objX2 = new lt(str, 8);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new lt(str, 8);
                            gapComposerH.q(objX2);
                        }
                        modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI2, false, (Function1) objX2);
                        gapComposerH.Z(false);
                    } else {
                        modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
                    }
                    alignment4 = alignment2;
                    modifier2 = dTFunctionNameModifier;
                    contentScale4 = contentScale2;
                    Modifier modifierA2 = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = ImageKt$Image$1$1.f4230a;
                        gapComposerH.q(objX);
                    }
                    measurePolicy = (MeasurePolicy) objX;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
                    persistentCompositionLocalMapU = gapComposerH.U();
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
                    Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    gapComposerH.Z(true);
                    f4 = f5;
                    colorFilter3 = colorFilter2;
                    alignment3 = alignment4;
                    contentScale3 = contentScale4;
                } else {
                    gapComposerH.D();
                    colorFilter3 = colorFilter2;
                    alignment3 = alignment2;
                    contentScale3 = contentScale2;
                    f4 = f3;
                }
                modifier3 = modifier2;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
                }
            }
            i4 |= 24576;
            contentScale2 = contentScale;
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    f3 = f2;
                    if (gapComposerH.c(f3)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    i4 |= 1572864;
                    colorFilter2 = colorFilter;
                } else {
                    colorFilter2 = colorFilter;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.K(colorFilter2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                }
                modifier2 = modifierE;
                i11 = i4;
                if ((i4 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i11 & 1, z)) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Image");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        Alignment.f8582a.getClass();
                        alignment2 = Alignment.Companion.f8587f;
                    }
                    if (i5 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.f9450c;
                    }
                    if (i7 != 0) {
                        f5 = 1.0f;
                    } else {
                        f5 = f3;
                    }
                    if (i9 != 0) {
                        colorFilter2 = null;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (str != null) {
                        DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposerH, 1899222916, "Image");
                        if ((i11 & 112) == 32) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objX2 = gapComposerH.x();
                        if (z2) {
                            objX2 = new lt(str, 8);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new lt(str, 8);
                            gapComposerH.q(objX2);
                        }
                        modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI3, false, (Function1) objX2);
                        gapComposerH.Z(false);
                    } else {
                        modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
                    }
                    alignment4 = alignment2;
                    modifier2 = dTFunctionNameModifier;
                    contentScale4 = contentScale2;
                    Modifier modifierA3 = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = ImageKt$Image$1$1.f4230a;
                        gapComposerH.q(objX);
                    }
                    measurePolicy = (MeasurePolicy) objX;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierA3);
                    persistentCompositionLocalMapU = gapComposerH.U();
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
                    Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    gapComposerH.Z(true);
                    f4 = f5;
                    colorFilter3 = colorFilter2;
                    alignment3 = alignment4;
                    contentScale3 = contentScale4;
                } else {
                    gapComposerH.D();
                    colorFilter3 = colorFilter2;
                    alignment3 = alignment2;
                    contentScale3 = contentScale2;
                    f4 = f3;
                }
                modifier3 = modifier2;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            f3 = f2;
            i9 = i3 & 64;
            if (i9 != 0) {
                i4 |= 1572864;
                colorFilter2 = colorFilter;
            } else {
                colorFilter2 = colorFilter;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.K(colorFilter2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
            }
            modifier2 = modifierE;
            i11 = i4;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i11 & 1, z)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Image");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8587f;
                }
                if (i5 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.f9450c;
                }
                if (i7 != 0) {
                    f5 = 1.0f;
                } else {
                    f5 = f3;
                }
                if (i9 != 0) {
                    colorFilter2 = null;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (str != null) {
                    DTFunctionNameModifier dTFunctionNameModifierI4 = n00.i(gapComposerH, 1899222916, "Image");
                    if ((i11 & 112) == 32) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objX2 = gapComposerH.x();
                    if (z2) {
                        objX2 = new lt(str, 8);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new lt(str, 8);
                        gapComposerH.q(objX2);
                    }
                    modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI4, false, (Function1) objX2);
                    gapComposerH.Z(false);
                } else {
                    modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
                }
                alignment4 = alignment2;
                modifier2 = dTFunctionNameModifier;
                contentScale4 = contentScale2;
                Modifier modifierA4 = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = ImageKt$Image$1$1.f4230a;
                    gapComposerH.q(objX);
                }
                measurePolicy = (MeasurePolicy) objX;
                iHashCode = Long.hashCode(gapComposerH.T);
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA4);
                persistentCompositionLocalMapU = gapComposerH.U();
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
                Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                gapComposerH.Z(true);
                f4 = f5;
                colorFilter3 = colorFilter2;
                alignment3 = alignment4;
                contentScale3 = contentScale4;
            } else {
                gapComposerH.D();
                colorFilter3 = colorFilter2;
                alignment3 = alignment2;
                contentScale3 = contentScale2;
                f4 = f3;
            }
            modifier3 = modifier2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
            }
        }
        i4 |= 3072;
        alignment2 = alignment;
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                contentScale2 = contentScale;
                if (gapComposerH.K(contentScale2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    f3 = f2;
                    if (gapComposerH.c(f3)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    i4 |= 1572864;
                    colorFilter2 = colorFilter;
                } else {
                    colorFilter2 = colorFilter;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.K(colorFilter2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                }
                modifier2 = modifierE;
                i11 = i4;
                if ((i4 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i11 & 1, z)) {
                    if (i12 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Image");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i13 != 0) {
                        Alignment.f8582a.getClass();
                        alignment2 = Alignment.Companion.f8587f;
                    }
                    if (i5 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.f9450c;
                    }
                    if (i7 != 0) {
                        f5 = 1.0f;
                    } else {
                        f5 = f3;
                    }
                    if (i9 != 0) {
                        colorFilter2 = null;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (str != null) {
                        DTFunctionNameModifier dTFunctionNameModifierI5 = n00.i(gapComposerH, 1899222916, "Image");
                        if ((i11 & 112) == 32) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objX2 = gapComposerH.x();
                        if (z2) {
                            objX2 = new lt(str, 8);
                            gapComposerH.q(objX2);
                        } else {
                            objX2 = new lt(str, 8);
                            gapComposerH.q(objX2);
                        }
                        modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI5, false, (Function1) objX2);
                        gapComposerH.Z(false);
                    } else {
                        modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
                    }
                    alignment4 = alignment2;
                    modifier2 = dTFunctionNameModifier;
                    contentScale4 = contentScale2;
                    Modifier modifierA5 = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = ImageKt$Image$1$1.f4230a;
                        gapComposerH.q(objX);
                    }
                    measurePolicy = (MeasurePolicy) objX;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierA5);
                    persistentCompositionLocalMapU = gapComposerH.U();
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
                    Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    gapComposerH.Z(true);
                    f4 = f5;
                    colorFilter3 = colorFilter2;
                    alignment3 = alignment4;
                    contentScale3 = contentScale4;
                } else {
                    gapComposerH.D();
                    colorFilter3 = colorFilter2;
                    alignment3 = alignment2;
                    contentScale3 = contentScale2;
                    f4 = f3;
                }
                modifier3 = modifier2;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            f3 = f2;
            i9 = i3 & 64;
            if (i9 != 0) {
                i4 |= 1572864;
                colorFilter2 = colorFilter;
            } else {
                colorFilter2 = colorFilter;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.K(colorFilter2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
            }
            modifier2 = modifierE;
            i11 = i4;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i11 & 1, z)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Image");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8587f;
                }
                if (i5 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.f9450c;
                }
                if (i7 != 0) {
                    f5 = 1.0f;
                } else {
                    f5 = f3;
                }
                if (i9 != 0) {
                    colorFilter2 = null;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (str != null) {
                    DTFunctionNameModifier dTFunctionNameModifierI6 = n00.i(gapComposerH, 1899222916, "Image");
                    if ((i11 & 112) == 32) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objX2 = gapComposerH.x();
                    if (z2) {
                        objX2 = new lt(str, 8);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new lt(str, 8);
                        gapComposerH.q(objX2);
                    }
                    modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI6, false, (Function1) objX2);
                    gapComposerH.Z(false);
                } else {
                    modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
                }
                alignment4 = alignment2;
                modifier2 = dTFunctionNameModifier;
                contentScale4 = contentScale2;
                Modifier modifierA6 = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = ImageKt$Image$1$1.f4230a;
                    gapComposerH.q(objX);
                }
                measurePolicy = (MeasurePolicy) objX;
                iHashCode = Long.hashCode(gapComposerH.T);
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA6);
                persistentCompositionLocalMapU = gapComposerH.U();
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
                Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                gapComposerH.Z(true);
                f4 = f5;
                colorFilter3 = colorFilter2;
                alignment3 = alignment4;
                contentScale3 = contentScale4;
            } else {
                gapComposerH.D();
                colorFilter3 = colorFilter2;
                alignment3 = alignment2;
                contentScale3 = contentScale2;
                f4 = f3;
            }
            modifier3 = modifier2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
            }
        }
        i4 |= 24576;
        contentScale2 = contentScale;
        i7 = i3 & 32;
        if (i7 != 0) {
            if ((196608 & i2) == 0) {
                f3 = f2;
                if (gapComposerH.c(f3)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                i4 |= 1572864;
                colorFilter2 = colorFilter;
            } else {
                colorFilter2 = colorFilter;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.K(colorFilter2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
            }
            modifier2 = modifierE;
            i11 = i4;
            if ((i4 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i11 & 1, z)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Image");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i13 != 0) {
                    Alignment.f8582a.getClass();
                    alignment2 = Alignment.Companion.f8587f;
                }
                if (i5 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.f9450c;
                }
                if (i7 != 0) {
                    f5 = 1.0f;
                } else {
                    f5 = f3;
                }
                if (i9 != 0) {
                    colorFilter2 = null;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (str != null) {
                    DTFunctionNameModifier dTFunctionNameModifierI7 = n00.i(gapComposerH, 1899222916, "Image");
                    if ((i11 & 112) == 32) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objX2 = gapComposerH.x();
                    if (z2) {
                        objX2 = new lt(str, 8);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new lt(str, 8);
                        gapComposerH.q(objX2);
                    }
                    modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI7, false, (Function1) objX2);
                    gapComposerH.Z(false);
                } else {
                    modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
                }
                alignment4 = alignment2;
                modifier2 = dTFunctionNameModifier;
                contentScale4 = contentScale2;
                Modifier modifierA7 = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = ImageKt$Image$1$1.f4230a;
                    gapComposerH.q(objX);
                }
                measurePolicy = (MeasurePolicy) objX;
                iHashCode = Long.hashCode(gapComposerH.T);
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA7);
                persistentCompositionLocalMapU = gapComposerH.U();
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
                Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                gapComposerH.Z(true);
                f4 = f5;
                colorFilter3 = colorFilter2;
                alignment3 = alignment4;
                contentScale3 = contentScale4;
            } else {
                gapComposerH.D();
                colorFilter3 = colorFilter2;
                alignment3 = alignment2;
                contentScale3 = contentScale2;
                f4 = f3;
            }
            modifier3 = modifier2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        f3 = f2;
        i9 = i3 & 64;
        if (i9 != 0) {
            i4 |= 1572864;
            colorFilter2 = colorFilter;
        } else {
            colorFilter2 = colorFilter;
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.K(colorFilter2)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
        }
        modifier2 = modifierE;
        i11 = i4;
        if ((i4 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i11 & 1, z)) {
            if (i12 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("Image");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i13 != 0) {
                Alignment.f8582a.getClass();
                alignment2 = Alignment.Companion.f8587f;
            }
            if (i5 != 0) {
                ContentScale.f9447a.getClass();
                contentScale2 = ContentScale.Companion.f9450c;
            }
            if (i7 != 0) {
                f5 = 1.0f;
            } else {
                f5 = f3;
            }
            if (i9 != 0) {
                colorFilter2 = null;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (str != null) {
                DTFunctionNameModifier dTFunctionNameModifierI8 = n00.i(gapComposerH, 1899222916, "Image");
                if ((i11 & 112) == 32) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objX2 = gapComposerH.x();
                if (z2) {
                    objX2 = new lt(str, 8);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new lt(str, 8);
                    gapComposerH.q(objX2);
                }
                modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI8, false, (Function1) objX2);
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, 1899381698, false, "Image");
            }
            alignment4 = alignment2;
            modifier2 = dTFunctionNameModifier;
            contentScale4 = contentScale2;
            Modifier modifierA8 = PainterModifierKt.a(ClipKt.b(dTFunctionNameModifier.o(modifierJ)), painter, alignment4, contentScale4, f5, colorFilter2, 2);
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = ImageKt$Image$1$1.f4230a;
                gapComposerH.q(objX);
            }
            measurePolicy = (MeasurePolicy) objX;
            iHashCode = Long.hashCode(gapComposerH.T);
            modifierC = ComposedModifierKt.c(gapComposerH, modifierA8);
            persistentCompositionLocalMapU = gapComposerH.U();
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
            Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            gapComposerH.Z(true);
            f4 = f5;
            colorFilter3 = colorFilter2;
            alignment3 = alignment4;
            contentScale3 = contentScale4;
        } else {
            gapComposerH.D();
            colorFilter3 = colorFilter2;
            alignment3 = alignment2;
            contentScale3 = contentScale2;
            f4 = f3;
        }
        modifier3 = modifier2;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x6(painter, str, modifier3, alignment3, contentScale3, f4, colorFilter3, i2, i3);
        }
    }

    public static final void b(AndroidImageBitmap androidImageBitmap, String str, Modifier modifier, ContentScale contentScale, Composer composer, int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "Image-5h-nEew");
        }
        Modifier modifier2 = modifier;
        Alignment.f8582a.getClass();
        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
        DrawScope.a0.getClass();
        int i3 = DrawScope.Companion.f9008c;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(androidImageBitmap);
        Object objX = composer.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = BitmapPainterKt.a(androidImageBitmap, i3);
            composer.q(objX);
        }
        a((BitmapPainter) objX, str, modifier2, biasAlignment, contentScale, 1.0f, null, composer, (i2 & 112) | 24584, 0);
    }
}
