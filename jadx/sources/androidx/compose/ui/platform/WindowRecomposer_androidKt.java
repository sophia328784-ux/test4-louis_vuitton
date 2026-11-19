package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.View;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.core.viewtree.ViewTree;
import com.vuitton.android.R;
import defpackage.md;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.android.HandlerDispatcherKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowRecomposer_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MutableScatterMap f10186a = ScatterMapKt.b();

    public static final CompositionContext a(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }

    public static final Recomposer b(View view) {
        if (!view.isAttachedToWindow()) {
            InlineClassHelperKt.c("Cannot locate windowRecomposer; View " + view + " is not attached to a window");
        }
        Object objA = ViewTree.a(view);
        while (objA instanceof View) {
            View view2 = (View) objA;
            if (view2.getId() == 16908290) {
                break;
            }
            objA = view2.getParent();
            view = view2;
        }
        CompositionContext compositionContextA = a(view);
        if (compositionContextA != null) {
            if (compositionContextA instanceof Recomposer) {
                return (Recomposer) compositionContextA;
            }
            md.k("root viewTreeParentCompositionContext is not a Recomposer");
            return null;
        }
        Recomposer recomposerA = ((WindowRecomposerFactory) WindowRecomposerPolicy.f10182a.get()).a(view);
        view.setTag(R.id.androidx_compose_ui_view_composition_context, recomposerA);
        Handler handler = view.getHandler();
        int i2 = HandlerDispatcherKt.f74727a;
        final Job jobC = BuildersKt.c(GlobalScope.f74669b, new HandlerContext(handler, "windowRecomposer cleanup").f74726e, null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(recomposerA, view, null), 2);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposerPolicy$createAndInstallWindowRecomposer$1
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view3) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view3) {
                view3.removeOnAttachStateChangeListener(this);
                jobC.cancel(null);
            }
        });
        return recomposerA;
    }
}
