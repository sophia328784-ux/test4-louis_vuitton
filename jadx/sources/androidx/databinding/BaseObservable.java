package androidx.databinding;

/* JADX INFO: loaded from: classes.dex */
public class BaseObservable implements Observable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient PropertyChangeRegistry f12575b;

    @Override // androidx.databinding.Observable
    public final void a(Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            try {
                if (this.f12575b == null) {
                    this.f12575b = new PropertyChangeRegistry();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        PropertyChangeRegistry propertyChangeRegistry = this.f12575b;
        synchronized (propertyChangeRegistry) {
            try {
                int iLastIndexOf = propertyChangeRegistry.f12577b.lastIndexOf(onPropertyChangedCallback);
                if (iLastIndexOf < 0 || propertyChangeRegistry.a(iLastIndexOf)) {
                    propertyChangeRegistry.f12577b.add(onPropertyChangedCallback);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
