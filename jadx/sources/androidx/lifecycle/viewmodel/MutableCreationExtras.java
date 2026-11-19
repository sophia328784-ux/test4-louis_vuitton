package androidx.lifecycle.viewmodel;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\b\u0000\u0012\u0018\u0010\u0005\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007B\u0013\b\u0017\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\b¨\u0006\t"}, d2 = {"Landroidx/lifecycle/viewmodel/MutableCreationExtras;", "Landroidx/lifecycle/viewmodel/CreationExtras;", "", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "", "initialExtras", "<init>", "(Ljava/util/Map;)V", "(Landroidx/lifecycle/viewmodel/CreationExtras;)V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutableCreationExtras extends CreationExtras {
    public MutableCreationExtras(Map<CreationExtras.Key<?>, ? extends Object> map) {
        map.getClass();
        this.f13577a.putAll(map);
    }

    @Override // androidx.lifecycle.viewmodel.CreationExtras
    public final Object a(CreationExtras.Key key) {
        key.getClass();
        return this.f13577a.get(key);
    }

    public final void b(CreationExtras.Key key, Object obj) {
        key.getClass();
        this.f13577a.put(key, obj);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MutableCreationExtras(CreationExtras creationExtras) {
        this(creationExtras.f13577a);
        creationExtras.getClass();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MutableCreationExtras() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ MutableCreationExtras(CreationExtras creationExtras, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? CreationExtras.Empty.f13578c : creationExtras);
    }
}
