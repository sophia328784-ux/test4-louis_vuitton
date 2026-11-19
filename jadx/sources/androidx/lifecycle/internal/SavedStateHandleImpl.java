package androidx.lifecycle.internal;

import defpackage.dn;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/lifecycle/internal/SavedStateHandleImpl;", "", "", "", "initialState", "<init>", "(Ljava/util/Map;)V", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SavedStateHandleImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f13571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f13572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f13573c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final dn f13574e;

    public SavedStateHandleImpl(Map<String, ? extends Object> map) {
        map.getClass();
        this.f13571a = new LinkedHashMap(map);
        this.f13572b = new LinkedHashMap();
        this.f13573c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.f13574e = new dn(this, 5);
    }

    public final void a(Object obj, String str) {
        str.getClass();
        this.f13571a.put(str, obj);
        MutableStateFlow mutableStateFlow = (MutableStateFlow) this.f13573c.get(str);
        if (mutableStateFlow != null) {
            mutableStateFlow.setValue(obj);
        }
        MutableStateFlow mutableStateFlow2 = (MutableStateFlow) this.d.get(str);
        if (mutableStateFlow2 != null) {
            mutableStateFlow2.setValue(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateHandleImpl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ SavedStateHandleImpl(Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? MapsKt.c() : map);
    }
}
