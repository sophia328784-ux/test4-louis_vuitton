package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f33097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Button f33098c;
    public final TimeInterpolator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f33099e;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = MotionUtils.d(context, R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32228b);
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public final void a(int i2, int i3) {
        this.f33097b.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        long j2 = i3;
        ViewPropertyAnimator duration = this.f33097b.animate().alpha(1.0f).setDuration(j2);
        TimeInterpolator timeInterpolator = this.d;
        long j3 = i2;
        duration.setInterpolator(timeInterpolator).setStartDelay(j3).start();
        if (this.f33098c.getVisibility() == 0) {
            this.f33098c.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f33098c.animate().alpha(1.0f).setDuration(j2).setInterpolator(timeInterpolator).setStartDelay(j3).start();
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public final void b(int i2) {
        this.f33097b.setAlpha(1.0f);
        long j2 = i2;
        ViewPropertyAnimator duration = this.f33097b.animate().alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setDuration(j2);
        TimeInterpolator timeInterpolator = this.d;
        duration.setInterpolator(timeInterpolator).setStartDelay(0L).start();
        if (this.f33098c.getVisibility() == 0) {
            this.f33098c.setAlpha(1.0f);
            this.f33098c.animate().alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setDuration(j2).setInterpolator(timeInterpolator).setStartDelay(0L).start();
        }
    }

    public final boolean c(int i2, int i3, int i4) {
        boolean z;
        if (i2 != getOrientation()) {
            setOrientation(i2);
            z = true;
        } else {
            z = false;
        }
        if (this.f33097b.getPaddingTop() == i3 && this.f33097b.getPaddingBottom() == i4) {
            return z;
        }
        TextView textView = this.f33097b;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i3, textView.getPaddingEnd(), i4);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i3, textView.getPaddingRight(), i4);
        return true;
    }

    public Button getActionView() {
        return this.f33098c;
    }

    public TextView getMessageView() {
        return this.f33097b;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f33097b = (TextView) findViewById(R.id.snackbar_text);
        this.f33098c = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f33097b.getLayout();
        boolean z = layout != null && layout.getLineCount() > 1;
        if (!z || this.f33099e <= 0 || this.f33098c.getMeasuredWidth() <= this.f33099e) {
            if (!z) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!c(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!c(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i2, i3);
    }

    public void setMaxInlineActionWidth(int i2) {
        this.f33099e = i2;
    }

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }
}
