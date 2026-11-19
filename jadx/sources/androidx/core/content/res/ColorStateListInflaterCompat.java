package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.R$styleable;
import androidx.core.math.MathUtils;
import com.vuitton.android.R;
import java.io.IOException;
import java.lang.reflect.Array;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class ColorStateListInflaterCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f12020a = new ThreadLocal();

    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlResourceParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0092  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r36v0, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.content.res.TypedArray] */
    public static ColorStateList b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        float f2;
        int iA;
        TypedValue typedValue;
        resources = resources;
        attributeSet = attributeSet;
        theme = theme;
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ?? r4 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        Object[] objArr = new int[20][];
        int[] iArr = new int[20];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == r4 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                int[] iArr2 = R$styleable.f11866a;
                ?? ObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr2) : theme.obtainStyledAttributes(attributeSet, iArr2, i2, i2);
                int resourceId = ObtainAttributes.getResourceId(i2, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f12020a;
                    TypedValue typedValue2 = (TypedValue) threadLocal.get();
                    if (typedValue2 == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    } else {
                        typedValue = typedValue2;
                    }
                    resources.getValue(resourceId, typedValue, r4);
                    int i4 = typedValue.type;
                    if (i4 < 28 || i4 > 31) {
                        try {
                            color = a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                        } catch (Exception unused) {
                            color = ObtainAttributes.getColor(i2, -65281);
                        }
                    } else {
                        color = ObtainAttributes.getColor(i2, -65281);
                    }
                } else {
                    color = ObtainAttributes.getColor(i2, -65281);
                }
                if (ObtainAttributes.hasValue(r4)) {
                    f2 = ObtainAttributes.getFloat(r4, 1.0f);
                } else {
                    f2 = ObtainAttributes.hasValue(3) ? ObtainAttributes.getFloat(3, 1.0f) : 1.0f;
                }
                ?? r16 = r4;
                float f3 = (Build.VERSION.SDK_INT < 31 || !ObtainAttributes.hasValue(2)) ? ObtainAttributes.getFloat(4, -1.0f) : ObtainAttributes.getFloat(2, -1.0f);
                ObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i5 = i2;
                int i6 = i5;
                while (i5 < attributeCount) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i5);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                        int i7 = i6 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i5, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i6] = attributeNameResource;
                        i6 = i7;
                    }
                    i5++;
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr3, i6);
                float f4 = 100.0f;
                boolean z = (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 > 100.0f) ? false : r16 == true ? 1 : 0;
                if (f2 != 1.0f || z) {
                    int iB = MathUtils.b((int) ((Color.alpha(color) * f2) + 0.5f), 0, 255);
                    if (z) {
                        CamColor camColorA = CamColor.a(color);
                        float f5 = camColorA.f12012a;
                        float f6 = camColorA.f12013b;
                        ViewingConditions viewingConditions = ViewingConditions.f12042k;
                        if (f6 >= 1.0d && Math.round(f3) > 0.0d && Math.round(f3) < 100.0d) {
                            float fMin = f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : Math.min(360.0f, f5);
                            float f7 = 0.0f;
                            float f8 = f6;
                            boolean z2 = r16 == true ? 1 : 0;
                            CamColor camColor = null;
                            while (true) {
                                if (Math.abs(f7 - f6) < 0.4f) {
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    depth2 = depth2;
                                    if (camColor != null) {
                                        iA = camColor.c(viewingConditions);
                                        break;
                                    }
                                    iA = CamUtils.a(f3);
                                    break;
                                }
                                float f9 = 1000.0f;
                                float f10 = f4;
                                float f11 = 0.0f;
                                float f12 = 1000.0f;
                                CamColor camColor2 = null;
                                while (true) {
                                    if (Math.abs(f11 - f10) <= 0.01f) {
                                        iArrTrimStateSet = iArrTrimStateSet;
                                        depth2 = depth2;
                                        f4 = f4;
                                        break;
                                    }
                                    f4 = f4;
                                    float f13 = ((f10 - f11) / 2.0f) + f11;
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    int iC = CamColor.b(f13, f8, fMin).c(ViewingConditions.f12042k);
                                    float fB = CamUtils.b(Color.red(iC));
                                    float fB2 = CamUtils.b(Color.green(iC));
                                    float fB3 = CamUtils.b(Color.blue(iC));
                                    float[] fArr = CamUtils.d[r16 == true ? 1 : 0];
                                    float f14 = ((fB3 * fArr[2]) + ((fB2 * fArr[r16 == true ? 1 : 0]) + (fB * fArr[0]))) / f4;
                                    float fCbrt = f14 <= 0.008856452f ? f14 * 903.2963f : (((float) Math.cbrt(f14)) * 116.0f) - 16.0f;
                                    float fAbs = Math.abs(f3 - fCbrt);
                                    if (fAbs < 0.2f) {
                                        CamColor camColorA2 = CamColor.a(iC);
                                        CamColor camColorB = CamColor.b(camColorA2.f12014c, camColorA2.f12013b, fMin);
                                        float f15 = camColorA2.d - camColorB.d;
                                        float f16 = camColorA2.f12015e - camColorB.f12015e;
                                        float f17 = camColorA2.f12016f - camColorB.f12016f;
                                        depth2 = depth2;
                                        float fPow = (float) (Math.pow(Math.sqrt((f17 * f17) + (f16 * f16) + (f15 * f15)), 0.63d) * 1.41d);
                                        if (fPow <= 1.0f) {
                                            f12 = fPow;
                                            f9 = fAbs;
                                            camColor2 = camColorA2;
                                        }
                                    } else {
                                        depth2 = depth2;
                                    }
                                    if (f9 == Call.Parameters.DEFAULT_CAMERA_ZOOM && f12 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        break;
                                    }
                                    if (fCbrt < f3) {
                                        f11 = f13;
                                    } else {
                                        f10 = f13;
                                    }
                                    f4 = f4;
                                    iArrTrimStateSet = iArrTrimStateSet;
                                    depth2 = depth2;
                                }
                                CamColor camColor3 = camColor2;
                                if (!z2) {
                                    if (camColor3 == null) {
                                        f6 = f8;
                                    } else {
                                        camColor = camColor3;
                                        f7 = f8;
                                    }
                                    f8 = ((f6 - f7) / 2.0f) + f7;
                                } else {
                                    if (camColor3 != null) {
                                        iA = camColor3.c(viewingConditions);
                                        break;
                                    }
                                    f8 = ((f6 - f7) / 2.0f) + f7;
                                    z2 = false;
                                }
                            }
                        } else {
                            iArrTrimStateSet = iArrTrimStateSet;
                            depth2 = depth2;
                            iA = CamUtils.a(f3);
                        }
                        color = iA;
                    } else {
                        iArrTrimStateSet = iArrTrimStateSet;
                        depth2 = depth2;
                    }
                    color = (16777215 & color) | (iB << 24);
                } else {
                    iArrTrimStateSet = iArrTrimStateSet;
                    depth2 = depth2;
                }
                int i8 = i3 + 1;
                if (i8 > iArr.length) {
                    int[] iArr4 = new int[i3 <= 4 ? 8 : i3 * 2];
                    System.arraycopy(iArr, 0, iArr4, 0, i3);
                    iArr = iArr4;
                }
                iArr[i3] = color;
                if (i8 > objArr.length) {
                    Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i3 > 4 ? i3 * 2 : 8);
                    System.arraycopy(objArr, 0, objArr2, 0, i3);
                    objArr = objArr2;
                }
                objArr[i3] = iArrTrimStateSet;
                objArr = (int[][]) objArr;
                i3 = i8;
                r4 = r16 == true ? 1 : 0;
                depth2 = depth2;
                i2 = 0;
            } else {
                int i9 = depth2;
                r4 = r4 == true ? 1 : 0;
                depth2 = i9;
                i2 = 0;
            }
        }
        int[] iArr5 = new int[i3];
        int[][] iArr6 = new int[i3][];
        System.arraycopy(iArr, 0, iArr5, 0, i3);
        System.arraycopy(objArr, 0, iArr6, 0, i3);
        return new ColorStateList(iArr6, iArr5);
    }
}
