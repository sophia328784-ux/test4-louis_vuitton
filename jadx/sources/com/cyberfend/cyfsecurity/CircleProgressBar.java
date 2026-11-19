package com.cyberfend.cyfsecurity;

import ZjTIAZ.GWINqE;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public class CircleProgressBar extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f25390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f25391c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f25392e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f25393f;
    public final Paint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f25394h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f25395i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Handler f25396j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Runnable f25397k;

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25390b = 20.0f;
        this.f25391c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d = 100;
        this.f25392e = Sink.ORIENTATION_270;
        this.f25395i = 0;
        Handler handler = new Handler();
        this.f25396j = handler;
        Runnable runnable = new Runnable() { // from class: com.cyberfend.cyfsecurity.CircleProgressBar.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    CircleProgressBar circleProgressBar = CircleProgressBar.this;
                    int i2 = circleProgressBar.f25395i;
                    if (i2 < 9) {
                        circleProgressBar.f25395i = i2 + 1;
                        circleProgressBar.f25391c += 1.0f;
                        circleProgressBar.postInvalidate();
                        CircleProgressBar circleProgressBar2 = CircleProgressBar.this;
                        circleProgressBar2.f25396j.postDelayed(circleProgressBar2.f25397k, 100L);
                    }
                } catch (Exception e2) {
                    GWINqE.b(e2);
                }
            }
        };
        this.f25397k = runnable;
        try {
            this.f25393f = new RectF();
            Paint paint = new Paint(1);
            this.g = paint;
            paint.setColor(context.getResources().getColor(R.color.akamaiCCAcolorProgressBackground));
            Paint paint2 = this.g;
            Paint.Style style = Paint.Style.FILL;
            paint2.setStyle(style);
            Paint paint3 = new Paint(1);
            this.f25394h = paint3;
            paint3.setColor(ContextCompat.getColor(context, R.color.akamaiCCAcolorProgressForeground));
            this.f25394h.setStyle(style);
            handler.postDelayed(runnable, 100L);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
            canvas.drawOval(this.f25393f, this.g);
            canvas.drawArc(this.f25393f, this.f25392e, (this.f25391c * 360.0f) / this.d, true, this.f25394h);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        try {
            int iMin = Math.min(View.getDefaultSize(getSuggestedMinimumWidth(), i2), View.getDefaultSize(getSuggestedMinimumHeight(), i3));
            setMeasuredDimension(iMin, iMin);
            RectF rectF = this.f25393f;
            float f2 = this.f25390b / 2.0f;
            float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM + f2;
            float f4 = iMin - f2;
            rectF.set(f3, f3, f4, f4);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    public synchronized void setProgress(float f2) {
        try {
            try {
                this.f25391c = f2 * this.d;
                this.f25395i = 0;
                Handler handler = this.f25396j;
                if (handler != null) {
                    handler.postDelayed(this.f25397k, 100L);
                }
                postInvalidate();
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setProgressBarColor(int i2) {
        try {
            this.f25394h.setColor(i2);
            this.g.setColor(Color.argb(Math.round(Color.alpha(i2) * 0.25f), Color.red(i2), Color.green(i2), Color.blue(i2)));
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }
}
