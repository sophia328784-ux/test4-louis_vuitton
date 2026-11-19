package coil3.size;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Lcoil3/size/ViewSizeResolver;", "Landroid/view/View;", "T", "Lcoil3/size/SizeResolver;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface ViewSizeResolver<T extends View> extends SizeResolver {
    static Dimension n(int i2, int i3, int i4) {
        if (i2 == -2) {
            return Dimension.Undefined.f21685a;
        }
        int i5 = i2 - i4;
        if (i5 > 0) {
            DimensionKt.a(i5);
            return new Dimension.Pixels(i5);
        }
        int i6 = i3 - i4;
        if (i6 <= 0) {
            return null;
        }
        DimensionKt.a(i6);
        return new Dimension.Pixels(i6);
    }

    View a();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.view.ViewTreeObserver$OnPreDrawListener, coil3.size.ViewSizeResolver$size$3$preDrawListener$1] */
    @Override // coil3.size.SizeResolver
    default Object g(Continuation continuation) {
        Size size = getSize();
        if (size != null) {
            return size;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final ViewTreeObserver viewTreeObserver = a().getViewTreeObserver();
        final ?? r1 = new ViewTreeObserver.OnPreDrawListener() { // from class: coil3.size.ViewSizeResolver$size$3$preDrawListener$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f21695b;

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                ViewSizeResolver viewSizeResolver = this.f21696c;
                Size size2 = viewSizeResolver.getSize();
                if (size2 != null) {
                    viewSizeResolver.p(viewTreeObserver, this);
                    if (!this.f21695b) {
                        this.f21695b = true;
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuationImpl.resumeWith(size2);
                    }
                }
                return true;
            }
        };
        viewTreeObserver.addOnPreDrawListener(r1);
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: coil3.size.ViewSizeResolver$size$3$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                this.f21693b.p(viewTreeObserver, r1);
                return Unit.f71739a;
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    default Dimension getHeight() {
        int paddingBottom;
        ViewGroup.LayoutParams layoutParams = a().getLayoutParams();
        int i2 = layoutParams != null ? layoutParams.height : -1;
        int height = a().getHeight();
        if (q()) {
            paddingBottom = a().getPaddingBottom() + a().getPaddingTop();
        } else {
            paddingBottom = 0;
        }
        return n(i2, height, paddingBottom);
    }

    default Size getSize() {
        Dimension height;
        Dimension width = getWidth();
        if (width == null || (height = getHeight()) == null) {
            return null;
        }
        return new Size(width, height);
    }

    default Dimension getWidth() {
        int paddingRight;
        ViewGroup.LayoutParams layoutParams = a().getLayoutParams();
        int i2 = layoutParams != null ? layoutParams.width : -1;
        int width = a().getWidth();
        if (q()) {
            paddingRight = a().getPaddingRight() + a().getPaddingLeft();
        } else {
            paddingRight = 0;
        }
        return n(i2, width, paddingRight);
    }

    default void p(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
        } else {
            a().getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
        }
    }

    default boolean q() {
        return true;
    }
}
