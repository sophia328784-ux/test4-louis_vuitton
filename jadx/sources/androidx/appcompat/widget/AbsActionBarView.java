package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes.dex */
abstract class AbsActionBarView extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VisibilityAnimListener f1054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f1055c;
    public ActionMenuView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ActionMenuPresenter f1056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1057f;
    public ViewPropertyAnimatorCompat g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1058h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1059i;

    public class VisibilityAnimListener implements ViewPropertyAnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1060a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1061b;

        public VisibilityAnimListener() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public final void a() {
            if (this.f1060a) {
                return;
            }
            AbsActionBarView absActionBarView = AbsActionBarView.this;
            absActionBarView.g = null;
            AbsActionBarView.super.setVisibility(this.f1061b);
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public final void b() {
            this.f1060a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public final void c() {
            AbsActionBarView.super.setVisibility(0);
            this.f1060a = false;
        }
    }

    public AbsActionBarView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1054b = new VisibilityAnimListener();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1055c = context;
        } else {
            this.f1055c = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    public static int c(View view, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, i2 - view.getMeasuredWidth());
    }

    public static int d(int i2, int i3, int i4, View view, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int iA = defpackage.a.a(i4, measuredHeight, 2, i3);
        if (z) {
            view.layout(i2 - measuredWidth, iA, i2, measuredHeight + iA);
        } else {
            view.layout(i2, iA, i2 + measuredWidth, measuredHeight + iA);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.f776a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f1056e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.q = ActionBarPolicy.a(actionMenuPresenter.f961c).b();
            MenuBuilder menuBuilder = actionMenuPresenter.d;
            if (menuBuilder != null) {
                menuBuilder.p(true);
            }
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1059i = false;
        }
        if (!this.f1059i) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f1059i = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f1059i = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1058h = false;
        }
        if (!this.f1058h) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1058h = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f1058h = false;
        return true;
    }

    public abstract void setContentHeight(int i2);

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (i2 != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.g;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.b();
            }
            super.setVisibility(i2);
        }
    }
}
