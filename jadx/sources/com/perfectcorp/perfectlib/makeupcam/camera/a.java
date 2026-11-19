package com.perfectcorp.perfectlib.makeupcam.camera;

import com.cyberlink.clgpuimage.util.TextureAlignmentUtil;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.ymk.engine.MutableInteger;
import defpackage.n00;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f40845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f40846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f40847c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f40848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ByteBuffer f40849f;
    public final Decoder.ApngDecoder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f40850h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f40851i;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.camera.a$a, reason: collision with other inner class name */
    public static final class C0129a extends a {
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.a
        public final void a() {
            this.f40845a.f40852a.m(this.f40849f, this.d, this.f40848e, TextureAlignmentUtil.AlignMode.a(this.f40851i));
        }
    }

    public static final class b extends a {
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.a
        public final void a() {
            this.f40845a.f40853b.m(this.f40849f, this.d, this.f40848e, TextureAlignmentUtil.AlignMode.a(this.f40851i));
        }
    }

    public a(c cVar, BackgroundPayload.BackgroundSticker backgroundSticker, String str, int i2, int i3) {
        int i4;
        this.f40845a = cVar;
        this.f40846b = i2;
        this.f40847c = i3;
        StringBuilder sbU = n00.u(str, "/");
        sbU.append(backgroundSticker.fileName);
        String string = sbU.toString();
        this.f40851i = backgroundSticker.alignMode;
        BaseVenus baseVenus = cVar.f40855e;
        Decoder.ApngDecoder apngDecoder = new Decoder.ApngDecoder(baseVenus);
        this.g = apngDecoder;
        MutableInteger mutableInteger = new MutableInteger();
        MutableInteger mutableInteger2 = new MutableInteger();
        apngDecoder.a(i2);
        if (UIMakeupJNI.CUIMakeupLive_AsyncDecodeApng(baseVenus.f40398a, baseVenus, i2, string, false, mutableInteger, mutableInteger2)) {
            this.d = mutableInteger.value;
            i4 = mutableInteger2.value;
        } else {
            Log.g(5, "BackgroundDecodeInfo", "Call asyncDecode() failed!!! backgroundPath=".concat(string));
            i4 = 0;
            this.d = 0;
        }
        this.f40848e = i4;
        this.f40849f = ByteBuffer.allocateDirect((this.d * this.f40848e) << 2);
    }

    public abstract void a();
}
