package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.ymk.clflurry.MCSDKCreateFunctionalityEvent;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40035a;

    public /* synthetic */ b(int i2) {
        this.f40035a = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f40035a) {
            case 0:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.NECKLACE).b();
                break;
            case 1:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.BRACELET).b();
                break;
            case 2:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.JEWELRY).b();
                break;
            case 3:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                IdUsageDao.d(YMKDatabase.c(), ((MakeupCamInternal.ConfigureData.EventData) obj).f39712c, System.currentTimeMillis());
                break;
            case 4:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.NAILS).b();
                break;
            case 5:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.RING).b();
                break;
            default:
                new MCSDKCreateFunctionalityEvent(MCSDKCreateFunctionalityEvent.Functionality.WATCH).b();
                break;
        }
    }
}
