package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ss;
import defpackage.v40;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/google/accompanist/drawablepainter/DrawablePainter;", "Landroidx/compose/ui/graphics/painter/Painter;", "Landroidx/compose/runtime/RememberObserver;", "Landroid/graphics/drawable/Drawable;", "drawable", "<init>", "(Landroid/graphics/drawable/Drawable;)V", "drawablepainter_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DrawablePainter extends Painter implements RememberObserver {
    public final Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableState f27763h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableState f27764i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Lazy f27765j;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27766a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f27766a = iArr;
        }
    }

    public DrawablePainter(Drawable drawable) {
        drawable.getClass();
        this.g = drawable;
        this.f27763h = SnapshotStateKt.g(0);
        this.f27764i = SnapshotStateKt.g(new Size(DrawablePainterKt.a(drawable)));
        this.f27765j = LazyKt.b(new ss(this, 7));
        if (drawable.getIntrinsicWidth() < 0 || drawable.getIntrinsicHeight() < 0) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean a(float f2) {
        this.g.setAlpha(RangesKt.d(MathKt.c(f2 * 255.0f), 0, 255));
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean b(ColorFilter colorFilter) {
        this.g.setColorFilter(colorFilter != null ? colorFilter.f8874a : null);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void c(LayoutDirection layoutDirection) {
        layoutDirection.getClass();
        int i2 = WhenMappings.f27766a[layoutDirection.ordinal()];
        int i3 = 1;
        if (i2 == 1) {
            i3 = 0;
        } else if (i2 != 2) {
            v40.g();
            return;
        }
        this.g.setLayoutDirection(i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        Drawable.Callback callback = (Drawable.Callback) this.f27765j.getF71699b();
        Drawable drawable = this.g;
        drawable.setCallback(callback);
        drawable.setVisible(true, true);
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).start();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
        i();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: g */
    public final long getR() {
        return ((Size) ((SnapshotMutableStateImpl) this.f27764i).getF10755b()).f8822a;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void h(DrawScope drawScope) {
        drawScope.getClass();
        Canvas canvasA = drawScope.getF8996c().a();
        ((Number) ((SnapshotMutableStateImpl) this.f27763h).getF10755b()).intValue();
        try {
            canvasA.p();
            int i2 = Build.VERSION.SDK_INT;
            Drawable drawable = this.g;
            if (i2 >= 31 || !(drawable instanceof AnimatedImageDrawable)) {
                drawable.setBounds(0, 0, MathKt.c(Size.d(drawScope.b())), MathKt.c(Size.b(drawScope.b())));
            } else {
                canvasA.b(Size.d(drawScope.b()) / Size.d(getR()), Size.b(drawScope.b()) / Size.b(getR()));
            }
            android.graphics.Canvas canvas = AndroidCanvas_androidKt.f8826a;
            drawable.draw(((AndroidCanvas) canvasA).f8823a);
        } finally {
            canvasA.restore();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        Drawable drawable = this.g;
        if (drawable instanceof Animatable) {
            ((Animatable) drawable).stop();
        }
        drawable.setVisible(false, false);
        drawable.setCallback(null);
    }
}
