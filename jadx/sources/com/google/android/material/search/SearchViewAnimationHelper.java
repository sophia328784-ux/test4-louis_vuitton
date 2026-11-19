package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.FadeThroughUpdateListener;
import com.google.android.material.internal.MultiViewUpdateListener;
import com.google.android.material.internal.RectEvaluator;
import com.google.android.material.internal.ReversableAnimatedValueInterpolator;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import defpackage.ft;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
class SearchViewAnimationHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SearchView f32897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f32898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClippableRoundedCornerLayout f32899c;
    public final FrameLayout d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f32900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MaterialToolbar f32901f;
    public final Toolbar g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinearLayout f32902h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f32903i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final EditText f32904j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ImageButton f32905k;
    public final View l;
    public final TouchObserverFrameLayout m;
    public final MaterialMainContainerBackHelper n;
    public AnimatorSet o;
    public SearchBar p;

    public SearchViewAnimationHelper(SearchView searchView) {
        this.f32897a = searchView;
        this.f32898b = searchView.f32887b;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchView.f32888c;
        this.f32899c = clippableRoundedCornerLayout;
        this.d = searchView.f32890f;
        this.f32900e = searchView.g;
        this.f32901f = searchView.f32891h;
        this.g = searchView.f32892i;
        this.f32903i = searchView.f32893j;
        this.f32904j = searchView.l;
        this.f32905k = searchView.m;
        this.l = searchView.n;
        this.m = searchView.o;
        this.f32902h = searchView.f32894k;
        this.n = new MaterialMainContainerBackHelper(clippableRoundedCornerLayout);
    }

    public static void a(SearchViewAnimationHelper searchViewAnimationHelper, float f2) {
        ActionMenuView actionMenuViewA;
        searchViewAnimationHelper.f32905k.setAlpha(f2);
        searchViewAnimationHelper.l.setAlpha(f2);
        searchViewAnimationHelper.m.setAlpha(f2);
        if (!searchViewAnimationHelper.f32897a.y || (actionMenuViewA = ToolbarUtils.a(searchViewAnimationHelper.f32901f)) == null) {
            return;
        }
        actionMenuViewA.setAlpha(f2);
    }

    public static AnimatorSet h(View view, int i2, int i3, boolean z) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(i2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        valueAnimatorOfFloat.addUpdateListener(new MultiViewUpdateListener(new com.google.android.material.internal.a(0), view));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(i3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        valueAnimatorOfFloat2.addUpdateListener(MultiViewUpdateListener.a(view));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.setDuration(z ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.a(z, AnimationUtils.f32228b));
        return animatorSet;
    }

    public final void b(AnimatorSet animatorSet) {
        ImageButton imageButtonB = ToolbarUtils.b(this.f32901f);
        if (imageButtonB == null) {
            return;
        }
        Drawable drawableA = DrawableCompat.a(imageButtonB.getDrawable());
        if (!this.f32897a.x) {
            if (drawableA instanceof DrawerArrowDrawable) {
                ((DrawerArrowDrawable) drawableA).setProgress(1.0f);
            }
            if (drawableA instanceof FadeThroughDrawable) {
                ((FadeThroughDrawable) drawableA).a(1.0f);
                return;
            }
            return;
        }
        if (drawableA instanceof DrawerArrowDrawable) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ft((DrawerArrowDrawable) drawableA, 7));
            animatorSet.playTogether(valueAnimatorOfFloat);
        }
        if (drawableA instanceof FadeThroughDrawable) {
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            valueAnimatorOfFloat2.addUpdateListener(new ft((FadeThroughDrawable) drawableA, 8));
            animatorSet.playTogether(valueAnimatorOfFloat2);
        }
        SearchBar searchBar = this.p;
        if (searchBar == null || searchBar.getNavigationIcon() != null) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat3.addUpdateListener(new ft(imageButtonB, 9));
        animatorSet.playTogether(valueAnimatorOfFloat3);
    }

    public final AnimatorSet c(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        MaterialToolbar materialToolbar = this.f32901f;
        ImageButton imageButtonB = ToolbarUtils.b(materialToolbar);
        if (imageButtonB != null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(j(ToolbarUtils.b(this.p), imageButtonB), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            valueAnimatorOfFloat.addUpdateListener(new MultiViewUpdateListener(new com.google.android.material.internal.a(0), imageButtonB));
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            valueAnimatorOfFloat2.addUpdateListener(MultiViewUpdateListener.a(imageButtonB));
            animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        }
        ActionMenuView actionMenuViewA = ToolbarUtils.a(materialToolbar);
        if (actionMenuViewA != null) {
            ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(j(ToolbarUtils.a(this.p), actionMenuViewA), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            valueAnimatorOfFloat3.addUpdateListener(new MultiViewUpdateListener(new com.google.android.material.internal.a(0), actionMenuViewA));
            ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(f(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            valueAnimatorOfFloat4.addUpdateListener(MultiViewUpdateListener.a(actionMenuViewA));
            animatorSet.playTogether(valueAnimatorOfFloat3, valueAnimatorOfFloat4);
        }
        animatorSet.setDuration(z ? 300L : 250L);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.a(z, AnimationUtils.f32228b));
        return animatorSet;
    }

    public final AnimatorSet d(final boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (this.o == null) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            b(animatorSet2);
            animatorSet2.setDuration(z ? 300L : 250L);
            animatorSet2.setInterpolator(ReversableAnimatedValueInterpolator.a(z, AnimationUtils.f32228b));
            animatorSet.playTogether(animatorSet2, c(z));
        }
        TimeInterpolator timeInterpolator = z ? AnimationUtils.f32227a : AnimationUtils.f32228b;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat.setDuration(z ? 300L : 250L);
        valueAnimatorOfFloat.setStartDelay(z ? 100L : 0L);
        valueAnimatorOfFloat.setInterpolator(ReversableAnimatedValueInterpolator.a(z, timeInterpolator));
        valueAnimatorOfFloat.addUpdateListener(new MultiViewUpdateListener(new com.google.android.material.internal.a(3), this.f32898b));
        MaterialMainContainerBackHelper materialMainContainerBackHelper = this.n;
        Rect rect = materialMainContainerBackHelper.f32766j;
        Rect rectA = materialMainContainerBackHelper.f32767k;
        SearchView searchView = this.f32897a;
        if (rect == null) {
            rect = new Rect(searchView.getLeft(), searchView.getTop(), searchView.getRight(), searchView.getBottom());
        }
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f32899c;
        if (rectA == null) {
            rectA = ViewUtils.a(clippableRoundedCornerLayout, this.p);
        }
        final Rect rect2 = new Rect(rectA);
        final float cornerSize = this.p.getCornerSize();
        float[] cornerRadii = clippableRoundedCornerLayout.getCornerRadii();
        float[] fArrB = materialMainContainerBackHelper.b();
        final float[] fArr = {Math.max(cornerRadii[0], fArrB[0]), Math.max(cornerRadii[1], fArrB[1]), Math.max(cornerRadii[2], fArrB[2]), Math.max(cornerRadii[3], fArrB[3]), Math.max(cornerRadii[4], fArrB[4]), Math.max(cornerRadii[5], fArrB[5]), Math.max(cornerRadii[6], fArrB[6]), Math.max(cornerRadii[7], fArrB[7])};
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new RectEvaluator(rect2), rectA, rect);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                float[] fArr2 = fArr;
                float f2 = fArr2[0];
                float f3 = cornerSize;
                float[] fArr3 = {AnimationUtils.a(f3, f2, animatedFraction), AnimationUtils.a(f3, fArr2[1], animatedFraction), AnimationUtils.a(f3, fArr2[2], animatedFraction), AnimationUtils.a(f3, fArr2[3], animatedFraction), AnimationUtils.a(f3, fArr2[4], animatedFraction), AnimationUtils.a(f3, fArr2[5], animatedFraction), AnimationUtils.a(f3, fArr2[6], animatedFraction), AnimationUtils.a(f3, fArr2[7], animatedFraction)};
                ClippableRoundedCornerLayout clippableRoundedCornerLayout2 = this.f32916a.f32899c;
                clippableRoundedCornerLayout2.getClass();
                Rect rect3 = rect2;
                clippableRoundedCornerLayout2.a(rect3.left, rect3.top, rect3.right, rect3.bottom, fArr3);
            }
        });
        valueAnimatorOfObject.setDuration(z ? 300L : 250L);
        FastOutSlowInInterpolator fastOutSlowInInterpolator = AnimationUtils.f32228b;
        valueAnimatorOfObject.setInterpolator(ReversableAnimatedValueInterpolator.a(z, fastOutSlowInInterpolator));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat2.setDuration(z ? 50L : 42L);
        valueAnimatorOfFloat2.setStartDelay(z ? 250L : 0L);
        LinearInterpolator linearInterpolator = AnimationUtils.f32227a;
        valueAnimatorOfFloat2.setInterpolator(ReversableAnimatedValueInterpolator.a(z, linearInterpolator));
        valueAnimatorOfFloat2.addUpdateListener(new MultiViewUpdateListener(new com.google.android.material.internal.a(3), this.f32905k));
        AnimatorSet animatorSet3 = new AnimatorSet();
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat3.setDuration(z ? 150L : 83L);
        valueAnimatorOfFloat3.setStartDelay(z ? 75L : 0L);
        valueAnimatorOfFloat3.setInterpolator(ReversableAnimatedValueInterpolator.a(z, linearInterpolator));
        View view = this.l;
        TouchObserverFrameLayout touchObserverFrameLayout = this.m;
        valueAnimatorOfFloat3.addUpdateListener(new MultiViewUpdateListener(new com.google.android.material.internal.a(3), view, touchObserverFrameLayout));
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat((touchObserverFrameLayout.getHeight() * 0.050000012f) / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        valueAnimatorOfFloat4.setDuration(z ? 300L : 250L);
        valueAnimatorOfFloat4.setInterpolator(ReversableAnimatedValueInterpolator.a(z, fastOutSlowInInterpolator));
        valueAnimatorOfFloat4.addUpdateListener(MultiViewUpdateListener.a(view));
        ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(0.95f, 1.0f);
        valueAnimatorOfFloat5.setDuration(z ? 300L : 250L);
        valueAnimatorOfFloat5.setInterpolator(ReversableAnimatedValueInterpolator.a(z, fastOutSlowInInterpolator));
        valueAnimatorOfFloat5.addUpdateListener(new MultiViewUpdateListener(new com.google.android.material.internal.a(2), touchObserverFrameLayout));
        animatorSet3.playTogether(valueAnimatorOfFloat3, valueAnimatorOfFloat4, valueAnimatorOfFloat5);
        View view2 = this.d;
        AnimatorSet animatorSetH = h(view2, e(view2), f(), z);
        Toolbar toolbar = this.g;
        Animator animatorH = h(toolbar, e(toolbar), f(), z);
        ValueAnimator valueAnimatorOfFloat6 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat6.setDuration(z ? 300L : 250L);
        valueAnimatorOfFloat6.setInterpolator(ReversableAnimatedValueInterpolator.a(z, fastOutSlowInInterpolator));
        if (searchView.y) {
            valueAnimatorOfFloat6.addUpdateListener(new FadeThroughUpdateListener(ToolbarUtils.a(toolbar), ToolbarUtils.a(this.f32901f)));
        }
        EditText editText = this.f32904j;
        Animator animatorI = i(editText, z);
        Animator animatorI2 = i(this.f32903i, z);
        AnimatorSet animatorSet4 = new AnimatorSet();
        if (this.p != null && !TextUtils.equals(editText.getText(), this.p.getText())) {
            ValueAnimator valueAnimatorOfFloat7 = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            valueAnimatorOfFloat7.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.d
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SearchViewAnimationHelper searchViewAnimationHelper = this.f32919a;
                    searchViewAnimationHelper.f32904j.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    searchViewAnimationHelper.p.getTextView().setAlpha(1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            animatorSet4.playTogether(valueAnimatorOfFloat7);
        }
        if (this.p != null && TextUtils.equals(editText.getText(), this.p.getText())) {
            final Rect rect3 = new Rect(0, 0, editText.getWidth(), editText.getHeight());
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.p.getTextView().getWidth(), editText.getWidth());
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.b
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    Rect rect4 = rect3;
                    rect4.right = iIntValue;
                    this.f32914a.f32904j.setClipBounds(rect4);
                }
            });
            animatorSet4.playTogether(valueAnimatorOfInt);
        }
        animatorSet4.setDuration(z ? 300L : 250L);
        animatorSet4.setInterpolator(ReversableAnimatedValueInterpolator.a(z, linearInterpolator));
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfObject, valueAnimatorOfFloat2, animatorSet3, animatorSetH, animatorH, valueAnimatorOfFloat6, animatorI, animatorI2, animatorSet4);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchViewAnimationHelper.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                SearchViewAnimationHelper searchViewAnimationHelper = SearchViewAnimationHelper.this;
                EditText editText2 = searchViewAnimationHelper.f32904j;
                boolean z2 = z;
                SearchViewAnimationHelper.a(searchViewAnimationHelper, z2 ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
                editText2.setAlpha(1.0f);
                SearchBar searchBar = searchViewAnimationHelper.p;
                if (searchBar != null) {
                    searchBar.getTextView().setAlpha(1.0f);
                }
                editText2.setClipBounds(null);
                ClippableRoundedCornerLayout clippableRoundedCornerLayout2 = searchViewAnimationHelper.f32899c;
                clippableRoundedCornerLayout2.f32694b = null;
                clippableRoundedCornerLayout2.f32695c = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM};
                clippableRoundedCornerLayout2.invalidate();
                if (z2) {
                    return;
                }
                searchViewAnimationHelper.n.l = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                SearchViewAnimationHelper.a(SearchViewAnimationHelper.this, z ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 1.0f);
            }
        });
        return animatorSet;
    }

    public final int e(View view) {
        int marginEnd = ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).getMarginEnd();
        int iK = k(this.p);
        return this.p.getLayoutDirection() == 1 ? iK - marginEnd : ((this.p.getWidth() + iK) + marginEnd) - this.f32897a.getWidth();
    }

    public final int f() {
        FrameLayout frameLayout = this.f32900e;
        int height = (frameLayout.getHeight() / 2) + frameLayout.getTop();
        SearchBar searchBar = this.p;
        int top = searchBar.getTop();
        for (ViewParent parent = searchBar.getParent(); (parent instanceof View) && parent != this.f32897a.getParent(); parent = parent.getParent()) {
            top += ((View) parent).getTop();
        }
        return ((this.p.getHeight() / 2) + top) - height;
    }

    public final AnimatorSet g(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f32899c;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(clippableRoundedCornerLayout.getHeight(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        valueAnimatorOfFloat.addUpdateListener(MultiViewUpdateListener.a(clippableRoundedCornerLayout));
        animatorSet.playTogether(valueAnimatorOfFloat);
        b(animatorSet);
        animatorSet.setInterpolator(ReversableAnimatedValueInterpolator.a(z, AnimationUtils.f32228b));
        animatorSet.setDuration(z ? 350L : 300L);
        return animatorSet;
    }

    public final AnimatorSet i(View view, boolean z) {
        TextView placeholderTextView = this.p.getPlaceholderTextView();
        if (TextUtils.isEmpty(placeholderTextView.getText()) || z) {
            placeholderTextView = this.p.getTextView();
        }
        return h(view, k(placeholderTextView) - (this.f32902h.getLeft() + view.getLeft()), f(), z);
    }

    public final int j(View view, View view2) {
        if (view != null) {
            return k(view) - k(view2);
        }
        int marginStart = ((ViewGroup.MarginLayoutParams) view2.getLayoutParams()).getMarginStart();
        int paddingStart = this.p.getPaddingStart();
        int iK = k(this.p);
        return this.p.getLayoutDirection() == 1 ? (((this.p.getWidth() + iK) + marginStart) - paddingStart) - this.f32897a.getRight() : (iK - marginStart) + paddingStart;
    }

    public final int k(View view) {
        int left = view.getLeft();
        for (ViewParent parent = view.getParent(); (parent instanceof View) && parent != this.f32897a.getParent(); parent = parent.getParent()) {
            left += ((View) parent).getLeft();
        }
        return left;
    }

    public final AnimatorSet l() {
        SearchBar searchBar = this.p;
        SearchView searchView = this.f32897a;
        if (searchBar != null) {
            if (searchView.h()) {
                searchView.f();
            }
            AnimatorSet animatorSetD = d(false);
            animatorSetD.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchViewAnimationHelper.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    SearchViewAnimationHelper searchViewAnimationHelper = SearchViewAnimationHelper.this;
                    searchViewAnimationHelper.f32899c.setVisibility(8);
                    SearchView searchView2 = searchViewAnimationHelper.f32897a;
                    if (!searchView2.h()) {
                        searchView2.f();
                    }
                    searchView2.setTransitionState(SearchView.TransitionState.HIDDEN);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    SearchViewAnimationHelper.this.f32897a.setTransitionState(SearchView.TransitionState.HIDING);
                }
            });
            animatorSetD.start();
            return animatorSetD;
        }
        if (searchView.h()) {
            searchView.f();
        }
        AnimatorSet animatorSetG = g(false);
        animatorSetG.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchViewAnimationHelper.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                SearchViewAnimationHelper searchViewAnimationHelper = SearchViewAnimationHelper.this;
                searchViewAnimationHelper.f32899c.setVisibility(8);
                SearchView searchView2 = searchViewAnimationHelper.f32897a;
                if (!searchView2.h()) {
                    searchView2.f();
                }
                searchView2.setTransitionState(SearchView.TransitionState.HIDDEN);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                SearchViewAnimationHelper.this.f32897a.setTransitionState(SearchView.TransitionState.HIDING);
            }
        });
        animatorSetG.start();
        return animatorSetG;
    }
}
