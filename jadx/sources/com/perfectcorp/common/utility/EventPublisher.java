package com.perfectcorp.common.utility;

import com.perfectcorp.common.concurrent.CallingThread;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class EventPublisher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IdentityHashMap f39420a = new IdentityHashMap();

    public interface Publisher<T extends Subscriber> {
        void a(Subscriber subscriber);
    }

    public interface Subscriber {
    }

    public final void a(Class cls, final Publisher publisher, CallingThread callingThread) {
        final ArrayList arrayList;
        synchronized (this.f39420a) {
            try {
                Set set = (Set) this.f39420a.get(cls);
                if (set == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(set);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayList != null) {
            callingThread.execute(new Runnable() { // from class: com.perfectcorp.common.utility.EventPublisher.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        publisher.a((Subscriber) it.next());
                    }
                }
            });
        }
    }

    public final void b(Class cls, Subscriber subscriber) {
        synchronized (this.f39420a) {
            try {
                Set setNewSetFromMap = (Set) this.f39420a.get(cls);
                if (setNewSetFromMap == null) {
                    setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
                    this.f39420a.put(cls, setNewSetFromMap);
                }
                setNewSetFromMap.add(subscriber);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Class cls) {
        synchronized (this.f39420a) {
            this.f39420a.remove(cls);
        }
    }
}
