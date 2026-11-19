package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import defpackage.b21;
import defpackage.d20;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q4 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoDetail.PatternEarringsOrNail f41799c;

    public /* synthetic */ q4(VtoDetail.PatternEarringsOrNail patternEarringsOrNail, int i2) {
        this.f41798b = i2;
        this.f41799c = patternEarringsOrNail;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f41798b;
        VtoDetail.PatternEarringsOrNail patternEarringsOrNail = this.f41799c;
        switch (i2) {
            case 0:
                return Observable.fromIterable(patternEarringsOrNail.d.earringsOrNail.patternGuids).map(new z0(patternEarringsOrNail, 9)).filter(new d20(7)).map(new b21(29)).toList();
            default:
                return Observable.fromIterable(patternEarringsOrNail.d.earringsOrNail.a()).map(new b21(28)).toList();
        }
    }
}
