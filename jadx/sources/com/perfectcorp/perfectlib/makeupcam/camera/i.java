package com.perfectcorp.perfectlib.makeupcam.camera;

import android.content.Context;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.cyberlink.clgpuimage.cosmetic.CLStickerLiveFilter;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.ymk.engine.MutableInteger;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes3.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CLMakeupLiveFilter f40893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f40894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BaseVenus f40895c;
    public final int d = UIMakeupJNI.CUIMakeupLive_GetMaxDetectedFaceCount();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ReentrantReadWriteLock.WriteLock f40896e = ApplyEffectCtrl.L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicInteger f40897f = new AtomicInteger(0);
    public volatile a g;

    public static final class a {
        public static final boolean[] g = new boolean[3];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FunStickerTemplate f40898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f40899b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f40900c = new ArrayList();
        public final i d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final f f40901e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f40902f;

        public a(FunStickerTemplate funStickerTemplate, i iVar) {
            i iVar2 = iVar;
            this.f40898a = funStickerTemplate;
            this.d = iVar2;
            this.f40901e = new f(iVar2);
            BaseVenus baseVenus = iVar2.f40895c;
            AtomicInteger atomicInteger = iVar2.f40897f;
            int i2 = 0;
            baseVenus.s(atomicInteger.getAndSet(0));
            Iterator it = funStickerTemplate.f40653b.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                List<FunStickerTemplate.e> list = ((FunStickerTemplate.f) it.next()).face_sticker;
                int i4 = i2;
                for (FunStickerTemplate.e eVar : list == null ? Collections.EMPTY_LIST : list) {
                    int iR = baseVenus.r();
                    atomicInteger.set(atomicInteger.get() | (1 << iR));
                    this.f40899b.add(new d.b(new d.a(iVar2, this.f40901e, eVar, funStickerTemplate.d, iR, i4, i3)));
                    i4++;
                    iVar2 = iVar;
                }
                i3++;
                iVar2 = iVar;
                i2 = 0;
            }
            int i5 = 0;
            for (FunStickerTemplate.b bVar : funStickerTemplate.g()) {
                int iR2 = baseVenus.r();
                atomicInteger.set(atomicInteger.get() | (1 << iR2));
                this.f40900c.add(new d.c(new d.a(iVar, this.f40901e, bVar, funStickerTemplate.d, iR2, i5, -1)));
                i5++;
            }
        }

        public static void a(a aVar) {
            ArrayList<d> arrayList = aVar.f40899b;
            ArrayList<d> arrayList2 = aVar.f40900c;
            for (d dVar : arrayList) {
                dVar.f40870i.a(dVar.f40866c);
            }
            aVar.f40899b.clear();
            for (d dVar2 : arrayList2) {
                dVar2.f40870i.a(dVar2.f40866c);
            }
            arrayList2.clear();
            aVar.f40902f = true;
        }

        public static void b(ArrayList arrayList, boolean[] zArr, boolean[] zArr2, int i2) {
            Iterator it = arrayList.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar.f40867e == i2) {
                    if (zArr[i3]) {
                        Decoder.ApngDecoder apngDecoder = dVar.f40870i;
                        int i4 = dVar.f40866c;
                        BaseVenus baseVenus = apngDecoder.f40603a;
                        UIMakeupJNI.CUIMakeupLive_ResetApngDecoder(baseVenus.f40398a, baseVenus, i4);
                        dVar.f40872k = 0L;
                    }
                    if (zArr2[i3]) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (dVar.f40872k <= 0) {
                            dVar.f40872k = jCurrentTimeMillis;
                        }
                        if (jCurrentTimeMillis >= dVar.f40872k) {
                            MutableInteger mutableInteger = new MutableInteger();
                            MutableInteger mutableInteger2 = new MutableInteger();
                            MutableInteger mutableInteger3 = new MutableInteger();
                            Decoder.ApngDecoder apngDecoder2 = dVar.f40870i;
                            int i5 = dVar.f40866c;
                            ByteBuffer byteBuffer = dVar.f40869h;
                            int i6 = dVar.f40868f;
                            int i7 = dVar.g;
                            BaseVenus baseVenus2 = apngDecoder2.f40603a;
                            if (UIMakeupJNI.CUIMakeupLive_GetNextApngImage(baseVenus2.f40398a, baseVenus2, i5, byteBuffer, i6, i7, mutableInteger, mutableInteger2, mutableInteger3)) {
                                dVar.f40869h.rewind();
                                synchronized (dVar.f40864a.f40894b) {
                                    try {
                                        dVar.a();
                                        if (dVar.f40871j) {
                                            f fVar = dVar.f40865b;
                                            fVar.f40882c[dVar.f40867e].b(true);
                                            fVar.b();
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                long j2 = dVar.f40872k + ((long) mutableInteger.value);
                                dVar.f40872k = j2;
                                dVar.f40872k = Math.max(jCurrentTimeMillis - 500, j2);
                            } else {
                                Log.g(5, "DecodeInfo", "Call getNextImage() failed!!!");
                                if (dVar.f40871j) {
                                    f fVar2 = dVar.f40865b;
                                    fVar2.f40882c[dVar.f40867e].b(false);
                                    fVar2.b();
                                }
                            }
                        }
                    } else if (dVar.f40871j) {
                        f fVar3 = dVar.f40865b;
                        fVar3.f40882c[dVar.f40867e].b(false);
                        fVar3.b();
                    }
                    i3++;
                }
            }
        }
    }

    public i(Context context, BaseVenus baseVenus, CLMakeupLiveFilter cLMakeupLiveFilter, Object obj) {
        context.getApplicationContext();
        this.f40895c = baseVenus;
        this.f40893a = cLMakeupLiveFilter;
        this.f40894b = obj;
        this.g = new a(FunStickerTemplate.f40650e, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(List list) {
        a aVar = this.g;
        aVar.getClass();
        bz bzVarListIterator = ((ImmutableList) list).listIterator(0);
        int i2 = 0;
        while (bzVarListIterator.hasNext()) {
            CLStickerLiveFilter.StickerData stickerData = (CLStickerLiveFilter.StickerData) bzVarListIterator.next();
            a.b(aVar.f40899b, stickerData.reset_decoder, stickerData.is_face_sticker_displayed, i2);
            i2++;
        }
        CLStickerLiveFilter.StickerData stickerData2 = (CLStickerLiveFilter.StickerData) list.get(0);
        a.b(aVar.f40900c, stickerData2.reset_scene_decoder, stickerData2.is_scene_displayed, -1);
    }

    public final boolean b() {
        return this.g.f40898a.p();
    }

    public final boolean[] c() {
        a aVar = this.g;
        return (!aVar.f40898a.p() || aVar.f40902f) ? a.g : aVar.f40901e.d;
    }
}
