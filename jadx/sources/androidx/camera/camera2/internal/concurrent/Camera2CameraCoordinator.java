package androidx.camera.camera2.internal.concurrent;

import androidx.camera.camera2.internal.Camera2PhysicalCameraInfoImpl;
import androidx.camera.camera2.internal.CameraIdUtil;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraUpdateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Camera2CameraCoordinator implements CameraCoordinator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraManagerCompat f1795b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1794a = new Object();
    public HashMap d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HashSet f1797e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f1798f = new ArrayList();
    public int g = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1796c = new ArrayList();

    public Camera2CameraCoordinator(CameraManagerCompat cameraManagerCompat) {
        this.f1795b = cameraManagerCompat;
        try {
            d(Arrays.asList(cameraManagerCompat.f1704a.b()));
        } catch (CameraAccessExceptionCompat | CameraUpdateException unused) {
            Logger.b("Camera2CameraCoordinator");
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public final String b(String str) {
        synchronized (this.f1794a) {
            try {
                if (!this.d.containsKey(str)) {
                    return null;
                }
                List<String> list = (List) this.d.get(str);
                if (list == null) {
                    return null;
                }
                for (String str2 : list) {
                    Iterator it = this.f1798f.iterator();
                    while (it.hasNext()) {
                        Camera2CameraInfo camera2CameraInfoA = Camera2CameraInfo.a((CameraInfo) it.next());
                        Camera2PhysicalCameraInfoImpl camera2PhysicalCameraInfoImpl = camera2CameraInfoA.f1854b;
                        if (str2.equals(camera2PhysicalCameraInfoImpl != null ? camera2PhysicalCameraInfoImpl.f1523a : camera2CameraInfoA.f1853a.f1470a)) {
                            return str2;
                        }
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public final int c() {
        int i2;
        synchronized (this.f1794a) {
            i2 = this.g;
        }
        return i2;
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public final void d(List list) throws CameraUpdateException {
        HashMap map = new HashMap();
        HashSet hashSet = new HashSet();
        try {
            for (Set set : this.f1795b.f1704a.a()) {
                if (list.containsAll(set)) {
                    ArrayList arrayList = new ArrayList(set);
                    if (arrayList.size() >= 2) {
                        String str = (String) arrayList.get(0);
                        String str2 = (String) arrayList.get(1);
                        try {
                            if (CameraIdUtil.a(str, this.f1795b) && CameraIdUtil.a(str2, this.f1795b)) {
                                hashSet.add(new HashSet(Arrays.asList(str, str2)));
                                if (!map.containsKey(str)) {
                                    map.put(str, new ArrayList());
                                }
                                ((List) map.get(str)).add(str2);
                                if (!map.containsKey(str2)) {
                                    map.put(str2, new ArrayList());
                                }
                                ((List) map.get(str2)).add(str);
                            }
                        } catch (InitializationException unused) {
                            Logger.c(3, "Camera2CameraCoordinator");
                        }
                    }
                }
            }
            synchronized (this.f1794a) {
                this.d = map;
                this.f1797e = hashSet;
                Objects.toString(map);
                Logger.c(3, "Camera2CameraCoordinator");
            }
        } catch (CameraAccessExceptionCompat e2) {
            throw new CameraUpdateException("Failed to retrieve concurrent camera id info.", e2);
        }
    }
}
