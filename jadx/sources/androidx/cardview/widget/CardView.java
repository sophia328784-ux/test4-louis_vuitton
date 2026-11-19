package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.cardview.R$styleable;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class CardView extends FrameLayout {
    public static final int[] g = {R.attr.colorBackground};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final CardViewApi21Impl f3201h = new CardViewApi21Impl();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3203c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f3204e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnonymousClass1 f3205f;

    /* JADX INFO: renamed from: androidx.cardview.widget.CardView$1, reason: invalid class name */
    public class AnonymousClass1 implements CardViewDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Drawable f3206a;

        public AnonymousClass1() {
        }

        @Override // androidx.cardview.widget.CardViewDelegate
        public final boolean a() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.CardViewDelegate
        public final Drawable b() {
            return this.f3206a;
        }

        @Override // androidx.cardview.widget.CardViewDelegate
        public final void c(int i2, int i3, int i4, int i5) {
            CardView cardView = CardView.this;
            cardView.f3204e.set(i2, i3, i4, i5);
            Rect rect = cardView.d;
            CardView.super.setPadding(i2 + rect.left, i3 + rect.top, i4 + rect.right, i5 + rect.bottom);
        }

        @Override // androidx.cardview.widget.CardViewDelegate
        public final boolean d() {
            return CardView.this.getPreventCornerOverlap();
        }
    }

    public CardView(Context context, AttributeSet attributeSet, int i2) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i2);
        Rect rect = new Rect();
        this.d = rect;
        this.f3204e = new Rect();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.f3205f = anonymousClass1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f3200a, i2, com.vuitton.android.R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(g);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(com.vuitton.android.R.color.cardview_light_background) : getResources().getColor(com.vuitton.android.R.color.cardview_dark_background));
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(4, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f3202b = typedArrayObtainStyledAttributes.getBoolean(7, false);
        this.f3203c = typedArrayObtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        RoundRectDrawable roundRectDrawable = new RoundRectDrawable(colorStateListValueOf, dimension);
        anonymousClass1.f3206a = roundRectDrawable;
        setBackgroundDrawable(roundRectDrawable);
        setClipToOutline(true);
        setElevation(dimension2);
        f3201h.a(anonymousClass1, dimension3);
    }

    public final void f(int i2, int i3, int i4, int i5) {
        this.d.set(i2, i3, i4, i5);
        f3201h.b(this.f3205f);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((RoundRectDrawable) this.f3205f.f3206a).f3213h;
    }

    public float getCardElevation() {
        return CardView.this.getElevation();
    }

    public int getContentPaddingBottom() {
        return this.d.bottom;
    }

    public int getContentPaddingLeft() {
        return this.d.left;
    }

    public int getContentPaddingRight() {
        return this.d.right;
    }

    public int getContentPaddingTop() {
        return this.d.top;
    }

    public float getMaxCardElevation() {
        return ((RoundRectDrawable) this.f3205f.f3206a).f3211e;
    }

    public boolean getPreventCornerOverlap() {
        return this.f3203c;
    }

    public float getRadius() {
        return ((RoundRectDrawable) this.f3205f.f3206a).f3208a;
    }

    public boolean getUseCompatPadding() {
        return this.f3202b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    public void setCardBackgroundColor(int i2) {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i2);
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.f3205f.f3206a;
        if (colorStateListValueOf == null) {
            roundRectDrawable.getClass();
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        roundRectDrawable.f3213h = colorStateListValueOf;
        roundRectDrawable.f3209b.setColor(colorStateListValueOf.getColorForState(roundRectDrawable.getState(), roundRectDrawable.f3213h.getDefaultColor()));
        roundRectDrawable.invalidateSelf();
    }

    public void setCardElevation(float f2) {
        CardView.this.setElevation(f2);
    }

    public void setMaxCardElevation(float f2) {
        f3201h.a(this.f3205f, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i2) {
        super.setMinimumHeight(i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i2) {
        super.setMinimumWidth(i2);
    }

    @Override // android.view.View
    public final void setPadding(int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i2, int i3, int i4, int i5) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f3203c) {
            this.f3203c = z;
            AnonymousClass1 anonymousClass1 = this.f3205f;
            f3201h.a(anonymousClass1, ((RoundRectDrawable) anonymousClass1.f3206a).f3211e);
        }
    }

    public void setRadius(float f2) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.f3205f.f3206a;
        if (f2 == roundRectDrawable.f3208a) {
            return;
        }
        roundRectDrawable.f3208a = f2;
        roundRectDrawable.b(null);
        roundRectDrawable.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f3202b != z) {
            this.f3202b = z;
            AnonymousClass1 anonymousClass1 = this.f3205f;
            f3201h.a(anonymousClass1, ((RoundRectDrawable) anonymousClass1.f3206a).f3211e);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) this.f3205f.f3206a;
        if (colorStateList == null) {
            roundRectDrawable.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        roundRectDrawable.f3213h = colorStateList;
        roundRectDrawable.f3209b.setColor(colorStateList.getColorForState(roundRectDrawable.getState(), roundRectDrawable.f3213h.getDefaultColor()));
        roundRectDrawable.invalidateSelf();
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.cardViewStyle);
    }

    public CardView(Context context) {
        this(context, null);
    }
}
