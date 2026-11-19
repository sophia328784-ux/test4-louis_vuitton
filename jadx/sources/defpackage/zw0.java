package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.Triple;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zw0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImmutableList f81738c;

    public /* synthetic */ zw0(ImmutableList immutableList, int i2) {
        this.f81737b = i2;
        this.f81738c = immutableList;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f81737b;
        ImmutableList<String> immutableList = this.f81738c;
        switch (i2) {
            case 0:
                Map map = (Map) obj;
                Observable observableFromIterable = Observable.fromIterable(immutableList);
                Objects.requireNonNull(map);
                return observableFromIterable.filter(new xw0(map, 1)).map(new xw0(map, 2)).toList();
            case 1:
                List<b.C0171b> list = (List) obj;
                Log.g(3, "SkuCacheStrategyHelper", "[queryForCacheFirstThenUpdate] getSkuSetList::size=" + list.size());
                ArrayList arrayList = new ArrayList(immutableList);
                for (b.C0171b c0171b : list) {
                    a.A(new StringBuilder("[queryForCacheFirstThenUpdate] getSkuSetList::skuSetId="), c0171b.guid, 3, "SkuCacheStrategyHelper");
                    arrayList.remove(c0171b.guid);
                }
                if (!arrayList.isEmpty()) {
                    Log.d("SkuCacheStrategyHelper", "[queryForCacheFirstThenUpdate] Can't get these SKU sets=" + arrayList);
                }
                return list;
            case 2:
                Triple triple = (Triple) obj;
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                for (String str : immutableList) {
                    if (((Set) triple.f39438c).contains(str)) {
                        hashSet.add(str);
                    } else {
                        hashSet2.add(str);
                    }
                }
                return Single.m(hashSet2.isEmpty() ? Single.h(new HashMap()) : ApplyEffectUtility.B(0, hashSet2).collectInto(new ConcurrentHashMap(), new v7(5)), hashSet.isEmpty() ? Single.h(new HashMap()) : ApplyEffectUtility.g(hashSet).collectInto(new ConcurrentHashMap(), new v7(6)), new yw0(27));
            default:
                Log.e("SkuHandler", "Get SKU metadata failed. skuIds=" + immutableList, (Throwable) obj);
                return Collections.EMPTY_MAP;
        }
    }
}
