package i;

import b.c;
import com.android.wiimu.model.WiimuPendingSlave;
import com.linkplay.log.LinkplayLog;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f69820c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LinkedHashMap f69821a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReentrantLock f69822b = new ReentrantLock();

    public final void a(c cVar) {
        this.f69822b.lock();
        try {
            LinkplayLog.i("UPNP-SEARCH", "-> add into upnpDevices  " + cVar.f20678e.f20683c + ", uuid-> " + cVar.f20676b);
            if (this.f69821a == null) {
                this.f69821a = new LinkedHashMap();
            }
            String str = cVar.f20676b;
            if (!this.f69821a.containsKey(str)) {
                this.f69821a.put(str, cVar);
            }
        } finally {
            e();
        }
    }

    public final c b(String str) {
        LinkedHashMap linkedHashMap = this.f69821a;
        if (linkedHashMap == null || !linkedHashMap.containsKey(str)) {
            return null;
        }
        this.f69822b.lock();
        c cVar = (c) this.f69821a.get(str);
        e();
        return cVar;
    }

    public final ArrayList c() {
        ArrayList arrayList = new ArrayList();
        if (this.f69821a == null) {
            return arrayList;
        }
        this.f69822b.lock();
        for (c cVar : this.f69821a.values()) {
            if (cVar.f20677c.equals(WiimuPendingSlave.Master)) {
                arrayList.add(cVar);
            }
        }
        e();
        return arrayList;
    }

    public final void d(String str) {
        this.f69822b.lock();
        try {
            LinkplayLog.i("UPNP-SEARCH", "-> remove DeviceItemByuuid  " + str);
            if (this.f69821a.containsKey(str)) {
                this.f69821a.remove(str);
            }
        } finally {
            e();
        }
    }

    public final void e() {
        this.f69822b.unlock();
    }
}
