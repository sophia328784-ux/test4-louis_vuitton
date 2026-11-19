package androidx.lifecycle;

import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f13475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClassesInfoCache.CallbackInfo f13476c;

    public ReflectiveGenericLifecycleObserver(LifecycleObserver lifecycleObserver) {
        this.f13475b = lifecycleObserver;
        this.f13476c = ClassesInfoCache.f13407c.b(lifecycleObserver.getClass());
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        HashMap map = this.f13476c.f13410a;
        List list = (List) map.get(event);
        Object obj = this.f13475b;
        ClassesInfoCache.CallbackInfo.a(list, lifecycleOwner, event, obj);
        ClassesInfoCache.CallbackInfo.a((List) map.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
    }
}
