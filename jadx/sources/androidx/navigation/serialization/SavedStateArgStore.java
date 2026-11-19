package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.NavType;
import androidx.savedstate.SavedStateReader;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B+\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigation/serialization/SavedStateArgStore;", "Landroidx/navigation/serialization/ArgStore;", "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "savedState", "", "", "Landroidx/navigation/NavType;", "typeMap", "<init>", "(Landroid/os/Bundle;Ljava/util/Map;)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class SavedStateArgStore extends ArgStore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f18373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f18374b;

    public SavedStateArgStore(Bundle bundle, Map<String, ? extends NavType<?>> map) {
        bundle.getClass();
        map.getClass();
        this.f18373a = bundle;
        this.f18374b = map;
    }

    @Override // androidx.navigation.serialization.ArgStore
    public final boolean a(String str) {
        str.getClass();
        Bundle bundle = this.f18373a;
        bundle.getClass();
        return SavedStateReader.a(str, bundle);
    }

    @Override // androidx.navigation.serialization.ArgStore
    public final Object b(String str) {
        str.getClass();
        NavType navType = (NavType) this.f18374b.get(str);
        if (navType != null) {
            return navType.a(str, this.f18373a);
        }
        return null;
    }
}
