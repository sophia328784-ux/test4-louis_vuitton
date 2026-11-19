package androidx.camera.featurecombinationquery;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import defpackage.az;
import defpackage.md;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class CameraDeviceSetupCompatFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraDeviceSetupCompatProvider f2680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraDeviceSetupCompatProvider f2681b;

    public CameraDeviceSetupCompatFactory(Context context) {
        String string;
        if (Build.VERSION.SDK_INT >= 35) {
            this.f2681b = new Camera2CameraDeviceSetupCompatProvider(context);
        }
        CameraDeviceSetupCompatProvider cameraDeviceSetupCompatProvider = null;
        try {
            ServiceInfo[] serviceInfoArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 132).services;
            if (serviceInfoArr != null) {
                String str = null;
                for (ServiceInfo serviceInfo : serviceInfoArr) {
                    Bundle bundle = serviceInfo.metaData;
                    if (bundle != null && (string = bundle.getString("androidx.camera.featurecombinationquery.PLAY_SERVICES_IMPL_PROVIDER_KEY")) != null) {
                        if (str != null) {
                            md.k("Multiple Play Services CameraDeviceSetupCompat implementations found in the manifest.");
                            throw null;
                        }
                        str = string;
                    }
                }
                if (str != null) {
                    try {
                        cameraDeviceSetupCompatProvider = (CameraDeviceSetupCompatProvider) Class.forName(str).getConstructor(Context.class).newInstance(context);
                    } catch (Exception e2) {
                        az.s("Failed to instantiate Play Services CameraDeviceSetupCompat implementation", e2);
                        throw null;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        this.f2680a = cameraDeviceSetupCompatProvider;
    }

    public final CameraDeviceSetupCompat a(String str) {
        ArrayList arrayList = new ArrayList();
        CameraDeviceSetupCompatProvider cameraDeviceSetupCompatProvider = this.f2680a;
        if (cameraDeviceSetupCompatProvider != null) {
            arrayList.add(cameraDeviceSetupCompatProvider.a(str));
        }
        CameraDeviceSetupCompatProvider cameraDeviceSetupCompatProvider2 = this.f2681b;
        if (cameraDeviceSetupCompatProvider2 != null) {
            try {
                arrayList.add(((Camera2CameraDeviceSetupCompatProvider) cameraDeviceSetupCompatProvider2).a(str));
            } catch (UnsupportedOperationException unused) {
            }
        }
        return new AggregatedCameraDeviceSetupCompat(arrayList);
    }
}
