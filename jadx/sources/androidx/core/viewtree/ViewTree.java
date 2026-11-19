package androidx.core.viewtree;

import android.view.View;
import android.view.ViewParent;
import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"core-viewtree_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public abstract class ViewTree {
    public static final ViewParent a(View view) {
        view.getClass();
        ViewParent parent = view.getParent();
        if (parent != null) {
            return parent;
        }
        Object tag = view.getTag(R.id.view_tree_disjoint_parent);
        if (tag instanceof ViewParent) {
            return (ViewParent) tag;
        }
        return null;
    }
}
