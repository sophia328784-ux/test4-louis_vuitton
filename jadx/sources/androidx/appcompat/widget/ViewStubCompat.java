package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.R$styleable;
import defpackage.md;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1347c;
    public WeakReference d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LayoutInflater f1348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public OnInflateListener f1349f;

    public interface OnInflateListener {
        void a();
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1346b = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.C, i2, 0);
        this.f1347c = typedArrayObtainStyledAttributes.getResourceId(2, -1);
        this.f1346b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        setId(typedArrayObtainStyledAttributes.getResourceId(0, -1));
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public final View a() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            md.k("ViewStub must have a non-null ViewGroup viewParent");
            return null;
        }
        if (this.f1346b == 0) {
            md.n("ViewStub must have a valid layoutResource");
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        LayoutInflater layoutInflaterFrom = this.f1348e;
        if (layoutInflaterFrom == null) {
            layoutInflaterFrom = LayoutInflater.from(getContext());
        }
        View viewInflate = layoutInflaterFrom.inflate(this.f1346b, viewGroup, false);
        int i2 = this.f1347c;
        if (i2 != -1) {
            viewInflate.setId(i2);
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(viewInflate, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(viewInflate, iIndexOfChild);
        }
        this.d = new WeakReference(viewInflate);
        OnInflateListener onInflateListener = this.f1349f;
        if (onInflateListener != null) {
            onInflateListener.a();
        }
        return viewInflate;
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f1347c;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1348e;
    }

    public int getLayoutResource() {
        return this.f1346b;
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i2) {
        this.f1347c = i2;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1348e = layoutInflater;
    }

    public void setLayoutResource(int i2) {
        this.f1346b = i2;
    }

    public void setOnInflateListener(OnInflateListener onInflateListener) {
        this.f1349f = onInflateListener;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        WeakReference weakReference = this.d;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            if (view != null) {
                view.setVisibility(i2);
                return;
            } else {
                md.k("setVisibility called on un-referenced view");
                return;
            }
        }
        super.setVisibility(i2);
        if (i2 == 0 || i2 == 4) {
            a();
        }
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
