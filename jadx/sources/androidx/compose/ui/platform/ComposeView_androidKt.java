package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.viewtree.ViewTree;
import com.vuitton.android.R;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ComposeView_androidKt {
    public static final int a(int i2, View view) {
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        Object obj = null;
        while (view != null) {
            Object tag = view.getTag(i2);
            if (tag != null) {
                if (obj != null) {
                    if (!tag.equals(obj)) {
                        break;
                    }
                } else {
                    obj = tag;
                }
                i4 = i3;
            }
            i3++;
            Object objA = ViewTree.a(view);
            view = objA instanceof View ? (View) objA : null;
        }
        return i4;
    }

    public static final View b(View view) {
        if (!view.isAttachedToWindow()) {
            return view;
        }
        int iMin = Math.min(a(R.id.view_tree_lifecycle_owner, view), a(R.id.view_tree_saved_state_registry_owner, view));
        View view2 = view;
        int i2 = 0;
        View view3 = view2;
        while (view != null) {
            if (i2 == iMin) {
                if (!(view.getParent() instanceof ViewGroup)) {
                    return view2;
                }
            } else if (c(view) == null) {
                i2++;
                Object objA = ViewTree.a(view);
                View view4 = view2;
                view2 = view;
                view = objA instanceof View ? (View) objA : null;
                view3 = view4;
            }
            return view;
        }
        return view3;
    }

    public static final ComposeViewContext c(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_compose_view_context);
        WeakReference weakReference = tag instanceof WeakReference ? (WeakReference) tag : null;
        if (weakReference != null) {
            return (ComposeViewContext) weakReference.get();
        }
        return null;
    }
}
