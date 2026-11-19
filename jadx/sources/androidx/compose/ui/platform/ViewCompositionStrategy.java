package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.core.view.ViewKt;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.customview.poolingcontainer.PoolingContainerListener;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import com.vuitton.android.R;
import defpackage.os;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/platform/ViewCompositionStrategy;", "", "DisposeOnDetachedFromWindowOrReleasedFromPool", "DisposeOnViewTreeLifecycleDestroyed", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ViewCompositionStrategy {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool;", "Landroidx/compose/ui/platform/ViewCompositionStrategy;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DisposeOnDetachedFromWindowOrReleasedFromPool implements ViewCompositionStrategy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DisposeOnDetachedFromWindowOrReleasedFromPool f10155a = new DisposeOnDetachedFromWindowOrReleasedFromPool();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [t51] */
        /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View$OnAttachStateChangeListener, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        public final Function0 a(final AbstractComposeView abstractComposeView) {
            final ?? r2 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                    AbstractComposeView abstractComposeView2 = abstractComposeView;
                    for (Object obj : ViewKt.b(abstractComposeView2)) {
                        if (obj instanceof View) {
                            View view2 = (View) obj;
                            view2.getClass();
                            Object tag = view2.getTag(R.id.is_pooling_container_tag);
                            Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
                            if (bool != null ? bool.booleanValue() : false) {
                                return;
                            }
                        }
                    }
                    abstractComposeView2.e();
                }
            };
            abstractComposeView.addOnAttachStateChangeListener(r2);
            final ?? r0 = new PoolingContainerListener() { // from class: t51
                @Override // androidx.customview.poolingcontainer.PoolingContainerListener
                public final void a() {
                    abstractComposeView.e();
                }
            };
            PoolingContainer.a(abstractComposeView, r0);
            return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1 = r2;
                    AbstractComposeView abstractComposeView2 = abstractComposeView;
                    abstractComposeView2.removeOnAttachStateChangeListener(viewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1);
                    PoolingContainer.e(abstractComposeView2, r0);
                    return Unit.f71739a;
                }
            };
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed;", "Landroidx/compose/ui/platform/ViewCompositionStrategy;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DisposeOnViewTreeLifecycleDestroyed implements ViewCompositionStrategy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DisposeOnViewTreeLifecycleDestroyed f10159a = new DisposeOnViewTreeLifecycleDestroyed();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View$OnAttachStateChangeListener, androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1] */
        @Override // androidx.compose.ui.platform.ViewCompositionStrategy
        public final Function0 a(final AbstractComposeView abstractComposeView) {
            if (!abstractComposeView.isAttachedToWindow()) {
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                final ?? r0 = new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$listener$1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view) {
                        AbstractComposeView abstractComposeView2 = abstractComposeView;
                        LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(abstractComposeView2);
                        if (lifecycleOwnerA != null) {
                            ref$ObjectRef.f71921b = ViewCompositionStrategy_androidKt.a(abstractComposeView2, lifecycleOwnerA.getF13561b());
                            abstractComposeView2.removeOnAttachStateChangeListener(this);
                            return;
                        }
                        InlineClassHelperKt.d("View tree for " + abstractComposeView2 + " has no ViewTreeLifecycleOwner");
                        os.d();
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view) {
                    }
                };
                abstractComposeView.addOnAttachStateChangeListener(r0);
                ref$ObjectRef.f71921b = new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        abstractComposeView.removeOnAttachStateChangeListener(r0);
                        return Unit.f71739a;
                    }
                };
                return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnViewTreeLifecycleDestroyed$installFor$2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        ((Function0) ref$ObjectRef.f71921b).mo47invoke();
                        return Unit.f71739a;
                    }
                };
            }
            LifecycleOwner lifecycleOwnerA = ViewTreeLifecycleOwner.a(abstractComposeView);
            if (lifecycleOwnerA != null) {
                return ViewCompositionStrategy_androidKt.a(abstractComposeView, lifecycleOwnerA.getF13561b());
            }
            InlineClassHelperKt.d("View tree for " + abstractComposeView + " has no ViewTreeLifecycleOwner");
            os.d();
            return null;
        }
    }

    Function0 a(AbstractComposeView abstractComposeView);
}
