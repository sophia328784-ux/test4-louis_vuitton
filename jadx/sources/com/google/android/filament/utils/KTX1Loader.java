package com.google.android.filament.utils;

import com.google.android.filament.Engine;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.Texture;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0016\u0017J0\u0010\n\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0082 ¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0082 ¢\u0006\u0004\b\u000f\u0010\u0010J(\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0082 ¢\u0006\u0004\b\u0012\u0010\u0013J \u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002H\u0082 ¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/google/android/filament/utils/KTX1Loader;", "", "", "nativeEngine", "Ljava/nio/Buffer;", "buffer", "", "remaining", "", "srgb", "nCreateKTXTexture", "(JLjava/nio/Buffer;IZ)J", "ktxTexture", "", "sphericalHarmonics", "nCreateIndirectLight", "(JJ[F)J", "outSphericalHarmonics", "nGetSphericalHarmonics", "(Ljava/nio/Buffer;I[F)Z", "nCreateSkybox", "(JJ)J", "Options", "IndirectLightBundle", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class KTX1Loader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KTX1Loader f28658a = new KTX1Loader();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/google/android/filament/utils/KTX1Loader$Options;", "", "<init>", "()V", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Options {
    }

    private final native long nCreateIndirectLight(long nativeEngine, long ktxTexture, float[] sphericalHarmonics);

    private final native long nCreateKTXTexture(long nativeEngine, Buffer buffer, int remaining, boolean srgb);

    private final native long nCreateSkybox(long nativeEngine, long ktxTexture);

    private final native boolean nGetSphericalHarmonics(Buffer buffer, int remaining, float[] outSphericalHarmonics);

    /* JADX WARN: Multi-variable type inference failed */
    public final IndirectLightBundle a(Engine engine, ByteBuffer byteBuffer, Options options) {
        engine.getClass();
        byteBuffer.getClass();
        long nativeObject = engine.getNativeObject();
        float[] fArr = new float[27];
        IndirectLight indirectLight = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        float[] fArr2 = nGetSphericalHarmonics(byteBuffer, byteBuffer.remaining(), fArr) ? fArr : null;
        if (fArr2 == null) {
            return new IndirectLightBundle(indirectLight, objArr2 == true ? 1 : 0, 3, objArr == true ? 1 : 0);
        }
        Texture texture = new Texture(nCreateKTXTexture(engine.getNativeObject(), byteBuffer, byteBuffer.remaining(), false));
        return new IndirectLightBundle(new IndirectLight(nCreateIndirectLight(nativeObject, texture.getNativeObject(), fArr2)), texture);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/android/filament/utils/KTX1Loader$IndirectLightBundle;", "", "Lcom/google/android/filament/IndirectLight;", "indirectLight", "Lcom/google/android/filament/Texture;", "cubemap", "<init>", "(Lcom/google/android/filament/IndirectLight;Lcom/google/android/filament/Texture;)V", "filament-utils-android_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class IndirectLightBundle {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Texture f28659a;

        public /* synthetic */ IndirectLightBundle(IndirectLight indirectLight, Texture texture, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : indirectLight, (i2 & 2) != 0 ? null : texture);
        }

        public IndirectLightBundle(IndirectLight indirectLight, Texture texture) {
            this.f28659a = texture;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public IndirectLightBundle() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }
}
