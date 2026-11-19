package androidx.media3.common.util;

import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CopyOnWriteMultiset<E> implements Iterable<E> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f14152b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f14153c = new HashMap();
    public Set d = Collections.EMPTY_SET;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f14154e = Collections.EMPTY_LIST;

    public final int a(DrmSessionEventListener.EventDispatcher eventDispatcher) {
        int iIntValue;
        synchronized (this.f14152b) {
            try {
                iIntValue = this.f14153c.containsKey(eventDispatcher) ? ((Integer) this.f14153c.get(eventDispatcher)).intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator<E> it;
        synchronized (this.f14152b) {
            it = this.f14154e.iterator();
        }
        return it;
    }
}
