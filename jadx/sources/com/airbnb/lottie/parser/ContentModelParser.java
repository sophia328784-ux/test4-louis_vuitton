package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.content.CircleShape;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientStroke;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.RectangleShape;
import com.airbnb.lottie.model.content.Repeater;
import com.airbnb.lottie.model.content.RoundedCorners;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
abstract class ContentModelParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonReader.Options f22218a = JsonReader.Options.a("ty", NBSSpanMetricUnit.Day);

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:124:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:429:0x0753 A[LOOP:1: B:427:0x074d->B:429:0x0753, LOOP_END] */
    public static ContentModel a(JsonReader jsonReader, LottieComposition lottieComposition) {
        String strT;
        ContentModel circleShape;
        ContentModel shapeFill;
        ContentModel shapeGroup;
        ContentModel gradientStroke;
        ShapeTrimPath.Type type;
        jsonReader.j();
        int iR = 2;
        while (true) {
            if (!jsonReader.o()) {
                strT = null;
                break;
            }
            int iZ = jsonReader.z(f22218a);
            if (iZ == 0) {
                strT = jsonReader.t();
                break;
            }
            if (iZ != 1) {
                jsonReader.B();
                jsonReader.C();
            } else {
                iR = jsonReader.r();
            }
        }
        if (strT == null) {
            return null;
        }
        boolean zP = false;
        switch (strT) {
            case "el":
                JsonReader.Options options = CircleShapeParser.f22216a;
                boolean z = iR == 3;
                boolean zP2 = false;
                String strT2 = null;
                AnimatableValue animatableValueB = null;
                AnimatablePointValue animatablePointValueD = null;
                while (jsonReader.o()) {
                    int iZ2 = jsonReader.z(CircleShapeParser.f22216a);
                    if (iZ2 == 0) {
                        strT2 = jsonReader.t();
                    } else if (iZ2 == 1) {
                        animatableValueB = AnimatablePathValueParser.b(jsonReader, lottieComposition);
                    } else if (iZ2 == 2) {
                        animatablePointValueD = AnimatableValueParser.d(jsonReader, lottieComposition);
                    } else if (iZ2 == 3) {
                        zP2 = jsonReader.p();
                    } else if (iZ2 != 4) {
                        jsonReader.B();
                        jsonReader.C();
                    } else {
                        z = jsonReader.r() == 3;
                    }
                }
                circleShape = new CircleShape(strT2, animatableValueB, animatablePointValueD, z, zP2);
                shapeFill = circleShape;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "fl":
                JsonReader.Options options2 = ShapeFillParser.f22264a;
                int iR2 = 1;
                boolean zP3 = false;
                boolean zP4 = false;
                AnimatableIntegerValue animatableIntegerValue = null;
                String strT3 = null;
                AnimatableColorValue animatableColorValueA = null;
                while (jsonReader.o()) {
                    int iZ3 = jsonReader.z(ShapeFillParser.f22264a);
                    if (iZ3 == 0) {
                        strT3 = jsonReader.t();
                    } else if (iZ3 == 1) {
                        animatableColorValueA = AnimatableValueParser.a(jsonReader, lottieComposition);
                    } else if (iZ3 == 2) {
                        animatableIntegerValue = AnimatableValueParser.c(jsonReader, lottieComposition);
                    } else if (iZ3 == 3) {
                        zP3 = jsonReader.p();
                    } else if (iZ3 == 4) {
                        iR2 = jsonReader.r();
                    } else if (iZ3 != 5) {
                        jsonReader.B();
                        jsonReader.C();
                    } else {
                        zP4 = jsonReader.p();
                    }
                }
                if (animatableIntegerValue == null) {
                    animatableIntegerValue = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
                }
                shapeFill = new ShapeFill(strT3, zP3, iR2 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, animatableColorValueA, animatableIntegerValue, zP4);
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "gf":
                JsonReader.Options options3 = GradientFillParser.f22235a;
                Path.FillType fillType = Path.FillType.WINDING;
                boolean zP5 = false;
                AnimatableIntegerValue animatableIntegerValue2 = null;
                String strT4 = null;
                GradientType gradientType = null;
                AnimatableGradientColorValue animatableGradientColorValue = null;
                AnimatablePointValue animatablePointValueD2 = null;
                AnimatablePointValue animatablePointValueD3 = null;
                while (jsonReader.o()) {
                    switch (jsonReader.z(GradientFillParser.f22235a)) {
                        case 0:
                            strT4 = jsonReader.t();
                            break;
                        case 1:
                            jsonReader.j();
                            int iR3 = -1;
                            while (jsonReader.o()) {
                                int iZ4 = jsonReader.z(GradientFillParser.f22236b);
                                if (iZ4 == 0) {
                                    iR3 = jsonReader.r();
                                } else if (iZ4 != 1) {
                                    jsonReader.B();
                                    jsonReader.C();
                                } else {
                                    animatableGradientColorValue = new AnimatableGradientColorValue(KeyframesParser.a(jsonReader, lottieComposition, 1.0f, new GradientColorParser(iR3), false));
                                }
                            }
                            jsonReader.m();
                            break;
                        case 2:
                            animatableIntegerValue2 = AnimatableValueParser.c(jsonReader, lottieComposition);
                            break;
                        case 3:
                            gradientType = jsonReader.r() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                            break;
                        case 4:
                            animatablePointValueD2 = AnimatableValueParser.d(jsonReader, lottieComposition);
                            break;
                        case 5:
                            animatablePointValueD3 = AnimatableValueParser.d(jsonReader, lottieComposition);
                            break;
                        case 6:
                            fillType = jsonReader.r() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                            break;
                        case 7:
                            zP5 = jsonReader.p();
                            break;
                        default:
                            jsonReader.B();
                            jsonReader.C();
                            break;
                    }
                }
                if (animatableIntegerValue2 == null) {
                    animatableIntegerValue2 = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
                }
                shapeFill = new GradientFill(strT4, gradientType, fillType, animatableGradientColorValue, animatableIntegerValue2, animatablePointValueD2, animatablePointValueD3, null, null, zP5);
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "gr":
                JsonReader.Options options4 = ShapeGroupParser.f22265a;
                ArrayList arrayList = new ArrayList();
                String strT5 = null;
                while (jsonReader.o()) {
                    int iZ5 = jsonReader.z(ShapeGroupParser.f22265a);
                    if (iZ5 == 0) {
                        strT5 = jsonReader.t();
                    } else if (iZ5 == 1) {
                        zP = jsonReader.p();
                    } else if (iZ5 != 2) {
                        jsonReader.C();
                    } else {
                        jsonReader.h();
                        while (jsonReader.o()) {
                            ContentModel contentModelA = a(jsonReader, lottieComposition);
                            if (contentModelA != null) {
                                arrayList.add(contentModelA);
                            }
                        }
                        jsonReader.k();
                    }
                }
                shapeGroup = new ShapeGroup(strT5, arrayList, zP);
                shapeFill = shapeGroup;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "gs":
                JsonReader.Options options5 = GradientStrokeParser.f22237a;
                ArrayList arrayList2 = new ArrayList();
                boolean zP6 = false;
                AnimatableIntegerValue animatableIntegerValue3 = null;
                String strT6 = null;
                GradientType gradientType2 = null;
                AnimatableGradientColorValue animatableGradientColorValue2 = null;
                AnimatablePointValue animatablePointValueD4 = null;
                AnimatablePointValue animatablePointValueD5 = null;
                AnimatableFloatValue animatableFloatValueB = null;
                ShapeStroke.LineCapType lineCapType = null;
                ShapeStroke.LineJoinType lineJoinType = null;
                AnimatableFloatValue animatableFloatValue = null;
                float fQ = 0.0f;
                while (jsonReader.o()) {
                    switch (jsonReader.z(GradientStrokeParser.f22237a)) {
                        case 0:
                            strT6 = jsonReader.t();
                            break;
                        case 1:
                            jsonReader.j();
                            int iR4 = -1;
                            while (jsonReader.o()) {
                                int iZ6 = jsonReader.z(GradientStrokeParser.f22238b);
                                if (iZ6 == 0) {
                                    iR4 = jsonReader.r();
                                } else if (iZ6 != 1) {
                                    jsonReader.B();
                                    jsonReader.C();
                                } else {
                                    animatableGradientColorValue2 = new AnimatableGradientColorValue(KeyframesParser.a(jsonReader, lottieComposition, 1.0f, new GradientColorParser(iR4), false));
                                }
                            }
                            jsonReader.m();
                            break;
                        case 2:
                            animatableIntegerValue3 = AnimatableValueParser.c(jsonReader, lottieComposition);
                            break;
                        case 3:
                            gradientType2 = jsonReader.r() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                            break;
                        case 4:
                            animatablePointValueD4 = AnimatableValueParser.d(jsonReader, lottieComposition);
                            break;
                        case 5:
                            animatablePointValueD5 = AnimatableValueParser.d(jsonReader, lottieComposition);
                            break;
                        case 6:
                            animatableFloatValueB = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                            break;
                        case 7:
                            lineCapType = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                            break;
                        case 8:
                            lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                            break;
                        case 9:
                            fQ = (float) jsonReader.q();
                            break;
                        case 10:
                            zP6 = jsonReader.p();
                            break;
                        case 11:
                            jsonReader.h();
                            while (jsonReader.o()) {
                                jsonReader.j();
                                String strT7 = null;
                                AnimatableFloatValue animatableFloatValueB2 = null;
                                while (jsonReader.o()) {
                                    int iZ7 = jsonReader.z(GradientStrokeParser.f22239c);
                                    if (iZ7 == 0) {
                                        strT7 = jsonReader.t();
                                    } else if (iZ7 != 1) {
                                        jsonReader.B();
                                        jsonReader.C();
                                    } else {
                                        animatableFloatValueB2 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                                    }
                                }
                                jsonReader.m();
                                if (strT7.equals("o")) {
                                    animatableFloatValue = animatableFloatValueB2;
                                } else if (strT7.equals(NBSSpanMetricUnit.Day) || strT7.equals("g")) {
                                    arrayList2.add(animatableFloatValueB2);
                                }
                            }
                            jsonReader.k();
                            if (arrayList2.size() == 1) {
                                arrayList2.add((AnimatableFloatValue) arrayList2.get(0));
                            }
                            break;
                        default:
                            jsonReader.B();
                            jsonReader.C();
                            break;
                    }
                }
                if (animatableIntegerValue3 == null) {
                    animatableIntegerValue3 = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
                }
                gradientStroke = new GradientStroke(strT6, gradientType2, animatableGradientColorValue2, animatableIntegerValue3, animatablePointValueD4, animatablePointValueD5, animatableFloatValueB, lineCapType, lineJoinType, fQ, arrayList2, animatableFloatValue, zP6);
                shapeFill = gradientStroke;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "mm":
                JsonReader.Options options6 = MergePathsParser.f22254a;
                MergePaths.MergePathsMode mergePathsMode = null;
                String strT8 = null;
                while (jsonReader.o()) {
                    int iZ8 = jsonReader.z(MergePathsParser.f22254a);
                    if (iZ8 == 0) {
                        strT8 = jsonReader.t();
                    } else if (iZ8 == 1) {
                        int iR5 = jsonReader.r();
                        if (iR5 == 1) {
                            mergePathsMode = MergePaths.MergePathsMode.MERGE;
                        } else if (iR5 == 2) {
                            mergePathsMode = MergePaths.MergePathsMode.ADD;
                        } else if (iR5 == 3) {
                            mergePathsMode = MergePaths.MergePathsMode.SUBTRACT;
                        } else if (iR5 != 4) {
                            mergePathsMode = iR5 != 5 ? MergePaths.MergePathsMode.MERGE : MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS;
                        } else {
                            mergePathsMode = MergePaths.MergePathsMode.INTERSECT;
                        }
                    } else if (iZ8 != 2) {
                        jsonReader.B();
                        jsonReader.C();
                    } else {
                        zP = jsonReader.p();
                    }
                }
                MergePaths mergePaths = new MergePaths(strT8, mergePathsMode, zP);
                lottieComposition.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                shapeFill = mergePaths;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "rc":
                JsonReader.Options options7 = RectangleShapeParser.f22258a;
                boolean zP7 = false;
                String strT9 = null;
                AnimatableValue animatableValueB2 = null;
                AnimatablePointValue animatablePointValueD6 = null;
                AnimatableFloatValue animatableFloatValueB3 = null;
                while (jsonReader.o()) {
                    int iZ9 = jsonReader.z(RectangleShapeParser.f22258a);
                    if (iZ9 == 0) {
                        strT9 = jsonReader.t();
                    } else if (iZ9 == 1) {
                        animatableValueB2 = AnimatablePathValueParser.b(jsonReader, lottieComposition);
                    } else if (iZ9 == 2) {
                        animatablePointValueD6 = AnimatableValueParser.d(jsonReader, lottieComposition);
                    } else if (iZ9 == 3) {
                        animatableFloatValueB3 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                    } else if (iZ9 != 4) {
                        jsonReader.C();
                    } else {
                        zP7 = jsonReader.p();
                    }
                }
                circleShape = new RectangleShape(strT9, animatableValueB2, animatablePointValueD6, animatableFloatValueB3, zP7);
                shapeFill = circleShape;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "rd":
                JsonReader.Options options8 = RoundedCornersParser.f22260a;
                String strT10 = null;
                AnimatableFloatValue animatableFloatValueB4 = null;
                while (jsonReader.o()) {
                    int iZ10 = jsonReader.z(RoundedCornersParser.f22260a);
                    if (iZ10 == 0) {
                        strT10 = jsonReader.t();
                    } else if (iZ10 == 1) {
                        animatableFloatValueB4 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                    } else if (iZ10 != 2) {
                        jsonReader.C();
                    } else {
                        zP = jsonReader.p();
                    }
                }
                shapeFill = zP ? null : new RoundedCorners(strT10, animatableFloatValueB4);
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "rp":
                JsonReader.Options options9 = RepeaterParser.f22259a;
                boolean zP8 = false;
                String strT11 = null;
                AnimatableFloatValue animatableFloatValueB5 = null;
                AnimatableFloatValue animatableFloatValueB6 = null;
                AnimatableTransform animatableTransformC = null;
                while (jsonReader.o()) {
                    int iZ11 = jsonReader.z(RepeaterParser.f22259a);
                    if (iZ11 == 0) {
                        strT11 = jsonReader.t();
                    } else if (iZ11 == 1) {
                        animatableFloatValueB5 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    } else if (iZ11 == 2) {
                        animatableFloatValueB6 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    } else if (iZ11 == 3) {
                        animatableTransformC = AnimatableTransformParser.c(jsonReader, lottieComposition);
                    } else if (iZ11 != 4) {
                        jsonReader.C();
                    } else {
                        zP8 = jsonReader.p();
                    }
                }
                circleShape = new Repeater(strT11, animatableFloatValueB5, animatableFloatValueB6, animatableTransformC, zP8);
                shapeFill = circleShape;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "sh":
                JsonReader.Options options10 = ShapePathParser.f22266a;
                int iR6 = 0;
                boolean zP9 = false;
                AnimatableShapeValue animatableShapeValue = null;
                String strT12 = null;
                while (jsonReader.o()) {
                    int iZ12 = jsonReader.z(ShapePathParser.f22266a);
                    if (iZ12 == 0) {
                        strT12 = jsonReader.t();
                    } else if (iZ12 == 1) {
                        iR6 = jsonReader.r();
                    } else if (iZ12 == 2) {
                        animatableShapeValue = new AnimatableShapeValue(KeyframesParser.a(jsonReader, lottieComposition, Utils.c(), ShapeDataParser.f22262a, false));
                    } else if (iZ12 != 3) {
                        jsonReader.C();
                    } else {
                        zP9 = jsonReader.p();
                    }
                }
                shapeGroup = new ShapePath(strT12, iR6, animatableShapeValue, zP9);
                shapeFill = shapeGroup;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "sr":
                JsonReader.Options options11 = PolystarShapeParser.f22257a;
                boolean z2 = iR == 3;
                boolean zP10 = false;
                String strT13 = null;
                PolystarShape.Type typeA = null;
                AnimatableFloatValue animatableFloatValueB7 = null;
                AnimatableValue animatableValueB3 = null;
                AnimatableFloatValue animatableFloatValueB8 = null;
                AnimatableFloatValue animatableFloatValueB9 = null;
                AnimatableFloatValue animatableFloatValueB10 = null;
                AnimatableFloatValue animatableFloatValueB11 = null;
                AnimatableFloatValue animatableFloatValueB12 = null;
                while (jsonReader.o()) {
                    switch (jsonReader.z(PolystarShapeParser.f22257a)) {
                        case 0:
                            strT13 = jsonReader.t();
                            break;
                        case 1:
                            typeA = PolystarShape.Type.a(jsonReader.r());
                            break;
                        case 2:
                            animatableFloatValueB7 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                            break;
                        case 3:
                            animatableValueB3 = AnimatablePathValueParser.b(jsonReader, lottieComposition);
                            break;
                        case 4:
                            animatableFloatValueB8 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                            break;
                        case 5:
                            animatableFloatValueB10 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                            break;
                        case 6:
                            animatableFloatValueB12 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                            break;
                        case 7:
                            animatableFloatValueB9 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                            break;
                        case 8:
                            animatableFloatValueB11 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                            break;
                        case 9:
                            zP10 = jsonReader.p();
                            break;
                        case 10:
                            z2 = jsonReader.r() == 3;
                            break;
                        default:
                            jsonReader.B();
                            jsonReader.C();
                            break;
                    }
                }
                circleShape = new PolystarShape(strT13, typeA, animatableFloatValueB7, animatableValueB3, animatableFloatValueB8, animatableFloatValueB9, animatableFloatValueB10, animatableFloatValueB11, animatableFloatValueB12, zP10, z2);
                shapeFill = circleShape;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "st":
                JsonReader.Options options12 = ShapeStrokeParser.f22267a;
                ArrayList arrayList3 = new ArrayList();
                boolean zP11 = false;
                AnimatableIntegerValue animatableIntegerValue4 = null;
                ShapeStroke.LineCapType lineCapType2 = null;
                ShapeStroke.LineJoinType lineJoinType2 = null;
                String strT14 = null;
                AnimatableFloatValue animatableFloatValue2 = null;
                AnimatableColorValue animatableColorValueA2 = null;
                AnimatableFloatValue animatableFloatValueB13 = null;
                float fQ2 = 0.0f;
                while (jsonReader.o()) {
                    switch (jsonReader.z(ShapeStrokeParser.f22267a)) {
                        case 0:
                            strT14 = jsonReader.t();
                            break;
                        case 1:
                            animatableColorValueA2 = AnimatableValueParser.a(jsonReader, lottieComposition);
                            break;
                        case 2:
                            animatableFloatValueB13 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                            break;
                        case 3:
                            animatableIntegerValue4 = AnimatableValueParser.c(jsonReader, lottieComposition);
                            break;
                        case 4:
                            lineCapType2 = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                            break;
                        case 5:
                            lineJoinType2 = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                            break;
                        case 6:
                            fQ2 = (float) jsonReader.q();
                            break;
                        case 7:
                            zP11 = jsonReader.p();
                            break;
                        case 8:
                            jsonReader.h();
                            while (jsonReader.o()) {
                                jsonReader.j();
                                String strT15 = null;
                                AnimatableFloatValue animatableFloatValueB14 = null;
                                while (jsonReader.o()) {
                                    int iZ13 = jsonReader.z(ShapeStrokeParser.f22268b);
                                    if (iZ13 == 0) {
                                        strT15 = jsonReader.t();
                                    } else if (iZ13 != 1) {
                                        jsonReader.B();
                                        jsonReader.C();
                                    } else {
                                        animatableFloatValueB14 = AnimatableValueParser.b(jsonReader, lottieComposition, true);
                                    }
                                }
                                jsonReader.m();
                                strT15.getClass();
                                switch (strT15) {
                                    case "d":
                                    case "g":
                                        arrayList3.add(animatableFloatValueB14);
                                        break;
                                    case "o":
                                        animatableFloatValue2 = animatableFloatValueB14;
                                        break;
                                }
                            }
                            jsonReader.k();
                            if (arrayList3.size() == 1) {
                                arrayList3.add((AnimatableFloatValue) arrayList3.get(0));
                            }
                            break;
                        default:
                            jsonReader.C();
                            break;
                    }
                }
                if (animatableIntegerValue4 == null) {
                    animatableIntegerValue4 = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
                }
                AnimatableIntegerValue animatableIntegerValue5 = animatableIntegerValue4;
                if (lineCapType2 == null) {
                    lineCapType2 = ShapeStroke.LineCapType.BUTT;
                }
                ShapeStroke.LineCapType lineCapType3 = lineCapType2;
                if (lineJoinType2 == null) {
                    lineJoinType2 = ShapeStroke.LineJoinType.MITER;
                }
                gradientStroke = new ShapeStroke(strT14, animatableFloatValue2, arrayList3, animatableColorValueA2, animatableIntegerValue5, animatableFloatValueB13, lineCapType3, lineJoinType2, fQ2, zP11);
                shapeFill = gradientStroke;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "tm":
                JsonReader.Options options13 = ShapeTrimPathParser.f22269a;
                boolean zP12 = false;
                String strT16 = null;
                ShapeTrimPath.Type type2 = null;
                AnimatableFloatValue animatableFloatValueB15 = null;
                AnimatableFloatValue animatableFloatValueB16 = null;
                AnimatableFloatValue animatableFloatValueB17 = null;
                while (jsonReader.o()) {
                    int iZ14 = jsonReader.z(ShapeTrimPathParser.f22269a);
                    if (iZ14 == 0) {
                        animatableFloatValueB15 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    } else if (iZ14 == 1) {
                        animatableFloatValueB16 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    } else if (iZ14 == 2) {
                        animatableFloatValueB17 = AnimatableValueParser.b(jsonReader, lottieComposition, false);
                    } else if (iZ14 == 3) {
                        strT16 = jsonReader.t();
                    } else if (iZ14 == 4) {
                        int iR7 = jsonReader.r();
                        if (iR7 == 1) {
                            type = ShapeTrimPath.Type.SIMULTANEOUSLY;
                        } else {
                            if (iR7 != 2) {
                                md.n(pq0.k(iR7, "Unknown trim path type "));
                                return null;
                            }
                            type = ShapeTrimPath.Type.INDIVIDUALLY;
                        }
                        type2 = type;
                    } else if (iZ14 != 5) {
                        jsonReader.C();
                    } else {
                        zP12 = jsonReader.p();
                    }
                }
                circleShape = new ShapeTrimPath(strT16, type2, animatableFloatValueB15, animatableFloatValueB16, animatableFloatValueB17, zP12);
                shapeFill = circleShape;
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            case "tr":
                shapeFill = AnimatableTransformParser.c(jsonReader, lottieComposition);
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
            default:
                Logger.a("Unknown shape type ".concat(strT));
                while (jsonReader.o()) {
                    jsonReader.C();
                }
                jsonReader.m();
                return shapeFill;
        }
    }
}
