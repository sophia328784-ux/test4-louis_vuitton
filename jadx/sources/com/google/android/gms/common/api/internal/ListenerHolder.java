package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;

/* JADX INFO: loaded from: classes2.dex */
public final class ListenerHolder<L> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HandlerExecutor f29037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile ListenerKey f29038b;

    public static final class ListenerKey<L> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f29039a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f29040b;

        public ListenerKey(Object obj, String str) {
            this.f29039a = obj;
            this.f29040b = str;
        }

        public final String a() {
            int iIdentityHashCode = System.identityHashCode(this.f29039a);
            String str = this.f29040b;
            StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(iIdentityHashCode).length());
            sb.append(str);
            sb.append("@");
            sb.append(iIdentityHashCode);
            return sb.toString();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f29039a == listenerKey.f29039a && this.f29040b.equals(listenerKey.f29040b);
        }

        public final int hashCode() {
            return this.f29040b.hashCode() + (System.identityHashCode(this.f29039a) * 31);
        }
    }

    public interface Notifier<L> {
        void a(Object obj);
    }

    public ListenerHolder(Looper looper, Object obj, String str) {
        this.f29037a = new HandlerExecutor(looper);
        Preconditions.i(obj, "Listener must not be null");
        Preconditions.e(str);
        this.f29038b = new ListenerKey(obj, str);
    }

    public final void a(final Notifier notifier) {
        this.f29037a.execute(new Runnable() { // from class: com.google.android.gms.common.api.internal.zabw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                ListenerHolder listenerHolder = this.zaa;
                ListenerHolder.Notifier notifier2 = notifier;
                ListenerHolder.ListenerKey listenerKey = listenerHolder.f29038b;
                if (listenerKey == null) {
                    notifier2.getClass();
                    return;
                }
                try {
                    notifier2.a(listenerKey.f29039a);
                } catch (RuntimeException e2) {
                    notifier2.getClass();
                    throw e2;
                }
            }
        });
    }
}
