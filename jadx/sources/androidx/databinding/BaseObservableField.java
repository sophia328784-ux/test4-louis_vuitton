package androidx.databinding;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseObservableField extends BaseObservable {

    public class DependencyCallback extends Observable.OnPropertyChangedCallback {
        public DependencyCallback() {
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public final void a(Observable observable, int i2) {
            BaseObservableField baseObservableField = BaseObservableField.this;
            synchronized (baseObservableField) {
                try {
                    PropertyChangeRegistry propertyChangeRegistry = baseObservableField.f12575b;
                    if (propertyChangeRegistry == null) {
                        return;
                    }
                    propertyChangeRegistry.c(baseObservableField, 0);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public BaseObservableField(Observable... observableArr) {
        if (observableArr == null || observableArr.length == 0) {
            return;
        }
        DependencyCallback dependencyCallback = new DependencyCallback();
        for (Observable observable : observableArr) {
            observable.a(dependencyCallback);
        }
    }

    public BaseObservableField() {
    }
}
