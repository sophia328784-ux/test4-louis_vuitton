package androidx.lifecycle;

import androidx.arch.core.internal.SafeIterableMap;
import defpackage.md;
import defpackage.r81;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SafeIterableMap f13465a;

    public static class Source<V> implements Observer<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LiveData f13466b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Observer f13467c;
        public int d = -1;

        public Source(LiveData liveData, Observer observer) {
            this.f13466b = liveData;
            this.f13467c = observer;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            int i2 = this.d;
            LiveData liveData = this.f13466b;
            if (i2 != liveData.getVersion()) {
                this.d = liveData.getVersion();
                this.f13467c.onChanged(obj);
            }
        }
    }

    public MediatorLiveData() {
        this.f13465a = new SafeIterableMap();
    }

    public void b(LiveData liveData, Observer observer) {
        if (liveData == null) {
            r81.d("source cannot be null");
            return;
        }
        Source source = new Source(liveData, observer);
        Source source2 = (Source) this.f13465a.a(liveData, source);
        if (source2 != null && source2.f13467c != observer) {
            md.n("This source was already added with the different observer");
        } else if (source2 == null && hasActiveObservers()) {
            liveData.observeForever(source);
        }
    }

    public final void c(LiveData liveData) {
        Source source = (Source) this.f13465a.b(liveData);
        if (source != null) {
            source.f13466b.removeObserver(source);
        }
    }

    @Override // androidx.lifecycle.LiveData
    public final void onActive() {
        Iterator it = this.f13465a.iterator();
        while (it.hasNext()) {
            Source source = (Source) ((Map.Entry) it.next()).getValue();
            source.f13466b.observeForever(source);
        }
    }

    @Override // androidx.lifecycle.LiveData
    public final void onInactive() {
        Iterator it = this.f13465a.iterator();
        while (it.hasNext()) {
            Source source = (Source) ((Map.Entry) it.next()).getValue();
            source.f13466b.removeObserver(source);
        }
    }

    public MediatorLiveData(T t) {
        super(t);
        this.f13465a = new SafeIterableMap();
    }
}
