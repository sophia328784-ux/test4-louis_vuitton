package androidx.camera.core.impl;

import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CameraRepository implements InternalCameraPresenceListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2250a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f2251b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f2252c = new HashSet();
    public ListenableFuture d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CallbackToFutureAdapter.Completer f2253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CameraFactory f2254f;

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public final void d(List list) throws CameraUpdateException {
        HashSet<String> hashSet;
        HashMap map = new HashMap();
        synchronized (this.f2250a) {
            hashSet = new HashSet(list);
            hashSet.removeAll(this.f2251b.keySet());
        }
        try {
            for (String str : hashSet) {
                map.put(str, this.f2254f.b(str));
            }
            synchronized (this.f2250a) {
                try {
                    HashSet hashSet2 = new HashSet(this.f2251b.keySet());
                    hashSet2.removeAll(list);
                    ArrayList<CameraInternal> arrayList = new ArrayList();
                    Iterator it = hashSet2.iterator();
                    while (it.hasNext()) {
                        arrayList.add((CameraInternal) this.f2251b.get((String) it.next()));
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (String str2 : (ArrayList) list) {
                        if (this.f2251b.containsKey(str2)) {
                            linkedHashMap.put(str2, (CameraInternal) this.f2251b.get(str2));
                        } else {
                            linkedHashMap.put(str2, (CameraInternal) map.get(str2));
                        }
                    }
                    this.f2251b.clear();
                    this.f2251b.putAll(linkedHashMap);
                    for (CameraInternal cameraInternal : arrayList) {
                        if (cameraInternal != null) {
                            cameraInternal.o();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (CameraUnavailableException e2) {
            throw new CameraUpdateException("Failed to create CameraInternal", e2);
        }
    }

    public final CameraInternal f(String str) {
        CameraInternal cameraInternal;
        synchronized (this.f2250a) {
            try {
                cameraInternal = (CameraInternal) this.f2251b.get(str);
                if (cameraInternal == null) {
                    throw new IllegalArgumentException("Invalid camera: " + str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cameraInternal;
    }

    public final LinkedHashSet g() {
        LinkedHashSet linkedHashSet;
        synchronized (this.f2250a) {
            linkedHashSet = new LinkedHashSet(this.f2251b.values());
        }
        return linkedHashSet;
    }

    public final void h(CameraFactory cameraFactory) {
        this.f2254f = cameraFactory;
        synchronized (this.f2250a) {
            try {
                for (String str : cameraFactory.d()) {
                    Logger.c(3, "CameraRepository");
                    CameraInternal cameraInternal = (CameraInternal) this.f2251b.put(str, cameraFactory.b(str));
                    if (cameraInternal != null) {
                        cameraInternal.release();
                    }
                }
            } catch (CameraUnavailableException e2) {
                throw new InitializationException(e2);
            }
        }
    }
}
