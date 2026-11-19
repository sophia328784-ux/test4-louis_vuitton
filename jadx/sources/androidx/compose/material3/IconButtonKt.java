package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.material3.internal.ChildParentSemanticsKt;
import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.material3.tokens.StandardIconButtonTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.DpSize;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.b20;
import defpackage.p1;
import defpackage.rp;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class IconButtonKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0175  */
    /* JADX WARN: Code duplicated, block: B:103:0x0182  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0061  */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0072  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:55:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x0099  */
    /* JADX WARN: Code duplicated, block: B:60:0x009f  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00af  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:82:0x00df A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:91:0x010a  */
    /* JADX WARN: Code duplicated, block: B:92:0x010f  */
    /* JADX WARN: Code duplicated, block: B:94:0x012b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0134  */
    /* JADX WARN: Code duplicated, block: B:98:0x0144  */
    public static final void a(Function0 function0, Modifier modifier, boolean z, IconButtonColors iconButtonColors, Shape shape, Function2 function2, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        IconButtonColors iconButtonColors2;
        int i5;
        Shape shapeA;
        boolean z3;
        Modifier modifier2;
        boolean z4;
        IconButtonColors iconButtonColors3;
        Shape shape2;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i6;
        boolean z5;
        IconButtonColors iconButtonColorsA;
        boolean z6;
        IconButtonColors iconButtonColors4;
        Modifier modifier3;
        long j2;
        int i7;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "IconButton");
        }
        GapComposer gapComposerH = composer.h(1413012038);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i8 = i3 & 2;
        if (i8 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 32 : 16;
        }
        int i9 = i3 & 4;
        if (i9 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if ((i3 & 8) == 0) {
                    iconButtonColors2 = iconButtonColors;
                    int i10 = gapComposerH.K(iconButtonColors2) ? 2048 : 1024;
                    i4 |= i10;
                } else {
                    iconButtonColors2 = iconButtonColors;
                }
                i4 |= i10;
            } else {
                iconButtonColors2 = iconButtonColors;
            }
            i5 = i4 | 24576;
            if ((196608 & i2) == 0) {
                if ((i3 & 32) == 0) {
                    shapeA = shape;
                    int i11 = gapComposerH.K(shapeA) ? 131072 : 65536;
                    i5 |= i11;
                } else {
                    shapeA = shape;
                }
                i5 |= i11;
            } else {
                shapeA = shape;
            }
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function2)) {
                    i7 = 1048576;
                } else {
                    i7 = 524288;
                }
                i5 |= i7;
            }
            if ((599187 & i5) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                gapComposerH.y0();
                i6 = -458753;
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i8 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("IconButton");
                    }
                    z5 = i9 == 0 ? z2 : true;
                    if ((i3 & 8) != 0) {
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        j2 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                        iconButtonColorsA = IconButtonDefaults.a(MaterialTheme.a(gapComposerH), j2);
                        if (!Color.c(iconButtonColorsA.f6998b, j2)) {
                            iconButtonColorsA = iconButtonColorsA.a(iconButtonColorsA.f6997a, j2, iconButtonColorsA.f6999c, Color.b(StandardIconButtonTokens.f7875a, j2));
                        }
                        i5 &= -7169;
                    } else {
                        i6 = -458753;
                        z5 = z5;
                        iconButtonColorsA = iconButtonColors2;
                    }
                    if ((i3 & 32) != 0) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        i5 &= i6;
                        z6 = z5;
                        modifier3 = dTFunctionNameModifier;
                        shapeA = ShapesKt.a(SmallIconButtonTokens.f7863b, gapComposerH);
                        iconButtonColors4 = iconButtonColorsA;
                    } else {
                        z6 = z5;
                        iconButtonColors4 = iconButtonColorsA;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    int i12 = i5 << 3;
                    b(modifier3, function0, z6, shapeA, iconButtonColors4, function2, gapComposerH, ((i5 >> 3) & 14) | (i12 & 112) | (i5 & 896) | ((i5 >> 6) & 7168) | (57344 & i12) | (i12 & ImageMetadata.JPEG_GPS_COORDINATES) | (3670016 & i5));
                    modifier2 = modifier3;
                    z4 = z6;
                    shape2 = shapeA;
                    iconButtonColors3 = iconButtonColors4;
                } else {
                    gapComposerH.D();
                    if ((i3 & 8) != 0) {
                        i5 &= -7169;
                    }
                    if ((i3 & 32) != 0) {
                        i5 &= -458753;
                    }
                    z6 = z2;
                    iconButtonColors4 = iconButtonColors2;
                }
                modifier3 = dTFunctionNameModifier;
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                int i13 = i5 << 3;
                b(modifier3, function0, z6, shapeA, iconButtonColors4, function2, gapComposerH, ((i5 >> 3) & 14) | (i13 & 112) | (i5 & 896) | ((i5 >> 6) & 7168) | (57344 & i13) | (i13 & ImageMetadata.JPEG_GPS_COORDINATES) | (3670016 & i5));
                modifier2 = modifier3;
                z4 = z6;
                shape2 = shapeA;
                iconButtonColors3 = iconButtonColors4;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                z4 = z2;
                iconButtonColors3 = iconButtonColors2;
                shape2 = shapeA;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new rp(function0, modifier2, z4, iconButtonColors3, shape2, function2, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            if ((i3 & 8) == 0) {
                iconButtonColors2 = iconButtonColors;
                if (gapComposerH.K(iconButtonColors2)) {
                }
                i4 |= i10;
            } else {
                iconButtonColors2 = iconButtonColors;
            }
            i4 |= i10;
        } else {
            iconButtonColors2 = iconButtonColors;
        }
        i5 = i4 | 24576;
        if ((196608 & i2) == 0) {
            if ((i3 & 32) == 0) {
                shapeA = shape;
                if (gapComposerH.K(shapeA)) {
                }
                i5 |= i11;
            } else {
                shapeA = shape;
            }
            i5 |= i11;
        } else {
            shapeA = shape;
        }
        if ((1572864 & i2) == 0) {
            if (gapComposerH.y(function2)) {
                i7 = 1048576;
            } else {
                i7 = 524288;
            }
            i5 |= i7;
        }
        if ((599187 & i5) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i5 & 1, z3)) {
            gapComposerH.y0();
            i6 = -458753;
            if ((i2 & 1) != 0) {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("IconButton");
                }
                if (i9 == 0) {
                }
                if ((i3 & 8) != 0) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    j2 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    iconButtonColorsA = IconButtonDefaults.a(MaterialTheme.a(gapComposerH), j2);
                    if (!Color.c(iconButtonColorsA.f6998b, j2)) {
                        iconButtonColorsA = iconButtonColorsA.a(iconButtonColorsA.f6997a, j2, iconButtonColorsA.f6999c, Color.b(StandardIconButtonTokens.f7875a, j2));
                    }
                    i5 &= -7169;
                } else {
                    i6 = -458753;
                    z5 = z5;
                    iconButtonColorsA = iconButtonColors2;
                }
                if ((i3 & 32) != 0) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    i5 &= i6;
                    z6 = z5;
                    modifier3 = dTFunctionNameModifier;
                    shapeA = ShapesKt.a(SmallIconButtonTokens.f7863b, gapComposerH);
                    iconButtonColors4 = iconButtonColorsA;
                } else {
                    z6 = z5;
                    iconButtonColors4 = iconButtonColorsA;
                    modifier3 = dTFunctionNameModifier;
                }
            } else {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("IconButton");
                }
                if (i9 == 0) {
                }
                if ((i3 & 8) != 0) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    j2 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                    iconButtonColorsA = IconButtonDefaults.a(MaterialTheme.a(gapComposerH), j2);
                    if (!Color.c(iconButtonColorsA.f6998b, j2)) {
                        iconButtonColorsA = iconButtonColorsA.a(iconButtonColorsA.f6997a, j2, iconButtonColorsA.f6999c, Color.b(StandardIconButtonTokens.f7875a, j2));
                    }
                    i5 &= -7169;
                } else {
                    i6 = -458753;
                    z5 = z5;
                    iconButtonColorsA = iconButtonColors2;
                }
                if ((i3 & 32) != 0) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    i5 &= i6;
                    z6 = z5;
                    modifier3 = dTFunctionNameModifier;
                    shapeA = ShapesKt.a(SmallIconButtonTokens.f7863b, gapComposerH);
                    iconButtonColors4 = iconButtonColorsA;
                } else {
                    z6 = z5;
                    iconButtonColors4 = iconButtonColorsA;
                    modifier3 = dTFunctionNameModifier;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
            int i14 = i5 << 3;
            b(modifier3, function0, z6, shapeA, iconButtonColors4, function2, gapComposerH, ((i5 >> 3) & 14) | (i14 & 112) | (i5 & 896) | ((i5 >> 6) & 7168) | (57344 & i14) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES) | (3670016 & i5));
            modifier2 = modifier3;
            z4 = z6;
            shape2 = shapeA;
            iconButtonColors3 = iconButtonColors4;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            z4 = z2;
            iconButtonColors3 = iconButtonColors2;
            shape2 = shapeA;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rp(function0, modifier2, z4, iconButtonColors3, shape2, function2, i2, i3);
        }
    }

    public static final void b(Modifier modifier, Function0 function0, boolean z, Shape shape, IconButtonColors iconButtonColors, Function2 function2, Composer composer, int i2) {
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "IconButtonImpl");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1134296466);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(shape) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(iconButtonColors) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(null) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(977045485);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            gapComposerH.Z(false);
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
            Modifier modifierO = modifier2.o(MinimumInteractiveModifier.f7044b);
            long jC = IconButtonDefaults.c();
            FillElement fillElement = SizeKt.f5050a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.p(modifierO, DpSize.b(jC), DpSize.a(jC)), shape), z ? iconButtonColors.f6997a : iconButtonColors.f6999c, shape);
            Role.f10289b.getClass();
            Modifier modifierA = ChildParentSemanticsKt.a(ClickableKt.b(modifierB, mutableInteractionSource, RippleKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, false), z, null, new Role(0), function0, 8));
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function3 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function3);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            CompositionLocalKt.a(defpackage.a.d(z ? iconButtonColors.f6998b : iconButtonColors.d, ContentColorKt.f6730a), function2, gapComposerH, ((i4 >> 15) & 112) | 8);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier2, function0, z, shape, iconButtonColors, function2, i2);
        }
    }

    public static final void c(boolean z, Function1 function1, Modifier modifier, boolean z2, IconToggleButtonColors iconToggleButtonColors, Shape shape, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        IconToggleButtonColors iconToggleButtonColors2;
        Shape shape2;
        IconToggleButtonColors iconToggleButtonColors3;
        Shape shapeA;
        int i4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "IconToggleButton");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1031402037);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= 8192;
        }
        int i5 = 196608 | i3;
        if ((1572864 & i2) == 0) {
            i5 = 720896 | i3;
        }
        if ((12582912 & i2) == 0) {
            i5 |= gapComposerH.y(composableLambdaImpl) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i5 & 1, (4793491 & i5) != 4793490)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                gapComposerH.L(-1355771567);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                long j2 = ((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a;
                ColorScheme colorSchemeA = MaterialTheme.a(gapComposerH);
                iconToggleButtonColors3 = colorSchemeA.c0;
                if (iconToggleButtonColors3 == null) {
                    Color.f8866b.getClass();
                    long j3 = Color.f8870h;
                    iconToggleButtonColors3 = new IconToggleButtonColors(j3, j2, j3, Color.b(StandardIconButtonTokens.f7875a, j2), j3, ColorSchemeKt.c(colorSchemeA, StandardIconButtonTokens.f7876b), null);
                    colorSchemeA.c0 = iconToggleButtonColors3;
                }
                long j4 = iconToggleButtonColors3.f7004b;
                if (Color.c(j4, j2)) {
                    gapComposerH.Z(false);
                } else {
                    long jB = Color.b(StandardIconButtonTokens.f7875a, j2);
                    long j5 = iconToggleButtonColors3.f7003a;
                    long j6 = iconToggleButtonColors3.f7005c;
                    long j7 = iconToggleButtonColors3.f7006e;
                    long j8 = iconToggleButtonColors3.f7007f;
                    if (j2 != 16) {
                        j4 = j2;
                    }
                    IconToggleButtonColors iconToggleButtonColors4 = new IconToggleButtonColors(j5, j4, j6, jB != 16 ? jB : iconToggleButtonColors3.d, j7, j8, null);
                    gapComposerH.Z(false);
                    iconToggleButtonColors3 = iconToggleButtonColors4;
                }
                shapeA = ShapesKt.a(SmallIconButtonTokens.f7863b, gapComposerH);
                i4 = i5 & (-3727361);
            } else {
                gapComposerH.D();
                i4 = i5 & (-3727361);
                iconToggleButtonColors3 = iconToggleButtonColors;
                shapeA = shape;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            d(z, function1, modifier2, z2, iconToggleButtonColors3, shapeA, composableLambdaImpl, gapComposer, i4 & 33554430);
            iconToggleButtonColors2 = iconToggleButtonColors3;
            shape2 = shapeA;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            iconToggleButtonColors2 = iconToggleButtonColors;
            shape2 = shape;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b20(z, function1, modifier2, z2, iconToggleButtonColors2, shape2, composableLambdaImpl, i2, 1);
        }
    }

    public static final void d(boolean z, Function1 function1, Modifier modifier, boolean z2, IconToggleButtonColors iconToggleButtonColors, Shape shape, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        Function1 function2;
        long j2;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "IconToggleButtonImpl");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1724745099);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            function2 = function1;
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        } else {
            function2 = function1;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(iconToggleButtonColors) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(null) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.K(shape) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 8388608 : 4194304;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposerH.L(1187972528);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            gapComposerH.Z(false);
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
            Modifier modifierO = modifier2.o(MinimumInteractiveModifier.f7044b);
            long jC = IconButtonDefaults.c();
            FillElement fillElement = SizeKt.f5050a;
            Modifier modifierA = ClipKt.a(SizeKt.p(modifierO, DpSize.b(jC), DpSize.a(jC)), shape);
            iconToggleButtonColors.getClass();
            if (z2) {
                j2 = !z ? iconToggleButtonColors.f7003a : iconToggleButtonColors.f7006e;
            } else {
                j2 = iconToggleButtonColors.f7005c;
            }
            Modifier modifierB = BackgroundKt.b(modifierA, ((Color) SnapshotStateKt.l(new Color(j2), gapComposerH).getF10755b()).f8872a, RectangleShapeKt.f8913a);
            Role.f10289b.getClass();
            Modifier modifierA2 = ToggleableKt.a(modifierB, z, mutableInteractionSource, RippleKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, false), z2, new Role(Role.f10290c), function2);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            Function2 function3 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function3);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (z2) {
                j3 = !z ? iconToggleButtonColors.f7004b : iconToggleButtonColors.f7007f;
            } else {
                j3 = iconToggleButtonColors.d;
            }
            CompositionLocalKt.a(defpackage.a.d(((Color) SnapshotStateKt.l(new Color(j3), gapComposerH).getF10755b()).f8872a, ContentColorKt.f6730a), composableLambdaImpl, gapComposerH, ((i4 >> 18) & 112) | 8);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b20(z, function1, modifier2, z2, iconToggleButtonColors, shape, composableLambdaImpl, i2, 0);
        }
    }
}
