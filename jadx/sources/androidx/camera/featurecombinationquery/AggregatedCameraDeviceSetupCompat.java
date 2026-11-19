package androidx.camera.featurecombinationquery;

import android.hardware.camera2.params.SessionConfiguration;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class AggregatedCameraDeviceSetupCompat implements CameraDeviceSetupCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2676a;

    public AggregatedCameraDeviceSetupCompat(ArrayList arrayList) {
        this.f2676a = arrayList;
    }

    @Override // androidx.camera.featurecombinationquery.CameraDeviceSetupCompat
    public final CameraDeviceSetupCompat.SupportQueryResult a(SessionConfiguration sessionConfiguration) {
        Iterator it = this.f2676a.iterator();
        while (it.hasNext()) {
            CameraDeviceSetupCompat.SupportQueryResult supportQueryResultA = ((CameraDeviceSetupCompat) it.next()).a(sessionConfiguration);
            if (supportQueryResultA.f2679a != 0) {
                return supportQueryResultA;
            }
        }
        return new CameraDeviceSetupCompat.SupportQueryResult(0, 0, 0L);
    }
}
