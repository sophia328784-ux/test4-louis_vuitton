package com.powerfront.insidewebsdkandroid.utils;

import android.app.Dialog;
import android.content.Context;
import android.graphics.PorterDuff;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class ProgressDialogView extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageView f43320b;

    public ProgressDialogView(Context context, int i2) {
        super(context, R.style.TransparentProgressDialog);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = 1;
        getWindow().setAttributes(attributes);
        setTitle((CharSequence) null);
        setCancelable(false);
        setOnCancelListener(null);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        ImageView imageView = new ImageView(context);
        this.f43320b = imageView;
        imageView.setImageResource(i2);
        imageView.setColorFilter(context.getResources().getColor(R.color.app_color), PorterDuff.Mode.SRC_ATOP);
        linearLayout.addView(imageView, layoutParams);
        addContentView(linearLayout, layoutParams);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        try {
            dismiss();
        } catch (Exception unused) {
        }
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog
    public final void show() {
        super.show();
        RotateAnimation rotateAnimation = new RotateAnimation(Call.Parameters.DEFAULT_CAMERA_ZOOM, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setDuration(2000L);
        ImageView imageView = this.f43320b;
        imageView.setAnimation(rotateAnimation);
        imageView.startAnimation(rotateAnimation);
    }
}
