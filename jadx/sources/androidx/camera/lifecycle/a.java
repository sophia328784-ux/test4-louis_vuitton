package androidx.camera.lifecycle;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LifecycleCameraProviderImpl f2707b;

    public /* synthetic */ a(LifecycleCameraProviderImpl lifecycleCameraProviderImpl) {
        this.f2707b = lifecycleCameraProviderImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LifecycleCameraProviderImpl lifecycleCameraProviderImpl = this.f2707b;
        lifecycleCameraProviderImpl.d();
        LifecycleCameraRepository lifecycleCameraRepository = lifecycleCameraProviderImpl.d;
        Set<LifecycleCameraRepository.Key> setKeySet = lifecycleCameraProviderImpl.f2693h;
        synchronized (lifecycleCameraRepository.f2698a) {
            if (setKeySet == null) {
                try {
                    setKeySet = lifecycleCameraRepository.f2699b.keySet();
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (LifecycleCameraRepository.Key key : setKeySet) {
                if (lifecycleCameraRepository.f2699b.containsKey(key)) {
                    lifecycleCameraRepository.j((LifecycleCamera) lifecycleCameraRepository.f2699b.get(key));
                }
            }
        }
    }
}
