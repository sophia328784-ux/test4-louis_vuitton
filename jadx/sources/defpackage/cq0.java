package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.e;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cq0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f68310c;
    public final /* synthetic */ ConcurrentLinkedQueue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f68311e;

    public /* synthetic */ cq0(String str, ConcurrentLinkedQueue concurrentLinkedQueue, e eVar, int i2) {
        this.f68309b = i2;
        this.f68310c = str;
        this.d = concurrentLinkedQueue;
        this.f68311e = eVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f68309b;
        e eVar = this.f68311e;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.d;
        String str = this.f68310c;
        List list = (List) obj;
        switch (i2) {
            case 0:
                if (list.isEmpty()) {
                    Log.g(3, "ProductMaskHelper", "[syncServer] has no product need to be queried in featureType=" + str);
                    return Single.h(new o2(concurrentLinkedQueue, 14));
                }
                a.v(3, "[syncServer] query product mask by GUIDs for featureType=", str, "ProductMaskHelper");
                Single list2 = Observable.fromIterable(Lists.b(30, list)).concatMapSingle(new no0(10)).map(new no0(11)).concatMapIterable(Functions.f42605a).toList();
                cq0 cq0Var = new cq0(str, concurrentLinkedQueue, eVar, 1);
                list2.getClass();
                return new t(list2, cq0Var);
            default:
                Log.g(3, "ProductMaskHelper", "[syncServer] create DB consumer for featureType=" + str);
                return new dq0(str, concurrentLinkedQueue, eVar, list);
        }
    }
}
