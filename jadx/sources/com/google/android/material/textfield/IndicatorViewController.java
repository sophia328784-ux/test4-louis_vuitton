package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.vuitton.android.R;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
final class IndicatorViewController {
    public ColorStateList A;
    public Typeface B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f33173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33175c;
    public final TimeInterpolator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f33176e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f33177f;
    public final Context g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextInputLayout f33178h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f33179i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f33180j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public FrameLayout f33181k;
    public AnimatorSet l;
    public final float m;
    public int n;
    public int o;
    public CharSequence p;
    public boolean q;
    public AppCompatTextView r;
    public CharSequence s;
    public int t;
    public int u;
    public ColorStateList v;
    public CharSequence w;
    public boolean x;
    public AppCompatTextView y;
    public int z;

    public IndicatorViewController(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.g = context;
        this.f33178h = textInputLayout;
        this.m = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.f33173a = MotionUtils.c(context, R.attr.motionDurationShort4, 217);
        this.f33174b = MotionUtils.c(context, R.attr.motionDurationMedium4, 167);
        this.f33175c = MotionUtils.c(context, R.attr.motionDurationShort4, 167);
        this.d = MotionUtils.d(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, AnimationUtils.d);
        LinearInterpolator linearInterpolator = AnimationUtils.f32227a;
        this.f33176e = MotionUtils.d(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, linearInterpolator);
        this.f33177f = MotionUtils.d(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    public final void a(AppCompatTextView appCompatTextView, int i2) {
        if (this.f33179i == null && this.f33181k == null) {
            Context context = this.g;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f33179i = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f33179i;
            TextInputLayout textInputLayout = this.f33178h;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f33181k = new FrameLayout(context);
            this.f33179i.addView(this.f33181k, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i2 == 0 || i2 == 1) {
            this.f33181k.setVisibility(0);
            this.f33181k.addView(appCompatTextView);
        } else {
            this.f33179i.addView(appCompatTextView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f33179i.setVisibility(0);
        this.f33180j++;
    }

    public final void b() {
        if (this.f33179i != null) {
            TextInputLayout textInputLayout = this.f33178h;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.g;
                boolean zE = MaterialResources.e(context);
                LinearLayout linearLayout = this.f33179i;
                int paddingStart = editText.getPaddingStart();
                if (zE) {
                    paddingStart = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (zE) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (zE) {
                    paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.l;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z, AppCompatTextView appCompatTextView, int i2, int i3, int i4) {
        if (appCompatTextView == null || !z) {
            return;
        }
        if (i2 == i4 || i2 == i3) {
            boolean z2 = i4 == i2;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.ALPHA, z2 ? 1.0f : 0.0f);
            int i5 = this.f33175c;
            objectAnimatorOfFloat.setDuration(z2 ? this.f33174b : i5);
            objectAnimatorOfFloat.setInterpolator(z2 ? this.f33176e : this.f33177f);
            if (i2 == i4 && i3 != 0) {
                objectAnimatorOfFloat.setStartDelay(i5);
            }
            arrayList.add(objectAnimatorOfFloat);
            if (i4 != i2 || i3 == 0) {
                return;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.TRANSLATION_Y, -this.m, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            objectAnimatorOfFloat2.setDuration(this.f33173a);
            objectAnimatorOfFloat2.setInterpolator(this.d);
            objectAnimatorOfFloat2.setStartDelay(i5);
            arrayList.add(objectAnimatorOfFloat2);
        }
    }

    public final TextView e(int i2) {
        if (i2 == 1) {
            return this.r;
        }
        if (i2 != 2) {
            return null;
        }
        return this.y;
    }

    public final void f() {
        this.p = null;
        c();
        if (this.n == 1) {
            if (!this.x || TextUtils.isEmpty(this.w)) {
                this.o = 0;
            } else {
                this.o = 2;
            }
        }
        i(this.n, this.o, h(this.r, ""));
    }

    public final void g(AppCompatTextView appCompatTextView, int i2) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f33179i;
        if (linearLayout == null) {
            return;
        }
        if ((i2 == 0 || i2 == 1) && (frameLayout = this.f33181k) != null) {
            frameLayout.removeView(appCompatTextView);
        } else {
            linearLayout.removeView(appCompatTextView);
        }
        int i3 = this.f33180j - 1;
        this.f33180j = i3;
        LinearLayout linearLayout2 = this.f33179i;
        if (i3 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean h(AppCompatTextView appCompatTextView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f33178h;
        if (textInputLayout.isLaidOut() && textInputLayout.isEnabled()) {
            return (this.o == this.n && appCompatTextView != null && TextUtils.equals(appCompatTextView.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    public final void i(final int i2, final int i3, boolean z) {
        TextView textViewE;
        TextView textViewE2;
        if (i2 == i3) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.l = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.x, this.y, 2, i2, i3);
            d(arrayList, this.q, this.r, 1, i2, i3);
            AnimatorSetCompat.a(animatorSet, arrayList);
            final TextView textViewE3 = e(i2);
            final TextView textViewE4 = e(i3);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.IndicatorViewController.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    AppCompatTextView appCompatTextView;
                    int i4 = i3;
                    IndicatorViewController indicatorViewController = IndicatorViewController.this;
                    indicatorViewController.n = i4;
                    indicatorViewController.l = null;
                    TextView textView = textViewE3;
                    if (textView != null) {
                        textView.setVisibility(4);
                        if (i2 == 1 && (appCompatTextView = indicatorViewController.r) != null) {
                            appCompatTextView.setText((CharSequence) null);
                        }
                    }
                    TextView textView2 = textViewE4;
                    if (textView2 != null) {
                        textView2.setTranslationY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        textView2.setAlpha(1.0f);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    TextView textView = textViewE4;
                    if (textView != null) {
                        textView.setVisibility(0);
                        textView.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                }
            });
            animatorSet.start();
        } else if (i2 != i3) {
            if (i3 != 0 && (textViewE2 = e(i3)) != null) {
                textViewE2.setVisibility(0);
                textViewE2.setAlpha(1.0f);
            }
            if (i2 != 0 && (textViewE = e(i2)) != null) {
                textViewE.setVisibility(4);
                if (i2 == 1) {
                    textViewE.setText((CharSequence) null);
                }
            }
            this.n = i3;
        }
        TextInputLayout textInputLayout = this.f33178h;
        textInputLayout.t();
        textInputLayout.w(z, false);
        textInputLayout.z();
    }
}
