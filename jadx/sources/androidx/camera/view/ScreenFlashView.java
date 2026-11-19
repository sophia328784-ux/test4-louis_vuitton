package androidx.camera.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.Threads;
import defpackage.ft;
import defpackage.hn0;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class ScreenFlashView extends View {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Window f3161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageCapture.ScreenFlash f3162c;

    public ScreenFlashView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        setBackgroundColor(-1);
        setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        setElevation(Float.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getBrightness() {
        Window window = this.f3161b;
        if (window != null) {
            return window.getAttributes().screenBrightness;
        }
        Logger.a("ScreenFlashView");
        return Float.NaN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBrightness(float f2) {
        if (this.f3161b == null) {
            Logger.a("ScreenFlashView");
            return;
        }
        if (Float.isNaN(f2)) {
            Logger.a("ScreenFlashView");
            return;
        }
        WindowManager.LayoutParams attributes = this.f3161b.getAttributes();
        attributes.screenBrightness = f2;
        this.f3161b.setAttributes(attributes);
        Logger.c(3, "ScreenFlashView");
    }

    private void setScreenFlashUiInfo(ImageCapture.ScreenFlash screenFlash) {
        Logger.c(3, "ScreenFlashView");
    }

    public ImageCapture.ScreenFlash getScreenFlash() {
        return this.f3162c;
    }

    public long getVisibilityRampUpAnimationDurationMillis() {
        return 1000L;
    }

    public void setController(CameraController cameraController) {
        Threads.a();
    }

    public void setScreenFlashWindow(Window window) {
        Threads.a();
        Logger.c(3, "ScreenFlashView");
        if (this.f3161b != window) {
            this.f3162c = window == null ? null : new ImageCapture.ScreenFlash() { // from class: androidx.camera.view.ScreenFlashView.1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public float f3163a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public ValueAnimator f3164b;

                @Override // androidx.camera.core.ImageCapture.ScreenFlash
                public final void a(long j2, ImageCapture.ScreenFlashListener screenFlashListener) {
                    Logger.c(3, "ScreenFlashView");
                    ScreenFlashView screenFlashView = ScreenFlashView.this;
                    this.f3163a = screenFlashView.getBrightness();
                    screenFlashView.setBrightness(1.0f);
                    ValueAnimator valueAnimator = this.f3164b;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                    Objects.requireNonNull(screenFlashListener);
                    final hn0 hn0Var = new hn0(screenFlashListener, 16);
                    Logger.c(3, "ScreenFlashView");
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
                    valueAnimatorOfFloat.setDuration(screenFlashView.getVisibilityRampUpAnimationDurationMillis());
                    valueAnimatorOfFloat.addUpdateListener(new ft(screenFlashView, 6));
                    valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.camera.view.ScreenFlashView.2
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) throws Exception {
                            Logger.c(3, "ScreenFlashView");
                            hn0Var.run();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    valueAnimatorOfFloat.start();
                    this.f3164b = valueAnimatorOfFloat;
                }

                @Override // androidx.camera.core.ImageCapture.ScreenFlash
                public final void clear() {
                    Logger.c(3, "ScreenFlashView");
                    ValueAnimator valueAnimator = this.f3164b;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                        this.f3164b = null;
                    }
                    ScreenFlashView screenFlashView = ScreenFlashView.this;
                    screenFlashView.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    screenFlashView.setBrightness(this.f3163a);
                }
            };
        }
        this.f3161b = window;
        setScreenFlashUiInfo(getScreenFlash());
    }

    public ScreenFlashView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScreenFlashView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ScreenFlashView(Context context) {
        this(context, null);
    }
}
