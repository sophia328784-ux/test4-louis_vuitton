package com.google.android.material.circularreveal;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.math.MathUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class CircularRevealHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Delegate f32505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f32506b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f32507c;
    public CircularRevealWidget.RevealInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f32508e;

    public interface Delegate {
        void c(Canvas canvas);

        boolean d();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Strategy {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularRevealHelper(Delegate delegate) {
        this.f32505a = delegate;
        View view = (View) delegate;
        this.f32506b = view;
        view.setWillNotDraw(false);
        new Path();
        new Paint(7);
        Paint paint = new Paint(1);
        this.f32507c = paint;
        paint.setColor(0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0037  */
    public final void a(Canvas canvas) {
        Canvas canvas2;
        CircularRevealWidget.RevealInfo revealInfo = this.d;
        boolean z = revealInfo == null || revealInfo.f32515c == Float.MAX_VALUE;
        Paint paint = this.f32507c;
        View view = this.f32506b;
        Delegate delegate = this.f32505a;
        if (z) {
            delegate.c(canvas);
            if (Color.alpha(paint.getColor()) != 0) {
                float width = view.getWidth();
                float height = view.getHeight();
                canvas2 = canvas;
                canvas2.drawRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, width, height, paint);
            } else {
                canvas2 = canvas;
            }
        } else {
            delegate.c(canvas);
            if (Color.alpha(paint.getColor()) != 0) {
                float width2 = view.getWidth();
                float height2 = view.getHeight();
                canvas2 = canvas;
                canvas2.drawRect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, width2, height2, paint);
            } else {
                canvas2 = canvas;
            }
        }
        Drawable drawable = this.f32508e;
        if (drawable == null || this.d == null) {
            return;
        }
        Rect bounds = drawable.getBounds();
        float fWidth = this.d.f32513a - (bounds.width() / 2.0f);
        float fHeight = this.d.f32514b - (bounds.height() / 2.0f);
        canvas2.translate(fWidth, fHeight);
        this.f32508e.draw(canvas2);
        canvas2.translate(-fWidth, -fHeight);
    }

    public final void b(CircularRevealWidget.RevealInfo revealInfo) {
        View view = this.f32506b;
        if (revealInfo == null) {
            this.d = null;
        } else {
            CircularRevealWidget.RevealInfo revealInfo2 = this.d;
            if (revealInfo2 == null) {
                this.d = new CircularRevealWidget.RevealInfo(revealInfo);
            } else {
                float f2 = revealInfo.f32513a;
                float f3 = revealInfo.f32514b;
                float f4 = revealInfo.f32515c;
                revealInfo2.f32513a = f2;
                revealInfo2.f32514b = f3;
                revealInfo2.f32515c = f4;
            }
            if (revealInfo.f32515c + 1.0E-4f >= MathUtils.b(revealInfo.f32513a, revealInfo.f32514b, view.getWidth(), view.getHeight())) {
                this.d.f32515c = Float.MAX_VALUE;
            }
        }
        view.invalidate();
    }
}
