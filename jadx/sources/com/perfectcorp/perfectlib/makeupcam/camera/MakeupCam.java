package com.perfectcorp.perfectlib.makeupcam.camera;

import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.cosmetic.CLMakeupLiveFilter;
import com.perfectcorp.perfectlib.AccessoryCamWrapper;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.core.BaseVenus;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;
import defpackage.n2;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MakeupCam implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LiveMakeupCtrl f40751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ApplyEffectCtrl f40752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GPUImageRenderer f40753c;
    public final CLMakeupLiveFilter d;

    public MakeupCam(BaseVenus baseVenus, GPUImageRenderer gPUImageRenderer, CLMakeupLiveFilter cLMakeupLiveFilter, ApplyEffectParams applyEffectParams, boolean z, AccessoryCamWrapper accessoryCamWrapper) {
        this.f40753c = gPUImageRenderer;
        this.d = cLMakeupLiveFilter;
        LiveMakeupCtrl liveMakeupCtrl = new LiveMakeupCtrl(this, baseVenus, cLMakeupLiveFilter, applyEffectParams, z, accessoryCamWrapper);
        this.f40751a = liveMakeupCtrl;
        this.f40752b = liveMakeupCtrl.w;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.k
    public final GPUImageRenderer a() {
        return this.f40753c;
    }

    public final ListenableFutureTask b(ApplyEffectCtrl.Configuration configuration) {
        ListenableFutureTask listenableFutureTaskCreate = ListenableFutureTask.create(c(configuration));
        d(listenableFutureTaskCreate);
        return listenableFutureTaskCreate;
    }

    public Callable c(ApplyEffectCtrl.Configuration configuration) {
        return new n2(configuration, 6);
    }

    public abstract void d(Runnable runnable);
}
