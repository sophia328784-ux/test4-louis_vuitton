package androidx.databinding;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ObservableField<T> extends BaseObservableField implements Serializable {
    static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f12589c;

    public ObservableField(T t) {
        this.f12589c = t;
    }

    public ObservableField() {
    }

    public ObservableField(Observable... observableArr) {
        super(observableArr);
    }
}
