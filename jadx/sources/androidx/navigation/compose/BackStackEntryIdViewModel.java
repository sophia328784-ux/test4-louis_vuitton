package androidx.navigation.compose;

import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.navigation.compose.internal.WeakReference;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/compose/BackStackEntryIdViewModel;", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "handle", "<init>", "(Landroidx/lifecycle/SavedStateHandle;)V", "navigation-compose_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BackStackEntryIdViewModel extends ViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeakReference f18226b;

    public BackStackEntryIdViewModel(SavedStateHandle savedStateHandle) {
        String string = (String) savedStateHandle.a("SaveableStateHolder_BackStackEntryKey");
        if (string == null) {
            string = UUID.randomUUID().toString();
            savedStateHandle.b(string, "SaveableStateHolder_BackStackEntryKey");
        }
        this.f18225a = string;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        super.onCleared();
        WeakReference weakReference = this.f18226b;
        if (weakReference == null) {
            Intrinsics.h("saveableStateHolderRef");
            throw null;
        }
        SaveableStateHolder saveableStateHolder = (SaveableStateHolder) weakReference.f18292a.get();
        if (saveableStateHolder != null) {
            saveableStateHolder.c(this.f18225a);
        }
        WeakReference weakReference2 = this.f18226b;
        if (weakReference2 != null) {
            weakReference2.f18292a.clear();
        } else {
            Intrinsics.h("saveableStateHolderRef");
            throw null;
        }
    }
}
