package com.perfectcorp.perfectlib.makeupcam.camera;

import android.content.Context;
import android.graphics.Bitmap;
import com.cyberlink.clgpuimage.cosmetic.GPUImageBackgroundFilter;
import com.cyberlink.clgpuimage.util.TextureAlignmentUtil;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.debug.NotAnError;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.makeupcam.utility.BitmapUtils;
import com.perfectcorp.perfectlib.ymk.engine.MutableInteger;
import defpackage.a61;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GPUImageBackgroundFilter f40852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GPUImageBackgroundFilter f40853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f40854c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BaseVenus f40855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BackgroundPayload f40856f;
    public a g = new a(this, new BackgroundPayload(null));

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f40857a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f40858b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f40859c = new ArrayList();
        public final ArrayList d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final c f40860e;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.camera.c$a$a, reason: collision with other inner class name */
        public static class C0130a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ByteBuffer f40861a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final TextureAlignmentUtil.AlignMode f40862b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final int f40863c;
            public final int d;

            public C0130a(int i2, int i3, TextureAlignmentUtil.AlignMode alignMode, ByteBuffer byteBuffer) {
                this.f40861a = byteBuffer;
                this.f40862b = alignMode;
                this.f40863c = i2;
                this.d = i3;
            }
        }

        public a(c cVar, BackgroundPayload backgroundPayload) {
            this.f40860e = cVar;
            boolean z = (backgroundPayload == null || backgroundPayload.b() == null) ? false : true;
            BaseVenus baseVenus = cVar.f40855e;
            GPUImageBackgroundFilter gPUImageBackgroundFilter = cVar.f40853b;
            if (gPUImageBackgroundFilter != null) {
                synchronized (gPUImageBackgroundFilter.n0) {
                }
            }
            GPUImageBackgroundFilter gPUImageBackgroundFilter2 = cVar.f40852a;
            if (gPUImageBackgroundFilter2 != null) {
                synchronized (gPUImageBackgroundFilter2.n0) {
                }
            }
            if (z) {
                for (BackgroundPayload.BackgroundSticker backgroundSticker : backgroundPayload.b().f40585c) {
                    if (backgroundSticker.stickerType.equals("animated")) {
                        this.d.add(new com.perfectcorp.perfectlib.makeupcam.camera.a.b(cVar, backgroundSticker, backgroundPayload.b().f40584b, baseVenus.r(), backgroundSticker.bestFrameIndex));
                    } else {
                        Bitmap bitmapA = BitmapUtils.a(PfCommons.b(), backgroundPayload.b().f40584b + "/" + backgroundSticker.fileName, BitmapUtils.f40997a);
                        try {
                            this.f40858b.add(new C0130a(bitmapA.getWidth(), bitmapA.getHeight(), TextureAlignmentUtil.AlignMode.a(backgroundSticker.alignMode), ByteBuffer.wrap(c.c(bitmapA))));
                        } catch (Exception e2) {
                            Log.e("BackgroundHelper", "setup foreground static effect failed. path: " + backgroundPayload.b().f40584b + "/" + backgroundSticker.fileName, e2);
                        }
                    }
                }
                for (BackgroundPayload.BackgroundSticker backgroundSticker2 : backgroundPayload.b().d) {
                    if (backgroundSticker2.stickerType.equals("animated")) {
                        this.f40859c.add(new com.perfectcorp.perfectlib.makeupcam.camera.a.C0129a(cVar, backgroundSticker2, backgroundPayload.b().f40584b, baseVenus.r(), backgroundSticker2.bestFrameIndex));
                    } else {
                        Bitmap bitmapA2 = BitmapUtils.a(PfCommons.b(), backgroundPayload.b().f40584b + "/" + backgroundSticker2.fileName, BitmapUtils.f40997a);
                        if (bitmapA2 != null) {
                            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmapA2.getByteCount());
                            bitmapA2.copyPixelsToBuffer(byteBufferAllocate);
                            this.f40857a.add(new C0130a(bitmapA2.getWidth(), bitmapA2.getHeight(), TextureAlignmentUtil.AlignMode.a(backgroundSticker2.alignMode), byteBufferAllocate));
                        } else {
                            Log.e("BackgroundHelper", "backgroundBitmap is null. path: " + backgroundPayload.b().f40584b + "/" + backgroundSticker2.fileName, new NotAnError());
                        }
                    }
                }
            }
        }

        public static void a(a aVar, c cVar) {
            ArrayList<com.perfectcorp.perfectlib.makeupcam.camera.a> arrayList = aVar.f40859c;
            c cVar2 = aVar.f40860e;
            ArrayList<com.perfectcorp.perfectlib.makeupcam.camera.a> arrayList2 = aVar.d;
            for (com.perfectcorp.perfectlib.makeupcam.camera.a aVar2 : arrayList) {
                Decoder.ApngDecoder apngDecoder = aVar2.g;
                int i2 = aVar2.f40846b;
                apngDecoder.a(i2);
                cVar.f40855e.s(i2);
            }
            aVar.f40859c.clear();
            cVar.f40852a.n();
            for (com.perfectcorp.perfectlib.makeupcam.camera.a aVar3 : arrayList2) {
                Decoder.ApngDecoder apngDecoder2 = aVar3.g;
                int i3 = aVar3.f40846b;
                apngDecoder2.a(i3);
                cVar.f40855e.s(i3);
            }
            arrayList2.clear();
            cVar.f40853b.n();
            aVar.f40857a.clear();
            aVar.f40858b.clear();
            cVar2.f40853b.o();
            cVar2.f40852a.o();
        }

        public final void b(ArrayList arrayList) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                com.perfectcorp.perfectlib.makeupcam.camera.a aVar = (com.perfectcorp.perfectlib.makeupcam.camera.a) it.next();
                if (this.f40860e.d) {
                    Decoder.ApngDecoder apngDecoder = aVar.g;
                    int i2 = aVar.f40846b;
                    BaseVenus baseVenus = apngDecoder.f40603a;
                    UIMakeupJNI.CUIMakeupLive_ResetApngDecoder(baseVenus.f40398a, baseVenus, i2);
                    int i3 = 0;
                    boolean zCUIMakeupLive_GetNextApngImage = false;
                    while (i3 <= aVar.f40847c) {
                        try {
                            MutableInteger mutableInteger = new MutableInteger();
                            MutableInteger mutableInteger2 = new MutableInteger();
                            MutableInteger mutableInteger3 = new MutableInteger();
                            try {
                                Decoder.ApngDecoder apngDecoder2 = aVar.g;
                                int i4 = aVar.f40846b;
                                ByteBuffer byteBuffer = aVar.f40849f;
                                int i5 = aVar.d;
                                int i6 = aVar.f40848e;
                                BaseVenus baseVenus2 = apngDecoder2.f40603a;
                                zCUIMakeupLive_GetNextApngImage = UIMakeupJNI.CUIMakeupLive_GetNextApngImage(baseVenus2.f40398a, baseVenus2, i4, byteBuffer, i5, i6, mutableInteger, mutableInteger2, mutableInteger3);
                                if (zCUIMakeupLive_GetNextApngImage) {
                                    if (mutableInteger2.value == -1) {
                                        break;
                                    }
                                    aVar.f40849f.rewind();
                                    i3 = mutableInteger2.value;
                                    Log.g(2, "BackgroundDecodeInfo", "Success! next image index=" + mutableInteger2.value);
                                }
                                Thread.sleep(10L);
                            } catch (Throwable th) {
                                Log.e("BackgroundDecodeInfo", "Call getNextImage() failed", th);
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    }
                    if (zCUIMakeupLive_GetNextApngImage) {
                        synchronized (aVar.f40845a.f40854c) {
                            try {
                                aVar.a();
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } else {
                        Log.g(5, "BackgroundDecodeInfo", "Call getNextImage() failed!!!");
                    }
                } else {
                    aVar.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (aVar.f40850h <= 0) {
                        aVar.f40850h = jCurrentTimeMillis;
                    }
                    if (jCurrentTimeMillis >= aVar.f40850h) {
                        MutableInteger mutableInteger4 = new MutableInteger();
                        MutableInteger mutableInteger5 = new MutableInteger();
                        MutableInteger mutableInteger6 = new MutableInteger();
                        Decoder.ApngDecoder apngDecoder3 = aVar.g;
                        int i7 = aVar.f40846b;
                        ByteBuffer byteBuffer2 = aVar.f40849f;
                        int i8 = aVar.d;
                        int i9 = aVar.f40848e;
                        BaseVenus baseVenus3 = apngDecoder3.f40603a;
                        if (UIMakeupJNI.CUIMakeupLive_GetNextApngImage(baseVenus3.f40398a, baseVenus3, i7, byteBuffer2, i8, i9, mutableInteger4, mutableInteger5, mutableInteger6)) {
                            aVar.f40849f.rewind();
                            synchronized (aVar.f40845a.f40854c) {
                                aVar.a();
                            }
                            long j2 = aVar.f40850h + ((long) mutableInteger4.value);
                            aVar.f40850h = j2;
                            aVar.f40850h = Math.max(jCurrentTimeMillis - 500, j2);
                        } else {
                            Log.g(5, "BackgroundDecodeInfo", "Call getNextImage() failed!!!");
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    public c(Context context, BaseVenus baseVenus, GPUImageBackgroundFilter gPUImageBackgroundFilter, GPUImageBackgroundFilter gPUImageBackgroundFilter2, boolean z, Object obj) {
        context.getApplicationContext();
        this.f40852a = gPUImageBackgroundFilter;
        this.f40853b = gPUImageBackgroundFilter2;
        this.f40855e = baseVenus;
        this.d = z;
        this.f40854c = obj;
    }

    public static byte[] c(Bitmap bitmap) {
        Objects.requireNonNull(bitmap, "bitmap is null!!!");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int rowBytes = bitmap.getRowBytes();
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888 && rowBytes / width != 4) {
            a61.i(rowBytes, width, bitmap.getConfig());
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(rowBytes * height);
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        byte[] bArrArray = byteBufferAllocate.array();
        if (width == rowBytes / 4) {
            return bArrArray;
        }
        byte[] bArr = new byte[(width * height) << 2];
        for (int i2 = 0; i2 < height; i2++) {
            System.arraycopy(bArrArray, i2 * rowBytes, bArr, (i2 * width) << 2, width << 2);
        }
        return bArr;
    }

    public final void a() {
        a aVar = this.g;
        c cVar = aVar.f40860e;
        for (a.C0130a c0130a : aVar.f40858b) {
            cVar.f40853b.p(c0130a.f40863c, c0130a.d, c0130a.f40862b, c0130a.f40861a);
        }
        for (a.C0130a c0130a2 : aVar.f40857a) {
            cVar.f40852a.p(c0130a2.f40863c, c0130a2.d, c0130a2.f40862b, c0130a2.f40861a);
        }
    }

    public final void b(BackgroundPayload backgroundPayload) {
        BackgroundPayload backgroundPayload2 = this.f40856f;
        if (backgroundPayload2 == null || backgroundPayload == null || !backgroundPayload2.c(backgroundPayload)) {
            this.f40856f = backgroundPayload;
            a.a(this.g, this);
            this.g = new a(this, backgroundPayload);
        }
    }

    public final void d() {
        a aVar = this.g;
        aVar.b(aVar.d);
        aVar.b(aVar.f40859c);
    }
}
