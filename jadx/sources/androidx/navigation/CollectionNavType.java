package androidx.navigation;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/navigation/CollectionNavType;", "T", "Landroidx/navigation/NavType;", "", "isNullableAllowed", "<init>", "(Z)V", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class CollectionNavType<T> extends NavType<T> {
    public CollectionNavType(boolean z) {
        super(z);
    }

    public abstract Object h();

    public abstract List i(Object obj);
}
