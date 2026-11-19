package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import defpackage.tr;
import defpackage.v7;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintAttribute {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f11711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AttributeType f11713c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f11714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f11715f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11716h;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AttributeType {
        private static final /* synthetic */ AttributeType[] $VALUES;
        public static final AttributeType BOOLEAN_TYPE;
        public static final AttributeType COLOR_DRAWABLE_TYPE;
        public static final AttributeType COLOR_TYPE;
        public static final AttributeType DIMENSION_TYPE;
        public static final AttributeType FLOAT_TYPE;
        public static final AttributeType INT_TYPE;
        public static final AttributeType REFERENCE_TYPE;
        public static final AttributeType STRING_TYPE;

        static {
            AttributeType attributeType = new AttributeType("INT_TYPE", 0);
            INT_TYPE = attributeType;
            AttributeType attributeType2 = new AttributeType("FLOAT_TYPE", 1);
            FLOAT_TYPE = attributeType2;
            AttributeType attributeType3 = new AttributeType("COLOR_TYPE", 2);
            COLOR_TYPE = attributeType3;
            AttributeType attributeType4 = new AttributeType("COLOR_DRAWABLE_TYPE", 3);
            COLOR_DRAWABLE_TYPE = attributeType4;
            AttributeType attributeType5 = new AttributeType("STRING_TYPE", 4);
            STRING_TYPE = attributeType5;
            AttributeType attributeType6 = new AttributeType("BOOLEAN_TYPE", 5);
            BOOLEAN_TYPE = attributeType6;
            AttributeType attributeType7 = new AttributeType("DIMENSION_TYPE", 6);
            DIMENSION_TYPE = attributeType7;
            AttributeType attributeType8 = new AttributeType("REFERENCE_TYPE", 7);
            REFERENCE_TYPE = attributeType8;
            $VALUES = new AttributeType[]{attributeType, attributeType2, attributeType3, attributeType4, attributeType5, attributeType6, attributeType7, attributeType8};
        }

        public static AttributeType valueOf(String str) {
            return (AttributeType) Enum.valueOf(AttributeType.class, str);
        }

        public static AttributeType[] values() {
            return (AttributeType[]) $VALUES.clone();
        }
    }

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.f11711a = false;
        this.f11712b = constraintAttribute.f11712b;
        this.f11713c = constraintAttribute.f11713c;
        f(obj);
    }

    public static void d(Context context, XmlPullParser xmlPullParser, HashMap map) {
        AttributeType attributeType;
        Object objValueOf;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.f11822f);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        Object objValueOf2 = null;
        AttributeType attributeType2 = null;
        boolean z = false;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == 0) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == 10) {
                string = typedArrayObtainStyledAttributes.getString(index);
                z = true;
            } else if (index == 1) {
                objValueOf2 = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                attributeType2 = AttributeType.BOOLEAN_TYPE;
            } else {
                if (index == 3) {
                    attributeType = AttributeType.COLOR_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == 2) {
                    attributeType = AttributeType.COLOR_DRAWABLE_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == 7) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    objValueOf = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, Call.Parameters.DEFAULT_CAMERA_ZOOM), context.getResources().getDisplayMetrics()));
                } else if (index == 4) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, Call.Parameters.DEFAULT_CAMERA_ZOOM));
                } else if (index == 5) {
                    attributeType = AttributeType.FLOAT_TYPE;
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == 6) {
                    attributeType = AttributeType.INT_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                } else if (index == 9) {
                    attributeType = AttributeType.STRING_TYPE;
                    objValueOf = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == 8) {
                    attributeType = AttributeType.REFERENCE_TYPE;
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    objValueOf = Integer.valueOf(resourceId);
                }
                Object obj = objValueOf;
                attributeType2 = attributeType;
                objValueOf2 = obj;
            }
        }
        if (string != null && objValueOf2 != null) {
            map.put(string, new ConstraintAttribute(string, attributeType2, objValueOf2, z));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void e(View view, HashMap map) {
        Class<?> cls = view.getClass();
        for (String strG : map.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) map.get(strG);
            if (!constraintAttribute.f11711a) {
                strG = tr.g("set", strG);
            }
            try {
                int iOrdinal = constraintAttribute.f11713c.ordinal();
                Class cls2 = Float.TYPE;
                Class cls3 = Integer.TYPE;
                switch (iOrdinal) {
                    case 0:
                        cls.getMethod(strG, cls3).invoke(view, Integer.valueOf(constraintAttribute.d));
                        break;
                    case 1:
                        cls.getMethod(strG, cls2).invoke(view, Float.valueOf(constraintAttribute.f11714e));
                        break;
                    case 2:
                        cls.getMethod(strG, cls3).invoke(view, Integer.valueOf(constraintAttribute.f11716h));
                        break;
                    case 3:
                        Method method = cls.getMethod(strG, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.f11716h);
                        method.invoke(view, colorDrawable);
                        break;
                    case 4:
                        cls.getMethod(strG, CharSequence.class).invoke(view, constraintAttribute.f11715f);
                        break;
                    case 5:
                        cls.getMethod(strG, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.g));
                        break;
                    case 6:
                        cls.getMethod(strG, cls2).invoke(view, Float.valueOf(constraintAttribute.f11714e));
                        break;
                    case 7:
                        cls.getMethod(strG, cls3).invoke(view, Integer.valueOf(constraintAttribute.d));
                        break;
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
    }

    public final float a() {
        switch (this.f11713c.ordinal()) {
            case 0:
                return this.d;
            case 1:
            case 6:
                return this.f11714e;
            case 2:
            case 3:
                v7.h("Color does not have a single color to interpolate");
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            case 4:
                v7.h("Cannot interpolate String");
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            case 5:
                if (this.g) {
                    return 1.0f;
                }
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            default:
                return Float.NaN;
        }
    }

    public final void b(float[] fArr) {
        switch (this.f11713c.ordinal()) {
            case 0:
                fArr[0] = this.d;
                break;
            case 1:
                fArr[0] = this.f11714e;
                break;
            case 2:
            case 3:
                int i2 = this.f11716h;
                int i3 = (i2 >> 24) & 255;
                float fPow = (float) Math.pow(((i2 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((i2 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((i2 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i3 / 255.0f;
                break;
            case 4:
                v7.h("Color does not have a single color to interpolate");
                break;
            case 5:
                fArr[0] = this.g ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM;
                break;
            case 6:
                fArr[0] = this.f11714e;
                break;
        }
    }

    public final int c() {
        int iOrdinal = this.f11713c.ordinal();
        return (iOrdinal == 2 || iOrdinal == 3) ? 4 : 1;
    }

    public final void f(Object obj) {
        switch (this.f11713c.ordinal()) {
            case 0:
            case 7:
                this.d = ((Integer) obj).intValue();
                break;
            case 1:
                this.f11714e = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f11716h = ((Integer) obj).intValue();
                break;
            case 4:
                this.f11715f = (String) obj;
                break;
            case 5:
                this.g = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f11714e = ((Float) obj).floatValue();
                break;
        }
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj, boolean z) {
        this.f11712b = str;
        this.f11713c = attributeType;
        this.f11711a = z;
        f(obj);
    }

    public ConstraintAttribute(String str, AttributeType attributeType) {
        this.f11711a = false;
        this.f11712b = str;
        this.f11713c = attributeType;
    }
}
