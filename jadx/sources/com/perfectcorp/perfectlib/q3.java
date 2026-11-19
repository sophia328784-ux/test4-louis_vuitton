package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.perfectlib.internal.AppliedResult;
import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q3 implements Function, PhotoMakeup.On4SplitScreenIndexSwitchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PhotoMakeupInternal f41797c;

    public /* synthetic */ q3(PhotoMakeupInternal photoMakeupInternal, int i2) {
        this.f41796b = i2;
        this.f41797c = photoMakeupInternal;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f41796b;
        PhotoMakeupInternal photoMakeupInternal = this.f41797c;
        switch (i2) {
            case 0:
                int i3 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                return photoMakeupInternal.c(((AppliedResult) obj).getBitmap());
            case 1:
                return Singles.a(photoMakeupInternal.f39788i.applyConfiguration((ApplyEffectCtrl.Configuration) obj), CallingThread.ANY);
            case 2:
                int i4 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                return photoMakeupInternal.c(((AppliedResult) obj).getBitmap());
            case 3:
                int i5 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                return photoMakeupInternal.c(((AppliedResult) obj).getBitmap());
            case 4:
                return Singles.a(photoMakeupInternal.f39788i.applyConfiguration((ApplyEffectCtrl.ConfigurationWrapper) obj), CallingThread.ANY);
            case 5:
                int i6 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                return photoMakeupInternal.c(((AppliedResult) obj).getBitmap());
            case 6:
            default:
                int i7 = PhotoMakeupInternal.n;
                photoMakeupInternal.getClass();
                return photoMakeupInternal.c(((AppliedResult) obj).getBitmap());
            case 7:
                int i8 = PhotoMakeupInternal.n;
                return photoMakeupInternal.c((Bitmap) obj);
            case 8:
                int i9 = PhotoMakeupInternal.n;
                return photoMakeupInternal.c((Bitmap) obj);
        }
    }

    @Override // com.perfectcorp.perfectlib.PhotoMakeup.On4SplitScreenIndexSwitchListener
    public Single onIndexSwitched(int i2) {
        SingleSource singleSourceJ;
        PhotoMakeupInternal photoMakeupInternal = this.f41797c;
        int i3 = PhotoMakeupInternal.n;
        try {
            photoMakeupInternal.d();
            photoMakeupInternal.f39786f.p = i2;
            PhotoMakeupInternal.ApplyEffectIdsInfo applyEffectIdsInfo = (PhotoMakeupInternal.ApplyEffectIdsInfo) photoMakeupInternal.m.get(Integer.valueOf(i2));
            Objects.requireNonNull(applyEffectIdsInfo, "applyEffectIdsInfo can't be null");
            int iIncrementAndGet = photoMakeupInternal.d.incrementAndGet();
            if (PerfectLib.g.f39519h) {
                Single list = Observable.fromIterable(applyEffectIdsInfo.f39791a).subscribeOn(Schedulers.f43170c).flatMapSingle(new y(23)).toList();
                s0 s0Var = new s0(photoMakeupInternal, iIncrementAndGet, applyEffectIdsInfo, 3);
                list.getClass();
                singleSourceJ = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(list, s0Var);
            } else {
                singleSourceJ = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(new c1(photoMakeupInternal, iIncrementAndGet, applyEffectIdsInfo, 5)).j(Schedulers.f43170c);
            }
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m(singleSourceJ, new q3(photoMakeupInternal, 8));
        } catch (Throwable th) {
            return Single.g(th);
        }
    }
}
