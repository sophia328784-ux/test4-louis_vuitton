package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;", "", "DefaultConfiguration", "PDPConfiguration", "BlossomConfiguration", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$BlossomConfiguration;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$DefaultConfiguration;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$PDPConfiguration;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class Scene3DConfiguration {
    public final float A;
    public final boolean B;
    public final boolean C;
    public final float D;
    public final float E;
    public final float F;
    public final float G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f58526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f58527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f58528c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f58529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f58530f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f58531h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f58532i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f58533j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f58534k;
    public final float l;
    public final float m;
    public final float n;
    public final float o;
    public final float p;
    public final float q;
    public final float r;
    public final float s;
    public final float t;
    public final float u;
    public final float v;
    public final double w;
    public final double x;
    public final float y;
    public final float z;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$BlossomConfiguration;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static class BlossomConfiguration extends Scene3DConfiguration {
        public BlossomConfiguration() {
            super(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7000.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.001E8f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -4.0f, 10.0f, 22.0f, 11.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 80000.0f, 0.7f, 0.5f, -0.2f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.1f, 1.1f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.0d, 0.0d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 80.0f, 0.0d, false, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -2013527569, 16449231, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$DefaultConfiguration;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class DefaultConfiguration extends Scene3DConfiguration {
        public DefaultConfiguration() {
            super(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.0d, 0.0d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.0d, false, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1, 16777215, null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$PDPConfiguration;", "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class PDPConfiguration extends Scene3DConfiguration {
        public PDPConfiguration() {
            super(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 24000.0f, 60000.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.3E8f, 10.0f, 10.0f, -20.0f, -20.0f, -15.0f, 10.0f, 100.0f, 100.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.96f, 1.05f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.4d, 0.0d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.0d, false, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -261681, 16510415, null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Scene3DConfiguration(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25, float f26, float f27, float f28, float f29, float f30, float f31, float f32, float f33, float f34, float f35, float f36, float f37, float f38, float f39, float f40, float f41, float f42, float f43, float f44, float f45, double d, double d2, float f46, float f47, float f48, double d3, boolean z, boolean z2, float f49, float f50, float f51, float f52, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        float f53 = (i2 & 1) != 0 ? 1.0f : f2;
        float f54 = (i2 & 2) != 0 ? 0.24f : f3;
        float f55 = (i2 & 4) != 0 ? 0.83f : f4;
        float f56 = (i2 & 8) != 0 ? 1.0f : f5;
        float f57 = (i2 & 16) != 0 ? 6000.0f : f6;
        float f58 = (i2 & 32) != 0 ? 500000.0f : f7;
        float f59 = (i2 & 64) != 0 ? -1.0f : f8;
        float f60 = (i2 & 128) != 0 ? -1.0f : f9;
        float f61 = (i2 & 256) != 0 ? 1.0f : f10;
        float f62 = (i2 & 512) != 0 ? 1.75124992E8f : f11;
        float f63 = (i2 & 1024) != 0 ? 1.0f : f12;
        float f64 = (i2 & 2048) != 0 ? 1.0f : f13;
        float f65 = (i2 & 4096) != 0 ? -1.0f : f14;
        float f66 = (i2 & 8192) != 0 ? -20.0f : f15;
        float f67 = f53;
        float f68 = (i2 & 16384) == 0 ? f16 : -20.0f;
        int i4 = i2 & 32768;
        float f69 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this(f67, f54, f55, f56, f57, f58, f59, f60, f61, f62, f63, f64, f65, f66, f68, i4 != 0 ? 0.0f : f17, (i2 & 65536) != 0 ? 10.0f : f18, (i2 & 131072) != 0 ? 100.0f : f19, (i2 & 262144) != 0 ? 5.9912499E8f : f20, (i2 & 524288) != 0 ? 0.0f : f21, (i2 & 1048576) != 0 ? -1.0f : f22, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? 0.0f : f23, (i2 & 4194304) != 0 ? 0.0f : f24, (i2 & 8388608) != 0 ? 30.0f : f25, (i2 & 16777216) != 0 ? 50.0f : f26, (i2 & 33554432) != 0 ? 100.0f : f27, (i2 & 67108864) != 0 ? 100.0f : f28, (i2 & 134217728) != 0 ? 3.99124992E8f : f29, (i2 & 268435456) != 0 ? 0.0f : f30, (i2 & PKIFailureInfo.duplicateCertReq) != 0 ? 1.0f : f31, (i2 & 1073741824) != 0 ? 0.0f : f32, (i2 & Integer.MIN_VALUE) != 0 ? 0.0f : f33, (i3 & 1) != 0 ? -30.0f : f34, (i3 & 2) != 0 ? 50.0f : f35, (i3 & 4) != 0 ? 100.0f : f36, (i3 & 8) != 0 ? 100.0f : f37, (i3 & 16) != 0 ? 1.0f : f38, (i3 & 32) != 0 ? 1.0f : f39, (i3 & 64) != 0 ? 0.0f : f40, (i3 & 128) != 0 ? 0.0f : f41, (i3 & 256) != 0 ? 0.0f : f42, (i3 & 512) != 0 ? 16.0f : f43, (i3 & 1024) != 0 ? 0.008f : f44, (i3 & 2048) == 0 ? f45 : 100.0f, (i3 & 4096) != 0 ? 1.0d : d, (i3 & 8192) != 0 ? 0.0d : d2, (i3 & 16384) != 0 ? 0.0f : f46, (i3 & 32768) == 0 ? f47 : f69, (i3 & 65536) != 0 ? 75.0f : f48, (i3 & 131072) != 0 ? 0.0d : d3, (i3 & 262144) != 0 ? true : z, (i3 & 524288) == 0 ? z2 : true, (i3 & 1048576) != 0 ? 1000.0f : f49, (i3 & PKIFailureInfo.badSenderNonce) != 0 ? 10.0f : f50, (i3 & 4194304) != 0 ? 0.4f : f51, (i3 & 8388608) != 0 ? 0.1f : f52, null);
    }

    public Scene3DConfiguration(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25, float f26, float f27, float f28, float f29, float f30, float f31, float f32, float f33, float f34, float f35, float f36, float f37, float f38, float f39, float f40, float f41, float f42, float f43, float f44, float f45, double d, double d2, float f46, float f47, float f48, double d3, boolean z, boolean z2, float f49, float f50, float f51, float f52, DefaultConstructorMarker defaultConstructorMarker) {
        this.f58526a = f6;
        this.f58527b = f11;
        this.f58528c = f12;
        this.d = f13;
        this.f58529e = f14;
        this.f58530f = f15;
        this.g = f16;
        this.f58531h = f17;
        this.f58532i = f18;
        this.f58533j = f19;
        this.f58534k = f29;
        this.l = f30;
        this.m = f31;
        this.n = f32;
        this.o = f38;
        this.p = f39;
        this.q = f40;
        this.r = f41;
        this.s = f42;
        this.t = f43;
        this.u = f44;
        this.v = f45;
        this.w = d;
        this.x = d2;
        this.y = f46;
        this.z = f47;
        this.A = f48;
        this.B = z;
        this.C = z2;
        this.D = f49;
        this.E = f50;
        this.F = f51;
        this.G = f52;
    }
}
