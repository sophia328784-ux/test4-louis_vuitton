package com.cyberlink.clgpuimage.cosmetic;

import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ List f25815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25816b;

    public r(CLMakeupLiveFilter cLMakeupLiveFilter, List list) {
        this.f25816b = cLMakeupLiveFilter;
        this.f25815a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CLMakeupLiveFilter cLMakeupLiveFilter = this.f25816b;
        List<CLMakeupLivePluginFilter> list = this.f25815a;
        cLMakeupLiveFilter.u0 = list;
        for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter : list) {
            cLMakeupLivePluginFilter.init();
            CLMakeupLiveFilter cLMakeupLiveFilter2 = this.f25816b;
            cLMakeupLivePluginFilter.onOutputSizeChanged(cLMakeupLiveFilter2.g, cLMakeupLiveFilter2.f25446h);
        }
    }
}
