package androidx.customview.poolingcontainer;

import android.view.View;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import androidx.core.view.ViewKt;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import defpackage.t51;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"customview-poolingcontainer_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
public abstract class PoolingContainer {
    public static final void a(AbstractComposeView abstractComposeView, t51 t51Var) {
        d(abstractComposeView).f12553a.add(t51Var);
    }

    public static final void b(View view) {
        view.getClass();
        Iterator itO = SequencesKt.o(ViewKt.a(view).f74479a);
        while (itO.hasNext()) {
            ArrayList arrayList = d((View) itO.next()).f12553a;
            for (int iF = CollectionsKt.F(arrayList); -1 < iF; iF--) {
                ((PoolingContainerListener) arrayList.get(iF)).a();
            }
        }
    }

    public static final void c(RecyclerView recyclerView) {
        Iterator it = new ViewGroupKt$children$1(recyclerView).getF74480a();
        while (true) {
            ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
            if (!viewGroupKt$iterator$1.hasNext()) {
                return;
            }
            ArrayList arrayList = d((View) viewGroupKt$iterator$1.next()).f12553a;
            for (int iF = CollectionsKt.F(arrayList); -1 < iF; iF--) {
                ((PoolingContainerListener) arrayList.get(iF)).a();
            }
        }
    }

    public static final PoolingContainerListenerHolder d(View view) {
        PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view.getTag(R.id.pooling_container_listener_holder_tag);
        if (poolingContainerListenerHolder != null) {
            return poolingContainerListenerHolder;
        }
        PoolingContainerListenerHolder poolingContainerListenerHolder2 = new PoolingContainerListenerHolder();
        view.setTag(R.id.pooling_container_listener_holder_tag, poolingContainerListenerHolder2);
        return poolingContainerListenerHolder2;
    }

    public static final void e(View view, t51 t51Var) {
        d(view).f12553a.remove(t51Var);
    }
}
