package com.cyberlink.clgpuimage.cosmetic;

import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class w implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ List f25824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25825b;

    public w(CLMakeupLiveFilter cLMakeupLiveFilter, List list) {
        this.f25825b = cLMakeupLiveFilter;
        this.f25824a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CLMakeupLiveFilter cLMakeupLiveFilter = this.f25825b;
        List<CLMakeupLivePluginFilter> list = this.f25824a;
        cLMakeupLiveFilter.r0 = list;
        for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter : list) {
            cLMakeupLivePluginFilter.init();
            CLMakeupLiveFilter cLMakeupLiveFilter2 = this.f25825b;
            cLMakeupLivePluginFilter.onOutputSizeChanged(cLMakeupLiveFilter2.g, cLMakeupLiveFilter2.f25446h);
        }
    }
}
