package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.idusage.IdUsageDao;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveSettingCtrl;
import com.perfectcorp.perfectlib.ymk.model.YMKFeatures$EventFeature;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f41876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41877c;
    public final /* synthetic */ Object d;

    public /* synthetic */ u2(Object obj, Object obj2, Object obj3, int i2) {
        this.f41875a = i2;
        this.f41876b = obj;
        this.f41877c = obj2;
        this.d = obj3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        switch (this.f41875a) {
            case 0:
                MakeupCamInternal makeupCamInternal = (MakeupCamInternal) this.f41876b;
                Map map = (Map) this.f41877c;
                VtoApplier.ApplyCallback applyCallback = (VtoApplier.ApplyCallback) this.d;
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                makeupCamInternal.getClass();
                Log.g(3, "MakeupCamInternal", "[setReshapeIntensities] complete");
                Iterator it = map.keySet().iterator();
                while (it.hasNext()) {
                    makeupCamInternal.m.a((ReshapeEffect) it.next(), com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a);
                }
                applyCallback.onSuccess(null);
                break;
            case 1:
                PhotoMakeupInternal photoMakeupInternal = (PhotoMakeupInternal) this.f41876b;
                String str = (String) this.f41877c;
                AtomicReference atomicReference = (AtomicReference) this.d;
                int i2 = PhotoMakeupInternal.n;
                IdUsageDao.d(YMKDatabase.c(), str, System.currentTimeMillis());
                MakeupCamInternal.Logger logger = photoMakeupInternal.l;
                LiveSettingCtrl liveSettingCtrl = photoMakeupInternal.f39789j;
                List list = (List) atomicReference.get();
                logger.f39713a = str;
                com.perfectcorp.perfectlib.ph.clflurry.b bVar = new com.perfectcorp.perfectlib.ph.clflurry.b(YMKFeatures$EventFeature.Looks, com.perfectcorp.perfectlib.ph.clflurry.b.a.f41140a);
                bVar.f41949c.put("look_guid", str);
                bVar.f(liveSettingCtrl, list);
                bVar.c(bVar.f41949c);
                bVar.b();
                break;
            default:
                PhotoMakeupInternal photoMakeupInternal2 = (PhotoMakeupInternal) this.f41876b;
                Map map2 = (Map) this.f41877c;
                VtoApplier.ApplyCallback applyCallback2 = (VtoApplier.ApplyCallback) this.d;
                Bitmap bitmap = (Bitmap) obj;
                int i3 = PhotoMakeupInternal.n;
                photoMakeupInternal2.getClass();
                Log.g(3, "PhotoMakeupInternal", "[setReshapeIntensities] complete");
                Iterator it2 = map2.keySet().iterator();
                while (it2.hasNext()) {
                    photoMakeupInternal2.l.a((ReshapeEffect) it2.next(), com.perfectcorp.perfectlib.ph.clflurry.b.a.f41141b);
                }
                applyCallback2.onSuccess(bitmap);
                break;
        }
    }
}
