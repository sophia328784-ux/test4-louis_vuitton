package com.cyberlink.clgpuimage.cosmetic;

import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ List f25812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25813b;

    public p(CLMakeupLiveFilter cLMakeupLiveFilter, List list) {
        this.f25813b = cLMakeupLiveFilter;
        this.f25812a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CLMakeupLiveFilter cLMakeupLiveFilter = this.f25813b;
        List<CLMakeupLivePluginFilter> list = this.f25812a;
        cLMakeupLiveFilter.v0 = list;
        for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter : list) {
            cLMakeupLivePluginFilter.init();
            CLMakeupLiveFilter cLMakeupLiveFilter2 = this.f25813b;
            cLMakeupLivePluginFilter.onOutputSizeChanged(cLMakeupLiveFilter2.g, cLMakeupLiveFilter2.f25446h);
        }
    }
}
