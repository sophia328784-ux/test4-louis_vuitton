package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.c20;
import defpackage.lt;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class IconKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Modifier f7002a = SizeKt.o(Modifier.Companion.f8607b, SmallIconButtonTokens.d);

    /* JADX WARN: Code duplicated, block: B:97:0x0156  */
    public static final void a(Painter painter, String str, Modifier modifier, long j2, Composer composer, int i2, int i3) {
        int i4;
        long j3;
        long j4;
        Modifier modifierJ;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "Icon-ww6aTOc");
        }
        GapComposer gapComposerH = composer.h(-2142239481);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(painter) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i5 = i3 & 4;
        if (i5 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            j3 = j2;
            i4 |= ((i3 & 8) == 0 && gapComposerH.e(j3)) ? 2048 : 1024;
        } else {
            j3 = j2;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i5 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Icon-ww6aTOc");
                }
                if ((i3 & 8) != 0) {
                    j3 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    i4 &= -7169;
                }
            } else {
                gapComposerH.D();
                if ((i3 & 8) != 0) {
                    i4 &= -7169;
                }
            }
            int i6 = i4;
            j4 = j3;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = (((i6 & 7168) ^ 3072) > 2048 && gapComposerH.e(j4)) || (i6 & 3072) == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                Color.f8866b.getClass();
                objX = Color.c(j4, Color.f8871i) ? null : ColorFilter.Companion.a(ColorFilter.f8873b, j4);
                gapComposerH.q(objX);
            }
            ColorFilter colorFilter = (ColorFilter) objX;
            if (str != null) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -536990979, "Icon-ww6aTOc");
                boolean z2 = (i6 & 112) == 32;
                Object objX2 = gapComposerH.x();
                if (z2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new lt(str, 7);
                    gapComposerH.q(objX2);
                }
                modifierJ = SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX2);
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, -536832197, false, "Icon-ww6aTOc");
            }
            Function1 function1 = InspectableValueKt.f10100a;
            long jG = painter.getR();
            Size.f8820b.getClass();
            if (Size.a(jG, Size.f8821c)) {
                modifier2 = f7002a;
            } else {
                long jG2 = painter.getR();
                if (Float.isInfinite(Float.intBitsToFloat((int) (jG2 >> 32))) && Float.isInfinite(Float.intBitsToFloat((int) (jG2 & BodyPartID.bodyIdMax)))) {
                    modifier2 = f7002a;
                } else {
                    modifier2 = Modifier.Companion.f8607b;
                }
            }
            Modifier modifierO = dTFunctionNameModifier.o(modifier2);
            ContentScale.f9447a.getClass();
            BoxKt.a(PainterModifierKt.a(modifierO, painter, null, ContentScale.Companion.f9450c, Call.Parameters.DEFAULT_CAMERA_ZOOM, colorFilter, 22).o(modifierJ), gapComposerH, 0);
        } else {
            gapComposerH.D();
            j4 = j3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c20(painter, str, dTFunctionNameModifier, j4, i2, i3, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:35:0x005b  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:56:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
    public static final void b(ImageVector imageVector, String str, Modifier modifier, long j2, Composer composer, int i2, int i3) {
        int i4;
        long j3;
        int i5;
        boolean z;
        Modifier modifier2;
        long j4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier modifierE = modifier != null ? defpackage.a.e(modifier, "Icon-ww6aTOc") : modifier;
        GapComposer gapComposerH = composer.h(-126890956);
        int i6 = i2 | (gapComposerH.K(imageVector) ? 4 : 2);
        if ((i2 & 48) == 0) {
            i6 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i7 = i3 & 4;
        if (i7 != 0) {
            i4 = i6 | KyberEngine.KyberPolyBytes;
        } else {
            i4 = i6 | (gapComposerH.K(modifierE) ? 256 : 128);
        }
        if ((i3 & 8) == 0) {
            j3 = j2;
            int i8 = gapComposerH.e(j3) ? 2048 : 1024;
            i5 = i4 | i8;
            if ((i5 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i7 != 0) {
                        modifierE = new DTFunctionNameModifier("Icon-ww6aTOc");
                    }
                    if ((i3 & 8) != 0) {
                        j3 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        i5 &= -7169;
                    }
                } else {
                    gapComposerH.D();
                    if ((i3 & 8) != 0) {
                        i5 &= -7169;
                    }
                }
                long j5 = j3;
                Modifier modifier3 = modifierE;
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                a(VectorPainterKt.b(imageVector, gapComposerH), str, modifier3, j5, gapComposerH, (i5 & 112) | 8 | (i5 & 896) | (i5 & 7168), 0);
                modifier2 = modifier3;
                j4 = j5;
            } else {
                gapComposerH.D();
                modifier2 = modifierE;
                j4 = j3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c20(imageVector, str, modifier2, j4, i2, i3, 1);
            }
        }
        j3 = j2;
        i5 = i4 | i8;
        if ((i5 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i7 != 0) {
                    modifierE = new DTFunctionNameModifier("Icon-ww6aTOc");
                }
                if ((i3 & 8) != 0) {
                    j3 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    i5 &= -7169;
                }
            } else {
                if (i7 != 0) {
                    modifierE = new DTFunctionNameModifier("Icon-ww6aTOc");
                }
                if ((i3 & 8) != 0) {
                    j3 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    i5 &= -7169;
                }
            }
            long j6 = j3;
            Modifier modifier4 = modifierE;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            a(VectorPainterKt.b(imageVector, gapComposerH), str, modifier4, j6, gapComposerH, (i5 & 112) | 8 | (i5 & 896) | (i5 & 7168), 0);
            modifier2 = modifier4;
            j4 = j6;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
            j4 = j3;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c20(imageVector, str, modifier2, j4, i2, i3, 1);
        }
    }
}
