package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.lifecycle.internal.SavedStateHandleImpl_androidKt;
import defpackage.b21;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\bB\u001f\b\u0017\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0017¢\u0006\u0004\b\u0005\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/lifecycle/SavedStateHandle;", "", "", "", "initialState", "<init>", "(Ljava/util/Map;)V", "()V", "Companion", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SavedStateHandle {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f13499c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f13500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SavedStateHandleImpl f13501b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/SavedStateHandle$Companion;", "", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static SavedStateHandle a(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                bundle = bundle2;
            }
            if (bundle == null) {
                return new SavedStateHandle();
            }
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            classLoader.getClass();
            bundle.setClassLoader(classLoader);
            MapBuilder mapBuilder = new MapBuilder(bundle.size());
            for (String str : bundle.keySet()) {
                str.getClass();
                mapBuilder.put(str, bundle.get(str));
            }
            return new SavedStateHandle(mapBuilder.c());
        }
    }

    public SavedStateHandle(Map<String, ? extends Object> map) {
        map.getClass();
        this.f13500a = new LinkedHashMap();
        this.f13501b = new SavedStateHandleImpl(map);
    }

    public final Object a(String str) {
        Object value;
        str.getClass();
        SavedStateHandleImpl savedStateHandleImpl = this.f13501b;
        LinkedHashMap linkedHashMap = savedStateHandleImpl.f13571a;
        LinkedHashMap linkedHashMap2 = savedStateHandleImpl.d;
        try {
            MutableStateFlow mutableStateFlow = (MutableStateFlow) linkedHashMap2.get(str);
            if (mutableStateFlow != null && (value = mutableStateFlow.getValue()) != null) {
                return value;
            }
            return linkedHashMap.get(str);
        } catch (ClassCastException unused) {
            linkedHashMap.remove(str);
            savedStateHandleImpl.f13573c.remove(str);
            linkedHashMap2.remove(str);
            return null;
        }
    }

    public final void b(Object obj, String str) {
        f13499c.getClass();
        if (obj != null) {
            ArrayList arrayList = SavedStateHandleImpl_androidKt.f13575a;
            if (arrayList == null || !arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!((Class) it.next()).isInstance(obj));
            }
            b21.n(pq0.n(obj.getClass(), "Can't put value with type ", " into saved state"));
            return;
        }
        ArrayList arrayList2 = SavedStateHandleImpl_androidKt.f13575a;
        Object obj2 = this.f13500a.get(str);
        MutableLiveData mutableLiveData = obj2 instanceof MutableLiveData ? (MutableLiveData) obj2 : null;
        if (mutableLiveData != null) {
            mutableLiveData.setValue(obj);
        }
        this.f13501b.a(obj, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateHandle() {
        this.f13500a = new LinkedHashMap();
        this.f13501b = new SavedStateHandleImpl(null, 1, 0 == true ? 1 : 0);
    }
}
