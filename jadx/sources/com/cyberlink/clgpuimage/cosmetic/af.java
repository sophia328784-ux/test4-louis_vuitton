package com.cyberlink.clgpuimage.cosmetic;

import com.cyberlink.clgpuimage.OpenGlUtils;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class af implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ ByteBuffer f25754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ int f25755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ int f25756c;
    private /* synthetic */ GPUImageBackgroundFilter d;

    public af(GPUImageBackgroundFilter gPUImageBackgroundFilter, ByteBuffer byteBuffer, int i2, int i3) {
        this.d = gPUImageBackgroundFilter;
        this.f25754a = byteBuffer;
        this.f25755b = i2;
        this.f25756c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GPUImageBackgroundFilter gPUImageBackgroundFilter = this.d;
        gPUImageBackgroundFilter.x = OpenGlUtils.c(this.f25754a, this.f25755b, this.f25756c, gPUImageBackgroundFilter.x);
        GPUImageBackgroundFilter gPUImageBackgroundFilter2 = this.d;
        al alVar = gPUImageBackgroundFilter2.c0;
        if (alVar != null) {
            int i2 = gPUImageBackgroundFilter2.x0;
            int i3 = this.f25755b;
            if (i2 != i3) {
                int i4 = gPUImageBackgroundFilter2.y0;
                int i5 = this.f25756c;
                if (i4 != i5) {
                    alVar.f42019b = i3;
                    alVar.f42020c = i5;
                    alVar.b();
                    GPUImageBackgroundFilter gPUImageBackgroundFilter3 = this.d;
                    gPUImageBackgroundFilter3.x0 = this.f25755b;
                    gPUImageBackgroundFilter3.y0 = this.f25756c;
                }
            }
        }
    }
}
