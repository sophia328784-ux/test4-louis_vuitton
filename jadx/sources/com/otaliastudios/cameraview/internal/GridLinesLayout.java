package com.otaliastudios.cameraview.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.otaliastudios.cameraview.controls.Grid;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class GridLinesLayout extends View {
    public static final int g = Color.argb(160, 255, 255, 255);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Grid f39005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f39006c;
    public final ColorDrawable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ColorDrawable f39007e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f39008f;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.internal.GridLinesLayout$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39009a;

        static {
            int[] iArr = new int[Grid.values().length];
            f39009a = iArr;
            try {
                iArr[Grid.OFF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39009a[Grid.DRAW_3X3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39009a[Grid.DRAW_PHI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39009a[Grid.DRAW_4X4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface DrawCallback {
    }

    public GridLinesLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39006c = g;
        this.d = new ColorDrawable(this.f39006c);
        this.f39007e = new ColorDrawable(this.f39006c);
        this.f39008f = TypedValue.applyDimension(1, 0.9f, context.getResources().getDisplayMetrics());
    }

    private int getLineCount() {
        int i2 = AnonymousClass1.f39009a[this.f39005b.ordinal()];
        if (i2 == 2 || i2 == 3) {
            return 2;
        }
        return i2 != 4 ? 0 : 3;
    }

    public int getGridColor() {
        return this.f39006c;
    }

    public Grid getGridMode() {
        return this.f39005b;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f2;
        super.onDraw(canvas);
        int lineCount = getLineCount();
        int i2 = 0;
        while (i2 < lineCount) {
            int lineCount2 = getLineCount();
            if (this.f39005b == Grid.DRAW_PHI) {
                f2 = i2 == 1 ? 0.38196602f : 0.618034f;
            } else {
                f2 = (1.0f / (lineCount2 + 1)) * (i2 + 1.0f);
            }
            canvas.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, getHeight() * f2);
            this.d.draw(canvas);
            float f3 = -f2;
            canvas.translate(Call.Parameters.DEFAULT_CAMERA_ZOOM, getHeight() * f3);
            canvas.translate(f2 * getWidth(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f39007e.draw(canvas);
            canvas.translate(f3 * getWidth(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
            i2++;
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        float f2 = this.f39008f;
        this.d.setBounds(i2, 0, i4, (int) f2);
        this.f39007e.setBounds(0, i3, (int) f2, i5);
    }

    public void setGridColor(int i2) {
        this.f39006c = i2;
        this.d.setColor(i2);
        this.f39007e.setColor(i2);
        postInvalidate();
    }

    public void setGridMode(Grid grid) {
        this.f39005b = grid;
        postInvalidate();
    }

    public GridLinesLayout(Context context) {
        this(context, null);
    }
}
