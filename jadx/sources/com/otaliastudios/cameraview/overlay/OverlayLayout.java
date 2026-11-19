package com.otaliastudios.cameraview.overlay;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.R$styleable;
import defpackage.a;

/* JADX INFO: loaded from: classes3.dex */
public class OverlayLayout extends FrameLayout implements Overlay {
    public static final CameraLogger d = CameraLogger.a("OverlayLayout");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Overlay.Target f39035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f39036c;

    /* JADX INFO: renamed from: com.otaliastudios.cameraview.overlay.OverlayLayout$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39037a;

        static {
            int[] iArr = new int[Overlay.Target.values().length];
            f39037a = iArr;
            try {
                iArr[Overlay.Target.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39037a[Overlay.Target.VIDEO_SNAPSHOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39037a[Overlay.Target.PICTURE_SNAPSHOT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public OverlayLayout(Context context) {
        super(context);
        this.f39035b = Overlay.Target.PREVIEW;
        setWillNotDraw(false);
    }

    @Override // com.otaliastudios.cameraview.overlay.Overlay
    public final boolean a(Overlay.Target target) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (((LayoutParams) getChildAt(i2).getLayoutParams()).a(target)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.otaliastudios.cameraview.overlay.Overlay
    public final void b(Overlay.Target target, Canvas canvas) {
        synchronized (this) {
            try {
                this.f39035b = target;
                int i2 = AnonymousClass1.f39037a[target.ordinal()];
                if (i2 == 1) {
                    super.draw(canvas);
                } else if (i2 == 2 || i2 == 3) {
                    canvas.save();
                    float width = canvas.getWidth() / getWidth();
                    float height = canvas.getHeight() / getHeight();
                    d.b(0, "draw", "target:", target, "canvas:", canvas.getWidth() + "x" + canvas.getHeight(), "view:", getWidth() + "x" + getHeight(), "widthScale:", Float.valueOf(width), "heightScale:", Float.valueOf(height), "hardwareCanvasMode:", Boolean.valueOf(this.f39036c));
                    canvas.scale(width, height);
                    dispatchDraw(canvas);
                    canvas.restore();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        d.b(1, "normal draw called.");
        Overlay.Target target = Overlay.Target.PREVIEW;
        if (a(target)) {
            b(target, canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean zA = layoutParams.a(this.f39035b);
        Overlay.Target target = this.f39035b;
        CameraLogger cameraLogger = d;
        if (zA) {
            cameraLogger.b(0, "Performing drawing for view:", view.getClass().getSimpleName(), "target:", target, "params:", layoutParams);
            return super.drawChild(canvas, view, j2);
        }
        cameraLogger.b(0, "Skipping drawing for view:", view.getClass().getSimpleName(), "target:", target, "params:", layoutParams);
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // com.otaliastudios.cameraview.overlay.Overlay
    public boolean getHardwareCanvasEnabled() {
        return this.f39036c;
    }

    public void setHardwareCanvasEnabled(boolean z) {
        this.f39036c = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f39038a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f39039b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f39040c;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f39038a = false;
            this.f39039b = false;
            this.f39040c = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f38853b);
            try {
                this.f39038a = typedArrayObtainStyledAttributes.getBoolean(1, false);
                this.f39039b = typedArrayObtainStyledAttributes.getBoolean(0, false);
                this.f39040c = typedArrayObtainStyledAttributes.getBoolean(2, false);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }

        public final boolean a(Overlay.Target target) {
            if (target == Overlay.Target.PREVIEW && this.f39038a) {
                return true;
            }
            if (target == Overlay.Target.VIDEO_SNAPSHOT && this.f39040c) {
                return true;
            }
            return target == Overlay.Target.PICTURE_SNAPSHOT && this.f39039b;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getClass().getName());
            sb.append("[drawOnPreview:");
            sb.append(this.f39038a);
            sb.append(",drawOnPictureSnapshot:");
            sb.append(this.f39039b);
            sb.append(",drawOnVideoSnapshot:");
            return a.p(sb, this.f39040c, "]");
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f39038a = false;
            this.f39039b = false;
            this.f39040c = false;
        }
    }
}
