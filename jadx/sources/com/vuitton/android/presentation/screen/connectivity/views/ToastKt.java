package com.vuitton.android.presentation.screen.connectivity.views;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.TextViewExtKt;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import defpackage.r81;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ToastKt {
    public static final void a(BaseActivity baseActivity) {
        if (baseActivity != null) {
            String string = baseActivity.getString(R.string.bluetooth_deactivated_message);
            View viewInflate = LayoutInflater.from(baseActivity).inflate(R.layout.toast_custom, (ViewGroup) null, false);
            int i2 = R.id.toast_icon;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.toast_icon, viewInflate);
            if (imageView != null) {
                i2 = R.id.toast_image;
                if (((ImageView) ViewBindings.a(R.id.toast_image, viewInflate)) != null) {
                    i2 = R.id.toast_text;
                    TextView textView = (TextView) ViewBindings.a(R.id.toast_text, viewInflate);
                    if (textView != null) {
                        Toast toast = new Toast(baseActivity.getApplicationContext());
                        toast.setView((CardView) viewInflate);
                        toast.setDuration(1);
                        toast.setGravity(48, 0, 240);
                        TextViewExtKt.a(textView, string);
                        imageView.setVisibility(0);
                        Drawable drawable = ContextCompat.getDrawable(baseActivity, R.drawable.ic_info_legacy);
                        if (drawable != null) {
                            drawable.setTint(-1);
                        }
                        imageView.setImageDrawable(drawable);
                        imageView.setBackgroundResource(R.color.safran);
                        toast.show();
                        return;
                    }
                }
            }
            r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        }
    }
}
