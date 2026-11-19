package androidx.lifecycle.viewmodel.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewModelStoreOwnerDefaults;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class ViewModelKt {
    public static final ViewModel a(KClass kClass, ViewModelStoreOwner viewModelStoreOwner, String str, ViewModelProvider.Factory factory, CreationExtras creationExtras, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (factory == null) {
            factory = ViewModelStoreOwnerDefaults.b(viewModelStoreOwner);
        }
        ViewModelProvider.f13528b.getClass();
        factory.getClass();
        creationExtras.getClass();
        ViewModelProvider viewModelProvider = new ViewModelProvider(viewModelStoreOwner.getViewModelStore(), factory, creationExtras);
        if (str == null) {
            return viewModelProvider.a(kClass);
        }
        kClass.getClass();
        return viewModelProvider.f13530a.a(str, kClass);
    }
}
