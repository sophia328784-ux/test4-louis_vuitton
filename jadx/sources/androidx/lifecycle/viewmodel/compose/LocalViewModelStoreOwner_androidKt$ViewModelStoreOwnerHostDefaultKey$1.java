package androidx.lifecycle.viewmodel.compose;

import androidx.compose.runtime.ViewTreeHostDefaultKey;
import androidx.lifecycle.ViewModelStoreOwner;
import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner_androidKt$ViewModelStoreOwnerHostDefaultKey$1", "Landroidx/compose/runtime/ViewTreeHostDefaultKey;", "Landroidx/lifecycle/ViewModelStoreOwner;", "lifecycle-viewmodel-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LocalViewModelStoreOwner_androidKt$ViewModelStoreOwnerHostDefaultKey$1 implements ViewTreeHostDefaultKey<ViewModelStoreOwner> {
    @Override // androidx.compose.runtime.ViewTreeHostDefaultKey
    public final int a() {
        return R.id.view_tree_view_model_store_owner;
    }
}
