package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import defpackage.ct0;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class AppCompatTextHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f1178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TintInfo f1179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TintInfo f1180c;
    public TintInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TintInfo f1181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TintInfo f1182f;
    public TintInfo g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TintInfo f1183h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AppCompatTextViewAutoSizeHelper f1184i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1185j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1186k = -1;
    public Typeface l;
    public boolean m;

    public static class Api24Impl {
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        public static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    public static class Api26Impl {
        public static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        public static void b(TextView textView, int i2, int i3, int i4, int i5) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
        }

        public static void c(TextView textView, int[] iArr, int i2) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
        }

        public static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    public static class Api28Impl {
        public static Typeface a(Typeface typeface, int i2, boolean z) {
            return Typeface.create(typeface, i2, z);
        }
    }

    public AppCompatTextHelper(TextView textView) {
        this.f1178a = textView;
        this.f1184i = new AppCompatTextViewAutoSizeHelper(textView);
    }

    public static TintInfo c(Context context, AppCompatDrawableManager appCompatDrawableManager, int i2) {
        ColorStateList colorStateListG;
        synchronized (appCompatDrawableManager) {
            colorStateListG = appCompatDrawableManager.f1124a.g(i2, context);
        }
        if (colorStateListG == null) {
            return null;
        }
        TintInfo tintInfo = new TintInfo();
        tintInfo.d = true;
        tintInfo.f1308a = colorStateListG;
        return tintInfo;
    }

    public final void a(Drawable drawable, TintInfo tintInfo) {
        if (drawable == null || tintInfo == null) {
            return;
        }
        AppCompatDrawableManager.e(drawable, tintInfo, this.f1178a.getDrawableState());
    }

    public final void b() {
        TintInfo tintInfo = this.f1179b;
        TextView textView = this.f1178a;
        if (tintInfo != null || this.f1180c != null || this.d != null || this.f1181e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f1179b);
            a(compoundDrawables[1], this.f1180c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.f1181e);
        }
        if (this.f1182f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f1182f);
        a(compoundDrawablesRelative[2], this.g);
    }

    public final ColorStateList d() {
        TintInfo tintInfo = this.f1183h;
        if (tintInfo != null) {
            return tintInfo.f1308a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        TintInfo tintInfo = this.f1183h;
        if (tintInfo != null) {
            return tintInfo.f1309b;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:244:0x0425  */
    /* JADX WARN: Code duplicated, block: B:246:0x042d  */
    /* JADX WARN: Code duplicated, block: B:248:0x043e  */
    /* JADX WARN: Code duplicated, block: B:249:0x0441  */
    /* JADX WARN: Code duplicated, block: B:252:0x0449  */
    /* JADX WARN: Code duplicated, block: B:255:0x045d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:256:0x045f  */
    /* JADX WARN: Code duplicated, block: B:258:0x0464  */
    /* JADX WARN: Code duplicated, block: B:262:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void f(AttributeSet attributeSet, int i2) {
        boolean z;
        boolean z2;
        String string;
        String string2;
        int i3;
        float dimensionPixelSize;
        int i4;
        Paint.FontMetricsInt fontMetricsInt;
        int i5;
        int resourceId;
        TextView textView = this.f1178a;
        Context context = textView.getContext();
        AppCompatDrawableManager appCompatDrawableManagerA = AppCompatDrawableManager.a();
        int[] iArr = R$styleable.f781h;
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, context, attributeSet, iArr);
        ViewCompat.s(textView, textView.getContext(), iArr, attributeSet, tintTypedArrayE.f1313b, i2, 0);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        int resourceId2 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.f1179b = c(context, appCompatDrawableManagerA, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.f1180c = c(context, appCompatDrawableManagerA, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.d = c(context, appCompatDrawableManagerA, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.f1181e = c(context, appCompatDrawableManagerA, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f1182f = c(context, appCompatDrawableManagerA, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.g = c(context, appCompatDrawableManagerA, typedArray.getResourceId(6, 0));
        }
        tintTypedArrayE.g();
        boolean z3 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = R$styleable.y;
        if (resourceId2 != -1) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId2, iArr2);
            TintTypedArray tintTypedArray = new TintTypedArray(context, typedArrayObtainStyledAttributes);
            if (z3 || !typedArrayObtainStyledAttributes.hasValue(14)) {
                z = false;
                z2 = false;
            } else {
                z2 = typedArrayObtainStyledAttributes.getBoolean(14, false);
                z = true;
            }
            j(context, tintTypedArray);
            string2 = typedArrayObtainStyledAttributes.hasValue(15) ? typedArrayObtainStyledAttributes.getString(15) : null;
            string = typedArrayObtainStyledAttributes.hasValue(13) ? typedArrayObtainStyledAttributes.getString(13) : null;
            tintTypedArray.g();
        } else {
            z = false;
            z2 = false;
            string = null;
            string2 = null;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
        TintTypedArray tintTypedArray2 = new TintTypedArray(context, typedArrayObtainStyledAttributes2);
        if (!z3 && typedArrayObtainStyledAttributes2.hasValue(14)) {
            z2 = typedArrayObtainStyledAttributes2.getBoolean(14, false);
            z = true;
        }
        boolean z4 = z2;
        if (typedArrayObtainStyledAttributes2.hasValue(15)) {
            string2 = typedArrayObtainStyledAttributes2.getString(15);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(13)) {
            string = typedArrayObtainStyledAttributes2.getString(13);
        }
        if (typedArrayObtainStyledAttributes2.hasValue(0) && typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        j(context, tintTypedArray2);
        tintTypedArray2.g();
        if (!z3 && z) {
            textView.setAllCaps(z4);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.f1186k == -1) {
                textView.setTypeface(typeface, this.f1185j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (string != null) {
            Api26Impl.d(textView, string);
        }
        if (string2 != null) {
            Api24Impl.b(textView, Api24Impl.a(string2));
        }
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.f1184i;
        Context context2 = appCompatTextViewAutoSizeHelper.f1198h;
        int[] iArr3 = R$styleable.f782i;
        TypedArray typedArrayObtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr3, i2, 0);
        TextView textView2 = appCompatTextViewAutoSizeHelper.g;
        ViewCompat.s(textView2, textView2.getContext(), iArr3, attributeSet, typedArrayObtainStyledAttributes3, i2, 0);
        if (typedArrayObtainStyledAttributes3.hasValue(5)) {
            appCompatTextViewAutoSizeHelper.f1193a = typedArrayObtainStyledAttributes3.getInt(5, 0);
        }
        float dimension = typedArrayObtainStyledAttributes3.hasValue(4) ? typedArrayObtainStyledAttributes3.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes3.hasValue(2) ? typedArrayObtainStyledAttributes3.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes3.hasValue(1) ? typedArrayObtainStyledAttributes3.getDimension(1, -1.0f) : -1.0f;
        if (!typedArrayObtainStyledAttributes3.hasValue(3) || (resourceId = typedArrayObtainStyledAttributes3.getResourceId(3, 0)) <= 0) {
            i3 = 0;
        } else {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes3.getResources().obtainTypedArray(resourceId);
            int length = typedArrayObtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                i3 = 0;
                for (int i6 = 0; i6 < length; i6++) {
                    iArr4[i6] = typedArrayObtainTypedArray.getDimensionPixelSize(i6, -1);
                }
                int[] iArrA = AppCompatTextViewAutoSizeHelper.a(iArr4);
                appCompatTextViewAutoSizeHelper.f1196e = iArrA;
                int length2 = iArrA.length;
                boolean z5 = length2 > 0;
                appCompatTextViewAutoSizeHelper.f1197f = z5;
                if (z5) {
                    appCompatTextViewAutoSizeHelper.f1193a = 1;
                    appCompatTextViewAutoSizeHelper.f1195c = iArrA[0];
                    appCompatTextViewAutoSizeHelper.d = iArrA[length2 - 1];
                    appCompatTextViewAutoSizeHelper.f1194b = -1.0f;
                }
            } else {
                i3 = 0;
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes3.recycle();
        if (!appCompatTextViewAutoSizeHelper.b()) {
            appCompatTextViewAutoSizeHelper.f1193a = i3;
        } else if (appCompatTextViewAutoSizeHelper.f1193a == 1) {
            if (!appCompatTextViewAutoSizeHelper.f1197f) {
                DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                float f2 = dimension3;
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                if (dimension2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    throw new IllegalArgumentException("Minimum auto-size text size (" + dimension2 + "px) is less or equal to (0px)");
                }
                if (f2 <= dimension2) {
                    ct0.k("Maximum auto-size text size (", f2, "px) is less or equal to minimum auto-size text size (", dimension2, "px)");
                    return;
                }
                if (dimension <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    throw new IllegalArgumentException("The auto-size step granularity (" + dimension + "px) is less or equal to (0px)");
                }
                appCompatTextViewAutoSizeHelper.f1193a = 1;
                appCompatTextViewAutoSizeHelper.f1195c = dimension2;
                appCompatTextViewAutoSizeHelper.d = f2;
                appCompatTextViewAutoSizeHelper.f1194b = dimension;
                appCompatTextViewAutoSizeHelper.f1197f = i3;
            }
            if (appCompatTextViewAutoSizeHelper.b() && appCompatTextViewAutoSizeHelper.f1193a == 1 && (!appCompatTextViewAutoSizeHelper.f1197f || appCompatTextViewAutoSizeHelper.f1196e.length == 0)) {
                int iFloor = ((int) Math.floor((appCompatTextViewAutoSizeHelper.d - appCompatTextViewAutoSizeHelper.f1195c) / appCompatTextViewAutoSizeHelper.f1194b)) + 1;
                int[] iArr5 = new int[iFloor];
                for (int i7 = 0; i7 < iFloor; i7++) {
                    iArr5[i7] = Math.round((i7 * appCompatTextViewAutoSizeHelper.f1194b) + appCompatTextViewAutoSizeHelper.f1195c);
                }
                appCompatTextViewAutoSizeHelper.f1196e = AppCompatTextViewAutoSizeHelper.a(iArr5);
            }
        }
        if (appCompatTextViewAutoSizeHelper.f1193a != 0) {
            int[] iArr6 = appCompatTextViewAutoSizeHelper.f1196e;
            if (iArr6.length > 0) {
                if (Api26Impl.a(textView) != -1.0f) {
                    Api26Impl.b(textView, Math.round(appCompatTextViewAutoSizeHelper.f1195c), Math.round(appCompatTextViewAutoSizeHelper.d), Math.round(appCompatTextViewAutoSizeHelper.f1194b), 0);
                } else {
                    Api26Impl.c(textView, iArr6, 0);
                }
            }
        }
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        TintTypedArray tintTypedArray3 = new TintTypedArray(context, typedArrayObtainStyledAttributes4);
        int resourceId3 = typedArrayObtainStyledAttributes4.getResourceId(8, -1);
        Drawable drawableB = resourceId3 != -1 ? appCompatDrawableManagerA.b(context, resourceId3) : null;
        int resourceId4 = typedArrayObtainStyledAttributes4.getResourceId(13, -1);
        Drawable drawableB2 = resourceId4 != -1 ? appCompatDrawableManagerA.b(context, resourceId4) : null;
        int resourceId5 = typedArrayObtainStyledAttributes4.getResourceId(9, -1);
        Drawable drawableB3 = resourceId5 != -1 ? appCompatDrawableManagerA.b(context, resourceId5) : null;
        int resourceId6 = typedArrayObtainStyledAttributes4.getResourceId(6, -1);
        Drawable drawableB4 = resourceId6 != -1 ? appCompatDrawableManagerA.b(context, resourceId6) : null;
        int resourceId7 = typedArrayObtainStyledAttributes4.getResourceId(10, -1);
        Drawable drawableB5 = resourceId7 != -1 ? appCompatDrawableManagerA.b(context, resourceId7) : null;
        int resourceId8 = typedArrayObtainStyledAttributes4.getResourceId(7, -1);
        Drawable drawableB6 = resourceId8 != -1 ? appCompatDrawableManagerA.b(context, resourceId8) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (drawableB5 == null) {
                drawableB5 = compoundDrawablesRelative[0];
            }
            if (drawableB2 == null) {
                drawableB2 = compoundDrawablesRelative[1];
            }
            if (drawableB6 == null) {
                drawableB6 = compoundDrawablesRelative[2];
            }
            if (drawableB4 == null) {
                drawableB4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
            Drawable drawable = compoundDrawablesRelative2[0];
            if (drawable == null && compoundDrawablesRelative2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawablesRelative2[1];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawablesRelative2[3];
                }
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawableB2, compoundDrawablesRelative2[2], drawableB4);
            }
        }
        if (typedArrayObtainStyledAttributes4.hasValue(11)) {
            textView.setCompoundDrawableTintList(tintTypedArray3.a(11));
        }
        if (typedArrayObtainStyledAttributes4.hasValue(12)) {
            textView.setCompoundDrawableTintMode(DrawableUtils.c(typedArrayObtainStyledAttributes4.getInt(12, -1), null));
        }
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(15, -1);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(18, -1);
        if (typedArrayObtainStyledAttributes4.hasValue(19)) {
            TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes4.peekValue(19);
            if (typedValuePeekValue == null || typedValuePeekValue.type != 5) {
                dimensionPixelSize = typedArrayObtainStyledAttributes4.getDimensionPixelSize(19, -1);
            } else {
                int i8 = typedValuePeekValue.data;
                i4 = i8 & 15;
                dimensionPixelSize = TypedValue.complexToFloat(i8);
            }
            tintTypedArray3.g();
            if (dimensionPixelSize2 != -1) {
                Preconditions.d(dimensionPixelSize2);
                textView.setFirstBaselineToTopHeight(dimensionPixelSize2);
            }
            if (dimensionPixelSize3 != -1) {
                Preconditions.d(dimensionPixelSize3);
                fontMetricsInt = textView.getPaint().getFontMetricsInt();
                if (textView.getIncludeFontPadding()) {
                    i5 = fontMetricsInt.bottom;
                } else {
                    i5 = fontMetricsInt.descent;
                }
                if (dimensionPixelSize3 > Math.abs(i5)) {
                    textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize3 - i5);
                }
            }
            if (dimensionPixelSize != -1.0f) {
                if (i4 == -1) {
                    TextViewCompat.a(textView, (int) dimensionPixelSize);
                } else {
                    TextViewCompat.b(textView, i4, dimensionPixelSize);
                }
            }
        }
        dimensionPixelSize = -1.0f;
        i4 = -1;
        tintTypedArray3.g();
        if (dimensionPixelSize2 != -1) {
            Preconditions.d(dimensionPixelSize2);
            textView.setFirstBaselineToTopHeight(dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != -1) {
            Preconditions.d(dimensionPixelSize3);
            fontMetricsInt = textView.getPaint().getFontMetricsInt();
            if (textView.getIncludeFontPadding()) {
                i5 = fontMetricsInt.bottom;
            } else {
                i5 = fontMetricsInt.descent;
            }
            if (dimensionPixelSize3 > Math.abs(i5)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize3 - i5);
            }
        }
        if (dimensionPixelSize != -1.0f) {
            if (i4 == -1) {
                TextViewCompat.a(textView, (int) dimensionPixelSize);
            } else {
                TextViewCompat.b(textView, i4, dimensionPixelSize);
            }
        }
    }

    public final void g(int i2, Context context) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i2, R$styleable.y);
        TintTypedArray tintTypedArray = new TintTypedArray(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f1178a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        j(context, tintTypedArray);
        if (typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            Api26Impl.d(textView, string);
        }
        tintTypedArray.g();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f1185j);
        }
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f1183h == null) {
            this.f1183h = new TintInfo();
        }
        TintInfo tintInfo = this.f1183h;
        tintInfo.f1308a = colorStateList;
        tintInfo.d = colorStateList != null;
        this.f1179b = tintInfo;
        this.f1180c = tintInfo;
        this.d = tintInfo;
        this.f1181e = tintInfo;
        this.f1182f = tintInfo;
        this.g = tintInfo;
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.f1183h == null) {
            this.f1183h = new TintInfo();
        }
        TintInfo tintInfo = this.f1183h;
        tintInfo.f1309b = mode;
        tintInfo.f1310c = mode != null;
        this.f1179b = tintInfo;
        this.f1180c = tintInfo;
        this.d = tintInfo;
        this.f1181e = tintInfo;
        this.f1182f = tintInfo;
        this.g = tintInfo;
    }

    public final void j(Context context, TintTypedArray tintTypedArray) {
        String string;
        int i2 = this.f1185j;
        TypedArray typedArray = tintTypedArray.f1313b;
        this.f1185j = typedArray.getInt(2, i2);
        int i3 = typedArray.getInt(11, -1);
        this.f1186k = i3;
        if (i3 != -1) {
            this.f1185j &= 2;
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.m = false;
                int i4 = typedArray.getInt(1, 1);
                if (i4 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (i4 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (i4 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i5 = typedArray.hasValue(12) ? 12 : 10;
        final int i6 = this.f1186k;
        final int i7 = this.f1185j;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.f1178a);
            try {
                Typeface typefaceD = tintTypedArray.d(i5, this.f1185j, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void b(int i8) {
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    public final void c(final Typeface typeface) {
                        int i8 = i6;
                        if (i8 != -1) {
                            typeface = Api28Impl.a(typeface, i8, (i7 & 2) != 0);
                        }
                        final AppCompatTextHelper appCompatTextHelper = AppCompatTextHelper.this;
                        if (appCompatTextHelper.m) {
                            appCompatTextHelper.l = typeface;
                            final TextView textView = (TextView) weakReference.get();
                            if (textView != null) {
                                boolean zIsAttachedToWindow = textView.isAttachedToWindow();
                                final int i9 = appCompatTextHelper.f1185j;
                                if (zIsAttachedToWindow) {
                                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            textView.setTypeface(typeface, i9);
                                        }
                                    });
                                } else {
                                    textView.setTypeface(typeface, i9);
                                }
                            }
                        }
                    }
                });
                if (typefaceD != null) {
                    if (this.f1186k != -1) {
                        this.l = Api28Impl.a(Typeface.create(typefaceD, 0), this.f1186k, (this.f1185j & 2) != 0);
                    } else {
                        this.l = typefaceD;
                    }
                }
                this.m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (string = typedArray.getString(i5)) == null) {
            return;
        }
        if (this.f1186k != -1) {
            this.l = Api28Impl.a(Typeface.create(string, 0), this.f1186k, (this.f1185j & 2) != 0);
        } else {
            this.l = Typeface.create(string, this.f1185j);
        }
    }
}
