package com.airbnb.lottie.parser;

import android.graphics.Color;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTextRangeSelector;
import com.airbnb.lottie.model.animatable.AnimatableTextStyle;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.BlurEffect;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.util.ArrayList;
import java.util.Collections;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class LayerParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f22247a = JsonReader.Options.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", NBSSpanMetricUnit.Hour, "ip", "op", "tm", "cl", "hd", "ao", "bm");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JsonReader.Options f22248b = JsonReader.Options.a(NBSSpanMetricUnit.Day, "a");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JsonReader.Options f22249c = JsonReader.Options.a("ty", "nm");

    /* JADX INFO: renamed from: com.airbnb.lottie.parser.LayerParser$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22250a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f22250a = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22250a[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:196:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:198:0x03a7  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r15v41 */
    /* JADX WARN: Type inference failed for: r15v42 */
    /* JADX WARN: Type inference failed for: r15v45 */
    /* JADX WARN: Type inference failed for: r15v46 */
    /* JADX WARN: Type inference failed for: r15v49 */
    /* JADX WARN: Type inference failed for: r15v50 */
    /* JADX WARN: Type inference failed for: r15v53 */
    /* JADX WARN: Type inference failed for: r15v54 */
    /* JADX WARN: Type inference failed for: r15v55 */
    /* JADX WARN: Type inference failed for: r15v61 */
    public static Layer a(JsonReader jsonReader, LottieComposition lottieComposition) {
        boolean z;
        Float f2;
        String str;
        float f3;
        Float f4;
        String str2;
        TextRangeUnits textRangeUnits;
        Float f5;
        AnimatableFloatValue animatableFloatValue;
        AnimatableFloatValue animatableFloatValue2;
        AnimatableFloatValue animatableFloatValue3;
        ?? r15;
        Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Float fValueOf2 = Float.valueOf(1.0f);
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.j();
        boolean z2 = false;
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        float fQ = 0.0f;
        float fQ2 = 0.0f;
        float fQ3 = 0.0f;
        float fQ4 = 0.0f;
        float fQ5 = 0.0f;
        boolean z3 = false;
        int iC = 0;
        int iC2 = 0;
        int color = 0;
        boolean zP = false;
        AnimatableTransform animatableTransformC = null;
        Layer.LayerType layerType = null;
        String strT = null;
        BlurEffect blurEffect = null;
        DropShadowEffect dropShadowEffect = null;
        AnimatableTextFrame animatableTextFrame = null;
        AnimatableTextProperties animatableTextProperties = null;
        AnimatableFloatValue animatableFloatValueB = null;
        float fQ6 = 1.0f;
        long jR = 0;
        String strT2 = null;
        String strT3 = "UNSET";
        long jR2 = -1;
        while (jsonReader.o()) {
            boolean z4 = true;
            switch (jsonReader.z(f22247a)) {
                case 0:
                    strT3 = jsonReader.t();
                    break;
                case 1:
                    f2 = fValueOf;
                    str = strT2;
                    jR = jsonReader.r();
                    strT2 = str;
                    fValueOf = f2;
                    break;
                case 2:
                    strT = jsonReader.t();
                    break;
                case 3:
                    f2 = fValueOf;
                    str = strT2;
                    f3 = fQ6;
                    int iR = jsonReader.r();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (iR < layerType.ordinal()) {
                        layerType = Layer.LayerType.values()[iR];
                    }
                    fQ6 = f3;
                    strT2 = str;
                    fValueOf = f2;
                    break;
                case 4:
                    f2 = fValueOf;
                    jR2 = jsonReader.r();
                    fValueOf = f2;
                    break;
                case 5:
                    f2 = fValueOf;
                    str = strT2;
                    iC = (int) (Utils.c() * jsonReader.r());
                    strT2 = str;
                    fValueOf = f2;
                    break;
                case 6:
                    f2 = fValueOf;
                    str = strT2;
                    iC2 = (int) (Utils.c() * jsonReader.r());
                    strT2 = str;
                    fValueOf = f2;
                    break;
                case 7:
                    f2 = fValueOf;
                    color = Color.parseColor(jsonReader.t());
                    fValueOf = f2;
                    break;
                case 8:
                    animatableTransformC = AnimatableTransformParser.c(jsonReader, lottieComposition);
                    break;
                case 9:
                    f2 = fValueOf;
                    str = strT2;
                    f3 = fQ6;
                    int iR2 = jsonReader.r();
                    if (iR2 >= Layer.MatteType.values().length) {
                        lottieComposition.a("Unsupported matte type: " + iR2);
                    } else {
                        matteType2 = Layer.MatteType.values()[iR2];
                        int i2 = AnonymousClass1.f22250a[matteType2.ordinal()];
                        if (i2 == 1) {
                            lottieComposition.a("Unsupported matte type: Luma");
                        } else if (i2 == 2) {
                            lottieComposition.a("Unsupported matte type: Luma Inverted");
                        }
                        lottieComposition.o++;
                    }
                    fQ6 = f3;
                    strT2 = str;
                    fValueOf = f2;
                    break;
                case 10:
                    f2 = fValueOf;
                    str = strT2;
                    f3 = fQ6;
                    jsonReader.h();
                    while (jsonReader.o()) {
                        jsonReader.j();
                        Mask.MaskMode maskMode = null;
                        AnimatableShapeValue animatableShapeValue = null;
                        AnimatableIntegerValue animatableIntegerValueC = null;
                        boolean zP2 = false;
                        while (jsonReader.o()) {
                            String strS = jsonReader.s();
                            strS.getClass();
                            switch (strS) {
                                case "o":
                                    animatableIntegerValueC = AnimatableValueParser.c(jsonReader, lottieComposition);
                                    break;
                                case "pt":
                                    animatableShapeValue = new AnimatableShapeValue(KeyframesParser.a(jsonReader, lottieComposition, Utils.c(), ShapeDataParser.f22262a, false));
                                    break;
                                case "inv":
                                    zP2 = jsonReader.p();
                                    break;
                                case "mode":
                                    String strT4 = jsonReader.t();
                                    strT4.getClass();
                                    switch (strT4) {
                                        case "a":
                                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                                            break;
                                        case "i":
                                            lottieComposition.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                            maskMode = Mask.MaskMode.MASK_MODE_INTERSECT;
                                            break;
                                        case "n":
                                            maskMode = Mask.MaskMode.MASK_MODE_NONE;
                                            break;
                                        case "s":
                                            maskMode = Mask.MaskMode.MASK_MODE_SUBTRACT;
                                            break;
                                        default:
                                            Logger.a("Unknown mask mode " + strS + ". Defaulting to Add.");
                                            maskMode = Mask.MaskMode.MASK_MODE_ADD;
                                            break;
                                    }
                                    break;
                                default:
                                    jsonReader.C();
                                    break;
                            }
                        }
                        jsonReader.m();
                        arrayList.add(new Mask(maskMode, animatableShapeValue, animatableIntegerValueC, zP2));
                    }
                    z2 = false;
                    lottieComposition.o += arrayList.size();
                    jsonReader.k();
                    fQ6 = f3;
                    strT2 = str;
                    fValueOf = f2;
                    break;
                case 11:
                    f2 = fValueOf;
                    str = strT2;
                    f3 = fQ6;
                    jsonReader.h();
                    while (jsonReader.o()) {
                        ContentModel contentModelA = ContentModelParser.a(jsonReader, lottieComposition);
                        if (contentModelA != null) {
                            arrayList2.add(contentModelA);
                        }
                    }
                    jsonReader.k();
                    z2 = false;
                    fQ6 = f3;
                    strT2 = str;
                    fValueOf = f2;
                    break;
                case 12:
                    f4 = fValueOf;
                    jsonReader.j();
                    while (jsonReader.o()) {
                        int iZ = jsonReader.z(f22248b);
                        if (iZ == 0) {
                            str2 = strT2;
                            animatableTextFrame = new AnimatableTextFrame(KeyframesParser.a(jsonReader, lottieComposition, Utils.c(), DocumentDataParser.f22219a, false));
                        } else if (iZ != 1) {
                            jsonReader.B();
                            jsonReader.C();
                        } else {
                            jsonReader.h();
                            if (jsonReader.o()) {
                                JsonReader.Options options = AnimatableTextPropertiesParser.f22209a;
                                jsonReader.j();
                                AnimatableTextStyle animatableTextStyle = null;
                                AnimatableTextRangeSelector animatableTextRangeSelector = null;
                                while (jsonReader.o()) {
                                    int iZ2 = jsonReader.z(AnimatableTextPropertiesParser.f22209a);
                                    if (iZ2 != 0) {
                                        boolean z5 = true;
                                        if (iZ2 != 1) {
                                            jsonReader.B();
                                            jsonReader.C();
                                        } else {
                                            jsonReader.j();
                                            AnimatableColorValue animatableColorValueA = null;
                                            AnimatableColorValue animatableColorValueA2 = null;
                                            AnimatableFloatValue animatableFloatValueB2 = null;
                                            AnimatableFloatValue animatableFloatValueB3 = null;
                                            AnimatableIntegerValue animatableIntegerValueC2 = null;
                                            while (jsonReader.o()) {
                                                int iZ3 = jsonReader.z(AnimatableTextPropertiesParser.f22211c);
                                                if (iZ3 == 0) {
                                                    animatableColorValueA = AnimatableValueParser.a(jsonReader, lottieComposition);
                                                } else if (iZ3 == z5) {
                                                    animatableColorValueA2 = AnimatableValueParser.a(jsonReader, lottieComposition);
                                                } else if (iZ3 == 2) {
                                                    animatableFloatValueB2 = AnimatableValueParser.b(jsonReader, lottieComposition, z5);
                                                } else if (iZ3 == 3) {
                                                    animatableFloatValueB3 = AnimatableValueParser.b(jsonReader, lottieComposition, z5);
                                                } else if (iZ3 != 4) {
                                                    jsonReader.B();
                                                    jsonReader.C();
                                                } else {
                                                    animatableIntegerValueC2 = AnimatableValueParser.c(jsonReader, lottieComposition);
                                                }
                                                z5 = true;
                                            }
                                            jsonReader.m();
                                            animatableTextStyle = new AnimatableTextStyle(animatableColorValueA, animatableColorValueA2, animatableFloatValueB2, animatableFloatValueB3, animatableIntegerValueC2);
                                        }
                                    } else {
                                        jsonReader.j();
                                        AnimatableIntegerValue animatableIntegerValue = null;
                                        AnimatableIntegerValue animatableIntegerValueC3 = null;
                                        AnimatableIntegerValue animatableIntegerValueC4 = null;
                                        TextRangeUnits textRangeUnits2 = null;
                                        while (jsonReader.o()) {
                                            int iZ4 = jsonReader.z(AnimatableTextPropertiesParser.f22210b);
                                            if (iZ4 != 0) {
                                                String str3 = strT2;
                                                if (iZ4 == 1) {
                                                    animatableIntegerValueC3 = AnimatableValueParser.c(jsonReader, lottieComposition);
                                                } else if (iZ4 == 2) {
                                                    animatableIntegerValueC4 = AnimatableValueParser.c(jsonReader, lottieComposition);
                                                } else if (iZ4 != 3) {
                                                    jsonReader.B();
                                                    jsonReader.C();
                                                } else {
                                                    int iR3 = jsonReader.r();
                                                    int i3 = 1;
                                                    if (iR3 == 1) {
                                                        if (iR3 == i3) {
                                                            textRangeUnits = TextRangeUnits.PERCENT;
                                                        } else {
                                                            textRangeUnits = TextRangeUnits.INDEX;
                                                        }
                                                        textRangeUnits2 = textRangeUnits;
                                                    } else if (iR3 != 2) {
                                                        lottieComposition.a("Unsupported text range units: " + iR3);
                                                        textRangeUnits2 = TextRangeUnits.INDEX;
                                                    } else {
                                                        i3 = 1;
                                                        if (iR3 == i3) {
                                                            textRangeUnits = TextRangeUnits.PERCENT;
                                                        } else {
                                                            textRangeUnits = TextRangeUnits.INDEX;
                                                        }
                                                        textRangeUnits2 = textRangeUnits;
                                                    }
                                                }
                                                strT2 = str3;
                                            } else {
                                                animatableIntegerValue = AnimatableValueParser.c(jsonReader, lottieComposition);
                                            }
                                        }
                                        String str4 = strT2;
                                        jsonReader.m();
                                        if (animatableIntegerValue == null && animatableIntegerValueC3 != null) {
                                            animatableIntegerValue = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(0)));
                                        }
                                        animatableTextRangeSelector = new AnimatableTextRangeSelector(animatableIntegerValue, animatableIntegerValueC3, animatableIntegerValueC4, textRangeUnits2);
                                        strT2 = str4;
                                    }
                                }
                                str2 = strT2;
                                jsonReader.m();
                                animatableTextProperties = new AnimatableTextProperties(animatableTextStyle, animatableTextRangeSelector);
                            } else {
                                str2 = strT2;
                            }
                            while (jsonReader.o()) {
                                jsonReader.C();
                            }
                            jsonReader.k();
                        }
                        strT2 = str2;
                    }
                    jsonReader.m();
                    fQ6 = fQ6;
                    fValueOf = f4;
                    z2 = false;
                    break;
                case 13:
                    jsonReader.h();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.o()) {
                        jsonReader.j();
                        while (jsonReader.o()) {
                            int iZ5 = jsonReader.z(f22249c);
                            if (iZ5 == 0) {
                                int iR4 = jsonReader.r();
                                if (iR4 == 29) {
                                    JsonReader.Options options2 = BlurEffectParser.f22214a;
                                    blurEffect = null;
                                    while (jsonReader.o()) {
                                        if (jsonReader.z(BlurEffectParser.f22214a) != 0) {
                                            jsonReader.B();
                                            jsonReader.C();
                                        } else {
                                            jsonReader.h();
                                            while (jsonReader.o()) {
                                                jsonReader.j();
                                                boolean z6 = false;
                                                BlurEffect blurEffect2 = null;
                                                while (jsonReader.o()) {
                                                    int iZ6 = jsonReader.z(BlurEffectParser.f22215b);
                                                    if (iZ6 == 0) {
                                                        z6 = jsonReader.r() == 0 ? z4 : false;
                                                    } else if (iZ6 != z4) {
                                                        jsonReader.B();
                                                        jsonReader.C();
                                                    } else if (z6) {
                                                        blurEffect2 = new BlurEffect(AnimatableValueParser.b(jsonReader, lottieComposition, z4));
                                                    } else {
                                                        jsonReader.C();
                                                    }
                                                }
                                                jsonReader.m();
                                                if (blurEffect2 != null) {
                                                    blurEffect = blurEffect2;
                                                }
                                            }
                                            jsonReader.k();
                                        }
                                    }
                                } else {
                                    if (iR4 == 25) {
                                        DropShadowEffectParser dropShadowEffectParser = new DropShadowEffectParser();
                                        while (jsonReader.o()) {
                                            if (jsonReader.z(DropShadowEffectParser.f22225f) != 0) {
                                                jsonReader.B();
                                                jsonReader.C();
                                            } else {
                                                jsonReader.h();
                                                while (jsonReader.o()) {
                                                    jsonReader.j();
                                                    String strT5 = "";
                                                    while (jsonReader.o()) {
                                                        int iZ7 = jsonReader.z(DropShadowEffectParser.g);
                                                        if (iZ7 == 0) {
                                                            strT5 = jsonReader.t();
                                                        } else if (iZ7 == z4) {
                                                            strT5.getClass();
                                                            switch (strT5.hashCode()) {
                                                                case 353103893:
                                                                    r15 = !strT5.equals("Distance") ? -1 : 0;
                                                                    break;
                                                                case 397447147:
                                                                    r15 = !strT5.equals("Opacity") ? -1 : z4;
                                                                    break;
                                                                case 1041377119:
                                                                    r15 = !strT5.equals("Direction") ? -1 : 2;
                                                                    break;
                                                                case 1379387491:
                                                                    r15 = !strT5.equals("Shadow Color") ? -1 : 3;
                                                                    break;
                                                                case 1383710113:
                                                                    r15 = !strT5.equals("Softness") ? -1 : 4;
                                                                    break;
                                                                default:
                                                                    r15 = -1;
                                                                    break;
                                                            }
                                                            switch (r15) {
                                                                case 0:
                                                                    dropShadowEffectParser.d = AnimatableValueParser.b(jsonReader, lottieComposition, z4);
                                                                    break;
                                                                case 1:
                                                                    dropShadowEffectParser.f22227b = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                                                                    break;
                                                                case 2:
                                                                    dropShadowEffectParser.f22228c = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                                                                    break;
                                                                case 3:
                                                                    dropShadowEffectParser.f22226a = AnimatableValueParser.a(jsonReader, lottieComposition);
                                                                    break;
                                                                case 4:
                                                                    dropShadowEffectParser.f22229e = AnimatableValueParser.b(jsonReader, lottieComposition, z4);
                                                                    break;
                                                                default:
                                                                    jsonReader.C();
                                                                    break;
                                                            }
                                                        } else {
                                                            jsonReader.B();
                                                            jsonReader.C();
                                                        }
                                                        z4 = true;
                                                    }
                                                    jsonReader.m();
                                                    z4 = true;
                                                }
                                                jsonReader.k();
                                                z4 = true;
                                            }
                                        }
                                        AnimatableColorValue animatableColorValue = dropShadowEffectParser.f22226a;
                                        if (animatableColorValue == null || (animatableFloatValue = dropShadowEffectParser.f22227b) == null || (animatableFloatValue2 = dropShadowEffectParser.f22228c) == null) {
                                            f5 = fValueOf;
                                        } else {
                                            f5 = fValueOf;
                                            AnimatableFloatValue animatableFloatValue4 = dropShadowEffectParser.d;
                                            if (animatableFloatValue4 != null && (animatableFloatValue3 = dropShadowEffectParser.f22229e) != null) {
                                                dropShadowEffect = new DropShadowEffect(animatableColorValue, animatableFloatValue, animatableFloatValue2, animatableFloatValue4, animatableFloatValue3);
                                            }
                                        }
                                        dropShadowEffect = null;
                                    }
                                    fValueOf = f5;
                                    z4 = true;
                                }
                            } else if (iZ5 != z4) {
                                jsonReader.B();
                                jsonReader.C();
                            } else {
                                arrayList3.add(jsonReader.t());
                            }
                            f5 = fValueOf;
                            fValueOf = f5;
                            z4 = true;
                        }
                        jsonReader.m();
                        z4 = true;
                    }
                    f4 = fValueOf;
                    jsonReader.k();
                    lottieComposition.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    fQ6 = fQ6;
                    fValueOf = f4;
                    z2 = false;
                    break;
                case 14:
                    fQ6 = (float) jsonReader.q();
                    z2 = false;
                    break;
                case 15:
                    fQ5 = (float) jsonReader.q();
                    z2 = false;
                    break;
                case 16:
                    fQ3 = (float) (jsonReader.q() * ((double) Utils.c()));
                    fQ6 = fQ6;
                    z2 = false;
                    break;
                case 17:
                    fQ4 = (float) (jsonReader.q() * ((double) Utils.c()));
                    fQ6 = fQ6;
                    z2 = false;
                    break;
                case 18:
                    fQ = (float) jsonReader.q();
                    break;
                case 19:
                    fQ2 = (float) jsonReader.q();
                    break;
                case 20:
                    animatableFloatValueB = AnimatableValueParser.b(jsonReader, lottieComposition, z2);
                    break;
                case 21:
                    strT2 = jsonReader.t();
                    break;
                case 22:
                    zP = jsonReader.p();
                    break;
                case 23:
                    z3 = jsonReader.r() != 1 ? z2 : true;
                    break;
                case 24:
                    int iR5 = jsonReader.r();
                    if (iR5 < LBlendMode.values().length) {
                        lBlendMode2 = LBlendMode.values()[iR5];
                    } else {
                        lottieComposition.a("Unsupported Blend Mode: " + iR5);
                        lBlendMode2 = LBlendMode.NORMAL;
                    }
                    break;
                default:
                    jsonReader.B();
                    jsonReader.C();
                    f2 = fValueOf;
                    str = strT2;
                    f3 = fQ6;
                    fQ6 = f3;
                    strT2 = str;
                    fValueOf = f2;
                    break;
            }
        }
        Float f6 = fValueOf;
        String str5 = strT2;
        float f7 = fQ6;
        jsonReader.m();
        ArrayList arrayList4 = new ArrayList();
        if (fQ > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            z = z3;
            arrayList4.add(new Keyframe(lottieComposition, f6, f6, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.valueOf(fQ)));
        } else {
            z = z3;
        }
        if (fQ2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fQ2 = lottieComposition.m;
        }
        arrayList4.add(new Keyframe(lottieComposition, fValueOf2, fValueOf2, null, fQ, Float.valueOf(fQ2)));
        arrayList4.add(new Keyframe(lottieComposition, f6, f6, null, fQ2, Float.valueOf(Float.MAX_VALUE)));
        if (strT3.endsWith(".ai") || "ai".equals(str5)) {
            lottieComposition.a("Convert your Illustrator layers to shape layers.");
        }
        if (z) {
            AnimatableTransform animatableTransform = animatableTransformC == null ? new AnimatableTransform() : animatableTransformC;
            animatableTransform.m = z;
            animatableTransformC = animatableTransform;
        }
        return new Layer(arrayList2, lottieComposition, strT3, jR, layerType, jR2, strT, arrayList, animatableTransformC, iC, iC2, color, f7, fQ5, fQ3, fQ4, animatableTextFrame, animatableTextProperties, arrayList4, matteType2, animatableFloatValueB, zP, blurEffect, dropShadowEffect, lBlendMode2);
    }
}
