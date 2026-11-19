package com.google.android.filament.gltfio;

import com.google.android.filament.Engine;
import java.nio.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f28634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f28635c;
    public final long d;

    public ResourceLoader(Engine engine) {
        long nativeObject = engine.getNativeObject();
        long jNCreateResourceLoader = nCreateResourceLoader(nativeObject, false);
        this.f28633a = jNCreateResourceLoader;
        long jNCreateStbProvider = nCreateStbProvider(nativeObject);
        this.f28634b = jNCreateStbProvider;
        long jNCreateKtx2Provider = nCreateKtx2Provider(nativeObject);
        this.f28635c = jNCreateKtx2Provider;
        nAddTextureProvider(jNCreateResourceLoader, "image/jpeg", jNCreateStbProvider);
        nAddTextureProvider(jNCreateResourceLoader, "image/png", jNCreateStbProvider);
        nAddTextureProvider(jNCreateResourceLoader, "image/ktx2", jNCreateKtx2Provider);
        if (!nIsWebpSupported()) {
            this.d = 0L;
            return;
        }
        long jNCreateWebpProvider = nCreateWebpProvider(nativeObject);
        this.d = jNCreateWebpProvider;
        nAddTextureProvider(jNCreateResourceLoader, "image/webp", jNCreateWebpProvider);
    }

    private static native void nAddResourceData(long j2, String str, Buffer buffer, int i2);

    private static native void nAddTextureProvider(long j2, String str, long j3);

    private static native boolean nAsyncBeginLoad(long j2, long j3);

    private static native void nAsyncCancelLoad(long j2);

    private static native void nAsyncUpdateLoad(long j2);

    private static native long nCreateKtx2Provider(long j2);

    private static native long nCreateResourceLoader(long j2, boolean z);

    private static native long nCreateStbProvider(long j2);

    private static native long nCreateWebpProvider(long j2);

    private static native void nDestroyResourceLoader(long j2);

    private static native void nDestroyTextureProvider(long j2);

    private static native void nEvictResourceData(long j2);

    private static native boolean nIsWebpSupported();

    private static native void nLoadResources(long j2, long j3);

    public final void a(String str, Buffer buffer) {
        nAddResourceData(this.f28633a, str, buffer, buffer.remaining());
    }

    public final void b(FilamentAsset filamentAsset) {
        nAsyncBeginLoad(this.f28633a, filamentAsset.f28629a);
    }

    public final void c() {
        nAsyncCancelLoad(this.f28633a);
    }

    public final void d() {
        nAsyncUpdateLoad(this.f28633a);
    }

    public final void e() {
        nDestroyResourceLoader(this.f28633a);
        nDestroyTextureProvider(this.f28634b);
        nDestroyTextureProvider(this.f28635c);
        if (nIsWebpSupported()) {
            nDestroyTextureProvider(this.d);
        }
    }

    public final void f() {
        nEvictResourceData(this.f28633a);
    }

    public final void g(FilamentAsset filamentAsset) {
        nLoadResources(this.f28633a, filamentAsset.f28629a);
    }

    public ResourceLoader(Engine engine, boolean z) {
        long nativeObject = engine.getNativeObject();
        long jNCreateResourceLoader = nCreateResourceLoader(nativeObject, z);
        this.f28633a = jNCreateResourceLoader;
        long jNCreateStbProvider = nCreateStbProvider(nativeObject);
        this.f28634b = jNCreateStbProvider;
        long jNCreateKtx2Provider = nCreateKtx2Provider(nativeObject);
        this.f28635c = jNCreateKtx2Provider;
        nAddTextureProvider(jNCreateResourceLoader, "image/jpeg", jNCreateStbProvider);
        nAddTextureProvider(jNCreateResourceLoader, "image/png", jNCreateStbProvider);
        nAddTextureProvider(jNCreateResourceLoader, "image/ktx2", jNCreateKtx2Provider);
        if (nIsWebpSupported()) {
            long jNCreateWebpProvider = nCreateWebpProvider(nativeObject);
            this.d = jNCreateWebpProvider;
            nAddTextureProvider(jNCreateResourceLoader, "image/webp", jNCreateWebpProvider);
            return;
        }
        this.d = 0L;
    }
}
