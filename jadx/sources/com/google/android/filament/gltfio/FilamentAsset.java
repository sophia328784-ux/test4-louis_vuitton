package com.google.android.filament.gltfio;

/* JADX INFO: loaded from: classes2.dex */
public class FilamentAsset {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FilamentInstance f28630b;

    private static native void nGetEntities(long j2, int[] iArr);

    private static native int nGetEntityCount(long j2);

    private static native int nGetFirstEntityByName(long j2, String str);

    private static native long nGetInstance(long j2);

    private static native void nGetLightEntities(long j2, int[] iArr);

    private static native int nGetLightEntityCount(long j2);

    private static native int nGetResourceUriCount(long j2);

    private static native void nGetResourceUris(long j2, String[] strArr);

    private static native int nGetRoot(long j2);

    private static native int nPopRenderables(long j2, int[] iArr);

    private static native void nReleaseSourceData(long j2);

    public final int[] a() {
        int[] iArr = new int[nGetEntityCount(this.f28629a)];
        nGetEntities(this.f28629a, iArr);
        return iArr;
    }

    public final int b(String str) {
        return nGetFirstEntityByName(this.f28629a, str);
    }

    public final FilamentInstance c() {
        FilamentInstance filamentInstance = this.f28630b;
        if (filamentInstance != null) {
            return filamentInstance;
        }
        long jNGetInstance = nGetInstance(this.f28629a);
        FilamentInstance filamentInstance2 = new FilamentInstance();
        filamentInstance2.f28631a = jNGetInstance;
        filamentInstance2.f28632b = null;
        this.f28630b = filamentInstance2;
        return filamentInstance2;
    }

    public final int[] d() {
        int[] iArr = new int[nGetLightEntityCount(this.f28629a)];
        nGetLightEntities(this.f28629a, iArr);
        return iArr;
    }

    public final String[] e() {
        String[] strArr = new String[nGetResourceUriCount(this.f28629a)];
        nGetResourceUris(this.f28629a, strArr);
        return strArr;
    }

    public final int f() {
        return nGetRoot(this.f28629a);
    }

    public final int g(int[] iArr) {
        return nPopRenderables(this.f28629a, iArr);
    }

    public final void h() {
        nReleaseSourceData(this.f28629a);
    }
}
