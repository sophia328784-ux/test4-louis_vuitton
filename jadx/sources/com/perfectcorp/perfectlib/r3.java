package com.perfectcorp.perfectlib;

import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r3 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PhotoMakeupInternal f41813c;
    public final /* synthetic */ Map d;

    public /* synthetic */ r3(PhotoMakeupInternal photoMakeupInternal, Map map, int i2) {
        this.f41812b = i2;
        this.f41813c = photoMakeupInternal;
        this.d = map;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f41812b;
        Map map = this.d;
        PhotoMakeupInternal photoMakeupInternal = this.f41813c;
        switch (i2) {
            case 0:
                return MakeupCamInternal.m(photoMakeupInternal.f39787h, map);
            default:
                return MakeupCamInternal.t(photoMakeupInternal.f39787h, photoMakeupInternal.f39789j, map);
        }
    }
}
