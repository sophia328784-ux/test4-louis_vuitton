package com.perfectcorp.perfectlib;

import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class l2 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MakeupCamInternal f40458c;
    public final /* synthetic */ Map d;

    public /* synthetic */ l2(MakeupCamInternal makeupCamInternal, Map map, int i2) {
        this.f40457b = i2;
        this.f40458c = makeupCamInternal;
        this.d = map;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f40457b;
        Map map = this.d;
        MakeupCamInternal makeupCamInternal = this.f40458c;
        switch (i2) {
            case 0:
                return MakeupCamInternal.t(makeupCamInternal.g.f40752b, makeupCamInternal.f39699h, map);
            default:
                return MakeupCamInternal.m(makeupCamInternal.g.f40752b, map);
        }
    }
}
