package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class TextDrawableHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f32733c;
    public float d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final WeakReference f32735f;
    public TextAppearance g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f32731a = new TextPaint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextAppearanceFontCallback f32732b = new TextAppearanceFontCallback() { // from class: com.google.android.material.internal.TextDrawableHelper.1
        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public final void a(int i2) {
            TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
            textDrawableHelper.f32734e = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.f32735f.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.a();
            }
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public final void b(Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
            textDrawableHelper.f32734e = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.f32735f.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.a();
            }
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f32734e = true;

    public interface TextDrawableDelegate {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public TextDrawableHelper(TextDrawableDelegate textDrawableDelegate) {
        this.f32735f = new WeakReference(null);
        this.f32735f = new WeakReference(textDrawableDelegate);
    }

    public final float a(String str) {
        if (!this.f32734e) {
            return this.f32733c;
        }
        b(str);
        return this.f32733c;
    }

    public final void b(String str) {
        TextPaint textPaint = this.f32731a;
        float fAbs = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f32733c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        if (str != null) {
            fAbs = Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.d = fAbs;
        this.f32734e = false;
    }

    public final void c(TextAppearance textAppearance, Context context) {
        if (this.g != textAppearance) {
            this.g = textAppearance;
            WeakReference weakReference = this.f32735f;
            if (textAppearance != null) {
                TextPaint textPaint = this.f32731a;
                TextAppearanceFontCallback textAppearanceFontCallback = this.f32732b;
                textAppearance.e(context, textPaint, textAppearanceFontCallback);
                TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) weakReference.get();
                if (textDrawableDelegate != null) {
                    textPaint.drawableState = textDrawableDelegate.getState();
                }
                textAppearance.d(context, textPaint, textAppearanceFontCallback);
                this.f32734e = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = (TextDrawableDelegate) weakReference.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.a();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }
}
