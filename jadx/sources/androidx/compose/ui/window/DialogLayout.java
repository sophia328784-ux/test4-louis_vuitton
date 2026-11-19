package androidx.compose.ui.window;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/window/DialogLayout;", "Landroidx/compose/ui/platform/AbstractComposeView;", "Landroidx/compose/ui/window/DialogWindowProvider;", "Landroidx/core/view/OnApplyWindowInsetsListener;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/view/Window;", "window", "<init>", "(Landroid/content/Context;Landroid/view/Window;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DialogLayout extends AbstractComposeView implements DialogWindowProvider, OnApplyWindowInsetsListener {
    public final Window l;
    public final MutableState m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;

    public DialogLayout(Context context, Window window) {
        super(context, null, 0, 6, null);
        this.l = window;
        ComposableSingletons$AndroidDialog_androidKt.f11157a.getClass();
        this.m = SnapshotStateKt.g(ComposableSingletons$AndroidDialog_androidKt.f11158b);
        ViewCompat.x(this, this);
        ViewCompat.A(this, new WindowInsetsAnimationCompat.Callback() { // from class: androidx.compose.ui.window.DialogLayout.1
            {
                super(1);
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
                DialogLayout dialogLayout = DialogLayout.this;
                if (!dialogLayout.o) {
                    View childAt = dialogLayout.getChildAt(0);
                    int iMax = Math.max(0, childAt.getLeft());
                    int iMax2 = Math.max(0, childAt.getTop());
                    int iMax3 = Math.max(0, dialogLayout.getWidth() - childAt.getRight());
                    int iMax4 = Math.max(0, dialogLayout.getHeight() - childAt.getBottom());
                    if (iMax != 0 || iMax2 != 0 || iMax3 != 0 || iMax4 != 0) {
                        return windowInsetsCompat.l(iMax, iMax2, iMax3, iMax4);
                    }
                }
                return windowInsetsCompat;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                DialogLayout dialogLayout = DialogLayout.this;
                if (!dialogLayout.o) {
                    View childAt = dialogLayout.getChildAt(0);
                    int iMax = Math.max(0, childAt.getLeft());
                    int iMax2 = Math.max(0, childAt.getTop());
                    int iMax3 = Math.max(0, dialogLayout.getWidth() - childAt.getRight());
                    int iMax4 = Math.max(0, dialogLayout.getHeight() - childAt.getBottom());
                    if (iMax != 0 || iMax2 != 0 || iMax3 != 0 || iMax4 != 0) {
                        Insets insetsC = Insets.c(iMax, iMax2, iMax3, iMax4);
                        int i2 = insetsC.f12054a;
                        Insets insets = boundsCompat.f12223a;
                        int i3 = insetsC.f12055b;
                        int i4 = insetsC.f12056c;
                        int i5 = insetsC.d;
                        return new WindowInsetsAnimationCompat.BoundsCompat(WindowInsetsCompat.m(insets, i2, i3, i4, i5), WindowInsetsCompat.m(boundsCompat.f12224b, i2, i3, i4, i5));
                    }
                }
                return boundsCompat;
            }
        });
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void a(Composer composer, final int i2) {
        GapComposer gapComposerH = composer.h(1735448596);
        int i3 = (gapComposerH.y(this) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ((Function2) ((SnapshotMutableStateImpl) this.m).getF10755b()).invoke(gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(i2) { // from class: androidx.compose.ui.window.DialogLayout$Content$4
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(1);
                    this.f11164c.a((Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void g(int i2, int i3, boolean z, int i4, int i5) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int paddingLeft = (((i6 - measuredWidth) - paddingRight) / 2) + getPaddingLeft();
        int paddingTop = (((i7 - measuredHeight) - paddingBottom) / 2) + getPaddingTop();
        childAt.layout(paddingLeft, paddingTop, measuredWidth + paddingLeft, measuredHeight + paddingTop);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    /* JADX INFO: renamed from: getShouldCreateCompositionOnAttachedToWindow, reason: from getter */
    public final boolean getQ() {
        return this.q;
    }

    @Override // androidx.compose.ui.window.DialogWindowProvider
    /* JADX INFO: renamed from: getWindow, reason: from getter */
    public final Window getL() {
        return this.l;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0049  */
    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void h(int i2, int i3) {
        int iA;
        int iMin;
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.h(i2, i3);
            return;
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode = View.MeasureSpec.getMode(i3);
        Window window = this.l;
        if (mode != Integer.MIN_VALUE || this.n || window.getAttributes().height != -2) {
            iA = size2;
        } else if (this.o) {
            int i4 = Build.VERSION.SDK_INT;
            if (i4 < 30) {
                iA = Api21Impl.f11154a.a(window);
            } else if (i4 < 32) {
                iA = Api30Impl.f11156a.a(window);
            } else {
                iA = size2;
            }
        } else {
            iA = size2 + 1;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int i5 = size - paddingRight;
        if (i5 < 0) {
            i5 = 0;
        }
        int i6 = iA - paddingBottom;
        int i7 = i6 >= 0 ? i6 : 0;
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
        }
        if (mode != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(i7, Integer.MIN_VALUE);
        }
        childAt.measure(i2, i3);
        if (mode2 == Integer.MIN_VALUE) {
            size = Math.min(size, childAt.getMeasuredWidth() + paddingRight);
        } else if (mode2 != 1073741824) {
            size = childAt.getMeasuredWidth() + paddingRight;
        }
        if (mode != Integer.MIN_VALUE) {
            iMin = mode != 1073741824 ? childAt.getMeasuredHeight() + paddingBottom : size2;
        } else {
            iMin = Math.min(size2, childAt.getMeasuredHeight() + paddingBottom);
        }
        setMeasuredDimension(size, iMin);
        if (this.o || childAt.getMeasuredHeight() + paddingBottom <= size2 || window.getAttributes().height != -2) {
            return;
        }
        window.addFlags(Integer.MIN_VALUE);
        if (this.n) {
            return;
        }
        window.setLayout(-1, -1);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        if (!this.o) {
            View childAt = getChildAt(0);
            int iMax = Math.max(0, childAt.getLeft());
            int iMax2 = Math.max(0, childAt.getTop());
            int iMax3 = Math.max(0, getWidth() - childAt.getRight());
            int iMax4 = Math.max(0, getHeight() - childAt.getBottom());
            if (iMax != 0 || iMax2 != 0 || iMax3 != 0 || iMax4 != 0) {
                return windowInsetsCompat.l(iMax, iMax2, iMax3, iMax4);
            }
        }
        return windowInsetsCompat;
    }
}
