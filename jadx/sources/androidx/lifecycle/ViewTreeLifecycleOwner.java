package androidx.lifecycle;

import android.view.View;
import androidx.core.viewtree.ViewTree;
import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ViewTreeLifecycleOwner {
    public static final LifecycleOwner a(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_lifecycle_owner);
            LifecycleOwner lifecycleOwner = tag instanceof LifecycleOwner ? (LifecycleOwner) tag : null;
            if (lifecycleOwner != null) {
                return lifecycleOwner;
            }
            Object objA = ViewTree.a(view);
            view = objA instanceof View ? (View) objA : null;
        }
        return null;
    }

    public static final void b(View view, LifecycleOwner lifecycleOwner) {
        view.getClass();
        view.setTag(R.id.view_tree_lifecycle_owner, lifecycleOwner);
    }
}
