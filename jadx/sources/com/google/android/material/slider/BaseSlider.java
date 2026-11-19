package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import com.vuitton.android.R;
import defpackage.cj;
import defpackage.d21;
import defpackage.md;
import defpackage.r81;
import defpackage.tr;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.math.BigDecimal;
import java.math.MathContext;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {
    public static final /* synthetic */ int W1 = 0;
    public int A;
    public ColorStateList A1;
    public final int B;
    public ColorStateList B1;
    public int C;
    public ColorStateList C1;
    public int D;
    public final Path D1;
    public int E;
    public final RectF E1;
    public int F;
    public final RectF F1;
    public int G;
    public final RectF G1;
    public int H;
    public final RectF H1;
    public int I;
    public final Rect I1;
    public int J;
    public final RectF J1;
    public int K;
    public final Rect K1;
    public int L;
    public final Matrix L1;
    public int M;
    public final MaterialShapeDrawable M1;
    public int N;
    public Drawable N1;
    public int O;
    public List O1;
    public boolean P;
    public float P1;
    public Drawable Q;
    public int Q1;
    public boolean R;
    public final int R1;
    public Drawable S;
    public final b S1;
    public boolean T;
    public final c T1;
    public final d U1;
    public ColorStateList V;
    public boolean V1;
    public Drawable W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f33047b;
    public boolean b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f33048c;
    public ColorStateList c1;
    public final Paint d;
    public int d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Paint f33049e;
    public final int e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Paint f33050f;
    public final int f1;
    public final Paint g;
    public float g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f33051h;
    public boolean h0;
    public float h1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AccessibilityHelper f33052i;
    public MotionEvent i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AccessibilityManager f33053j;
    public LabelFormatter j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AccessibilityEventSender f33054k;
    public boolean k1;
    public final int l;
    public float l1;
    public final ArrayList m;
    public float m1;
    public final ArrayList n;
    public ArrayList n1;
    public final ArrayList o;
    public int o1;
    public boolean p;
    public int p1;
    public ValueAnimator q;
    public float q1;
    public ValueAnimator r;
    public float[] r1;
    public final int s;
    public int s1;
    public final int t;
    public Drawable t0;
    public int t1;
    public final int u;
    public int u1;
    public final int v;
    public int v1;
    public final int w;
    public boolean w1;
    public final int x;
    public boolean x1;
    public final int y;
    public ColorStateList y1;
    public final int z;
    public ColorStateList z1;

    public class AccessibilityEventSender implements Runnable {
        int virtualViewId;

        private AccessibilityEventSender() {
            this.virtualViewId = -1;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f33052i.x(this.virtualViewId, 4);
        }

        public void setVirtualViewId(int i2) {
            this.virtualViewId = i2;
        }
    }

    public static class AccessibilityHelper extends ExploreByTouchHelper {
        public final BaseSlider r;
        public final Rect s;

        public AccessibilityHelper(BaseSlider baseSlider) {
            super(baseSlider);
            this.s = new Rect();
            this.r = baseSlider;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final int n(float f2, float f3) {
            int i2 = 0;
            while (true) {
                BaseSlider baseSlider = this.r;
                if (i2 >= baseSlider.getValues().size()) {
                    return -1;
                }
                Rect rect = this.s;
                baseSlider.D(i2, rect);
                if (rect.contains((int) f2, (int) f3)) {
                    return i2;
                }
                i2++;
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void o(ArrayList arrayList) {
            for (int i2 = 0; i2 < this.r.getValues().size(); i2++) {
                arrayList.add(Integer.valueOf(i2));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean s(int i2, int i3, Bundle bundle) {
            BaseSlider baseSlider = this.r;
            if (!baseSlider.isEnabled()) {
                return false;
            }
            if (i3 != 4096 && i3 != 8192) {
                if (i3 != 16908349 || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                    return false;
                }
                float f2 = bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
                int i4 = BaseSlider.W1;
                if (!baseSlider.B(f2, i2)) {
                    return false;
                }
                baseSlider.E();
                baseSlider.postInvalidate();
                p(i2);
                return true;
            }
            int i5 = BaseSlider.W1;
            float fRound = baseSlider.q1;
            if (fRound == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fRound = 1.0f;
            }
            float f3 = (baseSlider.m1 - baseSlider.l1) / fRound;
            if (f3 > 20.0f) {
                fRound *= Math.round(f3 / 20.0f);
            }
            if (i3 == 8192) {
                fRound = -fRound;
            }
            if (baseSlider.s()) {
                fRound = -fRound;
            }
            if (!baseSlider.B(MathUtils.a(baseSlider.getValues().get(i2).floatValue() + fRound, baseSlider.getValueFrom(), baseSlider.getValueTo()), i2)) {
                return false;
            }
            baseSlider.setActiveThumbIndex(i2);
            d dVar = baseSlider.U1;
            baseSlider.removeCallbacks(dVar);
            baseSlider.postDelayed(dVar, baseSlider.R1);
            baseSlider.E();
            baseSlider.postInvalidate();
            p(i2);
            return true;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void u(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String string;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
            accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.r);
            BaseSlider baseSlider = this.r;
            List<Float> values = baseSlider.getValues();
            float fFloatValue = values.get(i2).floatValue();
            float valueFrom = baseSlider.getValueFrom();
            float valueTo = baseSlider.getValueTo();
            if (baseSlider.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.a(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.a(4096);
                }
            }
            NumberFormat numberInstance = NumberFormat.getNumberInstance();
            numberInstance.setMaximumFractionDigits(2);
            try {
                valueFrom = numberInstance.parse(numberInstance.format(valueFrom)).floatValue();
                valueTo = numberInstance.parse(numberInstance.format(valueTo)).floatValue();
                fFloatValue = numberInstance.parse(numberInstance.format(fFloatValue)).floatValue();
            } catch (ParseException unused) {
                int i3 = BaseSlider.W1;
            }
            accessibilityNodeInfo.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.i(SeekBar.class.getName());
            StringBuilder sb = new StringBuilder();
            if (baseSlider.getContentDescription() != null) {
                sb.append(baseSlider.getContentDescription());
                sb.append(",");
            }
            String strL = baseSlider.l(fFloatValue);
            String string2 = baseSlider.getContext().getString(R.string.material_slider_value);
            if (values.size() > 1) {
                if (i2 == baseSlider.getValues().size() - 1) {
                    string = baseSlider.getContext().getString(R.string.material_slider_range_end);
                } else {
                    string = i2 == 0 ? baseSlider.getContext().getString(R.string.material_slider_range_start) : "";
                }
                string2 = string;
            }
            CharSequence charSequenceK = ViewCompat.k(baseSlider);
            if (TextUtils.isEmpty(charSequenceK)) {
                Locale.getDefault();
                sb.append(string2 + ", " + strL);
            } else {
                accessibilityNodeInfoCompat.n(charSequenceK);
            }
            accessibilityNodeInfoCompat.l(sb.toString());
            Rect rect = this.s;
            baseSlider.D(i2, rect);
            accessibilityNodeInfo.setBoundsInParent(rect);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class FullCornerDirection {
        private static final /* synthetic */ FullCornerDirection[] $VALUES;
        public static final FullCornerDirection BOTH;
        public static final FullCornerDirection LEFT;
        public static final FullCornerDirection NONE;
        public static final FullCornerDirection RIGHT;

        static {
            FullCornerDirection fullCornerDirection = new FullCornerDirection("BOTH", 0);
            BOTH = fullCornerDirection;
            FullCornerDirection fullCornerDirection2 = new FullCornerDirection("LEFT", 1);
            LEFT = fullCornerDirection2;
            FullCornerDirection fullCornerDirection3 = new FullCornerDirection("RIGHT", 2);
            RIGHT = fullCornerDirection3;
            FullCornerDirection fullCornerDirection4 = new FullCornerDirection("NONE", 3);
            NONE = fullCornerDirection4;
            $VALUES = new FullCornerDirection[]{fullCornerDirection, fullCornerDirection2, fullCornerDirection3, fullCornerDirection4};
        }

        public static FullCornerDirection valueOf(String str) {
            return (FullCornerDirection) Enum.valueOf(FullCornerDirection.class, str);
        }

        public static FullCornerDirection[] values() {
            return (FullCornerDirection[]) $VALUES.clone();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f33056b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f33057c;
        public ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f33058e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f33059f;

        /* JADX INFO: renamed from: com.google.android.material.slider.BaseSlider$SliderState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<SliderState> {
            @Override // android.os.Parcelable.Creator
            public final SliderState createFromParcel(Parcel parcel) {
                SliderState sliderState = new SliderState(parcel);
                sliderState.f33056b = parcel.readFloat();
                sliderState.f33057c = parcel.readFloat();
                ArrayList arrayList = new ArrayList();
                sliderState.d = arrayList;
                parcel.readList(arrayList, Float.class.getClassLoader());
                sliderState.f33058e = parcel.readFloat();
                sliderState.f33059f = parcel.createBooleanArray()[0];
                return sliderState;
            }

            @Override // android.os.Parcelable.Creator
            public final SliderState[] newArray(int i2) {
                return new SliderState[i2];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeFloat(this.f33056b);
            parcel.writeFloat(this.f33057c);
            parcel.writeList(this.d);
            parcel.writeFloat(this.f33058e);
            parcel.writeBooleanArray(new boolean[]{this.f33059f});
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.material.slider.b] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.material.slider.c] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.material.slider.d] */
    public BaseSlider(Context context, AttributeSet attributeSet, int i2) {
        int i3;
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_MaterialComponents_Slider), attributeSet, i2);
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.p = false;
        this.K = -1;
        this.L = -1;
        this.P = false;
        this.R = false;
        this.T = false;
        this.h0 = false;
        this.b1 = false;
        this.k1 = false;
        this.n1 = new ArrayList();
        this.o1 = -1;
        this.p1 = -1;
        this.q1 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.w1 = false;
        this.D1 = new Path();
        this.E1 = new RectF();
        this.F1 = new RectF();
        this.G1 = new RectF();
        this.H1 = new RectF();
        this.I1 = new Rect();
        this.J1 = new RectF();
        this.K1 = new Rect();
        this.L1 = new Matrix();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.M1 = materialShapeDrawable;
        this.O1 = Collections.EMPTY_LIST;
        this.Q1 = 0;
        this.S1 = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.material.slider.b
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                int i4 = BaseSlider.W1;
                this.f33063b.F();
            }
        };
        this.T1 = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.slider.c
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                int i4 = BaseSlider.W1;
                this.f33064b.F();
            }
        };
        this.U1 = new Runnable() { // from class: com.google.android.material.slider.d
            @Override // java.lang.Runnable
            public final void run() {
                int i4 = BaseSlider.W1;
                BaseSlider baseSlider = this.f33065b;
                baseSlider.setActiveThumbIndex(-1);
                baseSlider.invalidate();
            }
        };
        Context context2 = getContext();
        this.V1 = isShown();
        this.f33047b = new Paint();
        this.f33048c = new Paint();
        Paint paint = new Paint(1);
        this.d = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.f33049e = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.f33050f = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.g = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.f33051h = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        Resources resources = context2.getResources();
        this.B = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.t = dimensionPixelOffset;
        this.F = dimensionPixelOffset;
        this.u = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.v = resources.getDimensionPixelSize(R.dimen.mtrl_slider_track_height);
        this.w = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.x = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_radius);
        this.y = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_min_spacing);
        this.f1 = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
        this.e1 = resources.getDimensionPixelOffset(R.dimen.m3_slider_track_icon_padding);
        ThemeEnforcement.a(context2, attributeSet, i2, R.style.Widget_MaterialComponents_Slider);
        int[] iArr = R$styleable.R;
        ThemeEnforcement.b(context2, attributeSet, iArr, i2, R.style.Widget_MaterialComponents_Slider, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i2, R.style.Widget_MaterialComponents_Slider);
        setOrientation(typedArrayObtainStyledAttributes.getInt(2, 0));
        this.l = typedArrayObtainStyledAttributes.getResourceId(10, R.style.Widget_MaterialComponents_Tooltip);
        this.l1 = typedArrayObtainStyledAttributes.getFloat(4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.m1 = typedArrayObtainStyledAttributes.getFloat(5, 1.0f);
        setValues(Float.valueOf(this.l1));
        setCentered(typedArrayObtainStyledAttributes.getBoolean(6, false));
        this.q1 = typedArrayObtainStyledAttributes.getFloat(3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.z = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(11, MaterialAttributes.c(context2)));
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(27);
        int i4 = zHasValue ? 27 : 29;
        int i5 = zHasValue ? 27 : 28;
        ColorStateList colorStateListA = MaterialResources.a(context2, typedArrayObtainStyledAttributes, i4);
        setTrackInactiveTintList(colorStateListA == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_inactive_track_color) : colorStateListA);
        ColorStateList colorStateListA2 = MaterialResources.a(context2, typedArrayObtainStyledAttributes, i5);
        setTrackActiveTintList(colorStateListA2 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_active_track_color) : colorStateListA2);
        materialShapeDrawable.r(MaterialResources.a(context2, typedArrayObtainStyledAttributes, 12));
        if (typedArrayObtainStyledAttributes.hasValue(16)) {
            setThumbStrokeColor(MaterialResources.a(context2, typedArrayObtainStyledAttributes, 16));
        }
        setThumbStrokeWidth(typedArrayObtainStyledAttributes.getDimension(17, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        ColorStateList colorStateListA3 = MaterialResources.a(context2, typedArrayObtainStyledAttributes, 7);
        setHaloTintList(colorStateListA3 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_halo_color) : colorStateListA3);
        if (typedArrayObtainStyledAttributes.hasValue(25)) {
            i3 = typedArrayObtainStyledAttributes.getInt(25, -1);
        } else {
            i3 = typedArrayObtainStyledAttributes.getBoolean(26, true) ? 0 : 2;
        }
        this.s1 = i3;
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(20);
        int i6 = zHasValue2 ? 20 : 22;
        int i7 = zHasValue2 ? 20 : 21;
        ColorStateList colorStateListA4 = MaterialResources.a(context2, typedArrayObtainStyledAttributes, i6);
        setTickInactiveTintList(colorStateListA4 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_inactive_tick_marks_color) : colorStateListA4);
        ColorStateList colorStateListA5 = MaterialResources.a(context2, typedArrayObtainStyledAttributes, i7);
        setTickActiveTintList(colorStateListA5 == null ? ContextCompat.getColorStateList(context2, R.color.material_slider_active_tick_marks_color) : colorStateListA5);
        setThumbTrackGapSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(18, 0));
        setTrackStopIndicatorSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(40, 0));
        setTrackCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(30, -1));
        setTrackInsideCornerSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(39, 0));
        setTrackIconActiveStart(MaterialResources.d(context2, typedArrayObtainStyledAttributes, 34));
        setTrackIconActiveEnd(MaterialResources.d(context2, typedArrayObtainStyledAttributes, 33));
        setTrackIconActiveColor(MaterialResources.a(context2, typedArrayObtainStyledAttributes, 32));
        setTrackIconInactiveStart(MaterialResources.d(context2, typedArrayObtainStyledAttributes, 37));
        setTrackIconInactiveEnd(MaterialResources.d(context2, typedArrayObtainStyledAttributes, 36));
        setTrackIconInactiveColor(MaterialResources.a(context2, typedArrayObtainStyledAttributes, 35));
        setTrackIconSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(38, 0));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(15, 0) * 2;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(19, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(14, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0));
        setThumbElevation(typedArrayObtainStyledAttributes.getDimension(13, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        setTrackHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(31, 0));
        setTickActiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(23, this.M / 2));
        setTickInactiveRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(24, this.M / 2));
        setLabelBehavior(typedArrayObtainStyledAttributes.getInt(9, 0));
        if (!typedArrayObtainStyledAttributes.getBoolean(0, true)) {
            setEnabled(false);
        }
        typedArrayObtainStyledAttributes.recycle();
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.v(2);
        this.s = ViewConfiguration.get(context2).getScaledTouchSlop();
        AccessibilityHelper accessibilityHelper = new AccessibilityHelper(this);
        this.f33052i = accessibilityHelper;
        ViewCompat.t(this, accessibilityHelper);
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f33053j = accessibilityManager;
        this.R1 = accessibilityManager.getRecommendedTimeoutMillis(10000, 6);
    }

    public final void A(ArrayList arrayList) {
        ViewGroup viewGroupE;
        int resourceId;
        ViewGroup viewGroupE2;
        if (arrayList.isEmpty()) {
            md.n("At least one value must be set");
            return;
        }
        Collections.sort(arrayList);
        if (this.n1.size() == arrayList.size() && this.n1.equals(arrayList)) {
            return;
        }
        this.n1 = arrayList;
        this.x1 = true;
        this.p1 = 0;
        E();
        ArrayList arrayList2 = this.m;
        if (arrayList2.size() > this.n1.size()) {
            List<TooltipDrawable> listSubList = arrayList2.subList(this.n1.size(), arrayList2.size());
            for (TooltipDrawable tooltipDrawable : listSubList) {
                if (isAttachedToWindow() && (viewGroupE2 = ViewUtils.e(this)) != null) {
                    viewGroupE2.getOverlay().remove(tooltipDrawable);
                    viewGroupE2.removeOnLayoutChangeListener(tooltipDrawable.M);
                }
            }
            listSubList.clear();
        }
        while (arrayList2.size() < this.n1.size()) {
            Context context = getContext();
            int i2 = this.l;
            TooltipDrawable tooltipDrawable2 = new TooltipDrawable(context, i2);
            TypedArray typedArrayD = ThemeEnforcement.d(tooltipDrawable2.J, null, R$styleable.a0, 0, i2, new int[0]);
            Context context2 = tooltipDrawable2.J;
            tooltipDrawable2.T = context2.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
            boolean z = typedArrayD.getBoolean(8, true);
            tooltipDrawable2.S = z;
            if (z) {
                ShapeAppearanceModel shapeAppearanceModel = tooltipDrawable2.f32936c.f32945a;
                shapeAppearanceModel.getClass();
                ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
                builder.f32976k = tooltipDrawable2.E();
                tooltipDrawable2.setShapeAppearanceModel(builder.a());
            } else {
                tooltipDrawable2.T = 0;
            }
            CharSequence text = typedArrayD.getText(6);
            boolean zEquals = TextUtils.equals(tooltipDrawable2.I, text);
            TextDrawableHelper textDrawableHelper = tooltipDrawable2.L;
            if (!zEquals) {
                tooltipDrawable2.I = text;
                textDrawableHelper.f32734e = true;
                tooltipDrawable2.invalidateSelf();
            }
            TextAppearance textAppearance = (!typedArrayD.hasValue(0) || (resourceId = typedArrayD.getResourceId(0, 0)) == 0) ? null : new TextAppearance(context2, resourceId);
            if (textAppearance != null && typedArrayD.hasValue(1)) {
                textAppearance.f32876k = MaterialResources.a(context2, typedArrayD, 1);
            }
            textDrawableHelper.c(textAppearance, context2);
            tooltipDrawable2.r(ColorStateList.valueOf(typedArrayD.getColor(7, ColorUtils.c(ColorUtils.e(MaterialColors.d(context2, R.attr.colorOnBackground, TooltipDrawable.class.getCanonicalName()), 153), ColorUtils.e(MaterialColors.d(context2, android.R.attr.colorBackground, TooltipDrawable.class.getCanonicalName()), 229)))));
            tooltipDrawable2.x(ColorStateList.valueOf(MaterialColors.d(context2, R.attr.colorSurface, TooltipDrawable.class.getCanonicalName())));
            tooltipDrawable2.O = typedArrayD.getDimensionPixelSize(2, 0);
            tooltipDrawable2.P = typedArrayD.getDimensionPixelSize(4, 0);
            tooltipDrawable2.Q = typedArrayD.getDimensionPixelSize(5, 0);
            tooltipDrawable2.R = typedArrayD.getDimensionPixelSize(3, 0);
            typedArrayD.recycle();
            arrayList2.add(tooltipDrawable2);
            if (isAttachedToWindow() && (viewGroupE = ViewUtils.e(this)) != null) {
                int[] iArr = new int[2];
                viewGroupE.getLocationOnScreen(iArr);
                tooltipDrawable2.V = iArr[0];
                viewGroupE.getWindowVisibleDisplayFrame(tooltipDrawable2.N);
                viewGroupE.addOnLayoutChangeListener(tooltipDrawable2.M);
            }
        }
        int i3 = arrayList2.size() == 1 ? 0 : 1;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((TooltipDrawable) it.next()).y(i3);
        }
        for (BaseOnChangeListener baseOnChangeListener : this.n) {
            Iterator it2 = this.n1.iterator();
            while (it2.hasNext()) {
                baseOnChangeListener.a(this, ((Float) it2.next()).floatValue(), false);
            }
        }
        postInvalidate();
    }

    public final boolean B(float f2, int i2) {
        this.p1 = i2;
        if (Math.abs(f2 - ((Float) this.n1.get(i2)).floatValue()) < 1.0E-4d) {
            return false;
        }
        float minSeparation = getMinSeparation();
        if (this.Q1 == 0) {
            if (minSeparation == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                minSeparation = 0.0f;
            } else {
                float f3 = (minSeparation - this.F) / this.v1;
                float f4 = this.l1;
                minSeparation = tr.a(f4, this.m1, f3, f4);
            }
        }
        if (s() || t()) {
            minSeparation = -minSeparation;
        }
        int i3 = i2 + 1;
        int i4 = i2 - 1;
        this.n1.set(i2, Float.valueOf(MathUtils.a(f2, i4 < 0 ? this.l1 : minSeparation + ((Float) this.n1.get(i4)).floatValue(), i3 >= this.n1.size() ? this.m1 : ((Float) this.n1.get(i3)).floatValue() - minSeparation)));
        Iterator it = this.n.iterator();
        while (it.hasNext()) {
            ((BaseOnChangeListener) it.next()).a(this, ((Float) this.n1.get(i2)).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f33053j;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            AccessibilityEventSender accessibilityEventSender = this.f33054k;
            if (accessibilityEventSender == null) {
                this.f33054k = new AccessibilityEventSender();
            } else {
                removeCallbacks(accessibilityEventSender);
            }
            this.f33054k.setVirtualViewId(i2);
            postDelayed(this.f33054k, 200L);
        }
        return true;
    }

    public final void C() {
        double dRound;
        float f2 = this.P1;
        float f3 = this.q1;
        if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            int i2 = (int) ((this.m1 - this.l1) / f3);
            dRound = ((double) Math.round(f2 * i2)) / ((double) i2);
        } else {
            dRound = f2;
        }
        if (s() || t()) {
            dRound = 1.0d - dRound;
        }
        float f4 = this.m1;
        float f5 = this.l1;
        B((float) ((dRound * ((double) (f4 - f5))) + ((double) f5)), this.o1);
    }

    public final void D(int i2, Rect rect) {
        int iW = this.F + ((int) (w(getValues().get(i2).floatValue()) * this.v1));
        int iC = c();
        int iMax = Math.max(this.G / 2, this.z / 2);
        int iMax2 = Math.max(this.H / 2, this.z / 2);
        RectF rectF = new RectF(iW - iMax, iC - iMax2, iW + iMax, iC + iMax2);
        if (t()) {
            this.L1.mapRect(rectF);
        }
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public final void E() {
        if (!(getBackground() instanceof RippleDrawable) || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            float fW = (w(((Float) this.n1.get(this.p1)).floatValue()) * this.v1) + this.F;
            int iC = c();
            int i2 = this.I;
            float f2 = i2;
            float[] fArr = {fW - f2, iC - i2, fW + f2, iC + i2};
            if (t()) {
                this.L1.mapPoints(fArr);
            }
            background.setHotspotBounds((int) fArr[0], (int) fArr[1], (int) fArr[2], (int) fArr[3]);
        }
    }

    public final void F() {
        float f2;
        boolean zT = t();
        boolean zS = s();
        float f3 = 0.5f;
        if (zT && zS) {
            f2 = 0.5f;
            f3 = -0.2f;
        } else {
            f2 = 1.2f;
            if (zT) {
                f3 = 1.2f;
                f2 = 0.5f;
            }
        }
        for (TooltipDrawable tooltipDrawable : this.m) {
            tooltipDrawable.Y = f3;
            tooltipDrawable.Z = f2;
            tooltipDrawable.invalidateSelf();
        }
        int i2 = this.D;
        if (i2 == 0 || i2 == 1) {
            if (this.o1 == -1 || !isEnabled()) {
                k();
                return;
            } else {
                j();
                return;
            }
        }
        if (i2 == 2) {
            k();
            return;
        }
        if (i2 != 3) {
            md.g(this.D, "Unexpected labelBehavior: ");
            return;
        }
        if (isEnabled()) {
            Rect rect = new Rect();
            ViewUtils.e(this).getHitRect(rect);
            if (getLocalVisibleRect(rect) && this.V1) {
                j();
                return;
            }
        }
        k();
    }

    public final void G() {
        int i2 = this.J;
        if (i2 > 0) {
            int i3 = this.G;
            this.K = i3;
            this.L = i2;
            int iRound = Math.round(i3 * 0.5f);
            int i4 = this.G - iRound;
            setThumbWidth(iRound);
            setThumbTrackGapSize(this.J - (i4 / 2));
        }
    }

    public final void H() {
        P();
        float f2 = this.q1;
        int iMin = 0;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            I(0);
            return;
        }
        int i2 = this.s1;
        if (i2 == 0) {
            iMin = Math.min((int) (((this.m1 - this.l1) / f2) + 1.0f), (this.v1 / this.y) + 1);
        } else if (i2 == 1) {
            int i3 = (int) (((this.m1 - this.l1) / f2) + 1.0f);
            if (i3 <= (this.v1 / this.y) + 1) {
                iMin = i3;
            }
        } else if (i2 != 2) {
            r81.c(this.s1, "Unexpected tickVisibilityMode: ");
            return;
        }
        I(iMin);
    }

    public final void I(int i2) {
        if (i2 == 0) {
            this.r1 = null;
            return;
        }
        float[] fArr = this.r1;
        if (fArr == null || fArr.length != i2 * 2) {
            this.r1 = new float[i2 * 2];
        }
        float f2 = this.v1 / (i2 - 1);
        float fC = c();
        for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
            float[] fArr2 = this.r1;
            fArr2[i3] = ((i3 / 2.0f) * f2) + this.F;
            fArr2[i3 + 1] = fC;
        }
        if (t()) {
            this.L1.mapPoints(this.r1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004b  */
    public final void J(Canvas canvas, Paint paint, RectF rectF, float f2, FullCornerDirection fullCornerDirection) {
        float fMax;
        if (rectF.isEmpty()) {
            return;
        }
        if (this.n1.isEmpty() || this.J <= 0) {
            fMax = f2;
        } else {
            float fR = R(((Float) this.n1.get((s() || t()) ? this.n1.size() - 1 : 0)).floatValue()) - this.F;
            if (fR < f2) {
                fMax = Math.max(fR, this.O);
            } else {
                fMax = f2;
            }
        }
        if (!this.n1.isEmpty() && this.J > 0) {
            float fR2 = R(((Float) this.n1.get((s() || t()) ? 0 : this.n1.size() - 1)).floatValue()) - this.F;
            float f3 = this.v1;
            if (fR2 > f3 - f2) {
                f2 = Math.max(f3 - fR2, this.O);
            }
        }
        int iOrdinal = fullCornerDirection.ordinal();
        if (iOrdinal == 1) {
            f2 = this.O;
        } else if (iOrdinal == 2) {
            fMax = this.O;
        } else if (iOrdinal == 3) {
            fMax = this.O;
            f2 = fMax;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        if (this.J > 0) {
            paint.setAntiAlias(true);
        }
        RectF rectF2 = new RectF(rectF);
        boolean zT = t();
        Matrix matrix = this.L1;
        if (zT) {
            matrix.mapRect(rectF2);
        }
        Path path = this.D1;
        path.reset();
        if (rectF.width() >= fMax + f2) {
            path.addRoundRect(rectF2, t() ? new float[]{fMax, fMax, fMax, fMax, f2, f2, f2, f2} : new float[]{fMax, fMax, f2, f2, f2, f2, fMax, fMax}, Path.Direction.CW);
            canvas.drawPath(path, paint);
            return;
        }
        float fMin = Math.min(fMax, f2);
        float fMax2 = Math.max(fMax, f2);
        canvas.save();
        path.addRoundRect(rectF2, fMin, fMin, Path.Direction.CW);
        canvas.clipPath(path);
        int iOrdinal2 = fullCornerDirection.ordinal();
        RectF rectF3 = this.H1;
        if (iOrdinal2 == 1) {
            float f4 = rectF.left;
            rectF3.set(f4, rectF.top, (2.0f * fMax2) + f4, rectF.bottom);
        } else if (iOrdinal2 != 2) {
            rectF3.set(rectF.centerX() - fMax2, rectF.top, rectF.centerX() + fMax2, rectF.bottom);
        } else {
            float f5 = rectF.right;
            rectF3.set(f5 - (2.0f * fMax2), rectF.top, f5, rectF.bottom);
        }
        if (t()) {
            matrix.mapRect(rectF3);
        }
        canvas.drawRoundRect(rectF3, fMax2, fMax2, paint);
        canvas.restore();
    }

    public final void K() {
        Drawable drawable = this.S;
        if (drawable != null) {
            if (!this.T && this.V != null) {
                this.S = drawable.mutate();
                this.T = true;
            }
            if (this.T) {
                this.S.setTintList(this.V);
            }
        }
    }

    public final void L() {
        Drawable drawable = this.Q;
        if (drawable != null) {
            if (!this.R && this.V != null) {
                this.Q = drawable.mutate();
                this.R = true;
            }
            if (this.R) {
                this.Q.setTintList(this.V);
            }
        }
    }

    public final void M() {
        Drawable drawable = this.t0;
        if (drawable != null) {
            if (!this.b1 && this.c1 != null) {
                this.t0 = drawable.mutate();
                this.b1 = true;
            }
            if (this.b1) {
                this.t0.setTintList(this.c1);
            }
        }
    }

    public final void N() {
        Drawable drawable = this.W;
        if (drawable != null) {
            if (!this.h0 && this.c1 != null) {
                this.W = drawable.mutate();
                this.h0 = true;
            }
            if (this.h0) {
                this.W.setTintList(this.c1);
            }
        }
    }

    public final void O(boolean z) {
        int paddingTop;
        int paddingBottom;
        boolean z2;
        if (t()) {
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        int i2 = paddingBottom + paddingTop;
        int iMax = Math.max(this.B, Math.max(this.E + i2, this.H + i2));
        boolean z3 = true;
        if (iMax == this.C) {
            z2 = false;
        } else {
            this.C = iMax;
            z2 = true;
        }
        int iMax2 = Math.max(Math.max(Math.max((this.G / 2) - this.u, 0), Math.max((this.E - this.v) / 2, 0)), Math.max(Math.max(this.t1 - this.w, 0), Math.max(this.u1 - this.x, 0))) + this.t;
        if (this.F == iMax2) {
            z3 = false;
        } else {
            this.F = iMax2;
            if (isLaidOut()) {
                this.v1 = Math.max((t() ? getHeight() : getWidth()) - (this.F * 2), 0);
                H();
            }
        }
        if (t()) {
            float fC = c();
            Matrix matrix = this.L1;
            matrix.reset();
            matrix.setRotate(90.0f, fC, fC);
        }
        if (z2 || z) {
            requestLayout();
        } else if (z3) {
            postInvalidate();
        }
    }

    public final void P() {
        if (this.x1) {
            float f2 = this.l1;
            float f3 = this.m1;
            if (f2 >= f3) {
                throw new IllegalStateException("valueFrom(" + f2 + ") must be smaller than valueTo(" + f3 + ")");
            }
            for (Float f4 : this.n1) {
                if (f4.floatValue() < this.l1 || f4.floatValue() > this.m1) {
                    float f5 = this.l1;
                    float f6 = this.m1;
                    StringBuilder sb = new StringBuilder("Slider value(");
                    sb.append(f4);
                    sb.append(") must be greater or equal to valueFrom(");
                    sb.append(f5);
                    sb.append("), and lower or equal to valueTo(");
                    md.k(d21.e(f6, ")", sb));
                    return;
                }
                if (this.q1 > Call.Parameters.DEFAULT_CAMERA_ZOOM && !Q(f4.floatValue())) {
                    float f7 = this.l1;
                    float f8 = this.q1;
                    throw new IllegalStateException("Value(" + f4 + ") must be equal to valueFrom(" + f7 + ") plus a multiple of stepSize(" + f8 + ") when using stepSize(" + f8 + ")");
                }
            }
            if (this.q1 > Call.Parameters.DEFAULT_CAMERA_ZOOM && !Q(this.m1)) {
                float f9 = this.q1;
                float f10 = this.l1;
                float f11 = this.m1;
                StringBuilder sb2 = new StringBuilder("The stepSize(");
                sb2.append(f9);
                sb2.append(") must be 0, or a factor of the valueFrom(");
                sb2.append(f10);
                sb2.append(")-valueTo(");
                md.k(d21.e(f11, ") range", sb2));
                return;
            }
            float minSeparation = getMinSeparation();
            if (minSeparation < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                throw new IllegalStateException("minSeparation(" + minSeparation + ") must be greater or equal to 0");
            }
            float f12 = this.q1;
            if (f12 > Call.Parameters.DEFAULT_CAMERA_ZOOM && minSeparation > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                if (this.Q1 != 1) {
                    throw new IllegalStateException("minSeparation(" + minSeparation + ") cannot be set as a dimension when using stepSize(" + f12 + ")");
                }
                if (minSeparation < f12 || !p(minSeparation)) {
                    float f13 = this.q1;
                    StringBuilder sb3 = new StringBuilder("minSeparation(");
                    sb3.append(minSeparation);
                    sb3.append(") must be greater or equal and a multiple of stepSize(");
                    sb3.append(f13);
                    sb3.append(") when using stepSize(");
                    md.k(d21.e(f13, ")", sb3));
                    return;
                }
            }
            if (this.q1 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f14 = this.m1;
                int i2 = (((int) f14) > f14 ? 1 : (((int) f14) == f14 ? 0 : -1));
            }
            this.x1 = false;
        }
    }

    public final boolean Q(float f2) {
        return p(new BigDecimal(Float.toString(f2)).subtract(new BigDecimal(Float.toString(this.l1)), MathContext.DECIMAL64).doubleValue());
    }

    public final float R(float f2) {
        return (w(f2) * this.v1) + this.F;
    }

    public final void a(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.G, this.H);
        } else {
            float fMax = Math.max(this.G, this.H) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    public final void b(Canvas canvas, RectF rectF, Drawable drawable, boolean z) {
        if (drawable != null) {
            int i2 = this.d1;
            float f2 = rectF.right - rectF.left;
            int i3 = this.e1;
            float f3 = (i3 * 2) + i2;
            RectF rectF2 = this.J1;
            if (f2 >= f3) {
                float f4 = z ^ (s() || t()) ? rectF.left + i3 : (rectF.right - i3) - i2;
                float f5 = i2;
                float fC = c() - (f5 / 2.0f);
                rectF2.set(f4, fC, f4 + f5, f5 + fC);
            } else {
                rectF2.setEmpty();
            }
            if (rectF2.isEmpty()) {
                return;
            }
            if (t()) {
                this.L1.mapRect(rectF2);
            }
            Rect rect = this.K1;
            rectF2.round(rect);
            drawable.setBounds(rect);
            drawable.draw(canvas);
        }
    }

    public final int c() {
        int i2 = this.C / 2;
        int i3 = this.D;
        return i2 + ((i3 == 1 || i3 == 3) ? ((TooltipDrawable) this.m.get(0)).getIntrinsicHeight() : 0);
    }

    public final ValueAnimator d(boolean z) {
        int iC;
        TimeInterpolator timeInterpolatorD;
        float fFloatValue = z ? 0.0f : 1.0f;
        ValueAnimator valueAnimator = z ? this.r : this.q;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, z ? 1.0f : 0.0f);
        if (z) {
            iC = MotionUtils.c(getContext(), R.attr.motionDurationMedium4, 83);
            timeInterpolatorD = MotionUtils.d(getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32230e);
        } else {
            iC = MotionUtils.c(getContext(), R.attr.motionDurationShort3, 117);
            timeInterpolatorD = MotionUtils.d(getContext(), R.attr.motionEasingEmphasizedAccelerateInterpolator, AnimationUtils.f32229c);
        }
        valueAnimatorOfFloat.setDuration(iC);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorD);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.slider.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int i2 = BaseSlider.W1;
                float fFloatValue2 = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                BaseSlider baseSlider = this.f33062a;
                for (TooltipDrawable tooltipDrawable : baseSlider.m) {
                    tooltipDrawable.W = fFloatValue2;
                    tooltipDrawable.X = fFloatValue2;
                    tooltipDrawable.h0 = AnimationUtils.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 0.19f, 1.0f, fFloatValue2);
                    tooltipDrawable.invalidateSelf();
                }
                baseSlider.postInvalidateOnAnimation();
            }
        });
        return valueAnimatorOfFloat;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f33052i.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        this.f33047b.setColor(n(this.C1));
        this.f33048c.setColor(n(this.B1));
        this.f33050f.setColor(n(this.A1));
        this.g.setColor(n(this.z1));
        this.f33051h.setColor(n(this.A1));
        for (TooltipDrawable tooltipDrawable : this.m) {
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        MaterialShapeDrawable materialShapeDrawable = this.M1;
        if (materialShapeDrawable.isStateful()) {
            materialShapeDrawable.setState(getDrawableState());
        }
        int iN = n(this.y1);
        Paint paint = this.f33049e;
        paint.setColor(iN);
        paint.setAlpha(63);
    }

    public final void e(float f2, float f3, float f4, float f5, Canvas canvas, RectF rectF, FullCornerDirection fullCornerDirection) {
        if (f3 - f2 > getTrackCornerSize() - this.J) {
            rectF.set(f2, f4, f3, f5);
        } else {
            rectF.setEmpty();
        }
        J(canvas, this.f33047b, rectF, getTrackCornerSize(), fullCornerDirection);
    }

    public final void f(Canvas canvas, float f2, float f3) {
        Iterator it = this.n1.iterator();
        while (it.hasNext()) {
            float fR = R(((Float) it.next()).floatValue());
            float f4 = (this.G / 2.0f) + this.J;
            if (f2 >= fR - f4 && f2 <= fR + f4) {
                return;
            }
        }
        boolean zT = t();
        Paint paint = this.f33051h;
        if (zT) {
            canvas.drawPoint(f3, f2, paint);
        } else {
            canvas.drawPoint(f2, f3, paint);
        }
    }

    public final void g(Canvas canvas, int i2, int i3, float f2, Drawable drawable) {
        canvas.save();
        if (t()) {
            canvas.concat(this.L1);
        }
        canvas.translate((this.F + ((int) (w(f2) * i2))) - (drawable.getBounds().width() / 2.0f), i3 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f33052i.l;
    }

    public float getMinSeparation() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public int getThumbRadius() {
        return this.G / 2;
    }

    public int getTrackCornerSize() {
        int i2 = this.N;
        return i2 == -1 ? this.E / 2 : i2;
    }

    public float getValueFrom() {
        return this.l1;
    }

    public float getValueTo() {
        return this.m1;
    }

    public List<Float> getValues() {
        return new ArrayList(this.n1);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0041  */
    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    public final void h(int i2, int i3, Canvas canvas, Paint paint) {
        float f2;
        float f3;
        while (i2 < i3) {
            boolean zT = t();
            float[] fArr = this.r1;
            float f4 = zT ? fArr[i2 + 1] : fArr[i2];
            float f5 = (this.G / 2.0f) + this.J;
            Iterator it = this.n1.iterator();
            if (it.hasNext()) {
                float fR = R(((Float) it.next()).floatValue());
                if (f4 < fR - f5 || f4 > fR + f5) {
                    if (o()) {
                        f2 = (this.G / 2.0f) + this.J;
                        f3 = ((this.F * 2) + this.v1) / 2.0f;
                        if (f4 >= f3 - f2 || f4 > f3 + f2) {
                            float[] fArr2 = this.r1;
                            canvas.drawPoint(fArr2[i2], fArr2[i2 + 1], paint);
                        }
                    } else {
                        float[] fArr3 = this.r1;
                        canvas.drawPoint(fArr3[i2], fArr3[i2 + 1], paint);
                    }
                }
            } else if (o()) {
                f2 = (this.G / 2.0f) + this.J;
                f3 = ((this.F * 2) + this.v1) / 2.0f;
                if (f4 >= f3 - f2) {
                    float[] fArr4 = this.r1;
                    canvas.drawPoint(fArr4[i2], fArr4[i2 + 1], paint);
                } else {
                    float[] fArr5 = this.r1;
                    canvas.drawPoint(fArr5[i2], fArr5[i2 + 1], paint);
                }
            } else {
                float[] fArr6 = this.r1;
                canvas.drawPoint(fArr6[i2], fArr6[i2 + 1], paint);
            }
            i2 += 2;
        }
    }

    public final void i(Canvas canvas, RectF rectF, RectF rectF2) {
        if (this.Q == null && this.S == null && this.W == null && this.t0 == null) {
            return;
        }
        this.n1.size();
        b(canvas, rectF, this.Q, true);
        b(canvas, rectF2, this.W, true);
        b(canvas, rectF, this.S, false);
        b(canvas, rectF2, this.t0, false);
    }

    public final void j() {
        if (!this.p) {
            this.p = true;
            ValueAnimator valueAnimatorD = d(true);
            this.q = valueAnimatorD;
            this.r = null;
            valueAnimatorD.start();
        }
        ArrayList arrayList = this.m;
        Iterator it = arrayList.iterator();
        for (int i2 = 0; i2 < this.n1.size() && it.hasNext(); i2++) {
            if (i2 != this.p1) {
                z((TooltipDrawable) it.next(), ((Float) this.n1.get(i2)).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(arrayList.size()), Integer.valueOf(this.n1.size())));
        }
        z((TooltipDrawable) it.next(), ((Float) this.n1.get(this.p1)).floatValue());
    }

    public final void k() {
        if (this.p) {
            this.p = false;
            ValueAnimator valueAnimatorD = d(false);
            this.r = valueAnimatorD;
            this.q = null;
            valueAnimatorD.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.slider.BaseSlider.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    int i2 = BaseSlider.W1;
                    BaseSlider baseSlider = BaseSlider.this;
                    ViewGroup viewGroupE = ViewUtils.e(baseSlider);
                    ViewOverlay overlay = viewGroupE == null ? null : viewGroupE.getOverlay();
                    if (overlay == null) {
                        return;
                    }
                    Iterator it = baseSlider.m.iterator();
                    while (it.hasNext()) {
                        overlay.remove((TooltipDrawable) it.next());
                    }
                }
            });
            this.r.start();
        }
    }

    public final String l(float f2) {
        if (this.j1 != null) {
            return this.j1.a();
        }
        return String.format(((float) ((int) f2)) == f2 ? "%.0f" : "%.2f", Float.valueOf(f2));
    }

    public final float[] m() {
        float fFloatValue = ((Float) this.n1.get(0)).floatValue();
        float fFloatValue2 = ((Float) cj.c(1, this.n1)).floatValue();
        if (this.n1.size() == 1) {
            fFloatValue = this.l1;
        }
        float fW = w(fFloatValue);
        float fW2 = w(fFloatValue2);
        if (o()) {
            float fMin = Math.min(0.5f, fW2);
            fW2 = Math.max(0.5f, fW2);
            fW = fMin;
        }
        return (o() || !(s() || t())) ? new float[]{fW, fW2} : new float[]{fW2, fW};
    }

    public final int n(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    public boolean o() {
        return this.P;
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.V1 = isShown();
        getViewTreeObserver().addOnScrollChangedListener(this.S1);
        getViewTreeObserver().addOnGlobalLayoutListener(this.T1);
        for (TooltipDrawable tooltipDrawable : this.m) {
            ViewGroup viewGroupE = ViewUtils.e(this);
            if (viewGroupE == null) {
                tooltipDrawable.getClass();
            } else {
                tooltipDrawable.getClass();
                int[] iArr = new int[2];
                viewGroupE.getLocationOnScreen(iArr);
                tooltipDrawable.V = iArr[0];
                viewGroupE.getWindowVisibleDisplayFrame(tooltipDrawable.N);
                viewGroupE.addOnLayoutChangeListener(tooltipDrawable.M);
            }
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        AccessibilityEventSender accessibilityEventSender = this.f33054k;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        this.p = false;
        for (TooltipDrawable tooltipDrawable : this.m) {
            ViewGroup viewGroupE = ViewUtils.e(this);
            if (viewGroupE != null) {
                viewGroupE.getOverlay().remove(tooltipDrawable);
                viewGroupE.removeOnLayoutChangeListener(tooltipDrawable.M);
            }
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.S1);
        getViewTreeObserver().removeOnGlobalLayoutListener(this.T1);
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code duplicated, block: B:55:0x0137  */
    /* JADX WARN: Code duplicated, block: B:56:0x0142  */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f2;
        int i2;
        float f3;
        float f4;
        float f5;
        int i3;
        FullCornerDirection fullCornerDirection;
        float f6;
        int i4;
        BaseSlider<S, L, T> baseSlider = this;
        if (baseSlider.x1) {
            baseSlider.P();
            baseSlider.H();
        }
        super.onDraw(canvas);
        int iC = baseSlider.c();
        int i5 = baseSlider.v1;
        float[] fArrM = baseSlider.m();
        float f7 = iC;
        float f8 = baseSlider.E / 2.0f;
        float f9 = f7 - f8;
        float f10 = f8 + f7;
        float trackCornerSize = baseSlider.F - baseSlider.getTrackCornerSize();
        int i6 = 0;
        float f11 = i5;
        float f12 = ((fArrM[0] * f11) + baseSlider.F) - baseSlider.J;
        FullCornerDirection fullCornerDirection2 = FullCornerDirection.LEFT;
        RectF rectF = baseSlider.F1;
        baseSlider.e(trackCornerSize, f12, f9, f10, canvas, rectF, fullCornerDirection2);
        int i7 = baseSlider.F;
        float f13 = (fArrM[1] * f11) + i7 + baseSlider.J;
        float trackCornerSize2 = i7 + i5 + baseSlider.getTrackCornerSize();
        FullCornerDirection fullCornerDirection3 = FullCornerDirection.RIGHT;
        RectF rectF2 = baseSlider.G1;
        int i8 = 1;
        baseSlider.e(f13, trackCornerSize2, f9, f10, canvas, rectF2, fullCornerDirection3);
        int i9 = baseSlider.v1;
        float[] fArrM2 = baseSlider.m();
        float f14 = baseSlider.F;
        float f15 = i9;
        float f16 = (fArrM2[1] * f15) + f14;
        float fR = (fArrM2[0] * f15) + f14;
        int i10 = 2;
        float f17 = f16;
        RectF rectF3 = baseSlider.E1;
        if (fR >= f16) {
            rectF3.setEmpty();
            f2 = 2.0f;
        } else {
            FullCornerDirection fullCornerDirection4 = FullCornerDirection.NONE;
            f2 = 2.0f;
            if (baseSlider.n1.size() == 1 && !baseSlider.o()) {
                if (!baseSlider.s() && !baseSlider.t()) {
                    fullCornerDirection3 = fullCornerDirection2;
                }
                fullCornerDirection4 = fullCornerDirection3;
            }
            int i11 = 0;
            while (i11 < baseSlider.n1.size()) {
                if (baseSlider.n1.size() > i8) {
                    if (i11 > 0) {
                        fR = baseSlider.R(((Float) baseSlider.n1.get(i11 - 1)).floatValue());
                    }
                    f17 = fR;
                    fR = baseSlider.R(((Float) baseSlider.n1.get(i11)).floatValue());
                    if (!baseSlider.s() && !baseSlider.t()) {
                        f17 = fR;
                        fR = f17;
                    }
                }
                int trackCornerSize3 = baseSlider.getTrackCornerSize();
                int iOrdinal = fullCornerDirection4.ordinal();
                if (iOrdinal != i8) {
                    if (iOrdinal == i10) {
                        fR += baseSlider.J;
                        f17 += trackCornerSize3;
                    } else if (iOrdinal == 3) {
                        if (!baseSlider.o()) {
                            f6 = baseSlider.J;
                            fR += f6;
                            f17 -= f6;
                        } else if (fArrM2[i8] == 0.5f) {
                            fR += baseSlider.J;
                        } else if (fArrM2[0] == 0.5f) {
                            i2 = baseSlider.J;
                        }
                    }
                    f3 = fR;
                    f4 = f17;
                    if (f3 >= f4) {
                        rectF3.setEmpty();
                        fullCornerDirection = fullCornerDirection4;
                        f5 = f4;
                        i3 = 2;
                    } else {
                        float f18 = baseSlider.E / 2.0f;
                        rectF3.set(f3, f7 - f18, f4, f18 + f7);
                        float f19 = trackCornerSize3;
                        f5 = f4;
                        i3 = 2;
                        fullCornerDirection = fullCornerDirection4;
                        baseSlider.J(canvas, baseSlider.f33048c, rectF3, f19, fullCornerDirection);
                    }
                    i11++;
                    fullCornerDirection4 = fullCornerDirection;
                    i10 = i3;
                    f17 = f5;
                    fR = f3;
                    i8 = i8;
                } else {
                    fR -= trackCornerSize3;
                    i2 = baseSlider.J;
                }
                f6 = i2;
                f17 -= f6;
                f3 = fR;
                f4 = f17;
                if (f3 >= f4) {
                    rectF3.setEmpty();
                    fullCornerDirection = fullCornerDirection4;
                    f5 = f4;
                    i3 = 2;
                } else {
                    float f110 = baseSlider.E / 2.0f;
                    rectF3.set(f3, f7 - f110, f4, f110 + f7);
                    float f111 = trackCornerSize3;
                    f5 = f4;
                    i3 = 2;
                    fullCornerDirection = fullCornerDirection4;
                    baseSlider.J(canvas, baseSlider.f33048c, rectF3, f111, fullCornerDirection);
                }
                i11++;
                fullCornerDirection4 = fullCornerDirection;
                i10 = i3;
                f17 = f5;
                fR = f3;
                i8 = i8;
            }
        }
        Canvas canvas2 = canvas;
        int i12 = i8;
        int i13 = i10;
        if (baseSlider.s() || baseSlider.t()) {
            baseSlider.i(canvas2, rectF3, rectF);
        } else {
            baseSlider.i(canvas2, rectF3, rectF2);
        }
        float[] fArr = baseSlider.r1;
        if (fArr != null && fArr.length != 0) {
            float[] fArrM3 = baseSlider.m();
            int iCeil = (int) Math.ceil(((baseSlider.r1.length / f2) - 1.0f) * fArrM3[0]);
            int iFloor = (int) Math.floor(((baseSlider.r1.length / f2) - 1.0f) * fArrM3[i12]);
            Paint paint = baseSlider.f33050f;
            if (iCeil > 0) {
                baseSlider.h(0, iCeil * 2, canvas2, paint);
            }
            if (iCeil <= iFloor) {
                baseSlider.h(iCeil * i13, (iFloor + 1) * i13, canvas2, baseSlider.g);
            }
            int i14 = (iFloor + 1) * i13;
            float[] fArr2 = baseSlider.r1;
            if (i14 < fArr2.length) {
                baseSlider.h(i14, fArr2.length, canvas2, paint);
            }
        }
        if (baseSlider.M > 0 && !baseSlider.n1.isEmpty()) {
            float fFloatValue = ((Float) cj.c(i12, baseSlider.n1)).floatValue();
            float f20 = baseSlider.m1;
            if (fFloatValue < f20) {
                baseSlider.f(canvas2, baseSlider.R(f20), f7);
            }
            if (baseSlider.o() || (baseSlider.n1.size() > 1 && ((Float) baseSlider.n1.get(0)).floatValue() > baseSlider.l1)) {
                baseSlider.f(canvas2, baseSlider.R(baseSlider.l1), f7);
            }
        }
        if ((baseSlider.k1 || baseSlider.isFocused()) && baseSlider.isEnabled()) {
            int i15 = baseSlider.v1;
            if (!(baseSlider.getBackground() instanceof RippleDrawable)) {
                float fW = (baseSlider.w(((Float) baseSlider.n1.get(baseSlider.p1)).floatValue()) * i15) + baseSlider.F;
                float[] fArr3 = new float[i13];
                fArr3[0] = fW;
                fArr3[1] = f7;
                if (baseSlider.t()) {
                    baseSlider.L1.mapPoints(fArr3);
                }
                canvas2.drawCircle(fArr3[0], fArr3[1], baseSlider.I, baseSlider.f33049e);
            }
        }
        baseSlider.F();
        int i16 = baseSlider.v1;
        while (i6 < baseSlider.n1.size()) {
            float fFloatValue2 = ((Float) baseSlider.n1.get(i6)).floatValue();
            Drawable drawable = baseSlider.N1;
            if (drawable != null) {
                i4 = iC;
                baseSlider.g(canvas2, i16, i4, fFloatValue2, drawable);
            } else {
                i4 = iC;
                if (i6 < baseSlider.O1.size()) {
                    baseSlider.g(canvas, i16, i4, fFloatValue2, (Drawable) baseSlider.O1.get(i6));
                } else {
                    if (!baseSlider.isEnabled()) {
                        canvas.drawCircle((baseSlider.w(fFloatValue2) * i16) + baseSlider.F, f7, baseSlider.getThumbRadius(), baseSlider.d);
                    }
                    baseSlider.g(canvas, i16, i4, fFloatValue2, baseSlider.M1);
                }
            }
            i6++;
            baseSlider = this;
            canvas2 = canvas;
            iC = i4;
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        AccessibilityHelper accessibilityHelper = this.f33052i;
        if (!z) {
            this.o1 = -1;
            accessibilityHelper.j(this.p1);
            return;
        }
        if (i2 == 1) {
            u(Integer.MAX_VALUE);
        } else if (i2 == 2) {
            u(Integer.MIN_VALUE);
        } else if (i2 == 17) {
            v(Integer.MAX_VALUE);
        } else if (i2 == 66) {
            v(Integer.MIN_VALUE);
        }
        accessibilityHelper.w(this.p1);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(false);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0047  */
    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i2, keyEvent);
        }
        if (this.n1.size() == 1) {
            this.o1 = 0;
        }
        Float fValueOf = null;
        Boolean boolValueOf = null;
        fValueOf = null;
        fValueOf = null;
        if (this.o1 == -1) {
            if (i2 != 61) {
                if (i2 == 66) {
                    this.o1 = this.p1;
                    postInvalidate();
                    boolValueOf = Boolean.TRUE;
                } else if (i2 == 81) {
                    u(1);
                    boolValueOf = Boolean.TRUE;
                } else if (i2 == 69) {
                    u(-1);
                    boolValueOf = Boolean.TRUE;
                } else if (i2 != 70) {
                    switch (i2) {
                        case 21:
                            v(-1);
                            boolValueOf = Boolean.TRUE;
                            break;
                        case 22:
                            v(1);
                            boolValueOf = Boolean.TRUE;
                            break;
                        case 23:
                            this.o1 = this.p1;
                            postInvalidate();
                            boolValueOf = Boolean.TRUE;
                            break;
                    }
                } else {
                    u(1);
                    boolValueOf = Boolean.TRUE;
                }
            } else if (keyEvent.hasNoModifiers()) {
                boolValueOf = Boolean.valueOf(u(1));
            } else {
                boolValueOf = keyEvent.isShiftPressed() ? Boolean.valueOf(u(-1)) : Boolean.FALSE;
            }
            return boolValueOf != null ? boolValueOf.booleanValue() : super.onKeyDown(i2, keyEvent);
        }
        boolean zIsLongPress = this.w1 | keyEvent.isLongPress();
        this.w1 = zIsLongPress;
        float fRound = this.q1;
        if (zIsLongPress) {
            if (fRound == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fRound = 1.0f;
            }
            float f2 = (this.m1 - this.l1) / fRound;
            if (f2 > 20.0f) {
                fRound *= Math.round(f2 / 20.0f);
            }
        } else if (fRound == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fRound = 1.0f;
        }
        if (i2 == 69) {
            fValueOf = Float.valueOf(-fRound);
        } else if (i2 != 70 && i2 != 81) {
            switch (i2) {
                case 19:
                    if (t()) {
                        fValueOf = Float.valueOf(fRound);
                    }
                    break;
                case 20:
                    if (t()) {
                        fValueOf = Float.valueOf(-fRound);
                    }
                    break;
                case 21:
                    if (!s()) {
                        fRound = -fRound;
                    }
                    fValueOf = Float.valueOf(fRound);
                    break;
                case 22:
                    if (s()) {
                        fRound = -fRound;
                    }
                    fValueOf = Float.valueOf(fRound);
                    break;
            }
        } else {
            fValueOf = Float.valueOf(fRound);
        }
        if (fValueOf != null) {
            if (B(fValueOf.floatValue() + ((Float) this.n1.get(this.o1)).floatValue(), this.o1)) {
                E();
                postInvalidate();
            }
            return true;
        }
        if (i2 != 23) {
            if (i2 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return u(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return u(-1);
                }
                return false;
            }
            if (i2 != 66) {
                return super.onKeyDown(i2, keyEvent);
            }
        }
        this.o1 = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        this.w1 = false;
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4 = this.D;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.C + ((i4 == 1 || i4 == 3) ? ((TooltipDrawable) this.m.get(0)).getIntrinsicHeight() : 0), 1073741824);
        if (t()) {
            super.onMeasure(iMakeMeasureSpec, i3);
        } else {
            super.onMeasure(i2, iMakeMeasureSpec);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.l1 = sliderState.f33056b;
        this.m1 = sliderState.f33057c;
        A(sliderState.d);
        this.q1 = sliderState.f33058e;
        if (sliderState.f33059f) {
            requestFocus();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f33056b = this.l1;
        sliderState.f33057c = this.m1;
        sliderState.d = new ArrayList(this.n1);
        sliderState.f33058e = this.q1;
        sliderState.f33059f = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        if (t()) {
            i2 = i3;
        }
        this.v1 = Math.max(i2 - (this.F * 2), 0);
        H();
        E();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:66:0x0119 A[LOOP:0: B:64:0x0113->B:66:0x0119, LOOP_END] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        Iterator it;
        int i2;
        float f2;
        if (isEnabled()) {
            float y = t() ? motionEvent.getY() : motionEvent.getX();
            float x = t() ? motionEvent.getX() : motionEvent.getY();
            float f3 = (y - this.F) / this.v1;
            this.P1 = f3;
            float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3);
            this.P1 = fMax;
            this.P1 = Math.min(1.0f, fMax);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                int i3 = this.s;
                if (actionMasked == 1) {
                    this.k1 = false;
                    motionEvent2 = this.i1;
                    if (motionEvent2 != null && motionEvent2.getActionMasked() == 0) {
                        f2 = i3;
                        if (Math.abs(this.i1.getX() - motionEvent.getX()) <= f2 && Math.abs(this.i1.getY() - motionEvent.getY()) <= f2 && y()) {
                            x();
                        }
                    }
                    if (this.o1 != -1) {
                        C();
                        E();
                        if (this.J > 0 && (i2 = this.K) != -1 && this.L != -1) {
                            setThumbWidth(i2);
                            setThumbTrackGapSize(this.L);
                        }
                        this.o1 = -1;
                        it = this.o.iterator();
                        while (it.hasNext()) {
                            ((BaseOnSliderTouchListener) it.next()).b(this);
                        }
                    }
                    invalidate();
                } else if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        this.k1 = false;
                        motionEvent2 = this.i1;
                        if (motionEvent2 != null) {
                            f2 = i3;
                            if (Math.abs(this.i1.getX() - motionEvent.getX()) <= f2) {
                                x();
                            }
                        }
                        if (this.o1 != -1) {
                            C();
                            E();
                            if (this.J > 0) {
                                setThumbWidth(i2);
                                setThumbTrackGapSize(this.L);
                            }
                            this.o1 = -1;
                            it = this.o.iterator();
                            while (it.hasNext()) {
                                ((BaseOnSliderTouchListener) it.next()).b(this);
                            }
                        }
                        invalidate();
                    }
                } else if (this.k1) {
                    C();
                    E();
                    invalidate();
                } else if ((t() || !r(motionEvent) || Math.abs(y - this.g1) >= i3) && (!t() || !q(motionEvent) || Math.abs(x - this.h1) >= i3 * 0.8f)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (y()) {
                        this.k1 = true;
                        G();
                        x();
                        C();
                        E();
                        invalidate();
                    }
                }
            } else {
                this.g1 = y;
                this.h1 = x;
                if ((t() || !r(motionEvent)) && (!t() || !q(motionEvent))) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (y()) {
                        requestFocus();
                        this.k1 = true;
                        G();
                        x();
                        C();
                        E();
                        invalidate();
                    }
                }
            }
            setPressed(this.k1);
            this.i1 = MotionEvent.obtain(motionEvent);
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        this.V1 = z;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 != 0) {
            ViewGroup viewGroupE = ViewUtils.e(this);
            ViewOverlay overlay = viewGroupE == null ? null : viewGroupE.getOverlay();
            if (overlay == null) {
                return;
            }
            Iterator it = this.m.iterator();
            while (it.hasNext()) {
                overlay.remove((TooltipDrawable) it.next());
            }
        }
    }

    public final boolean p(double d) {
        double dDoubleValue = new BigDecimal(Double.toString(d)).divide(new BigDecimal(Float.toString(this.q1)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    public final boolean q(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) != 3) {
            for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if ((viewGroup.canScrollHorizontally(1) || viewGroup.canScrollHorizontally(-1)) && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean r(MotionEvent motionEvent) {
        if (motionEvent.getToolType(0) != 3) {
            for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean s() {
        return getLayoutDirection() == 1;
    }

    public void setActiveThumbIndex(int i2) {
        this.o1 = i2;
    }

    public void setCentered(boolean z) {
        if (this.P == z) {
            return;
        }
        this.P = z;
        float f2 = this.l1;
        if (z) {
            setValues(Float.valueOf((f2 + this.m1) / 2.0f));
        } else {
            setValues(Float.valueOf(f2));
        }
        O(true);
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        a(drawableNewDrawable);
        this.N1 = drawableNewDrawable;
        this.O1.clear();
        postInvalidate();
    }

    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        this.N1 = null;
        this.O1 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            List list = this.O1;
            Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
            a(drawableNewDrawable);
            list.add(drawableNewDrawable);
        }
        postInvalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setLayerType(z ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i2) {
        if (i2 < 0 || i2 >= this.n1.size()) {
            md.n("index out of range");
            return;
        }
        this.p1 = i2;
        this.f33052i.w(i2);
        postInvalidate();
    }

    public void setHaloRadius(int i2) {
        if (i2 == this.I) {
            return;
        }
        this.I = i2;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setRadius(this.I);
        } else {
            postInvalidate();
        }
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.y1)) {
            return;
        }
        this.y1 = colorStateList;
        Drawable background = getBackground();
        if ((getBackground() instanceof RippleDrawable) && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        int iN = n(colorStateList);
        Paint paint = this.f33049e;
        paint.setColor(iN);
        paint.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i2) {
        if (this.D != i2) {
            this.D = i2;
            O(true);
        }
    }

    public void setOrientation(int i2) {
        if (this.A == i2) {
            return;
        }
        this.A = i2;
        O(true);
    }

    public void setSeparationUnit(int i2) {
        this.Q1 = i2;
        this.x1 = true;
        postInvalidate();
    }

    public void setStepSize(float f2) {
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (this.q1 != f2) {
                this.q1 = f2;
                this.x1 = true;
                postInvalidate();
                return;
            }
            return;
        }
        float f3 = this.l1;
        float f4 = this.m1;
        StringBuilder sb = new StringBuilder("The stepSize(");
        sb.append(f2);
        sb.append(") must be 0, or a factor of the valueFrom(");
        sb.append(f3);
        sb.append(")-valueTo(");
        md.n(d21.e(f4, ") range", sb));
    }

    public void setThumbElevation(float f2) {
        this.M1.q(f2);
    }

    public void setThumbHeight(int i2) {
        if (i2 == this.H) {
            return;
        }
        this.H = i2;
        this.M1.setBounds(0, 0, this.G, i2);
        Drawable drawable = this.N1;
        if (drawable != null) {
            a(drawable);
        }
        Iterator it = this.O1.iterator();
        while (it.hasNext()) {
            a((Drawable) it.next());
        }
        O(false);
    }

    public void setThumbRadius(int i2) {
        int i3 = i2 * 2;
        setThumbWidth(i3);
        setThumbHeight(i3);
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.M1.x(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeWidth(float f2) {
        this.M1.y(f2);
        postInvalidate();
    }

    public void setThumbTrackGapSize(int i2) {
        if (this.J == i2) {
            return;
        }
        this.J = i2;
        invalidate();
    }

    public void setThumbWidth(int i2) {
        if (i2 == this.G) {
            return;
        }
        this.G = i2;
        RelativeCornerSize relativeCornerSize = ShapeAppearanceModel.m;
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        float f2 = this.G / 2.0f;
        CornerTreatment cornerTreatmentA = MaterialShapeUtils.a(0);
        builder.f32968a = cornerTreatmentA;
        float fB = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB != -1.0f) {
            builder.e(fB);
        }
        builder.f32969b = cornerTreatmentA;
        float fB2 = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB2 != -1.0f) {
            builder.f(fB2);
        }
        builder.f32970c = cornerTreatmentA;
        float fB3 = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB3 != -1.0f) {
            builder.d(fB3);
        }
        builder.d = cornerTreatmentA;
        float fB4 = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB4 != -1.0f) {
            builder.c(fB4);
        }
        builder.e(f2);
        builder.f(f2);
        builder.d(f2);
        builder.c(f2);
        ShapeAppearanceModel shapeAppearanceModelA = builder.a();
        MaterialShapeDrawable materialShapeDrawable = this.M1;
        materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModelA);
        materialShapeDrawable.setBounds(0, 0, this.G, this.H);
        Drawable drawable = this.N1;
        if (drawable != null) {
            a(drawable);
        }
        Iterator it = this.O1.iterator();
        while (it.hasNext()) {
            a((Drawable) it.next());
        }
        O(false);
    }

    public void setTickActiveRadius(int i2) {
        if (this.t1 != i2) {
            this.t1 = i2;
            this.g.setStrokeWidth(i2 * 2);
            O(false);
        }
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.z1)) {
            return;
        }
        this.z1 = colorStateList;
        this.g.setColor(n(colorStateList));
        invalidate();
    }

    public void setTickInactiveRadius(int i2) {
        if (this.u1 != i2) {
            this.u1 = i2;
            this.f33050f.setStrokeWidth(i2 * 2);
            O(false);
        }
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.A1)) {
            return;
        }
        this.A1 = colorStateList;
        this.f33050f.setColor(n(colorStateList));
        invalidate();
    }

    public void setTickVisibilityMode(int i2) {
        if (this.s1 != i2) {
            this.s1 = i2;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.B1)) {
            return;
        }
        this.B1 = colorStateList;
        this.f33048c.setColor(n(colorStateList));
        invalidate();
    }

    public void setTrackCornerSize(int i2) {
        if (this.N == i2) {
            return;
        }
        this.N = i2;
        invalidate();
    }

    public void setTrackHeight(int i2) {
        if (this.E != i2) {
            this.E = i2;
            this.f33047b.setStrokeWidth(i2);
            this.f33048c.setStrokeWidth(this.E);
            O(false);
        }
    }

    public void setTrackIconActiveColor(ColorStateList colorStateList) {
        if (colorStateList == this.V) {
            return;
        }
        this.V = colorStateList;
        L();
        K();
        invalidate();
    }

    public void setTrackIconActiveEnd(Drawable drawable) {
        if (drawable == this.S) {
            return;
        }
        this.S = drawable;
        this.T = false;
        K();
        invalidate();
    }

    public void setTrackIconActiveStart(Drawable drawable) {
        if (drawable == this.Q) {
            return;
        }
        this.Q = drawable;
        this.R = false;
        L();
        invalidate();
    }

    public void setTrackIconInactiveColor(ColorStateList colorStateList) {
        if (colorStateList == this.c1) {
            return;
        }
        this.c1 = colorStateList;
        N();
        M();
        invalidate();
    }

    public void setTrackIconInactiveEnd(Drawable drawable) {
        if (drawable == this.t0) {
            return;
        }
        this.t0 = drawable;
        this.b1 = false;
        M();
        invalidate();
    }

    public void setTrackIconInactiveStart(Drawable drawable) {
        if (drawable == this.W) {
            return;
        }
        this.W = drawable;
        this.h0 = false;
        N();
        invalidate();
    }

    public void setTrackIconSize(int i2) {
        if (this.d1 == i2) {
            return;
        }
        this.d1 = i2;
        invalidate();
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.C1)) {
            return;
        }
        this.C1 = colorStateList;
        this.f33047b.setColor(n(colorStateList));
        invalidate();
    }

    public void setTrackInsideCornerSize(int i2) {
        if (this.O == i2) {
            return;
        }
        this.O = i2;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i2) {
        if (this.M == i2) {
            return;
        }
        this.M = i2;
        this.f33051h.setStrokeWidth(i2);
        invalidate();
    }

    public void setValues(Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        A(arrayList);
    }

    public boolean t() {
        return this.A == 1;
    }

    public final boolean u(int i2) {
        int i3 = this.p1;
        long j2 = ((long) i3) + ((long) i2);
        long size = this.n1.size() - 1;
        if (j2 < 0) {
            j2 = 0;
        } else if (j2 > size) {
            j2 = size;
        }
        int i4 = (int) j2;
        this.p1 = i4;
        if (i4 == i3) {
            return false;
        }
        if (this.o1 != -1) {
            this.o1 = i4;
        }
        E();
        postInvalidate();
        return true;
    }

    public final void v(int i2) {
        if (s() || t()) {
            i2 = i2 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i2;
        }
        u(i2);
    }

    public final float w(float f2) {
        float f3 = this.l1;
        float f4 = (f2 - f3) / (this.m1 - f3);
        return (s() || t()) ? 1.0f - f4 : f4;
    }

    public final void x() {
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            ((BaseOnSliderTouchListener) it.next()).a(this);
        }
    }

    public boolean y() {
        if (this.o1 == -1) {
            float f2 = this.P1;
            if (s() || t()) {
                f2 = 1.0f - f2;
            }
            float f3 = this.m1;
            float f4 = this.l1;
            float fA = tr.a(f3, f4, f2, f4);
            float fR = R(fA);
            this.o1 = 0;
            float fAbs = Math.abs(((Float) this.n1.get(0)).floatValue() - fA);
            for (int i2 = 1; i2 < this.n1.size(); i2++) {
                float fAbs2 = Math.abs(((Float) this.n1.get(i2)).floatValue() - fA);
                float fR2 = R(((Float) this.n1.get(i2)).floatValue());
                if (Float.compare(fAbs2, fAbs) > 0) {
                    break;
                }
                boolean z = s() || t() ? fR2 - fR > Call.Parameters.DEFAULT_CAMERA_ZOOM : fR2 - fR < Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (Float.compare(fAbs2, fAbs) < 0) {
                    this.o1 = i2;
                } else {
                    if (Float.compare(fAbs2, fAbs) != 0) {
                        continue;
                    } else {
                        if (Math.abs(fR2 - fR) < this.s) {
                            this.o1 = -1;
                            return false;
                        }
                        if (z) {
                            this.o1 = i2;
                        }
                    }
                }
                fAbs = fAbs2;
            }
            if (this.o1 == -1) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x008e  */
    /* JADX WARN: Code duplicated, block: B:18:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:19:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:21:0x00b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x00b4  */
    public final void z(TooltipDrawable tooltipDrawable, float f2) {
        int iW;
        int intrinsicWidth;
        int iC;
        int intrinsicHeight;
        int iC2;
        Rect rect;
        ViewGroup viewGroupE;
        ViewOverlay overlay;
        String strL = l(f2);
        if (!TextUtils.equals(tooltipDrawable.I, strL)) {
            tooltipDrawable.I = strL;
            tooltipDrawable.L.f32734e = true;
            tooltipDrawable.invalidateSelf();
        }
        boolean zT = t();
        int i2 = this.F;
        int i3 = this.f1;
        if (zT) {
            iW = (i2 + ((int) (w(f2) * this.v1))) - (tooltipDrawable.getIntrinsicHeight() / 2);
            intrinsicWidth = tooltipDrawable.getIntrinsicHeight() + iW;
            if (s()) {
                iC = c() - ((this.H / 2) + i3);
                intrinsicHeight = tooltipDrawable.getIntrinsicWidth();
            } else {
                iC2 = (this.H / 2) + i3 + c();
                iC = tooltipDrawable.getIntrinsicWidth() + iC2;
            }
            rect = this.I1;
            rect.set(iW, iC2, intrinsicWidth, iC);
            if (t()) {
                RectF rectF = new RectF(rect);
                this.L1.mapRect(rectF);
                rectF.round(rect);
            }
            DescendantOffsetUtils.c(ViewUtils.e(this), this, rect);
            tooltipDrawable.setBounds(rect);
            viewGroupE = ViewUtils.e(this);
            if (viewGroupE == null) {
                overlay = null;
            } else {
                overlay = viewGroupE.getOverlay();
            }
            if (overlay == null) {
                return;
            }
            overlay.add(tooltipDrawable);
        }
        iW = (i2 + ((int) (w(f2) * this.v1))) - (tooltipDrawable.getIntrinsicWidth() / 2);
        intrinsicWidth = tooltipDrawable.getIntrinsicWidth() + iW;
        iC = c() - ((this.H / 2) + i3);
        intrinsicHeight = tooltipDrawable.getIntrinsicHeight();
        iC2 = iC - intrinsicHeight;
        rect = this.I1;
        rect.set(iW, iC2, intrinsicWidth, iC);
        if (t()) {
            RectF rectF2 = new RectF(rect);
            this.L1.mapRect(rectF2);
            rectF2.round(rect);
        }
        DescendantOffsetUtils.c(ViewUtils.e(this), this, rect);
        tooltipDrawable.setBounds(rect);
        viewGroupE = ViewUtils.e(this);
        if (viewGroupE == null) {
            overlay = null;
        } else {
            overlay = viewGroupE.getOverlay();
        }
        if (overlay == null) {
            return;
        }
        overlay.add(tooltipDrawable);
    }

    public void setValues(List<Float> list) {
        A(new ArrayList(list));
    }

    public void setCustomThumbDrawablesForValues(int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            drawableArr[i2] = getResources().getDrawable(iArr[i2]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    public BaseSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    public BaseSlider(Context context) {
        this(context, null);
    }
}
