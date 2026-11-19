package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import com.google.ar.core.ImageMetadata;
import defpackage.u5;
import defpackage.uc;
import defpackage.vc;
import defpackage.wc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\t²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\b\u001a\u00020\u00078\n@\nX\u008a\u008e\u0002"}, d2 = {"", "cursorHandleVisible", "", "startHandleState", "endHandleState", "Landroidx/compose/ui/text/input/TextFieldValue;", "textFieldValueState", "", "lastTextValue", "foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class BasicTextFieldKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f5854a = 0;

    static {
        Dp.Companion companion = Dp.f11004c;
        DpKt.a(40.0f, 40.0f);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0132  */
    /* JADX WARN: Code duplicated, block: B:102:0x0138  */
    /* JADX WARN: Code duplicated, block: B:105:0x0141  */
    /* JADX WARN: Code duplicated, block: B:109:0x014b  */
    /* JADX WARN: Code duplicated, block: B:111:0x0153  */
    /* JADX WARN: Code duplicated, block: B:114:0x015a  */
    /* JADX WARN: Code duplicated, block: B:117:0x0163  */
    /* JADX WARN: Code duplicated, block: B:119:0x016a  */
    /* JADX WARN: Code duplicated, block: B:121:0x0170  */
    /* JADX WARN: Code duplicated, block: B:123:0x0178  */
    /* JADX WARN: Code duplicated, block: B:127:0x0182  */
    /* JADX WARN: Code duplicated, block: B:129:0x0188  */
    /* JADX WARN: Code duplicated, block: B:133:0x019c  */
    /* JADX WARN: Code duplicated, block: B:137:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:140:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:142:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:146:0x01cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:149:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:151:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:153:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:155:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:156:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:160:0x020e  */
    /* JADX WARN: Code duplicated, block: B:161:0x0211  */
    /* JADX WARN: Code duplicated, block: B:163:0x0215  */
    /* JADX WARN: Code duplicated, block: B:164:0x0218  */
    /* JADX WARN: Code duplicated, block: B:167:0x0221  */
    /* JADX WARN: Code duplicated, block: B:168:0x0224  */
    /* JADX WARN: Code duplicated, block: B:171:0x022e  */
    /* JADX WARN: Code duplicated, block: B:174:0x0238 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:175:0x023a  */
    /* JADX WARN: Code duplicated, block: B:177:0x0293  */
    /* JADX WARN: Code duplicated, block: B:180:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:182:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x007b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0083  */
    /* JADX WARN: Code duplicated, block: B:43:0x0086  */
    /* JADX WARN: Code duplicated, block: B:45:0x008b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0099  */
    /* JADX WARN: Code duplicated, block: B:50:0x009f  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00da  */
    /* JADX WARN: Code duplicated, block: B:72:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:83:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:85:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x0107  */
    /* JADX WARN: Code duplicated, block: B:88:0x010c  */
    /* JADX WARN: Code duplicated, block: B:91:0x0118  */
    /* JADX WARN: Code duplicated, block: B:93:0x011e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0121  */
    /* JADX WARN: Code duplicated, block: B:98:0x012b  */
    public static final void a(final TextFieldValue textFieldValue, final Function1 function1, Modifier modifier, boolean z, final boolean z2, final TextStyle textStyle, final KeyboardOptions keyboardOptions, final KeyboardActions keyboardActions, final boolean z3, final int i2, final int i3, final VisualTransformation visualTransformation, Function1 function2, final MutableInteractionSource mutableInteractionSource, Brush brush, final Function3 function3, Composer composer, final int i4, final int i5, final int i6) {
        int i7;
        boolean z4;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z5;
        GapComposer gapComposer;
        Modifier modifier2;
        final Function1 function4;
        final Brush brush2;
        final boolean z6;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i15;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function5;
        Brush solidColor;
        Function1 function6;
        Brush brush3;
        Object objX;
        int i16;
        int i17;
        boolean z7;
        boolean z8;
        Object objX2;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BasicTextField");
        }
        GapComposer gapComposerH = composer.h(-971111025);
        if ((i4 & 6) == 0) {
            i7 = (gapComposerH.K(textFieldValue) ? 4 : 2) | i4;
        } else {
            i7 = i4;
        }
        if ((i4 & 48) == 0) {
            i7 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        int i26 = i6 & 8;
        if (i26 == 0) {
            if ((i4 & 3072) == 0) {
                z4 = z;
                i7 |= gapComposerH.b(z4) ? 2048 : 1024;
            }
            if ((i4 & 24576) != 0) {
                if (gapComposerH.b(z2)) {
                    i25 = 16384;
                } else {
                    i25 = 8192;
                }
                i7 |= i25;
            }
            if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(textStyle)) {
                    i24 = 131072;
                } else {
                    i24 = 65536;
                }
                i7 |= i24;
            }
            if ((i4 & 1572864) == 0) {
                if (gapComposerH.K(keyboardOptions)) {
                    i23 = 1048576;
                } else {
                    i23 = 524288;
                }
                i7 |= i23;
            }
            if ((i4 & 12582912) == 0) {
                if (gapComposerH.K(keyboardActions)) {
                    i22 = 8388608;
                } else {
                    i22 = 4194304;
                }
                i7 |= i22;
            }
            if ((i4 & 100663296) == 0) {
                if (gapComposerH.b(z3)) {
                    i21 = 67108864;
                } else {
                    i21 = 33554432;
                }
                i7 |= i21;
            }
            if ((i4 & 805306368) == 0) {
                if (gapComposerH.d(i2)) {
                    i20 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i20 = 268435456;
                }
                i7 |= i20;
            }
            if ((i5 & 6) == 0) {
                if (gapComposerH.d(i3)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i8 = i5 | i19;
            } else {
                i8 = i5;
            }
            if ((i5 & 48) == 0) {
                if (gapComposerH.K(visualTransformation)) {
                    i18 = 32;
                } else {
                    i18 = 16;
                }
                i8 |= i18;
            }
            i9 = i8;
            i10 = i6 & 4096;
            if (i10 != 0) {
                i11 = i9;
                if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
                    i11 |= gapComposerH.y(function2) ? 256 : 128;
                }
                if ((i5 & 3072) != 0) {
                    i11 |= gapComposerH.K(mutableInteractionSource) ? 2048 : 1024;
                }
                i12 = i11;
                i13 = i6 & 16384;
                if (i13 != 0) {
                    i14 = i12;
                    if ((i5 & 24576) == 0) {
                        i14 |= gapComposerH.K(brush) ? 16384 : 8192;
                    }
                    if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                        i14 |= gapComposerH.y(function3) ? 131072 : 65536;
                    }
                    if ((i7 & 306783379) == 306783378 || (i14 & 74899) != 74898) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (gapComposerH.p(i7 & 1, z5)) {
                        gapComposerH.y0();
                        i15 = i4 & 1;
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i15 != 0 || gapComposerH.h0()) {
                            if (i26 != 0) {
                                z4 = true;
                            }
                            if (i10 != 0) {
                                objX = gapComposerH.x();
                                if (objX == composer$Companion$Empty$1) {
                                    objX = new u5(19);
                                    gapComposerH.q(objX);
                                }
                                function5 = (Function1) objX;
                            } else {
                                function5 = function2;
                            }
                            if (i13 != 0) {
                                Color.f8866b.getClass();
                                solidColor = new SolidColor(Color.f8867c, null);
                            } else {
                                solidColor = brush;
                            }
                            function6 = function5;
                            brush3 = solidColor;
                        } else {
                            gapComposerH.D();
                            function6 = function2;
                            brush3 = brush;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        ImeOptions imeOptionsB = keyboardOptions.b(z3);
                        boolean z9 = !z3;
                        boolean z10 = z4;
                        if (z3) {
                            i16 = 1;
                        } else {
                            i16 = i3;
                        }
                        if (z3) {
                            i17 = 1;
                        } else {
                            i17 = i2;
                        }
                        Function1 function7 = function6;
                        if ((i7 & 14) == 4) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        z8 = z7 | ((i7 & 112) == 32);
                        objX2 = gapComposerH.x();
                        if (z8 || objX2 == composer$Companion$Empty$1) {
                            objX2 = new defpackage.k(textFieldValue, function1, 9);
                            gapComposerH.q(objX2);
                        }
                        int i27 = i14 << 9;
                        gapComposer = gapComposerH;
                        modifier2 = modifierE;
                        CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function7, mutableInteractionSource, brush3, z9, i17, i16, imeOptionsB, keyboardActions, z10, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i27 & 57344) | (i27 & ImageMetadata.JPEG_GPS_COORDINATES) | (i27 & 3670016) | (i27 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                        brush2 = brush3;
                        z6 = z10;
                        function4 = function7;
                    } else {
                        gapComposer = gapComposerH;
                        modifier2 = modifierE;
                        gapComposer.D();
                        function4 = function2;
                        brush2 = brush;
                        z6 = z4;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Modifier modifier3 = modifier2;
                        recomposeScopeImplB0.d = new Function2() { // from class: xc
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i4 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i5);
                                BasicTextFieldKt.a(textFieldValue, function1, modifier3, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i12 | 24576;
                if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(function3) ? 131072 : 65536;
                }
                if ((i7 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (gapComposerH.p(i7 & 1, z5)) {
                    gapComposerH.y0();
                    i15 = i4 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i15 != 0) {
                        if (i26 != 0) {
                            z4 = true;
                        }
                        if (i10 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new u5(19);
                                gapComposerH.q(objX);
                            }
                            function5 = (Function1) objX;
                        } else {
                            function5 = function2;
                        }
                        if (i13 != 0) {
                            Color.f8866b.getClass();
                            solidColor = new SolidColor(Color.f8867c, null);
                        } else {
                            solidColor = brush;
                        }
                        function6 = function5;
                        brush3 = solidColor;
                    } else {
                        if (i26 != 0) {
                            z4 = true;
                        }
                        if (i10 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new u5(19);
                                gapComposerH.q(objX);
                            }
                            function5 = (Function1) objX;
                        } else {
                            function5 = function2;
                        }
                        if (i13 != 0) {
                            Color.f8866b.getClass();
                            solidColor = new SolidColor(Color.f8867c, null);
                        } else {
                            solidColor = brush;
                        }
                        function6 = function5;
                        brush3 = solidColor;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    ImeOptions imeOptionsB2 = keyboardOptions.b(z3);
                    boolean z11 = !z3;
                    boolean z12 = z4;
                    if (z3) {
                        i16 = 1;
                    } else {
                        i16 = i3;
                    }
                    if (z3) {
                        i17 = 1;
                    } else {
                        i17 = i2;
                    }
                    Function1 function8 = function6;
                    if ((i7 & 14) == 4) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i7 & 112) == 32);
                    objX2 = gapComposerH.x();
                    if (z8) {
                        objX2 = new defpackage.k(textFieldValue, function1, 9);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new defpackage.k(textFieldValue, function1, 9);
                        gapComposerH.q(objX2);
                    }
                    int i28 = i14 << 9;
                    gapComposer = gapComposerH;
                    modifier2 = modifierE;
                    CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function8, mutableInteractionSource, brush3, z11, i17, i16, imeOptionsB2, keyboardActions, z12, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i28 & 57344) | (i28 & ImageMetadata.JPEG_GPS_COORDINATES) | (i28 & 3670016) | (i28 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                    brush2 = brush3;
                    z6 = z12;
                    function4 = function8;
                } else {
                    gapComposer = gapComposerH;
                    modifier2 = modifierE;
                    gapComposer.D();
                    function4 = function2;
                    brush2 = brush;
                    z6 = z4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier4 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: xc
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            BasicTextFieldKt.a(textFieldValue, function1, modifier4, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 = i9 | KyberEngine.KyberPolyBytes;
            if ((i5 & 3072) != 0) {
                i11 |= gapComposerH.K(mutableInteractionSource) ? 2048 : 1024;
            }
            i12 = i11;
            i13 = i6 & 16384;
            if (i13 != 0) {
                i14 = i12;
                if ((i5 & 24576) == 0) {
                    i14 |= gapComposerH.K(brush) ? 16384 : 8192;
                }
                if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(function3) ? 131072 : 65536;
                }
                if ((i7 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (gapComposerH.p(i7 & 1, z5)) {
                    gapComposerH.y0();
                    i15 = i4 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i15 != 0) {
                        if (i26 != 0) {
                            z4 = true;
                        }
                        if (i10 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new u5(19);
                                gapComposerH.q(objX);
                            }
                            function5 = (Function1) objX;
                        } else {
                            function5 = function2;
                        }
                        if (i13 != 0) {
                            Color.f8866b.getClass();
                            solidColor = new SolidColor(Color.f8867c, null);
                        } else {
                            solidColor = brush;
                        }
                        function6 = function5;
                        brush3 = solidColor;
                    } else {
                        if (i26 != 0) {
                            z4 = true;
                        }
                        if (i10 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new u5(19);
                                gapComposerH.q(objX);
                            }
                            function5 = (Function1) objX;
                        } else {
                            function5 = function2;
                        }
                        if (i13 != 0) {
                            Color.f8866b.getClass();
                            solidColor = new SolidColor(Color.f8867c, null);
                        } else {
                            solidColor = brush;
                        }
                        function6 = function5;
                        brush3 = solidColor;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    ImeOptions imeOptionsB3 = keyboardOptions.b(z3);
                    boolean z13 = !z3;
                    boolean z14 = z4;
                    if (z3) {
                        i16 = 1;
                    } else {
                        i16 = i3;
                    }
                    if (z3) {
                        i17 = 1;
                    } else {
                        i17 = i2;
                    }
                    Function1 function9 = function6;
                    if ((i7 & 14) == 4) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i7 & 112) == 32);
                    objX2 = gapComposerH.x();
                    if (z8) {
                        objX2 = new defpackage.k(textFieldValue, function1, 9);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new defpackage.k(textFieldValue, function1, 9);
                        gapComposerH.q(objX2);
                    }
                    int i29 = i14 << 9;
                    gapComposer = gapComposerH;
                    modifier2 = modifierE;
                    CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function9, mutableInteractionSource, brush3, z13, i17, i16, imeOptionsB3, keyboardActions, z14, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i29 & 57344) | (i29 & ImageMetadata.JPEG_GPS_COORDINATES) | (i29 & 3670016) | (i29 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                    brush2 = brush3;
                    z6 = z14;
                    function4 = function9;
                } else {
                    gapComposer = gapComposerH;
                    modifier2 = modifierE;
                    gapComposer.D();
                    function4 = function2;
                    brush2 = brush;
                    z6 = z4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier5 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: xc
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            BasicTextFieldKt.a(textFieldValue, function1, modifier5, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i12 | 24576;
            if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                i14 |= gapComposerH.y(function3) ? 131072 : 65536;
            }
            if ((i7 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (gapComposerH.p(i7 & 1, z5)) {
                gapComposerH.y0();
                i15 = i4 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i15 != 0) {
                    if (i26 != 0) {
                        z4 = true;
                    }
                    if (i10 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new u5(19);
                            gapComposerH.q(objX);
                        }
                        function5 = (Function1) objX;
                    } else {
                        function5 = function2;
                    }
                    if (i13 != 0) {
                        Color.f8866b.getClass();
                        solidColor = new SolidColor(Color.f8867c, null);
                    } else {
                        solidColor = brush;
                    }
                    function6 = function5;
                    brush3 = solidColor;
                } else {
                    if (i26 != 0) {
                        z4 = true;
                    }
                    if (i10 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new u5(19);
                            gapComposerH.q(objX);
                        }
                        function5 = (Function1) objX;
                    } else {
                        function5 = function2;
                    }
                    if (i13 != 0) {
                        Color.f8866b.getClass();
                        solidColor = new SolidColor(Color.f8867c, null);
                    } else {
                        solidColor = brush;
                    }
                    function6 = function5;
                    brush3 = solidColor;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                ImeOptions imeOptionsB4 = keyboardOptions.b(z3);
                boolean z15 = !z3;
                boolean z16 = z4;
                if (z3) {
                    i16 = 1;
                } else {
                    i16 = i3;
                }
                if (z3) {
                    i17 = 1;
                } else {
                    i17 = i2;
                }
                Function1 function10 = function6;
                if ((i7 & 14) == 4) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z7 | ((i7 & 112) == 32);
                objX2 = gapComposerH.x();
                if (z8) {
                    objX2 = new defpackage.k(textFieldValue, function1, 9);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new defpackage.k(textFieldValue, function1, 9);
                    gapComposerH.q(objX2);
                }
                int i210 = i14 << 9;
                gapComposer = gapComposerH;
                modifier2 = modifierE;
                CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function10, mutableInteractionSource, brush3, z15, i17, i16, imeOptionsB4, keyboardActions, z16, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i210 & 57344) | (i210 & ImageMetadata.JPEG_GPS_COORDINATES) | (i210 & 3670016) | (i210 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                brush2 = brush3;
                z6 = z16;
                function4 = function10;
            } else {
                gapComposer = gapComposerH;
                modifier2 = modifierE;
                gapComposer.D();
                function4 = function2;
                brush2 = brush;
                z6 = z4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier6 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: xc
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        BasicTextFieldKt.a(textFieldValue, function1, modifier6, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 3072;
        z4 = z;
        if ((i4 & 24576) != 0) {
            if (gapComposerH.b(z2)) {
                i25 = 16384;
            } else {
                i25 = 8192;
            }
            i7 |= i25;
        }
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.K(textStyle)) {
                i24 = 131072;
            } else {
                i24 = 65536;
            }
            i7 |= i24;
        }
        if ((i4 & 1572864) == 0) {
            if (gapComposerH.K(keyboardOptions)) {
                i23 = 1048576;
            } else {
                i23 = 524288;
            }
            i7 |= i23;
        }
        if ((i4 & 12582912) == 0) {
            if (gapComposerH.K(keyboardActions)) {
                i22 = 8388608;
            } else {
                i22 = 4194304;
            }
            i7 |= i22;
        }
        if ((i4 & 100663296) == 0) {
            if (gapComposerH.b(z3)) {
                i21 = 67108864;
            } else {
                i21 = 33554432;
            }
            i7 |= i21;
        }
        if ((i4 & 805306368) == 0) {
            if (gapComposerH.d(i2)) {
                i20 = PKIFailureInfo.duplicateCertReq;
            } else {
                i20 = 268435456;
            }
            i7 |= i20;
        }
        if ((i5 & 6) == 0) {
            if (gapComposerH.d(i3)) {
                i19 = 4;
            } else {
                i19 = 2;
            }
            i8 = i5 | i19;
        } else {
            i8 = i5;
        }
        if ((i5 & 48) == 0) {
            if (gapComposerH.K(visualTransformation)) {
                i18 = 32;
            } else {
                i18 = 16;
            }
            i8 |= i18;
        }
        i9 = i8;
        i10 = i6 & 4096;
        if (i10 != 0) {
            i11 = i9;
            if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
                i11 |= gapComposerH.y(function2) ? 256 : 128;
            }
            if ((i5 & 3072) != 0) {
                i11 |= gapComposerH.K(mutableInteractionSource) ? 2048 : 1024;
            }
            i12 = i11;
            i13 = i6 & 16384;
            if (i13 != 0) {
                i14 = i12;
                if ((i5 & 24576) == 0) {
                    i14 |= gapComposerH.K(brush) ? 16384 : 8192;
                }
                if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                    i14 |= gapComposerH.y(function3) ? 131072 : 65536;
                }
                if ((i7 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (gapComposerH.p(i7 & 1, z5)) {
                    gapComposerH.y0();
                    i15 = i4 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i15 != 0) {
                        if (i26 != 0) {
                            z4 = true;
                        }
                        if (i10 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new u5(19);
                                gapComposerH.q(objX);
                            }
                            function5 = (Function1) objX;
                        } else {
                            function5 = function2;
                        }
                        if (i13 != 0) {
                            Color.f8866b.getClass();
                            solidColor = new SolidColor(Color.f8867c, null);
                        } else {
                            solidColor = brush;
                        }
                        function6 = function5;
                        brush3 = solidColor;
                    } else {
                        if (i26 != 0) {
                            z4 = true;
                        }
                        if (i10 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new u5(19);
                                gapComposerH.q(objX);
                            }
                            function5 = (Function1) objX;
                        } else {
                            function5 = function2;
                        }
                        if (i13 != 0) {
                            Color.f8866b.getClass();
                            solidColor = new SolidColor(Color.f8867c, null);
                        } else {
                            solidColor = brush;
                        }
                        function6 = function5;
                        brush3 = solidColor;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    ImeOptions imeOptionsB5 = keyboardOptions.b(z3);
                    boolean z17 = !z3;
                    boolean z18 = z4;
                    if (z3) {
                        i16 = 1;
                    } else {
                        i16 = i3;
                    }
                    if (z3) {
                        i17 = 1;
                    } else {
                        i17 = i2;
                    }
                    Function1 function11 = function6;
                    if ((i7 & 14) == 4) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i7 & 112) == 32);
                    objX2 = gapComposerH.x();
                    if (z8) {
                        objX2 = new defpackage.k(textFieldValue, function1, 9);
                        gapComposerH.q(objX2);
                    } else {
                        objX2 = new defpackage.k(textFieldValue, function1, 9);
                        gapComposerH.q(objX2);
                    }
                    int i211 = i14 << 9;
                    gapComposer = gapComposerH;
                    modifier2 = modifierE;
                    CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function11, mutableInteractionSource, brush3, z17, i17, i16, imeOptionsB5, keyboardActions, z18, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i211 & 57344) | (i211 & ImageMetadata.JPEG_GPS_COORDINATES) | (i211 & 3670016) | (i211 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                    brush2 = brush3;
                    z6 = z18;
                    function4 = function11;
                } else {
                    gapComposer = gapComposerH;
                    modifier2 = modifierE;
                    gapComposer.D();
                    function4 = function2;
                    brush2 = brush;
                    z6 = z4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier7 = modifier2;
                    recomposeScopeImplB0.d = new Function2() { // from class: xc
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            BasicTextFieldKt.a(textFieldValue, function1, modifier7, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i12 | 24576;
            if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                i14 |= gapComposerH.y(function3) ? 131072 : 65536;
            }
            if ((i7 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (gapComposerH.p(i7 & 1, z5)) {
                gapComposerH.y0();
                i15 = i4 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i15 != 0) {
                    if (i26 != 0) {
                        z4 = true;
                    }
                    if (i10 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new u5(19);
                            gapComposerH.q(objX);
                        }
                        function5 = (Function1) objX;
                    } else {
                        function5 = function2;
                    }
                    if (i13 != 0) {
                        Color.f8866b.getClass();
                        solidColor = new SolidColor(Color.f8867c, null);
                    } else {
                        solidColor = brush;
                    }
                    function6 = function5;
                    brush3 = solidColor;
                } else {
                    if (i26 != 0) {
                        z4 = true;
                    }
                    if (i10 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new u5(19);
                            gapComposerH.q(objX);
                        }
                        function5 = (Function1) objX;
                    } else {
                        function5 = function2;
                    }
                    if (i13 != 0) {
                        Color.f8866b.getClass();
                        solidColor = new SolidColor(Color.f8867c, null);
                    } else {
                        solidColor = brush;
                    }
                    function6 = function5;
                    brush3 = solidColor;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                ImeOptions imeOptionsB6 = keyboardOptions.b(z3);
                boolean z19 = !z3;
                boolean z110 = z4;
                if (z3) {
                    i16 = 1;
                } else {
                    i16 = i3;
                }
                if (z3) {
                    i17 = 1;
                } else {
                    i17 = i2;
                }
                Function1 function12 = function6;
                if ((i7 & 14) == 4) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z7 | ((i7 & 112) == 32);
                objX2 = gapComposerH.x();
                if (z8) {
                    objX2 = new defpackage.k(textFieldValue, function1, 9);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new defpackage.k(textFieldValue, function1, 9);
                    gapComposerH.q(objX2);
                }
                int i212 = i14 << 9;
                gapComposer = gapComposerH;
                modifier2 = modifierE;
                CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function12, mutableInteractionSource, brush3, z19, i17, i16, imeOptionsB6, keyboardActions, z110, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i212 & 57344) | (i212 & ImageMetadata.JPEG_GPS_COORDINATES) | (i212 & 3670016) | (i212 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                brush2 = brush3;
                z6 = z110;
                function4 = function12;
            } else {
                gapComposer = gapComposerH;
                modifier2 = modifierE;
                gapComposer.D();
                function4 = function2;
                brush2 = brush;
                z6 = z4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier8 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: xc
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        BasicTextFieldKt.a(textFieldValue, function1, modifier8, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 = i9 | KyberEngine.KyberPolyBytes;
        if ((i5 & 3072) != 0) {
            i11 |= gapComposerH.K(mutableInteractionSource) ? 2048 : 1024;
        }
        i12 = i11;
        i13 = i6 & 16384;
        if (i13 != 0) {
            i14 = i12;
            if ((i5 & 24576) == 0) {
                i14 |= gapComposerH.K(brush) ? 16384 : 8192;
            }
            if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
                i14 |= gapComposerH.y(function3) ? 131072 : 65536;
            }
            if ((i7 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (gapComposerH.p(i7 & 1, z5)) {
                gapComposerH.y0();
                i15 = i4 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i15 != 0) {
                    if (i26 != 0) {
                        z4 = true;
                    }
                    if (i10 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new u5(19);
                            gapComposerH.q(objX);
                        }
                        function5 = (Function1) objX;
                    } else {
                        function5 = function2;
                    }
                    if (i13 != 0) {
                        Color.f8866b.getClass();
                        solidColor = new SolidColor(Color.f8867c, null);
                    } else {
                        solidColor = brush;
                    }
                    function6 = function5;
                    brush3 = solidColor;
                } else {
                    if (i26 != 0) {
                        z4 = true;
                    }
                    if (i10 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new u5(19);
                            gapComposerH.q(objX);
                        }
                        function5 = (Function1) objX;
                    } else {
                        function5 = function2;
                    }
                    if (i13 != 0) {
                        Color.f8866b.getClass();
                        solidColor = new SolidColor(Color.f8867c, null);
                    } else {
                        solidColor = brush;
                    }
                    function6 = function5;
                    brush3 = solidColor;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                ImeOptions imeOptionsB7 = keyboardOptions.b(z3);
                boolean z111 = !z3;
                boolean z112 = z4;
                if (z3) {
                    i16 = 1;
                } else {
                    i16 = i3;
                }
                if (z3) {
                    i17 = 1;
                } else {
                    i17 = i2;
                }
                Function1 function13 = function6;
                if ((i7 & 14) == 4) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z7 | ((i7 & 112) == 32);
                objX2 = gapComposerH.x();
                if (z8) {
                    objX2 = new defpackage.k(textFieldValue, function1, 9);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new defpackage.k(textFieldValue, function1, 9);
                    gapComposerH.q(objX2);
                }
                int i213 = i14 << 9;
                gapComposer = gapComposerH;
                modifier2 = modifierE;
                CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function13, mutableInteractionSource, brush3, z111, i17, i16, imeOptionsB7, keyboardActions, z112, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i213 & 57344) | (i213 & ImageMetadata.JPEG_GPS_COORDINATES) | (i213 & 3670016) | (i213 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
                brush2 = brush3;
                z6 = z112;
                function4 = function13;
            } else {
                gapComposer = gapComposerH;
                modifier2 = modifierE;
                gapComposer.D();
                function4 = function2;
                brush2 = brush;
                z6 = z4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier9 = modifier2;
                recomposeScopeImplB0.d = new Function2() { // from class: xc
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        BasicTextFieldKt.a(textFieldValue, function1, modifier9, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i14 = i12 | 24576;
        if ((i5 & ImageMetadata.EDGE_MODE) == 0) {
            i14 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((i7 & 306783379) == 306783378) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (gapComposerH.p(i7 & 1, z5)) {
            gapComposerH.y0();
            i15 = i4 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i15 != 0) {
                if (i26 != 0) {
                    z4 = true;
                }
                if (i10 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new u5(19);
                        gapComposerH.q(objX);
                    }
                    function5 = (Function1) objX;
                } else {
                    function5 = function2;
                }
                if (i13 != 0) {
                    Color.f8866b.getClass();
                    solidColor = new SolidColor(Color.f8867c, null);
                } else {
                    solidColor = brush;
                }
                function6 = function5;
                brush3 = solidColor;
            } else {
                if (i26 != 0) {
                    z4 = true;
                }
                if (i10 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new u5(19);
                        gapComposerH.q(objX);
                    }
                    function5 = (Function1) objX;
                } else {
                    function5 = function2;
                }
                if (i13 != 0) {
                    Color.f8866b.getClass();
                    solidColor = new SolidColor(Color.f8867c, null);
                } else {
                    solidColor = brush;
                }
                function6 = function5;
                brush3 = solidColor;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            ImeOptions imeOptionsB8 = keyboardOptions.b(z3);
            boolean z113 = !z3;
            boolean z114 = z4;
            if (z3) {
                i16 = 1;
            } else {
                i16 = i3;
            }
            if (z3) {
                i17 = 1;
            } else {
                i17 = i2;
            }
            Function1 function14 = function6;
            if ((i7 & 14) == 4) {
                z7 = true;
            } else {
                z7 = false;
            }
            z8 = z7 | ((i7 & 112) == 32);
            objX2 = gapComposerH.x();
            if (z8) {
                objX2 = new defpackage.k(textFieldValue, function1, 9);
                gapComposerH.q(objX2);
            } else {
                objX2 = new defpackage.k(textFieldValue, function1, 9);
                gapComposerH.q(objX2);
            }
            int i214 = i14 << 9;
            gapComposer = gapComposerH;
            modifier2 = modifierE;
            CoreTextFieldKt.a(textFieldValue, (Function1) objX2, modifier2, textStyle, visualTransformation, function14, mutableInteractionSource, brush3, z113, i17, i16, imeOptionsB8, keyboardActions, z114, z2, function3, gapComposer, (i7 & 910) | ((i7 >> 6) & 7168) | (i214 & 57344) | (i214 & ImageMetadata.JPEG_GPS_COORDINATES) | (i214 & 3670016) | (i214 & 29360128), (i7 & 7168) | ((i7 >> 15) & 896) | (i7 & 57344) | (i14 & ImageMetadata.JPEG_GPS_COORDINATES));
            brush2 = brush3;
            z6 = z114;
            function4 = function14;
        } else {
            gapComposer = gapComposerH;
            modifier2 = modifierE;
            gapComposer.D();
            function4 = function2;
            brush2 = brush;
            z6 = z4;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier10 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: xc
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i4 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i5);
                    BasicTextFieldKt.a(textFieldValue, function1, modifier10, z6, z2, textStyle, keyboardOptions, keyboardActions, z3, i2, i3, visualTransformation, function4, mutableInteractionSource, brush2, function3, (Composer) obj, iA, iA2, i6);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r39v0, types: [androidx.compose.foundation.text.KeyboardOptions, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    public static final void b(String str, Function1 function1, Modifier modifier, boolean z, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, int i2, int i3, VisualTransformation visualTransformation, Function1 function2, Brush brush, Function3 function3, Composer composer, int i4) {
        int i5;
        Modifier modifier2;
        GapComposer gapComposer;
        boolean z2;
        int i6;
        int i7;
        VisualTransformation visualTransformation2;
        Function1 function4;
        Brush brush2;
        int i8;
        Function1 function5;
        int i9;
        Brush solidColor;
        VisualTransformation visualTransformation3;
        int i10;
        boolean z3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        ?? r14;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BasicTextField");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(2026950908);
        if ((i4 & 6) == 0) {
            i5 = (gapComposerH.K(str) ? 4 : 2) | i4;
        } else {
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            i5 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(modifier3) ? 256 : 128;
        }
        int i11 = i5 | 27648;
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            i11 |= gapComposerH.K(textStyle) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i11 |= gapComposerH.K(keyboardOptions) ? 1048576 : 524288;
        }
        if ((12582912 & i4) == 0) {
            i11 |= gapComposerH.K(keyboardActions) ? 8388608 : 4194304;
        }
        int i12 = 100663296 | i11;
        if ((805306368 & i4) == 0) {
            i12 = 369098752 | i11;
        }
        if (gapComposerH.p(i12 & 1, (306783379 & i12) != 306783378)) {
            gapComposerH.y0();
            int i13 = i4 & 1;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (i13 == 0 || gapComposerH.h0()) {
                i8 = i12 & (-1879048193);
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$2) {
                    objX = new u5(18);
                    gapComposerH.q(objX);
                }
                Color.f8866b.getClass();
                function5 = (Function1) objX;
                i9 = Integer.MAX_VALUE;
                solidColor = new SolidColor(Color.f8867c, null);
                visualTransformation3 = VisualTransformation.Companion.f10865a;
                i10 = 1;
                z3 = true;
            } else {
                gapComposerH.D();
                i8 = i12 & (-1879048193);
                z3 = z;
                i9 = i2;
                i10 = i3;
                visualTransformation3 = visualTransformation;
                function5 = function2;
                solidColor = brush;
            }
            int i14 = i8;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                r14 = 0;
                objX2 = SnapshotStateKt.g(new TextFieldValue(str, 0L, (TextRange) null, 6, (DefaultConstructorMarker) null));
                gapComposerH.q(objX2);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                r14 = 0;
            }
            MutableState mutableState = (MutableState) objX2;
            TextFieldValue textFieldValueB = TextFieldValue.b((TextFieldValue) mutableState.getF10755b(), str);
            boolean zK = gapComposerH.K(textFieldValueB);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new uc(textFieldValueB, mutableState, r14);
                gapComposerH.q(objX3);
            }
            EffectsKt.i((Function0) objX3, gapComposerH);
            ?? r5 = (i14 & 14) == 4 ? 1 : r14;
            Object objX4 = gapComposerH.x();
            if (r5 != 0 || objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(str);
                gapComposerH.q(objX4);
            }
            MutableState mutableState2 = (MutableState) objX4;
            ImeOptions imeOptionsB = keyboardOptions.b(r14);
            ?? r4 = (gapComposerH.K(mutableState2) ? 1 : 0) | ((i14 & 112) == 32 ? 1 : r14);
            Object objX5 = gapComposerH.x();
            if (r4 != 0 || objX5 == composer$Companion$Empty$1) {
                objX5 = new vc(function1, mutableState, mutableState2, r14);
                gapComposerH.q(objX5);
            }
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            CoreTextFieldKt.a(textFieldValueB, (Function1) objX5, modifier2, textStyle, visualTransformation3, function5, null, solidColor, true, i9, i10, imeOptionsB, keyboardActions, z3, false, function3, gapComposer, (i14 & 896) | ((i14 >> 6) & 7168) | 14376960, ((i14 >> 15) & 896) | (i14 & 7168) | (57344 & i14) | ImageMetadata.EDGE_MODE);
            visualTransformation2 = visualTransformation3;
            function4 = function5;
            brush2 = solidColor;
            i6 = i9;
            i7 = i10;
            z2 = z3;
        } else {
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            gapComposer.D();
            z2 = z;
            i6 = i2;
            i7 = i3;
            visualTransformation2 = visualTransformation;
            function4 = function2;
            brush2 = brush;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wc(str, function1, modifier2, z2, textStyle, (KeyboardOptions) keyboardOptions, keyboardActions, i6, i7, visualTransformation2, function4, brush2, function3, i4);
        }
    }
}
