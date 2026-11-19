package androidx.camera.core.impl;

import android.util.Range;
import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.Logger;
import androidx.camera.core.ViewPort;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.internal.CalculatedUseCaseInfo;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import defpackage.md;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/camera/core/impl/UseCaseAdditionSimulator;", "", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class UseCaseAdditionSimulator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static CameraUseCaseAdapterProvider f2365a;

    public static final void a(CameraInfoInternal cameraInfoInternal, LegacySessionConfig legacySessionConfig, ResolvedFeatureGroup resolvedFeatureGroup) {
        CalculatedUseCaseInfo calculatedUseCaseInfoS;
        cameraInfoInternal.getClass();
        CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider = f2365a;
        if (cameraUseCaseAdapterProvider == null) {
            md.k("mCameraUseCaseAdapterProvider must be initialized first!");
            return;
        }
        String strB = cameraInfoInternal.b();
        strB.getClass();
        CameraUseCaseAdapter cameraUseCaseAdapterA = cameraUseCaseAdapterProvider.a(strB);
        ViewPort viewPort = legacySessionConfig.f1962a;
        synchronized (cameraUseCaseAdapterA.m) {
            cameraUseCaseAdapterA.f2477i = viewPort;
        }
        List list = legacySessionConfig.f1963b;
        synchronized (cameraUseCaseAdapterA.m) {
            cameraUseCaseAdapterA.f2478j = list;
        }
        synchronized (cameraUseCaseAdapterA.m) {
        }
        Range range = legacySessionConfig.f1964c;
        synchronized (cameraUseCaseAdapterA.m) {
            cameraUseCaseAdapterA.f2479k = range;
        }
        List list2 = legacySessionConfig.f1966f;
        Objects.toString(list2);
        Objects.toString(resolvedFeatureGroup);
        Logger.c(3, "CameraUseCaseAdapter");
        synchronized (cameraUseCaseAdapterA.m) {
            AdapterCameraInternal adapterCameraInternal = cameraUseCaseAdapterA.f2472b;
            CameraConfig cameraConfig = cameraUseCaseAdapterA.l;
            adapterCameraInternal.n(cameraConfig);
            AdapterCameraInternal adapterCameraInternal2 = cameraUseCaseAdapterA.f2473c;
            if (adapterCameraInternal2 != null) {
                adapterCameraInternal2.n(cameraConfig);
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet(cameraUseCaseAdapterA.f2475f);
            linkedHashSet.addAll(list2);
            HashMap mapM = CameraUseCaseAdapter.m(linkedHashSet, resolvedFeatureGroup);
            try {
                try {
                    calculatedUseCaseInfoS = cameraUseCaseAdapterA.s(linkedHashSet, cameraUseCaseAdapterA.f2473c != null);
                    CameraUseCaseAdapter.E(mapM);
                } catch (IllegalArgumentException e2) {
                    throw new CameraUseCaseAdapter.CameraException(e2);
                }
            } catch (Throwable th) {
                CameraUseCaseAdapter.E(mapM);
                throw th;
            }
        }
        calculatedUseCaseInfoS.getClass();
    }
}
