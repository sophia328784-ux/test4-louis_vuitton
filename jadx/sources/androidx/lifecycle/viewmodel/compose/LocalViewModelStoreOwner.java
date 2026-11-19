package androidx.lifecycle.viewmodel.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.OpaqueKey;
import androidx.lifecycle.ViewModelStoreOwner;
import defpackage.ck;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;", "", "lifecycle-viewmodel-compose"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LocalViewModelStoreOwner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ComputedProvidableCompositionLocal f13603a = new ComputedProvidableCompositionLocal(new ck(LocalViewModelStoreOwner_androidKt.f13604a, 5));

    public static ViewModelStoreOwner a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return (ViewModelStoreOwner) composer.k(f13603a);
    }
}
