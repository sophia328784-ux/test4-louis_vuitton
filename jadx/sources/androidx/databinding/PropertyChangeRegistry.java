package androidx.databinding;

/* JADX INFO: loaded from: classes.dex */
public class PropertyChangeRegistry extends CallbackRegistry<Observable.OnPropertyChangedCallback, Observable, Void> {
    public static final CallbackRegistry.NotifierCallback g = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.databinding.PropertyChangeRegistry$1, reason: invalid class name */
    public class AnonymousClass1 extends CallbackRegistry.NotifierCallback<Observable.OnPropertyChangedCallback, Observable, Void> {
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        public final void a(Object obj, Object obj2, int i2) {
            ((Observable.OnPropertyChangedCallback) obj).a((Observable) obj2, i2);
        }
    }

    public PropertyChangeRegistry() {
        super(g);
    }
}
