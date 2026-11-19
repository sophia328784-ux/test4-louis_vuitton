package com.google.android.material.search;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.mt;
import java.util.LinkedHashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class SearchBar extends Toolbar {
    public final TextView W;
    public final int b1;
    public boolean c1;
    public final ColorStateList d1;
    public final boolean e1;
    public final boolean f1;
    public final SearchBarAnimationHelper g1;
    public final TextView h0;
    public final Drawable h1;
    public final boolean i1;
    public final boolean j1;
    public View k1;
    public final Integer l1;
    public Drawable m1;
    public int n1;
    public boolean o1;
    public final MaterialShapeDrawable p1;
    public boolean q1;
    public int r1;
    public ActionMenuView s1;
    public final FrameLayout t0;
    public ImageButton t1;
    public final AppBarLayout.LiftOnScrollProgressListener u1;

    public SearchBar(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_Material3_SearchBar), attributeSet, i2);
        this.n1 = -1;
        this.u1 = new AppBarLayout.LiftOnScrollProgressListener() { // from class: com.google.android.material.search.SearchBar.1
            @Override // com.google.android.material.appbar.AppBarLayout.LiftOnScrollProgressListener
            public final void a(float f2) {
                SearchBar searchBar = SearchBar.this;
                ColorStateList colorStateList = searchBar.d1;
                if (colorStateList != null) {
                    searchBar.p1.r(ColorStateList.valueOf(MaterialColors.g(searchBar.b1, colorStateList.getDefaultColor(), f2)));
                }
            }
        };
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "title") != null) {
                mt.i("SearchBar does not support title. Use hint or text instead.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "subtitle") != null) {
                mt.i("SearchBar does not support subtitle. Use hint or text instead.");
                throw null;
            }
        }
        Drawable drawableA = AppCompatResources.a(context2, getDefaultNavigationIconResource());
        this.h1 = drawableA;
        SearchBarAnimationHelper searchBarAnimationHelper = new SearchBarAnimationHelper();
        new LinkedHashSet();
        new LinkedHashSet();
        new LinkedHashSet();
        this.g1 = searchBarAnimationHelper;
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.N, i2, R.style.Widget_Material3_SearchBar, new int[0]);
        ShapeAppearanceModel shapeAppearanceModelA = ShapeAppearanceModel.c(context2, attributeSet, i2, R.style.Widget_Material3_SearchBar).a();
        int color = typedArrayD.getColor(4, 0);
        this.b1 = color;
        this.d1 = MaterialResources.a(context2, typedArrayD, 11);
        float dimension = typedArrayD.getDimension(7, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f1 = typedArrayD.getBoolean(5, true);
        this.o1 = typedArrayD.getBoolean(6, true);
        boolean z = typedArrayD.getBoolean(9, false);
        this.j1 = typedArrayD.getBoolean(8, false);
        this.i1 = typedArrayD.getBoolean(16, true);
        if (typedArrayD.hasValue(12)) {
            this.l1 = Integer.valueOf(typedArrayD.getColor(12, -1));
        }
        int resourceId = typedArrayD.getResourceId(0, -1);
        String string = typedArrayD.getString(2);
        String string2 = typedArrayD.getString(3);
        float dimension2 = typedArrayD.getDimension(14, -1.0f);
        int color2 = typedArrayD.getColor(13, 0);
        this.q1 = typedArrayD.getBoolean(15, false);
        this.c1 = typedArrayD.getBoolean(10, false);
        this.r1 = typedArrayD.getDimensionPixelSize(1, -1);
        typedArrayD.recycle();
        if (!z) {
            setNavigationIcon(getNavigationIcon() != null ? getNavigationIcon() : drawableA);
            setNavigationIconDecorative(true);
        }
        setClickable(true);
        setFocusable(true);
        LayoutInflater.from(context2).inflate(R.layout.mtrl_search_bar, this);
        this.e1 = true;
        TextView textView = (TextView) findViewById(R.id.open_search_bar_text_view);
        this.W = textView;
        TextView textView2 = (TextView) findViewById(R.id.open_search_bar_placeholder_text_view);
        this.h0 = textView2;
        this.t0 = (FrameLayout) findViewById(R.id.open_search_bar_text_view_container);
        setElevation(dimension);
        if (resourceId != -1) {
            textView.setTextAppearance(resourceId);
            textView2.setTextAppearance(resourceId);
        }
        setText(string);
        setHint(string2);
        setTextCentered(this.q1);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModelA);
        this.p1 = materialShapeDrawable;
        materialShapeDrawable.n(getContext());
        this.p1.q(dimension);
        if (dimension2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            MaterialShapeDrawable materialShapeDrawable2 = this.p1;
            materialShapeDrawable2.y(dimension2);
            materialShapeDrawable2.x(ColorStateList.valueOf(color2));
        }
        int iB = MaterialColors.b(R.attr.colorControlHighlight, this);
        this.p1.r(ColorStateList.valueOf(color));
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iB);
        MaterialShapeDrawable materialShapeDrawable3 = this.p1;
        setBackground(new RippleDrawable(colorStateListValueOf, materialShapeDrawable3, materialShapeDrawable3));
    }

    private AppBarLayout getAppBarLayoutParentIfExists() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof AppBarLayout) {
                return (AppBarLayout) parent;
            }
        }
        return null;
    }

    private void setNavigationIconDecorative(boolean z) {
        ImageButton imageButtonB = ToolbarUtils.b(this);
        if (imageButtonB == null) {
            return;
        }
        imageButtonB.setClickable(!z);
        imageButtonB.setFocusable(!z);
        Drawable background = imageButtonB.getBackground();
        if (background != null) {
            this.m1 = background;
        }
        imageButtonB.setBackgroundDrawable(z ? null : this.m1);
        w();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (this.e1 && this.k1 == null && !(view instanceof ActionMenuView)) {
            this.k1 = view;
            view.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        super.addView(view, i2, layoutParams);
    }

    public View getCenterView() {
        return this.k1;
    }

    public float getCompatElevation() {
        MaterialShapeDrawable materialShapeDrawable = this.p1;
        return materialShapeDrawable != null ? materialShapeDrawable.f32936c.n : getElevation();
    }

    public float getCornerSize() {
        return this.p1.l();
    }

    public int getDefaultMarginVerticalResource() {
        return R.dimen.m3_searchbar_margin_vertical;
    }

    public int getDefaultNavigationIconResource() {
        return R.drawable.ic_search_black_24;
    }

    public CharSequence getHint() {
        return this.W.getHint();
    }

    public int getMaxWidth() {
        return this.r1;
    }

    public int getMenuResId() {
        return this.n1;
    }

    public TextView getPlaceholderTextView() {
        return this.h0;
    }

    public int getStrokeColor() {
        return this.p1.f32936c.f32948e.getDefaultColor();
    }

    public float getStrokeWidth() {
        return this.p1.f32936c.f32953k;
    }

    public CharSequence getText() {
        return this.W.getText();
    }

    public boolean getTextCentered() {
        return this.q1;
    }

    public TextView getTextView() {
        return this.W;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public final void m(int i2) {
        super.m(i2);
        this.n1 = i2;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.b(this, this.p1);
        if (this.f1 && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(getDefaultMarginVerticalResource());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            int i2 = marginLayoutParams.leftMargin;
            if (i2 == 0) {
                i2 = dimensionPixelSize;
            }
            marginLayoutParams.leftMargin = i2;
            int i3 = marginLayoutParams.topMargin;
            if (i3 == 0) {
                i3 = dimensionPixelSize2;
            }
            marginLayoutParams.topMargin = i3;
            int i4 = marginLayoutParams.rightMargin;
            if (i4 != 0) {
                dimensionPixelSize = i4;
            }
            marginLayoutParams.rightMargin = dimensionPixelSize;
            int i5 = marginLayoutParams.bottomMargin;
            if (i5 != 0) {
                dimensionPixelSize2 = i5;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize2;
        }
        x();
        if (this.c1) {
            v();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AppBarLayout appBarLayoutParentIfExists = getAppBarLayoutParentIfExists();
        if (appBarLayoutParentIfExists != null) {
            appBarLayoutParentIfExists.s.remove(this.u1);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        accessibilityNodeInfo.setHintText(getHint());
        accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        if (zIsEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        View view = this.k1;
        if (view != null && view != null) {
            int measuredWidth = view.getMeasuredWidth();
            int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
            int i6 = measuredWidth + measuredWidth2;
            int measuredHeight = view.getMeasuredHeight();
            int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
            int i7 = measuredHeight + measuredHeight2;
            if (getLayoutDirection() == 1) {
                view.layout(getMeasuredWidth() - i6, measuredHeight2, getMeasuredWidth() - measuredWidth2, i7);
            } else {
                view.layout(measuredWidth2, measuredHeight2, i6, i7);
            }
        }
        w();
        TextView textView = this.W;
        if (textView == null || !this.q1) {
            return;
        }
        int measuredWidth3 = getMeasuredWidth() / 2;
        FrameLayout frameLayout = this.t0;
        int measuredWidth4 = measuredWidth3 - (frameLayout.getMeasuredWidth() / 2);
        int measuredWidth5 = frameLayout.getMeasuredWidth() + measuredWidth4;
        int measuredHeight3 = (getMeasuredHeight() / 2) - (frameLayout.getMeasuredHeight() / 2);
        int measuredHeight4 = frameLayout.getMeasuredHeight() + measuredHeight3;
        boolean z2 = getLayoutDirection() == 1;
        if (this.s1 == null) {
            this.s1 = ToolbarUtils.a(this);
        }
        View view2 = this.s1;
        if (this.t1 == null) {
            this.t1 = ToolbarUtils.b(this);
        }
        ImageButton imageButton = this.t1;
        int measuredWidth6 = (frameLayout.getMeasuredWidth() / 2) - (textView.getMeasuredWidth() / 2);
        int measuredWidth7 = textView.getMeasuredWidth() + measuredWidth6;
        int i8 = measuredWidth6 + measuredWidth4;
        int i9 = measuredWidth7 + measuredWidth4;
        View view3 = z2 ? view2 : imageButton;
        if (z2) {
            view2 = imageButton;
        }
        int iMax = view3 != null ? Math.max(view3.getRight() - i8, 0) : 0;
        int i10 = i8 + iMax;
        int i11 = i9 + iMax;
        int iMax2 = view2 != null ? Math.max(i11 - view2.getLeft(), 0) : 0;
        int i12 = i10 - iMax2;
        int i13 = i11 - iMax2;
        int iMax3 = ((iMax - iMax2) + Math.max(Math.max(getPaddingLeft() - i12, getContentInsetLeft() - i12), 0)) - Math.max(Math.max(i13 - (getMeasuredWidth() - getPaddingRight()), i13 - (getMeasuredWidth() - getContentInsetRight())), 0);
        frameLayout.layout(measuredWidth4 + iMax3, measuredHeight3, measuredWidth5 + iMax3, measuredHeight4);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4 = this.r1;
        if (i4 >= 0 && i4 < View.MeasureSpec.getSize(i2)) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.r1, View.MeasureSpec.getMode(i2));
        }
        super.onMeasure(i2, i3);
        View view = this.k1;
        if (view != null) {
            view.measure(i2, i3);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        setText(savedState.d);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        savedState.d = text == null ? null : text.toString();
        return savedState;
    }

    public void setCenterView(View view) {
        View view2 = this.k1;
        if (view2 != null) {
            removeView(view2);
            this.k1 = null;
        }
        if (view != null) {
            addView(view);
        }
    }

    public void setDefaultScrollFlagsEnabled(boolean z) {
        this.o1 = z;
        x();
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        MaterialShapeDrawable materialShapeDrawable = this.p1;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.q(f2);
        }
    }

    public void setHint(CharSequence charSequence) {
        this.W.setHint(charSequence);
    }

    public void setLiftOnScroll(boolean z) {
        this.c1 = z;
        if (z) {
            v();
            return;
        }
        AppBarLayout appBarLayoutParentIfExists = getAppBarLayoutParentIfExists();
        if (appBarLayoutParentIfExists != null) {
            appBarLayoutParentIfExists.s.remove(this.u1);
        }
    }

    public void setMaxWidth(int i2) {
        if (this.r1 != i2) {
            this.r1 = i2;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        int iB;
        if (this.i1 && drawable != null) {
            Integer num = this.l1;
            if (num != null) {
                iB = num.intValue();
            } else {
                iB = MaterialColors.b(drawable == this.h1 ? R.attr.colorOnSurfaceVariant : R.attr.colorOnSurface, this);
            }
            drawable = drawable.mutate();
            drawable.setTint(iB);
        }
        super.setNavigationIcon(drawable);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        if (this.j1) {
            return;
        }
        super.setNavigationOnClickListener(onClickListener);
        setNavigationIconDecorative(onClickListener == null);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z) {
        this.g1.getClass();
    }

    public void setPlaceholderText(String str) {
        this.h0.setText(str);
    }

    public void setStrokeColor(int i2) {
        if (getStrokeColor() != i2) {
            this.p1.x(ColorStateList.valueOf(i2));
        }
    }

    public void setStrokeWidth(float f2) {
        if (getStrokeWidth() != f2) {
            this.p1.y(f2);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    public void setText(CharSequence charSequence) {
        this.W.setText(charSequence);
        this.h0.setText(charSequence);
    }

    public void setTextCentered(boolean z) {
        this.q1 = z;
        TextView textView = this.W;
        if (textView == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams();
        if (z) {
            layoutParams.gravity = 1;
            textView.setGravity(1);
        } else {
            layoutParams.gravity = 0;
            textView.setGravity(0);
        }
        textView.setLayoutParams(layoutParams);
        this.h0.setLayoutParams(layoutParams);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public final void v() {
        AppBarLayout appBarLayoutParentIfExists = getAppBarLayoutParentIfExists();
        if (appBarLayoutParentIfExists == null || this.d1 == null) {
            return;
        }
        appBarLayoutParentIfExists.s.add(this.u1);
    }

    public final void w() {
        int width;
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        int right = 0;
        boolean z = getLayoutDirection() == 1;
        ImageButton imageButtonB = ToolbarUtils.b(this);
        if (imageButtonB == null || !imageButtonB.isClickable()) {
            width = 0;
        } else {
            width = z ? getWidth() - imageButtonB.getLeft() : imageButtonB.getRight();
        }
        ActionMenuView actionMenuViewA = ToolbarUtils.a(this);
        if (actionMenuViewA != null) {
            right = z ? actionMenuViewA.getRight() : getWidth() - actionMenuViewA.getLeft();
        }
        float f2 = -(z ? right : width);
        if (!z) {
            width = right;
        }
        setHandwritingBoundsOffsets(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, -width, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public final void x() {
        if (getLayoutParams() instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams = (AppBarLayout.LayoutParams) getLayoutParams();
            if (this.o1) {
                if (layoutParams.f32267a == 0) {
                    layoutParams.f32267a = 53;
                }
            } else if (layoutParams.f32267a == 53) {
                layoutParams.f32267a = 0;
            }
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public String d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readString();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.d);
        }

        /* JADX INFO: renamed from: com.google.android.material.search.SearchBar$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f32886h;

        public ScrollingViewBehavior() {
            this.f32886h = false;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            super.h(coordinatorLayout, view, view2);
            if (!this.f32886h && (view2 instanceof AppBarLayout)) {
                this.f32886h = true;
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                appBarLayout.setBackgroundColor(0);
                appBarLayout.setTargetElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f32886h = false;
        }
    }

    public void setHint(int i2) {
        this.W.setHint(i2);
    }

    public void setText(int i2) {
        this.W.setText(i2);
        this.h0.setText(i2);
    }

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSearchBarStyle);
    }

    public SearchBar(Context context) {
        this(context, null);
    }
}
