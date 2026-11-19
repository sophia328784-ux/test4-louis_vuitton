package androidx.compose.material.ripple;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.hn0;
import defpackage.w1;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/material/ripple/RippleHostView;", "Landroid/view/View;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "", "pressed", "", "setRippleState", "(Z)V", "Companion", "material-ripple"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RippleHostView extends View {
    public static final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f6528h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public UnprojectedRipple f6529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f6530c;
    public Long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public hn0 f6531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public w1 f6532f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/material/ripple/RippleHostView$Companion;", "", "", "MinimumRippleStateChangeTime", "J", "ResetRippleDelayDuration", "", "PressedState", "[I", "RestingState", "material-ripple"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        g = new int[]{R.attr.state_pressed, R.attr.state_enabled};
        f6528h = new int[0];
    }

    public RippleHostView(Context context) {
        super(context);
    }

    private final void setRippleState(boolean pressed) throws Exception {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        Runnable runnable = this.f6531e;
        if (runnable != null) {
            removeCallbacks(runnable);
            runnable.run();
        }
        Long l = this.d;
        long jLongValue = jCurrentAnimationTimeMillis - (l != null ? l.longValue() : 0L);
        if (pressed || jLongValue >= 5) {
            int[] iArr = pressed ? g : f6528h;
            UnprojectedRipple unprojectedRipple = this.f6529b;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(iArr);
            }
        } else {
            hn0 hn0Var = new hn0(this, 14);
            this.f6531e = hn0Var;
            postDelayed(hn0Var, 50L);
        }
        this.d = Long.valueOf(jCurrentAnimationTimeMillis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setRippleState$lambda$1(RippleHostView rippleHostView) {
        UnprojectedRipple unprojectedRipple = rippleHostView.f6529b;
        if (unprojectedRipple != null) {
            unprojectedRipple.setState(f6528h);
        }
        rippleHostView.f6531e = null;
    }

    public final void b(PressInteraction.Press press, boolean z, long j2, int i2, long j3, float f2, w1 w1Var) throws Exception {
        if (this.f6529b == null || !Boolean.valueOf(z).equals(this.f6530c)) {
            UnprojectedRipple unprojectedRipple = new UnprojectedRipple(z);
            setBackground(unprojectedRipple);
            this.f6529b = unprojectedRipple;
            this.f6530c = Boolean.valueOf(z);
        }
        UnprojectedRipple unprojectedRipple2 = this.f6529b;
        unprojectedRipple2.getClass();
        this.f6532f = w1Var;
        e(j2, i2, j3, f2);
        if (z) {
            long j4 = press.f4893a;
            Offset.Companion companion = Offset.f8806b;
            unprojectedRipple2.setHotspot(Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (press.f4893a & BodyPartID.bodyIdMax)));
        } else {
            unprojectedRipple2.setHotspot(unprojectedRipple2.getBounds().centerX(), unprojectedRipple2.getBounds().centerY());
        }
        setRippleState(true);
    }

    public final void c() throws Exception {
        this.f6532f = null;
        hn0 hn0Var = this.f6531e;
        if (hn0Var != null) {
            removeCallbacks(hn0Var);
            hn0 hn0Var2 = this.f6531e;
            hn0Var2.getClass();
            hn0Var2.run();
        } else {
            UnprojectedRipple unprojectedRipple = this.f6529b;
            if (unprojectedRipple != null) {
                unprojectedRipple.setState(f6528h);
            }
        }
        UnprojectedRipple unprojectedRipple2 = this.f6529b;
        if (unprojectedRipple2 == null) {
            return;
        }
        unprojectedRipple2.setVisible(false, false);
        unscheduleDrawable(unprojectedRipple2);
    }

    public final void d() throws Exception {
        setRippleState(false);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) throws Exception {
        if (isAttachedToWindow()) {
            super.draw(canvas);
        } else {
            c();
        }
    }

    public final void e(long j2, int i2, long j3, float f2) {
        UnprojectedRipple unprojectedRipple = this.f6529b;
        if (unprojectedRipple == null) {
            return;
        }
        if (unprojectedRipple.getRadius() != i2) {
            unprojectedRipple.setRadius(i2);
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        long jB = Color.b(f2, j3);
        Color color = unprojectedRipple.f6548c;
        if (!(color == null ? false : Color.c(color.f8872a, jB))) {
            unprojectedRipple.f6548c = new Color(jB);
            unprojectedRipple.setColor(ColorStateList.valueOf(ColorKt.i(jB)));
        }
        Rect rect = new Rect(0, 0, MathKt.c(Size.d(j2)), MathKt.c(Size.b(j2)));
        setLeft(rect.left);
        setTop(rect.top);
        setRight(rect.right);
        setBottom(rect.bottom);
        unprojectedRipple.setBounds(rect);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        w1 w1Var = this.f6532f;
        if (w1Var != null) {
            w1Var.mo47invoke();
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
    }
}
