package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.ymk.engine.MutableInteger;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f40864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f40865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f40866c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f40867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f40868f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ByteBuffer f40869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Decoder.ApngDecoder f40870i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f40871j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f40872k;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final i f40873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final f f40874b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f40875c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f40876e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f40877f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f40878h;

        public a(i iVar, f fVar, FunStickerTemplate.b bVar, String str, int i2, int i3, int i4) {
            this.f40873a = iVar;
            this.f40874b = fVar;
            this.f40875c = i2;
            this.d = i3;
            this.f40876e = i4;
            bVar.getClass();
            this.f40877f = str + bVar.file_name;
            int iA = bVar.a();
            this.g = iA == FunStickerTemplate.b.a.EYE_BLINKING_EVENT_ONCE.ordinal() || iA == FunStickerTemplate.b.a.MOUTH_OPENING_EVENT_ONCE.ordinal() || iA == FunStickerTemplate.b.a.MOUTH_CLOSING_EVENT_ONCE.ordinal();
            this.f40878h = bVar.f40660b != null;
        }
    }

    public static final class b extends d {
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.d
        public final void a() {
            this.f40864a.f40893a.V(this.f40869h, this.f40868f, this.g, this.d, this.f40867e);
        }
    }

    public static final class c extends d {
        @Override // com.perfectcorp.perfectlib.makeupcam.camera.d
        public final void a() {
            this.f40864a.f40893a.U(this.f40869h, this.f40868f, this.g, this.d);
        }
    }

    public d(a aVar) {
        int i2;
        i iVar = aVar.f40873a;
        this.f40864a = iVar;
        this.f40865b = aVar.f40874b;
        int i3 = aVar.f40875c;
        this.f40866c = i3;
        this.d = aVar.d;
        this.f40867e = aVar.f40876e;
        BaseVenus baseVenus = iVar.f40895c;
        Decoder.ApngDecoder apngDecoder = new Decoder.ApngDecoder(baseVenus);
        this.f40870i = apngDecoder;
        this.f40871j = aVar.f40878h;
        MutableInteger mutableInteger = new MutableInteger();
        MutableInteger mutableInteger2 = new MutableInteger();
        apngDecoder.a(i3);
        if (UIMakeupJNI.CUIMakeupLive_AsyncDecodeApng(baseVenus.f40398a, baseVenus, i3, aVar.f40877f, aVar.g, mutableInteger, mutableInteger2)) {
            this.f40868f = mutableInteger.value;
            i2 = mutableInteger2.value;
        } else {
            defpackage.a.A(new StringBuilder("Call asyncDecode() failed!!! stickerPath="), aVar.f40877f, 5, "DecodeInfo");
            i2 = 0;
            this.f40868f = 0;
        }
        this.g = i2;
        this.f40869h = ByteBuffer.allocateDirect((this.f40868f * this.g) << 2);
    }

    public abstract void a();
}
