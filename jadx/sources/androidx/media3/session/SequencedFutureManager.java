package androidx.media3.session;

import android.os.Handler;
import androidx.collection.ArrayMap;
import androidx.media3.common.util.Log;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class SequencedFutureManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17530b;
    public j d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f17532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17533f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f17529a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayMap f17531c = new ArrayMap();

    public static final class SequencedFuture<T> extends AbstractFuture<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17534b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f17535c;

        public SequencedFuture(int i2, Object obj) {
            this.f17534b = i2;
            this.f17535c = obj;
        }

        public final void g() {
            super.set(this.f17535c);
        }
    }

    public final SequencedFuture a(Object obj) {
        SequencedFuture sequencedFuture;
        synchronized (this.f17529a) {
            try {
                int iB = b();
                sequencedFuture = new SequencedFuture(iB, obj);
                if (this.f17533f) {
                    sequencedFuture.g();
                } else {
                    this.f17531c.put(Integer.valueOf(iB), sequencedFuture);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sequencedFuture;
    }

    public final int b() {
        int i2;
        synchronized (this.f17529a) {
            i2 = this.f17530b;
            this.f17530b = i2 + 1;
        }
        return i2;
    }

    public final void c() {
        ArrayList arrayList;
        synchronized (this.f17529a) {
            try {
                this.f17533f = true;
                arrayList = new ArrayList(this.f17531c.values());
                this.f17531c.clear();
                if (this.d != null) {
                    Handler handler = this.f17532e;
                    handler.getClass();
                    handler.post(this.d);
                    this.d = null;
                    this.f17532e = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((SequencedFuture) it.next()).g();
        }
    }

    public final void d(int i2, Object obj) {
        synchronized (this.f17529a) {
            try {
                SequencedFuture sequencedFuture = (SequencedFuture) this.f17531c.remove(Integer.valueOf(i2));
                if (sequencedFuture != null) {
                    if (sequencedFuture.f17535c.getClass() == obj.getClass()) {
                        sequencedFuture.set(obj);
                    } else {
                        Log.g("Type mismatch, expected " + sequencedFuture.f17535c.getClass() + ", but was " + obj.getClass());
                    }
                }
                if (this.d != null && this.f17531c.isEmpty()) {
                    c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
