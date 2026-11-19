package com.google.android.material.slider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.widget.SeekBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.vuitton.android.R;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class RangeSlider extends BaseSlider<RangeSlider, OnChangeListener, OnSliderTouchListener> {
    public float X1;
    public int Y1;

    public interface OnChangeListener extends BaseOnChangeListener<RangeSlider> {
        @Override // com.google.android.material.slider.BaseOnChangeListener
        /* bridge */ /* synthetic */ default void a(Object obj, float f2, boolean z) {
            b();
        }

        void b();
    }

    public interface OnSliderTouchListener extends BaseOnSliderTouchListener<RangeSlider> {
        @Override // com.google.android.material.slider.BaseOnSliderTouchListener
        /* bridge */ /* synthetic */ default void a(Object obj) {
            f();
        }

        @Override // com.google.android.material.slider.BaseOnSliderTouchListener
        /* bridge */ /* synthetic */ default void b(Object obj) {
            c();
        }

        void c();

        void f();
    }

    public RangeSlider(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayD = ThemeEnforcement.d(context, attributeSet, R$styleable.L, i2, R.style.Widget_MaterialComponents_Slider, new int[0]);
        if (typedArrayD.hasValue(1)) {
            TypedArray typedArrayObtainTypedArray = typedArrayD.getResources().obtainTypedArray(typedArrayD.getResourceId(1, 0));
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < typedArrayObtainTypedArray.length(); i3++) {
                arrayList.add(Float.valueOf(typedArrayObtainTypedArray.getFloat(i3, -1.0f)));
            }
            setValues(arrayList);
        }
        this.X1 = typedArrayD.getDimension(0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        typedArrayD.recycle();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public int getActiveThumbIndex() {
        return this.o1;
    }

    public int getFocusedThumbIndex() {
        return this.p1;
    }

    public int getHaloRadius() {
        return this.I;
    }

    public ColorStateList getHaloTintList() {
        return this.y1;
    }

    public int getLabelBehavior() {
        return this.D;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getMinSeparation() {
        return this.X1;
    }

    public float getStepSize() {
        return this.q1;
    }

    public float getThumbElevation() {
        return this.M1.f32936c.n;
    }

    public int getThumbHeight() {
        return this.H;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public int getThumbRadius() {
        return this.G / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.M1.f32936c.f32948e;
    }

    public float getThumbStrokeWidth() {
        return this.M1.f32936c.f32953k;
    }

    public ColorStateList getThumbTintList() {
        return this.M1.f32936c.d;
    }

    public int getThumbTrackGapSize() {
        return this.J;
    }

    public int getThumbWidth() {
        return this.G;
    }

    public int getTickActiveRadius() {
        return this.t1;
    }

    public ColorStateList getTickActiveTintList() {
        return this.z1;
    }

    public int getTickInactiveRadius() {
        return this.u1;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.A1;
    }

    public ColorStateList getTickTintList() {
        if (this.A1.equals(this.z1)) {
            return this.z1;
        }
        md.k("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
        return null;
    }

    public int getTickVisibilityMode() {
        return this.s1;
    }

    public ColorStateList getTrackActiveTintList() {
        return this.B1;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ int getTrackCornerSize() {
        return super.getTrackCornerSize();
    }

    public int getTrackHeight() {
        return this.E;
    }

    public ColorStateList getTrackIconActiveColor() {
        return this.V;
    }

    public Drawable getTrackIconActiveEnd() {
        return this.S;
    }

    public Drawable getTrackIconActiveStart() {
        return this.Q;
    }

    public ColorStateList getTrackIconInactiveColor() {
        return this.c1;
    }

    public Drawable getTrackIconInactiveEnd() {
        return this.t0;
    }

    public Drawable getTrackIconInactiveStart() {
        return this.W;
    }

    public int getTrackIconSize() {
        return this.d1;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.C1;
    }

    public int getTrackInsideCornerSize() {
        return this.O;
    }

    public int getTrackSidePadding() {
        return this.F;
    }

    public int getTrackStopIndicatorSize() {
        return this.M;
    }

    public ColorStateList getTrackTintList() {
        if (this.C1.equals(this.B1)) {
            return this.B1;
        }
        md.k("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
        return null;
    }

    public int getTrackWidth() {
        return this.v1;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getValueFrom() {
        return this.l1;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getValueTo() {
        return this.m1;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public List<Float> getValues() {
        return super.getValues();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public final boolean o() {
        return this.P;
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        RangeSliderState rangeSliderState = (RangeSliderState) parcelable;
        super.onRestoreInstanceState(rangeSliderState.getSuperState());
        this.X1 = rangeSliderState.f33060b;
        int i2 = rangeSliderState.f33061c;
        this.Y1 = i2;
        setSeparationUnit(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public final Parcelable onSaveInstanceState() {
        RangeSliderState rangeSliderState = new RangeSliderState(super.onSaveInstanceState());
        rangeSliderState.f33060b = this.X1;
        rangeSliderState.f33061c = this.Y1;
        return rangeSliderState;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setCentered(boolean z) {
        super.setCentered(z);
    }

    public void setCustomThumbDrawable(int i2) {
        setCustomThumbDrawable(getResources().getDrawable(i2));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(int... iArr) {
        super.setCustomThumbDrawablesForValues(iArr);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setFocusedThumbIndex(int i2) {
        super.setFocusedThumbIndex(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloRadius(int i2) {
        super.setHaloRadius(i2);
    }

    public void setHaloRadiusResource(int i2) {
        setHaloRadius(getResources().getDimensionPixelSize(i2));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloTintList(ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setLabelBehavior(int i2) {
        super.setLabelBehavior(i2);
    }

    public void setLabelFormatter(LabelFormatter labelFormatter) {
        this.j1 = labelFormatter;
    }

    public void setMinSeparation(float f2) {
        this.X1 = f2;
        this.Y1 = 0;
        setSeparationUnit(0);
    }

    public void setMinSeparationValue(float f2) {
        this.X1 = f2;
        this.Y1 = 1;
        setSeparationUnit(1);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setOrientation(int i2) {
        super.setOrientation(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setStepSize(float f2) {
        super.setStepSize(f2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbElevation(float f2) {
        super.setThumbElevation(f2);
    }

    public void setThumbElevationResource(int i2) {
        setThumbElevation(getResources().getDimension(i2));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbHeight(int i2) {
        super.setThumbHeight(i2);
    }

    public void setThumbHeightResource(int i2) {
        setThumbHeight(getResources().getDimensionPixelSize(i2));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbRadius(int i2) {
        super.setThumbRadius(i2);
    }

    public void setThumbRadiusResource(int i2) {
        setThumbRadius(getResources().getDimensionPixelSize(i2));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeColor(ColorStateList colorStateList) {
        super.setThumbStrokeColor(colorStateList);
    }

    public void setThumbStrokeColorResource(int i2) {
        if (i2 != 0) {
            setThumbStrokeColor(ContextCompat.getColorStateList(getContext(), i2));
        }
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeWidth(float f2) {
        super.setThumbStrokeWidth(f2);
    }

    public void setThumbStrokeWidthResource(int i2) {
        if (i2 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i2));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.M1;
        if (colorStateList.equals(materialShapeDrawable.f32936c.d)) {
            return;
        }
        materialShapeDrawable.r(colorStateList);
        invalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbTrackGapSize(int i2) {
        super.setThumbTrackGapSize(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbWidth(int i2) {
        super.setThumbWidth(i2);
    }

    public void setThumbWidthResource(int i2) {
        setThumbWidth(getResources().getDimensionPixelSize(i2));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickActiveRadius(int i2) {
        super.setTickActiveRadius(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickActiveTintList(ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickInactiveRadius(int i2) {
        super.setTickInactiveRadius(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickInactiveTintList(ColorStateList colorStateList) {
        super.setTickInactiveTintList(colorStateList);
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickVisibilityMode(int i2) {
        super.setTickVisibilityMode(i2);
    }

    @Deprecated
    public void setTickVisible(boolean z) {
        setTickVisibilityMode(z ? 0 : 2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackActiveTintList(ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackCornerSize(int i2) {
        super.setTrackCornerSize(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackHeight(int i2) {
        super.setTrackHeight(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconActiveColor(ColorStateList colorStateList) {
        super.setTrackIconActiveColor(colorStateList);
    }

    public void setTrackIconActiveEnd(int i2) {
        setTrackIconActiveEnd(i2 != 0 ? AppCompatResources.a(getContext(), i2) : null);
    }

    public void setTrackIconActiveStart(int i2) {
        setTrackIconActiveStart(i2 != 0 ? AppCompatResources.a(getContext(), i2) : null);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconInactiveColor(ColorStateList colorStateList) {
        super.setTrackIconInactiveColor(colorStateList);
    }

    public void setTrackIconInactiveEnd(int i2) {
        setTrackIconInactiveEnd(i2 != 0 ? AppCompatResources.a(getContext(), i2) : null);
    }

    public void setTrackIconInactiveStart(int i2) {
        setTrackIconInactiveStart(i2 != 0 ? AppCompatResources.a(getContext(), i2) : null);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconSize(int i2) {
        super.setTrackIconSize(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackInactiveTintList(ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackInsideCornerSize(int i2) {
        super.setTrackInsideCornerSize(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackStopIndicatorSize(int i2) {
        super.setTrackStopIndicatorSize(i2);
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f2) {
        this.l1 = f2;
        this.x1 = true;
        postInvalidate();
    }

    public void setValueTo(float f2) {
        this.m1 = f2;
        this.x1 = true;
        postInvalidate();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(Float... fArr) {
        super.setValues(fArr);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(Drawable... drawableArr) {
        super.setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(List<Float> list) {
        super.setValues(list);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawable(Drawable drawable) {
        super.setCustomThumbDrawable(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconActiveEnd(Drawable drawable) {
        super.setTrackIconActiveEnd(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconActiveStart(Drawable drawable) {
        super.setTrackIconActiveStart(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconInactiveEnd(Drawable drawable) {
        super.setTrackIconInactiveEnd(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackIconInactiveStart(Drawable drawable) {
        super.setTrackIconInactiveStart(drawable);
    }

    public static class RangeSliderState extends AbsSavedState {
        public static final Parcelable.Creator<RangeSliderState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f33060b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33061c;

        /* JADX INFO: renamed from: com.google.android.material.slider.RangeSlider$RangeSliderState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<RangeSliderState> {
            @Override // android.os.Parcelable.Creator
            public final RangeSliderState createFromParcel(Parcel parcel) {
                return new RangeSliderState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final RangeSliderState[] newArray(int i2) {
                return new RangeSliderState[i2];
            }
        }

        public RangeSliderState(Parcel parcel) {
            super(parcel.readParcelable(RangeSliderState.class.getClassLoader()));
            this.f33060b = parcel.readFloat();
            this.f33061c = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeFloat(this.f33060b);
            parcel.writeInt(this.f33061c);
        }

        public RangeSliderState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public RangeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    public RangeSlider(Context context) {
        this(context, null);
    }
}
