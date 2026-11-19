package com.google.android.filament.gltfio;

import com.google.android.filament.Engine;
import com.google.android.filament.VertexBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class UbershaderProvider implements MaterialProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28636a;

    static {
        VertexBuffer.VertexAttribute.values();
    }

    public UbershaderProvider(Engine engine) {
        this.f28636a = nCreateUbershaderProvider(engine.getNativeObject());
    }

    private static native long nCreateUbershaderProvider(long j2);

    private static native void nDestroyMaterials(long j2);

    private static native void nDestroyUbershaderProvider(long j2);

    public final void a() {
        nDestroyUbershaderProvider(this.f28636a);
        this.f28636a = 0L;
    }

    public final void b() {
        nDestroyMaterials(this.f28636a);
    }

    public long getNativeObject() {
        return this.f28636a;
    }
}
