package androidx.camera.camera2.internal;

import android.content.Context;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.internal.StreamSpecsCalculator;
import com.linkplay.medialib.ContentTree;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraFactory implements CameraFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Camera2CameraCoordinator f1430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CameraThreadConfig f1431c;
    public final CameraStateRegistry d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CameraManagerCompat f1432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DisplayInfoManager f1433f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f1434h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StreamSpecsCalculator f1435i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CameraXConfig f1436j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Camera2PresenceSource f1437k;
    public final CameraSelector l;
    public final Object m;
    public ArrayList n;

    public Camera2CameraFactory(Context context, CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j2, CameraXConfig cameraXConfig, StreamSpecsCalculator streamSpecsCalculator) throws InitializationException {
        this.f1434h = new HashMap();
        this.m = new Object();
        this.n = new ArrayList();
        this.f1429a = context;
        this.f1431c = cameraThreadConfig;
        cameraThreadConfig.getClass();
        CameraManagerCompat cameraManagerCompatA = CameraManagerCompat.a(context);
        this.f1432e = cameraManagerCompatA;
        this.f1433f = DisplayInfoManager.b(context);
        Camera2CameraCoordinator camera2CameraCoordinator = new Camera2CameraCoordinator(cameraManagerCompatA);
        this.f1430b = camera2CameraCoordinator;
        CameraStateRegistry cameraStateRegistry = new CameraStateRegistry(camera2CameraCoordinator, 1);
        this.d = cameraStateRegistry;
        synchronized (camera2CameraCoordinator.f1794a) {
            camera2CameraCoordinator.f1796c.add(cameraStateRegistry);
        }
        this.g = j2;
        this.f1435i = streamSpecsCalculator;
        this.f1436j = cameraXConfig;
        this.l = cameraSelector;
        try {
            List listAsList = Arrays.asList(cameraManagerCompatA.f1704a.b());
            this.f1437k = new Camera2PresenceSource(listAsList, cameraManagerCompatA, cameraThreadConfig.b());
            e(listAsList);
        } catch (CameraAccessExceptionCompat e2) {
            throw new InitializationException(CameraUnavailableExceptionHelper.a(e2));
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public final CameraManagerCompat a() {
        return this.f1432e;
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public final CameraInternal b(String str) {
        synchronized (this.m) {
            if (!this.n.contains(str)) {
                throw new IllegalArgumentException("The given camera id is not on the available camera id list.");
            }
        }
        return new Camera2CameraImpl(this.f1429a, this.f1432e, str, g(str), this.f1430b, this.d, this.f1431c.b(), this.f1431c.c(), this.f1433f, this.g, this.f1436j);
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public final Camera2PresenceSource c() {
        return this.f1437k;
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public final LinkedHashSet d() {
        LinkedHashSet linkedHashSet;
        synchronized (this.m) {
            linkedHashSet = new LinkedHashSet(this.n);
        }
        return linkedHashSet;
    }

    @Override // androidx.camera.core.impl.CameraPresenceMonitor
    public final void e(List list) throws InitializationException {
        String strA;
        ArrayList<String> arrayList = new ArrayList(list);
        CameraSelector cameraSelector = this.l;
        try {
            ArrayList<String> arrayList2 = new ArrayList();
            if (cameraSelector == null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add((String) it.next());
                }
            } else {
                try {
                    strA = CameraSelectionOptimizer.a(this.f1432e, cameraSelector.b(), arrayList);
                } catch (IllegalStateException unused) {
                    strA = null;
                }
                ArrayList arrayList3 = new ArrayList();
                for (String str : arrayList) {
                    if (!str.equals(strA)) {
                        arrayList3.add(g(str));
                    }
                }
                Iterator it2 = cameraSelector.a(arrayList3).iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((CameraInfoInternal) ((CameraInfo) it2.next())).b());
                }
            }
            ArrayList arrayList4 = new ArrayList();
            for (String str2 : arrayList2) {
                if (str2.equals(ContentTree.ROOT_ID) || str2.equals("1")) {
                    arrayList4.add(str2);
                } else if (CameraIdUtil.a(str2, this.f1432e)) {
                    arrayList4.add(str2);
                } else {
                    Logger.c(3, "Camera2CameraFactory");
                }
            }
            synchronized (this.m) {
                try {
                    if (this.n.equals(arrayList4)) {
                        return;
                    }
                    Objects.toString(this.n);
                    arrayList4.toString();
                    Logger.c(3, "Camera2CameraFactory");
                    this.n = arrayList4;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (CameraAccessExceptionCompat e2) {
            throw new InitializationException(CameraUnavailableExceptionHelper.a(e2));
        } catch (CameraUnavailableException e3) {
            throw new InitializationException(e3);
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public final Camera2CameraCoordinator f() {
        return this.f1430b;
    }

    public final Camera2CameraInfoImpl g(String str) throws CameraUnavailableException {
        HashMap map = this.f1434h;
        try {
            Camera2CameraInfoImpl camera2CameraInfoImpl = (Camera2CameraInfoImpl) map.get(str);
            if (camera2CameraInfoImpl != null) {
                return camera2CameraInfoImpl;
            }
            Camera2CameraInfoImpl camera2CameraInfoImpl2 = new Camera2CameraInfoImpl(str, this.f1432e, this.f1435i);
            map.put(str, camera2CameraInfoImpl2);
            return camera2CameraInfoImpl2;
        } catch (CameraAccessExceptionCompat e2) {
            throw CameraUnavailableExceptionHelper.a(e2);
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory
    public final void shutdown() {
        Camera2CameraCoordinator camera2CameraCoordinator = this.f1430b;
        synchronized (camera2CameraCoordinator.f1794a) {
            camera2CameraCoordinator.f1796c.clear();
            camera2CameraCoordinator.d.clear();
            camera2CameraCoordinator.f1798f.clear();
            camera2CameraCoordinator.f1797e.clear();
            camera2CameraCoordinator.g = 0;
        }
        this.f1437k.f();
    }

    public Camera2CameraFactory(Context context, CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j2) throws InitializationException {
        this(context, cameraThreadConfig, cameraSelector, j2, null, StreamSpecsCalculator.f2488a);
    }
}
