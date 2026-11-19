package androidx.compose.ui.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt$ShaderBrush$1;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathParser;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.graphics.vector.compat.AndroidVectorParser;
import androidx.compose.ui.graphics.vector.compat.AndroidVectorResources;
import androidx.compose.ui.unit.Dp;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import defpackage.md;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class VectorResources_androidKt {
    /* JADX WARN: Code duplicated, block: B:110:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:112:0x0301 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x0303  */
    /* JADX WARN: Code duplicated, block: B:114:0x030b  */
    /* JADX WARN: Code duplicated, block: B:119:0x0321  */
    /* JADX WARN: Code duplicated, block: B:121:0x0325 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x0327  */
    /* JADX WARN: Code duplicated, block: B:124:0x032f  */
    /* JADX WARN: Code duplicated, block: B:128:0x0345  */
    /* JADX WARN: Code duplicated, block: B:129:0x0348  */
    /* JADX WARN: Code duplicated, block: B:93:0x0275  */
    public static final ImageVectorCache.ImageVectorEntry a(Resources.Theme theme, Resources resources, XmlResourceParser xmlResourceParser, int i2) throws XmlPullParserException, IOException {
        long jB;
        int i3;
        int i4;
        int i5;
        ComplexColorCompat complexColorCompatC;
        int iD;
        Shader shader;
        Brush solidColor;
        Shader shader2;
        Brush solidColor2;
        Brush brush;
        int i6;
        int i7;
        int i8;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        AndroidVectorParser androidVectorParser = new AndroidVectorParser(xmlResourceParser, 0, 2, null);
        TypedArray typedArrayF = TypedArrayUtils.f(resources, theme, attributeSetAsAttributeSet, AndroidVectorResources.f9190a);
        androidVectorParser.b(typedArrayF.getChangingConfigurations());
        XmlPullParser xmlPullParser = androidVectorParser.f9187a;
        int i9 = 5;
        boolean z = !TypedArrayUtils.e(xmlPullParser, "autoMirrored") ? false : typedArrayF.getBoolean(5, false);
        androidVectorParser.b(typedArrayF.getChangingConfigurations());
        float fA = androidVectorParser.a(typedArrayF, "viewportWidth", 7, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float fA2 = androidVectorParser.a(typedArrayF, "viewportHeight", 8, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (fA <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<VectorGraphic> tag requires viewportWidth > 0");
        }
        if (fA2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            throw new XmlPullParserException(typedArrayF.getPositionDescription() + "<VectorGraphic> tag requires viewportHeight > 0");
        }
        int i10 = 3;
        float dimension = typedArrayF.getDimension(3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        androidVectorParser.b(typedArrayF.getChangingConfigurations());
        float dimension2 = typedArrayF.getDimension(2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        androidVectorParser.b(typedArrayF.getChangingConfigurations());
        if (typedArrayF.hasValue(1)) {
            TypedValue typedValue = new TypedValue();
            typedArrayF.getValue(1, typedValue);
            if (typedValue.type == 2) {
                Color.f8866b.getClass();
                jB = Color.f8871i;
            } else {
                ColorStateList colorStateListB = TypedArrayUtils.b(typedArrayF, xmlPullParser, theme);
                androidVectorParser.b(typedArrayF.getChangingConfigurations());
                if (colorStateListB != null) {
                    jB = ColorKt.b(colorStateListB.getDefaultColor());
                } else {
                    Color.f8866b.getClass();
                    jB = Color.f8871i;
                }
            }
        } else {
            Color.f8866b.getClass();
            jB = Color.f8871i;
        }
        int i11 = typedArrayF.getInt(6, -1);
        androidVectorParser.b(typedArrayF.getChangingConfigurations());
        if (i11 == -1) {
            BlendMode.f8847a.getClass();
            i3 = BlendMode.f8851f;
        } else if (i11 == 3) {
            BlendMode.f8847a.getClass();
            i3 = BlendMode.d;
        } else if (i11 == 5) {
            BlendMode.f8847a.getClass();
            i3 = BlendMode.f8851f;
        } else if (i11 != 9) {
            switch (i11) {
                case 14:
                    BlendMode.f8847a.getClass();
                    i3 = BlendMode.n;
                    break;
                case 15:
                    BlendMode.f8847a.getClass();
                    i3 = BlendMode.o;
                    break;
                case 16:
                    BlendMode.f8847a.getClass();
                    i3 = BlendMode.m;
                    break;
                default:
                    BlendMode.f8847a.getClass();
                    i3 = BlendMode.f8851f;
                    break;
            }
        } else {
            BlendMode.f8847a.getClass();
            i3 = BlendMode.f8854j;
        }
        float f2 = dimension / resources.getDisplayMetrics().density;
        Dp.Companion companion = Dp.f11004c;
        float f3 = dimension2 / resources.getDisplayMetrics().density;
        typedArrayF.recycle();
        char c2 = 7;
        int i12 = i3;
        float f4 = 0.0f;
        ImageVector.Builder builder = new ImageVector.Builder(null, f2, f3, fA, fA2, jB, i12, z, 1, null);
        int i13 = 0;
        while (xmlResourceParser.getEventType() != 1 && (xmlResourceParser.getDepth() >= 1 || xmlResourceParser.getEventType() != i10)) {
            int eventType = xmlPullParser.getEventType();
            if (eventType != 2) {
                if (eventType == i10 && "group".equals(xmlPullParser.getName())) {
                    int i14 = i13 + 1;
                    for (int i15 = 0; i15 < i14; i15++) {
                        builder.e();
                    }
                    i13 = 0;
                }
                xmlResourceParser.next();
                c2 = c2;
                f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                i10 = 3;
                i9 = 5;
            } else {
                String name = xmlPullParser.getName();
                if (name != null) {
                    int iHashCode = name.hashCode();
                    PathParser pathParser = androidVectorParser.f9189c;
                    if (iHashCode != -1649314686) {
                        if (iHashCode != 3433509) {
                            if (iHashCode == 98629247 && name.equals("group")) {
                                TypedArray typedArrayF2 = TypedArrayUtils.f(resources, theme, attributeSetAsAttributeSet, AndroidVectorResources.f9191b);
                                androidVectorParser.b(typedArrayF2.getChangingConfigurations());
                                float fA3 = androidVectorParser.a(typedArrayF2, "rotation", i9, f4);
                                float f5 = typedArrayF2.getFloat(1, f4);
                                androidVectorParser.b(typedArrayF2.getChangingConfigurations());
                                float f6 = typedArrayF2.getFloat(2, f4);
                                androidVectorParser.b(typedArrayF2.getChangingConfigurations());
                                float fA4 = androidVectorParser.a(typedArrayF2, "scaleX", 3, 1.0f);
                                float fA5 = androidVectorParser.a(typedArrayF2, "scaleY", 4, 1.0f);
                                float fA6 = androidVectorParser.a(typedArrayF2, "translateX", 6, f4);
                                float fA7 = androidVectorParser.a(typedArrayF2, "translateY", 7, f4);
                                String string = typedArrayF2.getString(0);
                                androidVectorParser.b(typedArrayF2.getChangingConfigurations());
                                String str = string == null ? "" : string;
                                typedArrayF2.recycle();
                                builder.a(str, fA3, f5, f6, fA4, fA5, fA6, fA7, VectorKt.f9173a);
                            }
                        } else if (name.equals("path")) {
                            TypedArray typedArrayF3 = TypedArrayUtils.f(resources, theme, attributeSetAsAttributeSet, AndroidVectorResources.f9192c);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") == null) {
                                md.n("No path data available");
                                return null;
                            }
                            String string2 = typedArrayF3.getString(0);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            String str2 = string2 == null ? "" : string2;
                            String string3 = typedArrayF3.getString(2);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            List listA = string3 == null ? VectorKt.f9173a : PathParser.a(pathParser, string3);
                            ComplexColorCompat complexColorCompatC2 = TypedArrayUtils.c(typedArrayF3, xmlPullParser, theme, "fillColor", 1);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            float fA8 = androidVectorParser.a(typedArrayF3, "fillAlpha", 12, 1.0f);
                            int iD2 = TypedArrayUtils.d(typedArrayF3, xmlPullParser, "strokeLineCap", 8, -1);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            StrokeCap.f8932a.getClass();
                            if (iD2 == 0) {
                                i4 = 0;
                            } else {
                                if (iD2 == 1) {
                                    i8 = StrokeCap.f8933b;
                                } else if (iD2 != 2) {
                                    i4 = 0;
                                } else {
                                    i8 = StrokeCap.f8934c;
                                }
                                i4 = i8;
                            }
                            int iD3 = TypedArrayUtils.d(typedArrayF3, xmlPullParser, "strokeLineJoin", 9, -1);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            StrokeJoin.f8935a.getClass();
                            if (iD3 != 0) {
                                if (iD3 != 1) {
                                    if (iD3 == 2) {
                                        i7 = StrokeJoin.f8937c;
                                    }
                                    float fA9 = androidVectorParser.a(typedArrayF3, "strokeMiterLimit", 10, 4.0f);
                                    complexColorCompatC = TypedArrayUtils.c(typedArrayF3, xmlPullParser, theme, "strokeColor", 3);
                                    androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                                    float fA10 = androidVectorParser.a(typedArrayF3, "strokeAlpha", 11, 1.0f);
                                    float fA11 = androidVectorParser.a(typedArrayF3, "strokeWidth", 4, 1.0f);
                                    float fA12 = androidVectorParser.a(typedArrayF3, "trimPathEnd", 6, 1.0f);
                                    c2 = 7;
                                    float fA13 = androidVectorParser.a(typedArrayF3, "trimPathOffset", 7, f4);
                                    float fA14 = androidVectorParser.a(typedArrayF3, "trimPathStart", i9, f4);
                                    iD = TypedArrayUtils.d(typedArrayF3, xmlPullParser, "fillType", 13, 0);
                                    androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                                    typedArrayF3.recycle();
                                    shader = complexColorCompatC2.f12021a;
                                    if (shader != null && complexColorCompatC2.f12023c == 0) {
                                        solidColor = null;
                                    } else if (shader != null) {
                                        solidColor = new BrushKt$ShaderBrush$1(shader);
                                    } else {
                                        solidColor = new SolidColor(ColorKt.b(complexColorCompatC2.f12023c), null);
                                    }
                                    shader2 = complexColorCompatC.f12021a;
                                    if (shader2 != null && complexColorCompatC.f12023c == 0) {
                                        brush = null;
                                    } else {
                                        if (shader2 != null) {
                                            solidColor2 = new BrushKt$ShaderBrush$1(shader2);
                                        } else {
                                            solidColor2 = new SolidColor(ColorKt.b(complexColorCompatC.f12023c), null);
                                        }
                                        brush = solidColor2;
                                    }
                                    PathFillType.f8908a.getClass();
                                    if (iD == 0) {
                                        i6 = 0;
                                    } else {
                                        i6 = PathFillType.f8909b;
                                    }
                                    builder.b(listA, i6, str2, solidColor, fA8, brush, fA10, fA11, i4, i5, fA9, fA14, fA12, fA13);
                                } else {
                                    i7 = StrokeJoin.f8936b;
                                }
                                i5 = i7;
                                float fA15 = androidVectorParser.a(typedArrayF3, "strokeMiterLimit", 10, 4.0f);
                                complexColorCompatC = TypedArrayUtils.c(typedArrayF3, xmlPullParser, theme, "strokeColor", 3);
                                androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                                float fA16 = androidVectorParser.a(typedArrayF3, "strokeAlpha", 11, 1.0f);
                                float fA17 = androidVectorParser.a(typedArrayF3, "strokeWidth", 4, 1.0f);
                                float fA18 = androidVectorParser.a(typedArrayF3, "trimPathEnd", 6, 1.0f);
                                c2 = 7;
                                float fA19 = androidVectorParser.a(typedArrayF3, "trimPathOffset", 7, f4);
                                float fA110 = androidVectorParser.a(typedArrayF3, "trimPathStart", i9, f4);
                                iD = TypedArrayUtils.d(typedArrayF3, xmlPullParser, "fillType", 13, 0);
                                androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                                typedArrayF3.recycle();
                                shader = complexColorCompatC2.f12021a;
                                if (shader != null) {
                                    solidColor = null;
                                } else if (shader != null) {
                                    solidColor = new BrushKt$ShaderBrush$1(shader);
                                } else {
                                    solidColor = new SolidColor(ColorKt.b(complexColorCompatC2.f12023c), null);
                                }
                                shader2 = complexColorCompatC.f12021a;
                                if (shader2 != null) {
                                    if (shader2 != null) {
                                        solidColor2 = new BrushKt$ShaderBrush$1(shader2);
                                    } else {
                                        solidColor2 = new SolidColor(ColorKt.b(complexColorCompatC.f12023c), null);
                                    }
                                    brush = solidColor2;
                                } else {
                                    brush = null;
                                }
                                PathFillType.f8908a.getClass();
                                if (iD == 0) {
                                    i6 = 0;
                                } else {
                                    i6 = PathFillType.f8909b;
                                }
                                builder.b(listA, i6, str2, solidColor, fA8, brush, fA16, fA17, i4, i5, fA15, fA110, fA18, fA19);
                            }
                            i5 = 0;
                            float fA111 = androidVectorParser.a(typedArrayF3, "strokeMiterLimit", 10, 4.0f);
                            complexColorCompatC = TypedArrayUtils.c(typedArrayF3, xmlPullParser, theme, "strokeColor", 3);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            float fA112 = androidVectorParser.a(typedArrayF3, "strokeAlpha", 11, 1.0f);
                            float fA113 = androidVectorParser.a(typedArrayF3, "strokeWidth", 4, 1.0f);
                            float fA114 = androidVectorParser.a(typedArrayF3, "trimPathEnd", 6, 1.0f);
                            c2 = 7;
                            float fA115 = androidVectorParser.a(typedArrayF3, "trimPathOffset", 7, f4);
                            float fA116 = androidVectorParser.a(typedArrayF3, "trimPathStart", i9, f4);
                            iD = TypedArrayUtils.d(typedArrayF3, xmlPullParser, "fillType", 13, 0);
                            androidVectorParser.b(typedArrayF3.getChangingConfigurations());
                            typedArrayF3.recycle();
                            shader = complexColorCompatC2.f12021a;
                            if (shader != null) {
                                solidColor = null;
                            } else if (shader != null) {
                                solidColor = new BrushKt$ShaderBrush$1(shader);
                            } else {
                                solidColor = new SolidColor(ColorKt.b(complexColorCompatC2.f12023c), null);
                            }
                            shader2 = complexColorCompatC.f12021a;
                            if (shader2 != null) {
                                if (shader2 != null) {
                                    solidColor2 = new BrushKt$ShaderBrush$1(shader2);
                                } else {
                                    solidColor2 = new SolidColor(ColorKt.b(complexColorCompatC.f12023c), null);
                                }
                                brush = solidColor2;
                            } else {
                                brush = null;
                            }
                            PathFillType.f8908a.getClass();
                            if (iD == 0) {
                                i6 = 0;
                            } else {
                                i6 = PathFillType.f8909b;
                            }
                            builder.b(listA, i6, str2, solidColor, fA8, brush, fA112, fA113, i4, i5, fA111, fA116, fA114, fA115);
                        }
                        c2 = 7;
                    } else {
                        c2 = 7;
                        if (name.equals("clip-path")) {
                            TypedArray typedArrayF4 = TypedArrayUtils.f(resources, theme, attributeSetAsAttributeSet, AndroidVectorResources.d);
                            androidVectorParser.b(typedArrayF4.getChangingConfigurations());
                            String string4 = typedArrayF4.getString(0);
                            androidVectorParser.b(typedArrayF4.getChangingConfigurations());
                            String str3 = string4 == null ? "" : string4;
                            String string5 = typedArrayF4.getString(1);
                            androidVectorParser.b(typedArrayF4.getChangingConfigurations());
                            List listA2 = string5 == null ? VectorKt.f9173a : PathParser.a(pathParser, string5);
                            typedArrayF4.recycle();
                            builder.a(str3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, listA2);
                            i13++;
                        }
                    }
                }
                xmlResourceParser.next();
                c2 = c2;
                f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                i10 = 3;
                i9 = 5;
            }
            xmlResourceParser.next();
            c2 = c2;
            f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            i10 = 3;
            i9 = 5;
        }
        return new ImageVectorCache.ImageVectorEntry(builder.d(), i2 | androidVectorParser.f9188b);
    }
}
