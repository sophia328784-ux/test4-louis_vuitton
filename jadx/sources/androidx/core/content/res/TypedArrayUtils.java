package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import defpackage.b21;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public abstract class TypedArrayUtils {
    public static int a(Context context, int i2, int i3) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId != 0 ? i2 : i3;
    }

    public static ColorStateList b(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        if (e(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(1, typedValue);
            int i2 = typedValue.type;
            if (i2 == 2) {
                b21.p(typedValue, "Failed to resolve attribute at index 1: ");
            } else {
                if (i2 >= 28 && i2 <= 31) {
                    return ColorStateList.valueOf(typedValue.data);
                }
                Resources resources = typedArray.getResources();
                int resourceId = typedArray.getResourceId(1, 0);
                ThreadLocal threadLocal = ColorStateListInflaterCompat.f12020a;
                try {
                    return ColorStateListInflaterCompat.a(resources, resources.getXml(resourceId), theme);
                } catch (Exception unused) {
                }
            }
        }
        return null;
    }

    public static ComplexColorCompat c(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i2) {
        ComplexColorCompat complexColorCompatA;
        if (e(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return new ComplexColorCompat(null, null, typedValue.data);
            }
            try {
                complexColorCompatA = ComplexColorCompat.a(typedArray.getResourceId(i2, 0), theme, typedArray.getResources());
            } catch (Exception unused) {
                complexColorCompatA = null;
            }
            if (complexColorCompatA != null) {
                return complexColorCompatA;
            }
        }
        return new ComplexColorCompat(null, null, 0);
    }

    public static int d(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i3) {
        return !e(xmlPullParser, str) ? i3 : typedArray.getInt(i2, i3);
    }

    public static boolean e(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static TypedArray f(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
