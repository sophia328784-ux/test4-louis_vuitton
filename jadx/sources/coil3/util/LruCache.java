package coil3.util;

import defpackage.md;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/util/LruCache;", "", "K", "V", "", "maxSize", "<init>", "(J)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class LruCache<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f21728a = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f21729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f21730c;

    public LruCache(long j2) {
        this.f21729b = j2;
        if (j2 > 0) {
            return;
        }
        md.n("maxSize <= 0");
        throw null;
    }

    public void a(Object obj, Object obj2, Object obj3) {
    }

    public final long b() {
        if (this.f21730c == -1) {
            Iterator<T> it = this.f21728a.entrySet().iterator();
            long jC = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                jC += c(entry.getKey(), entry.getValue());
            }
            this.f21730c = jC;
        }
        return this.f21730c;
    }

    public final long c(Object obj, Object obj2) throws Exception {
        try {
            long jD = d(obj, obj2);
            if (jD >= 0) {
                return jD;
            }
            throw new IllegalStateException(("sizeOf(" + obj + ", " + obj2 + ") returned a negative value: " + jD).toString());
        } catch (Exception e2) {
            this.f21730c = -1L;
            throw e2;
        }
    }

    public long d(Object obj, Object obj2) {
        return 1L;
    }

    public final void e(long j2) {
        while (b() > j2) {
            LinkedHashMap linkedHashMap = this.f21728a;
            if (linkedHashMap.isEmpty()) {
                if (b() == 0) {
                    return;
                }
                md.k("sizeOf() is returning inconsistent values");
                return;
            } else {
                Map.Entry entry = (Map.Entry) CollectionsKt.A(linkedHashMap.entrySet());
                Object key = entry.getKey();
                Object value = entry.getValue();
                linkedHashMap.remove(key);
                this.f21730c = b() - c(key, value);
                a(key, value, null);
            }
        }
    }
}
