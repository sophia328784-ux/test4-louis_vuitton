package com.cyberlink.clgpuimage.cosmetic;

import android.opengl.GLES20;
import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ List f25809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ boolean f25810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25811c;

    public o(CLMakeupLiveFilter cLMakeupLiveFilter, List list, boolean z) {
        this.f25811c = cLMakeupLiveFilter;
        this.f25809a = list;
        this.f25810b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CLMakeupLiveFilter cLMakeupLiveFilter = this.f25811c;
        List<CLMakeupLivePluginFilter> list = this.f25809a;
        cLMakeupLiveFilter.s0 = list;
        for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter : list) {
            cLMakeupLivePluginFilter.init();
            CLMakeupLiveFilter cLMakeupLiveFilter2 = this.f25811c;
            cLMakeupLivePluginFilter.onOutputSizeChanged(cLMakeupLiveFilter2.g, cLMakeupLiveFilter2.f25446h);
        }
        CLMakeupLiveFilter cLMakeupLiveFilter3 = this.f25811c;
        if (cLMakeupLiveFilter3.t != this.f25810b) {
            int[] iArr = cLMakeupLiveFilter3.r;
            if (iArr != null) {
                GLES20.glDeleteRenderbuffers(iArr.length, iArr, 0);
                cLMakeupLiveFilter3.r = null;
            }
            int[] iArr2 = cLMakeupLiveFilter3.q;
            if (iArr2 != null) {
                GLES20.glDeleteFramebuffers(iArr2.length, iArr2, 0);
                cLMakeupLiveFilter3.q = null;
            }
            cLMakeupLiveFilter3.s = false;
            if (this.f25810b) {
                this.f25811c.K0();
            }
            this.f25811c.t = this.f25810b;
        }
    }
}
