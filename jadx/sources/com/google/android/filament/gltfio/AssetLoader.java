package com.google.android.filament.gltfio;

import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import defpackage.md;
import java.nio.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public class AssetLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaterialProvider f28628b;

    public AssetLoader(Engine engine, MaterialProvider materialProvider, EntityManager entityManager) {
        long jNCreateAssetLoader = nCreateAssetLoader(engine.getNativeObject(), materialProvider, entityManager.getNativeObject());
        this.f28627a = jNCreateAssetLoader;
        if (jNCreateAssetLoader != 0) {
            this.f28628b = materialProvider;
        } else {
            md.k("Unable to parse glTF asset.");
            throw null;
        }
    }

    private static native long nCreateAsset(long j2, Buffer buffer, int i2);

    private static native long nCreateAssetLoader(long j2, Object obj, long j3);

    private static native void nDestroyAsset(long j2, long j3);

    private static native void nDestroyAssetLoader(long j2);

    public final FilamentAsset a(Buffer buffer) {
        long jNCreateAsset = nCreateAsset(this.f28627a, buffer, buffer.remaining());
        if (jNCreateAsset == 0) {
            return null;
        }
        FilamentAsset filamentAsset = new FilamentAsset();
        filamentAsset.f28629a = jNCreateAsset;
        return filamentAsset;
    }

    public final void b() {
        nDestroyAssetLoader(this.f28627a);
        this.f28627a = 0L;
    }

    public final void c(FilamentAsset filamentAsset) {
        nDestroyAsset(this.f28627a, filamentAsset.f28629a);
        filamentAsset.f28630b = null;
        filamentAsset.f28629a = 0L;
    }
}
