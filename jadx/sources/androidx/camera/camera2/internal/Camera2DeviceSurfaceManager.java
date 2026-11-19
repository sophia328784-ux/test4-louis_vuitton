package androidx.camera.camera2.internal;

import android.content.Context;
import android.media.CamcorderProfile;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.impl.FeatureCombinationQueryImpl;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.utils.MainThreadAsyncHandler;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2DeviceSurfaceManager implements CameraDeviceSurfaceManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f1517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnonymousClass1 f1518c;
    public final CameraManagerCompat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f1519e;

    /* JADX INFO: renamed from: androidx.camera.camera2.internal.Camera2DeviceSurfaceManager$1, reason: invalid class name */
    public class AnonymousClass1 implements CamcorderProfileHelper {
        @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
        public final CamcorderProfile a(int i2, int i3) {
            return CamcorderProfile.get(i2, i3);
        }

        @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
        public final boolean b(int i2, int i3) {
            return CamcorderProfile.hasProfile(i2, i3);
        }
    }

    public Camera2DeviceSurfaceManager(Context context, Object obj, Set<String> set) throws CameraUnavailableException {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.f1516a = new Object();
        this.f1517b = new HashMap();
        this.f1518c = anonymousClass1;
        this.f1519e = context;
        if (obj instanceof CameraManagerCompat) {
            this.d = (CameraManagerCompat) obj;
        } else {
            MainThreadAsyncHandler.a();
            this.d = CameraManagerCompat.a(context);
        }
        try {
            d(new ArrayList(set));
        } catch (CameraUpdateException e2) {
            if (!(e2.getCause() instanceof CameraUnavailableException)) {
                throw new CameraUnavailableException(3, e2);
            }
            throw ((CameraUnavailableException) e2.getCause());
        }
    }

    @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager
    public final SurfaceConfig a(int i2, String str, int i3, Size size, StreamUseCase streamUseCase) {
        SupportedSurfaceCombination supportedSurfaceCombination = (SupportedSurfaceCombination) this.f1517b.get(str);
        Preconditions.b(supportedSurfaceCombination != null, "No such camera id in supported combination list: " + str);
        SurfaceSizeDefinition surfaceSizeDefinitionL = supportedSurfaceCombination.l(i3);
        SurfaceConfig.ConfigSource configSource = SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
        SurfaceConfig.f2350e.getClass();
        return SurfaceConfig.Companion.b(i3, size, surfaceSizeDefinitionL, i2, configSource, streamUseCase);
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public final void d(List list) throws CameraUpdateException {
        HashSet<String> hashSet;
        HashMap map = new HashMap();
        synchronized (this.f1516a) {
            hashSet = new HashSet(list);
            hashSet.removeAll(this.f1517b.keySet());
        }
        try {
            for (String str : hashSet) {
                map.put(str, f(str));
            }
            synchronized (this.f1516a) {
                try {
                    HashMap map2 = new HashMap();
                    for (String str2 : (ArrayList) list) {
                        if (this.f1517b.containsKey(str2)) {
                            map2.put(str2, (SupportedSurfaceCombination) this.f1517b.get(str2));
                        } else {
                            map2.put(str2, (SupportedSurfaceCombination) map.get(str2));
                        }
                    }
                    this.f1517b.clear();
                    this.f1517b.putAll(map2);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (CameraUnavailableException | RuntimeException e2) {
            throw new CameraUpdateException("Failed to create SupportedSurfaceCombination", e2);
        }
    }

    @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager
    public final SurfaceStreamSpecQueryResult e(int i2, String str, ArrayList arrayList, LinkedHashMap linkedHashMap, boolean z, boolean z2, boolean z3) {
        Preconditions.b(!linkedHashMap.isEmpty(), "No new use cases to be bound.");
        SupportedSurfaceCombination supportedSurfaceCombination = (SupportedSurfaceCombination) this.f1517b.get(str);
        Preconditions.b(supportedSurfaceCombination != null, "No such camera id in supported combination list: " + str);
        return supportedSurfaceCombination.j(i2, arrayList, linkedHashMap, z, z2, z3);
    }

    public final SupportedSurfaceCombination f(String str) {
        return new SupportedSurfaceCombination(this.f1519e, str, this.d, this.f1518c, Build.VERSION.SDK_INT >= 35 ? new FeatureCombinationQueryImpl(this.f1519e, str, this.d) : FeatureCombinationQuery.f2022a);
    }
}
