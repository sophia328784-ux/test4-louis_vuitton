package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.core.R$styleable;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class ComplexColorCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Shader f12021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ColorStateList f12022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12023c;

    public ComplexColorCompat(Shader shader, ColorStateList colorStateList, int i2) {
        this.f12021a = shader;
        this.f12022b = colorStateList;
        this.f12023c = i2;
    }

    public static ComplexColorCompat a(int i2, Resources.Theme theme, Resources resources) {
        int next;
        float f2;
        float f3;
        Shader.TileMode tileMode;
        Shader radialGradient;
        Shader.TileMode tileMode2;
        XmlResourceParser xml = resources.getXml(i2);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        name.getClass();
        if (!name.equals("gradient")) {
            if (name.equals("selector")) {
                ColorStateList colorStateListB = ColorStateListInflaterCompat.b(resources, xml, attributeSetAsAttributeSet, theme);
                return new ComplexColorCompat(null, colorStateListB, colorStateListB.getDefaultColor());
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        String name2 = xml.getName();
        if (!name2.equals("gradient")) {
            throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
        }
        TypedArray typedArrayF = TypedArrayUtils.f(resources, theme, attributeSetAsAttributeSet, R$styleable.f11869e);
        float f4 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startX") != null ? typedArrayF.getFloat(8, Call.Parameters.DEFAULT_CAMERA_ZOOM) : 0.0f;
        float f5 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startY") != null ? typedArrayF.getFloat(9, Call.Parameters.DEFAULT_CAMERA_ZOOM) : 0.0f;
        float f6 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endX") != null ? typedArrayF.getFloat(10, Call.Parameters.DEFAULT_CAMERA_ZOOM) : 0.0f;
        float f7 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endY") != null ? typedArrayF.getFloat(11, Call.Parameters.DEFAULT_CAMERA_ZOOM) : 0.0f;
        float f8 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerX") != null ? typedArrayF.getFloat(3, Call.Parameters.DEFAULT_CAMERA_ZOOM) : 0.0f;
        float f9 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerY") != null ? typedArrayF.getFloat(4, Call.Parameters.DEFAULT_CAMERA_ZOOM) : 0.0f;
        int i3 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "type") != null ? typedArrayF.getInt(2, 0) : 0;
        int color = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "startColor") != null ? typedArrayF.getColor(0, 0) : 0;
        boolean z = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerColor") != null;
        int color2 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "centerColor") != null ? typedArrayF.getColor(7, 0) : 0;
        int color3 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "endColor") != null ? typedArrayF.getColor(1, 0) : 0;
        int i4 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "tileMode") != null ? typedArrayF.getInt(6, 0) : 0;
        float f10 = xml.getAttributeValue("http://schemas.android.com/apk/res/android", "gradientRadius") != null ? typedArrayF.getFloat(5, Call.Parameters.DEFAULT_CAMERA_ZOOM) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        typedArrayF.recycle();
        int depth = xml.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        float f11 = f10;
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next2 = xml.next();
            f2 = f6;
            if (next2 == 1) {
                f3 = f7;
                break;
            }
            int depth2 = xml.getDepth();
            f3 = f7;
            if (depth2 < depth && next2 == 3) {
                break;
            }
            if (next2 == 2 && depth2 <= depth && xml.getName().equals("item")) {
                TypedArray typedArrayF2 = TypedArrayUtils.f(resources, theme, attributeSetAsAttributeSet, R$styleable.f11870f);
                boolean zHasValue = typedArrayF2.hasValue(0);
                boolean zHasValue2 = typedArrayF2.hasValue(1);
                if (!zHasValue || !zHasValue2) {
                    throw new XmlPullParserException(xml.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
                }
                int color4 = typedArrayF2.getColor(0, 0);
                float f12 = typedArrayF2.getFloat(1, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                typedArrayF2.recycle();
                arrayList2.add(Integer.valueOf(color4));
                arrayList.add(Float.valueOf(f12));
            }
            f6 = f2;
            f7 = f3;
        }
        GradientColorInflaterCompat$ColorStops gradientColorInflaterCompat$ColorStops = arrayList2.size() > 0 ? new GradientColorInflaterCompat$ColorStops(arrayList2, arrayList) : null;
        if (gradientColorInflaterCompat$ColorStops == null) {
            gradientColorInflaterCompat$ColorStops = z ? new GradientColorInflaterCompat$ColorStops(color, color2, color3) : new GradientColorInflaterCompat$ColorStops(color, color3);
        }
        if (i3 != 1) {
            if (i3 != 2) {
                int[] iArr = gradientColorInflaterCompat$ColorStops.f12032a;
                float[] fArr = gradientColorInflaterCompat$ColorStops.f12033b;
                if (i4 != 1) {
                    tileMode2 = i4 != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR;
                } else {
                    tileMode2 = Shader.TileMode.REPEAT;
                }
                radialGradient = new LinearGradient(f4, f5, f2, f3, iArr, fArr, tileMode2);
            } else {
                radialGradient = new SweepGradient(f8, f9, gradientColorInflaterCompat$ColorStops.f12032a, gradientColorInflaterCompat$ColorStops.f12033b);
            }
        } else {
            if (f11 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
            }
            int[] iArr2 = gradientColorInflaterCompat$ColorStops.f12032a;
            float[] fArr2 = gradientColorInflaterCompat$ColorStops.f12033b;
            if (i4 != 1) {
                tileMode = i4 != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR;
            } else {
                tileMode = Shader.TileMode.REPEAT;
            }
            radialGradient = new RadialGradient(f8, f9, f11, iArr2, fArr2, tileMode);
        }
        return new ComplexColorCompat(radialGradient, null, 0);
    }

    public final boolean b() {
        ColorStateList colorStateList;
        return this.f12021a == null && (colorStateList = this.f12022b) != null && colorStateList.isStateful();
    }
}
