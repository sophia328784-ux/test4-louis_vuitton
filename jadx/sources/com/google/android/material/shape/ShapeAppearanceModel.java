package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ShapeAppearanceModel {
    public static final RelativeCornerSize m = new RelativeCornerSize(0.5f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CornerTreatment f32959a = new RoundedCornerTreatment();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CornerTreatment f32960b = new RoundedCornerTreatment();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CornerTreatment f32961c = new RoundedCornerTreatment();
    public CornerTreatment d = new RoundedCornerTreatment();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CornerSize f32962e = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CornerSize f32963f = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
    public CornerSize g = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CornerSize f32964h = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public EdgeTreatment f32965i = new EdgeTreatment();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public EdgeTreatment f32966j = new EdgeTreatment();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public EdgeTreatment f32967k = new EdgeTreatment();
    public EdgeTreatment l = new EdgeTreatment();

    public interface CornerSizeUnaryOperator {
    }

    public static Builder a(Context context, int i2, int i3) {
        return b(context, i2, i3, new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM));
    }

    public static Builder b(Context context, int i2, int i3, CornerSize cornerSize) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
        if (i3 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i3, true);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R$styleable.P);
        try {
            int i4 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i5 = typedArrayObtainStyledAttributes.getInt(3, i4);
            int i6 = typedArrayObtainStyledAttributes.getInt(4, i4);
            int i7 = typedArrayObtainStyledAttributes.getInt(2, i4);
            int i8 = typedArrayObtainStyledAttributes.getInt(1, i4);
            CornerSize cornerSizeE = e(typedArrayObtainStyledAttributes, 5, cornerSize);
            CornerSize cornerSizeE2 = e(typedArrayObtainStyledAttributes, 8, cornerSizeE);
            CornerSize cornerSizeE3 = e(typedArrayObtainStyledAttributes, 9, cornerSizeE);
            CornerSize cornerSizeE4 = e(typedArrayObtainStyledAttributes, 7, cornerSizeE);
            CornerSize cornerSizeE5 = e(typedArrayObtainStyledAttributes, 6, cornerSizeE);
            Builder builder = new Builder();
            CornerTreatment cornerTreatmentA = MaterialShapeUtils.a(i5);
            builder.f32968a = cornerTreatmentA;
            float fB = Builder.b(cornerTreatmentA);
            if (fB != -1.0f) {
                builder.e(fB);
            }
            builder.f32971e = cornerSizeE2;
            CornerTreatment cornerTreatmentA2 = MaterialShapeUtils.a(i6);
            builder.f32969b = cornerTreatmentA2;
            float fB2 = Builder.b(cornerTreatmentA2);
            if (fB2 != -1.0f) {
                builder.f(fB2);
            }
            builder.f32972f = cornerSizeE3;
            CornerTreatment cornerTreatmentA3 = MaterialShapeUtils.a(i7);
            builder.f32970c = cornerTreatmentA3;
            float fB3 = Builder.b(cornerTreatmentA3);
            if (fB3 != -1.0f) {
                builder.d(fB3);
            }
            builder.g = cornerSizeE4;
            CornerTreatment cornerTreatmentA4 = MaterialShapeUtils.a(i8);
            builder.d = cornerTreatmentA4;
            float fB4 = Builder.b(cornerTreatmentA4);
            if (fB4 != -1.0f) {
                builder.c(fB4);
            }
            builder.f32973h = cornerSizeE5;
            return builder;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static Builder c(Context context, AttributeSet attributeSet, int i2, int i3) {
        return d(context, attributeSet, i2, i3, new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM));
    }

    public static Builder d(Context context, AttributeSet attributeSet, int i2, int i3, CornerSize cornerSize) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.E, i2, i3);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return b(context, resourceId, resourceId2, cornerSize);
    }

    public static CornerSize e(TypedArray typedArray, int i2, CornerSize cornerSize) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        if (typedValuePeekValue != null) {
            int i3 = typedValuePeekValue.type;
            if (i3 == 5) {
                return new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i3 == 6) {
                return new RelativeCornerSize(typedValuePeekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cornerSize;
    }

    public final boolean f() {
        return (this.f32960b instanceof RoundedCornerTreatment) && (this.f32959a instanceof RoundedCornerTreatment) && (this.f32961c instanceof RoundedCornerTreatment) && (this.d instanceof RoundedCornerTreatment);
    }

    public final boolean g(RectF rectF) {
        boolean z = this.l.getClass().equals(EdgeTreatment.class) && this.f32966j.getClass().equals(EdgeTreatment.class) && this.f32965i.getClass().equals(EdgeTreatment.class) && this.f32967k.getClass().equals(EdgeTreatment.class);
        float fA = this.f32962e.a(rectF);
        return z && ((this.f32963f.a(rectF) > fA ? 1 : (this.f32963f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f32964h.a(rectF) > fA ? 1 : (this.f32964h.a(rectF) == fA ? 0 : -1)) == 0 && (this.g.a(rectF) > fA ? 1 : (this.g.a(rectF) == fA ? 0 : -1)) == 0) && f();
    }

    public final ShapeAppearanceModel h(float f2) {
        Builder builder = new Builder(this);
        builder.e(f2);
        builder.f(f2);
        builder.d(f2);
        builder.c(f2);
        return builder.a();
    }

    public final String toString() {
        return "[" + this.f32962e + ", " + this.f32963f + ", " + this.g + ", " + this.f32964h + "]";
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CornerTreatment f32968a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CornerTreatment f32969b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CornerTreatment f32970c;
        public CornerTreatment d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CornerSize f32971e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CornerSize f32972f;
        public CornerSize g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CornerSize f32973h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public EdgeTreatment f32974i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final EdgeTreatment f32975j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public EdgeTreatment f32976k;
        public final EdgeTreatment l;

        public Builder(ShapeAppearanceModel shapeAppearanceModel) {
            this.f32968a = new RoundedCornerTreatment();
            this.f32969b = new RoundedCornerTreatment();
            this.f32970c = new RoundedCornerTreatment();
            this.d = new RoundedCornerTreatment();
            this.f32971e = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f32972f = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.g = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f32973h = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f32974i = new EdgeTreatment();
            this.f32975j = new EdgeTreatment();
            this.f32976k = new EdgeTreatment();
            this.l = new EdgeTreatment();
            this.f32968a = shapeAppearanceModel.f32959a;
            this.f32969b = shapeAppearanceModel.f32960b;
            this.f32970c = shapeAppearanceModel.f32961c;
            this.d = shapeAppearanceModel.d;
            this.f32971e = shapeAppearanceModel.f32962e;
            this.f32972f = shapeAppearanceModel.f32963f;
            this.g = shapeAppearanceModel.g;
            this.f32973h = shapeAppearanceModel.f32964h;
            this.f32974i = shapeAppearanceModel.f32965i;
            this.f32975j = shapeAppearanceModel.f32966j;
            this.f32976k = shapeAppearanceModel.f32967k;
            this.l = shapeAppearanceModel.l;
        }

        public static float b(CornerTreatment cornerTreatment) {
            if (cornerTreatment instanceof RoundedCornerTreatment) {
                return ((RoundedCornerTreatment) cornerTreatment).f32958a;
            }
            if (cornerTreatment instanceof CutCornerTreatment) {
                return ((CutCornerTreatment) cornerTreatment).f32933a;
            }
            return -1.0f;
        }

        public final ShapeAppearanceModel a() {
            ShapeAppearanceModel shapeAppearanceModel = new ShapeAppearanceModel();
            shapeAppearanceModel.f32959a = this.f32968a;
            shapeAppearanceModel.f32960b = this.f32969b;
            shapeAppearanceModel.f32961c = this.f32970c;
            shapeAppearanceModel.d = this.d;
            shapeAppearanceModel.f32962e = this.f32971e;
            shapeAppearanceModel.f32963f = this.f32972f;
            shapeAppearanceModel.g = this.g;
            shapeAppearanceModel.f32964h = this.f32973h;
            shapeAppearanceModel.f32965i = this.f32974i;
            shapeAppearanceModel.f32966j = this.f32975j;
            shapeAppearanceModel.f32967k = this.f32976k;
            shapeAppearanceModel.l = this.l;
            return shapeAppearanceModel;
        }

        public final void c(float f2) {
            this.f32973h = new AbsoluteCornerSize(f2);
        }

        public final void d(float f2) {
            this.g = new AbsoluteCornerSize(f2);
        }

        public final void e(float f2) {
            this.f32971e = new AbsoluteCornerSize(f2);
        }

        public final void f(float f2) {
            this.f32972f = new AbsoluteCornerSize(f2);
        }

        public Builder() {
            this.f32968a = new RoundedCornerTreatment();
            this.f32969b = new RoundedCornerTreatment();
            this.f32970c = new RoundedCornerTreatment();
            this.d = new RoundedCornerTreatment();
            this.f32971e = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f32972f = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.g = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f32973h = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f32974i = new EdgeTreatment();
            this.f32975j = new EdgeTreatment();
            this.f32976k = new EdgeTreatment();
            this.l = new EdgeTreatment();
        }
    }
}
