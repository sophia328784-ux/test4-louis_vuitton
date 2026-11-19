package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.HostDefaultProvider;
import androidx.compose.runtime.ViewTreeHostDefaultKey;
import androidx.core.viewtree.ViewTree;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/platform/ViewTreeHostDefaultProvider;", "Landroidx/compose/runtime/HostDefaultProvider;", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewTreeHostDefaultProvider implements HostDefaultProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f10174a;

    public ViewTreeHostDefaultProvider(View view) {
        this.f10174a = view;
    }

    @Override // androidx.compose.runtime.HostDefaultProvider
    public final Object a(ViewTreeHostDefaultKey viewTreeHostDefaultKey) {
        View view = this.f10174a;
        while (view != null) {
            Object tag = view.getTag(viewTreeHostDefaultKey.a());
            if (tag != null) {
                return tag;
            }
            Object objA = ViewTree.a(view);
            view = objA instanceof View ? (View) objA : null;
        }
        return null;
    }
}
