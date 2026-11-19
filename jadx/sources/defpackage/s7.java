package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.VtoSetting;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuItemDao;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.e;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class s7 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f79728c;
    public final /* synthetic */ Object d;

    public /* synthetic */ s7(Object obj, boolean z, int i2) {
        this.f79727b = i2;
        this.d = obj;
        this.f79728c = z;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f79727b;
        boolean z = this.f79728c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                List<VtoSetting> list = (List) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Log.g(3, "ApplyEffectUtility", "[handleNoProductIdSettings] start");
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                ArrayList arrayList = new ArrayList();
                for (VtoSetting vtoSetting : list) {
                    String str = vtoSetting.f40014a;
                    String str2 = vtoSetting.f40016c;
                    if (TextUtils.isEmpty(str) && TextUtils.isEmpty(vtoSetting.f40015b)) {
                        if (TextUtils.isEmpty(str2)) {
                            no0.t(vtoSetting, "Setting already validate in VtoSetting#Builder. vtoSetting=");
                            return null;
                        }
                        Optional optionalD = SkuItemDao.d(YMKDatabase.b(), str2);
                        if (optionalD.d()) {
                            concurrentHashMap.put(str2, ((e) optionalD.c()).f41293b);
                        } else {
                            arrayList.add(str2);
                        }
                    }
                }
                Log.g(3, "ApplyEffectUtility", "[handleNoProductIdSettings] skuItemGuidsNeedQueryServer=".concat(Iterables.c(arrayList)));
                SingleSource singleSourceCollectInto = z ? Observable.fromIterable(Lists.b(30, arrayList)).flatMap(new v7(12)).collectInto(concurrentHashMap, new v7(14)) : Single.h(concurrentHashMap);
                c8 c8Var = new c8(list, 1);
                singleSourceCollectInto.getClass();
                return new t(singleSourceCollectInto, c8Var);
            default:
                return new MakeupCam((CameraView) obj, z, null);
        }
    }
}
