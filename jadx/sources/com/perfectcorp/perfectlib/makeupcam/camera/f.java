package com.perfectcorp.perfectlib.makeupcam.camera;

import android.text.TextUtils;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFaceDistortionFilter;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import com.perfectcorp.perfectlib.ymk.engine.MutableInteger;
import com.perfectcorp.thirdparty.com.google.common.io.Files;
import defpackage.md;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f40880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f40881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a[] f40882c;
    public final boolean[] d;

    public static abstract class a {

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.makeupcam.camera.f$a$a, reason: collision with other inner class name */
        public static final class C0131a extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final boolean f40883a;

            public C0131a(boolean z) {
                this.f40883a = z;
            }

            @Override // com.perfectcorp.perfectlib.makeupcam.camera.f.a
            public final void b(boolean z) {
            }

            @Override // com.perfectcorp.perfectlib.makeupcam.camera.f.a
            public final boolean c() {
                return this.f40883a;
            }
        }

        public static final class b extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f40884a;

            @Override // com.perfectcorp.perfectlib.makeupcam.camera.f.a
            public final void b(boolean z) {
                this.f40884a = z;
            }

            @Override // com.perfectcorp.perfectlib.makeupcam.camera.f.a
            public final boolean c() {
                return this.f40884a;
            }
        }

        public static a a(boolean z, boolean z2) {
            if (!z) {
                return new C0131a(z2);
            }
            b bVar = new b();
            bVar.f40884a = z2;
            return bVar;
        }

        public abstract void b(boolean z);

        public abstract boolean c();
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40885a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f40886b;

        public b(String str, boolean z) {
            this.f40885a = str;
            this.f40886b = z;
        }
    }

    public f(i iVar) {
        this.f40880a = iVar;
        int i2 = iVar.d;
        this.f40881b = i2;
        this.f40882c = new a[i2];
        this.d = new boolean[i2];
    }

    public final void a(ArrayList arrayList) {
        MappedByteBuffer mappedByteBufferD;
        if (arrayList.isEmpty()) {
            md.n("empty list");
            return;
        }
        MutableInteger mutableInteger = new MutableInteger();
        i iVar = this.f40880a;
        iVar.f40896e.lock();
        try {
            BaseVenus baseVenus = iVar.f40895c;
            if (!UIMakeupJNI.CUIMakeupLive_GetFaceDistortionIntermediateSize(baseVenus.f40398a, baseVenus, mutableInteger)) {
                throw new RuntimeException("get intermediate size failed");
            }
            iVar.f40896e.unlock();
            int i2 = mutableInteger.value;
            boolean z = true;
            for (int i3 = 0; i3 < this.f40881b; i3++) {
                String str = ((b) arrayList.get(i3)).f40885a;
                if (TextUtils.isEmpty(str)) {
                    mappedByteBufferD = null;
                } else {
                    try {
                        mappedByteBufferD = Files.d(new File(str));
                    } catch (Throwable th) {
                        Log.e("FaceDistortionHelper", "Files.map() failed.", th);
                        mappedByteBufferD = null;
                    }
                }
                a[] aVarArr = this.f40882c;
                if (mappedByteBufferD != null) {
                    aVarArr[i3] = a.a(!((b) arrayList.get(i3)).f40886b, true);
                    byte[] bArr = new byte[i2];
                    this.f40880a.f40896e.lock();
                    try {
                        BaseVenus baseVenus2 = this.f40880a.f40895c;
                        UIMakeupJNI.CUIMakeupLive_SetFaceDistortionModel(baseVenus2.f40398a, baseVenus2, mappedByteBufferD, bArr, i3);
                        this.f40880a.f40896e.unlock();
                        CLMakeupLiveFilter cLMakeupLiveFilter = this.f40880a.f40893a;
                        cLMakeupLiveFilter.getClass();
                        if (i3 >= -1 && i3 < 3) {
                            synchronized (cLMakeupLiveFilter.r6) {
                                try {
                                    if (cLMakeupLiveFilter.w6) {
                                        if (i3 == -1) {
                                            cLMakeupLiveFilter.x6 = null;
                                            cLMakeupLiveFilter.y6 = null;
                                            for (int i4 = 0; i4 < 3; i4++) {
                                                cLMakeupLiveFilter.B6[i4] = null;
                                                cLMakeupLiveFilter.C6[i4] = null;
                                            }
                                            int i5 = cLMakeupLiveFilter.s6 * cLMakeupLiveFilter.t6;
                                            int i6 = i5 << 2;
                                            if (i2 >= (i5 << 3)) {
                                                ByteBuffer byteBuffer = cLMakeupLiveFilter.x6;
                                                if (byteBuffer == null || byteBuffer.capacity() != i6) {
                                                    cLMakeupLiveFilter.x6 = ByteBuffer.allocate(i6);
                                                }
                                                ByteBuffer byteBuffer2 = cLMakeupLiveFilter.y6;
                                                if (byteBuffer2 == null || byteBuffer2.capacity() != i6) {
                                                    cLMakeupLiveFilter.y6 = ByteBuffer.allocate(i6);
                                                }
                                                cLMakeupLiveFilter.x6.clear();
                                                cLMakeupLiveFilter.x6.put(bArr, 0, i6);
                                                cLMakeupLiveFilter.x6.position(0);
                                                cLMakeupLiveFilter.y6.clear();
                                                cLMakeupLiveFilter.y6.put(bArr, i6, i6);
                                                cLMakeupLiveFilter.y6.position(0);
                                                cLMakeupLiveFilter.u6 = true;
                                                for (int i7 = 0; i7 < 3; i7++) {
                                                    cLMakeupLiveFilter.F6[i7] = false;
                                                    cLMakeupLiveFilter.V[i7].k();
                                                }
                                            }
                                        } else {
                                            cLMakeupLiveFilter.b1(i3);
                                            int i8 = cLMakeupLiveFilter.s6 * cLMakeupLiveFilter.t6;
                                            int i9 = i8 << 2;
                                            if (i2 >= (i8 << 3)) {
                                                ByteBuffer byteBuffer3 = cLMakeupLiveFilter.B6[i3];
                                                if (byteBuffer3 == null || byteBuffer3.capacity() != i9) {
                                                    cLMakeupLiveFilter.B6[i3] = ByteBuffer.allocate(i9);
                                                }
                                                ByteBuffer byteBuffer4 = cLMakeupLiveFilter.C6[i3];
                                                if (byteBuffer4 == null || byteBuffer4.capacity() != i9) {
                                                    cLMakeupLiveFilter.C6[i3] = ByteBuffer.allocate(i9);
                                                }
                                                cLMakeupLiveFilter.B6[i3].clear();
                                                cLMakeupLiveFilter.B6[i3].put(bArr, 0, i9);
                                                cLMakeupLiveFilter.B6[i3].position(0);
                                                cLMakeupLiveFilter.C6[i3].clear();
                                                cLMakeupLiveFilter.C6[i3].put(bArr, i9, i9);
                                                cLMakeupLiveFilter.C6[i3].position(0);
                                                cLMakeupLiveFilter.V[i3].k();
                                                cLMakeupLiveFilter.F6[i3] = true;
                                                cLMakeupLiveFilter.v6[i3] = true;
                                            }
                                        }
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                        z = false;
                    } catch (Throwable th3) {
                        this.f40880a.f40896e.unlock();
                        throw th3;
                    }
                } else {
                    aVarArr[i3] = a.a(false, false);
                }
            }
            if (z) {
                md.k("no valid buffer been set");
            }
        } catch (Throwable th4) {
            iVar.f40896e.unlock();
            throw th4;
        }
    }

    public final void b() {
        for (int i2 = 0; i2 < this.f40881b; i2++) {
            this.d[i2] = this.f40882c[i2].c();
        }
        synchronized (this.f40880a.f40894b) {
            CLMakeupLiveFilter cLMakeupLiveFilter = this.f40880a.f40893a;
            boolean[] zArr = this.d;
            cLMakeupLiveFilter.getClass();
            for (int i3 = 0; i3 < Math.min(3, zArr.length); i3++) {
                CLMakeupLiveFaceDistortionFilter cLMakeupLiveFaceDistortionFilter = cLMakeupLiveFilter.V[i3];
                boolean z = zArr[i3];
                synchronized (cLMakeupLiveFaceDistortionFilter.o) {
                    cLMakeupLiveFaceDistortionFilter.v = z;
                }
            }
        }
    }
}
