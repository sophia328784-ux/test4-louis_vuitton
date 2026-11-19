package defpackage;

import android.util.Pair;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.MakeupItemStatus;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.ph.database.ymk.look.d;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f8 implements Predicate, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConcurrentHashMap f69065c;

    public /* synthetic */ f8(ConcurrentHashMap concurrentHashMap, int i2) {
        this.f69064b = i2;
        this.f69065c = concurrentHashMap;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        MakeupItemStatus makeupItemStatus;
        int i2 = this.f69064b;
        ConcurrentHashMap concurrentHashMap = this.f69065c;
        switch (i2) {
            case 1:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                return new Pair(concurrentHashMap.values(), (List) obj);
            case 2:
                b bVar = (b) obj;
                String str = bVar.d;
                long j2 = bVar.m;
                int i3 = bVar.f41231i;
                if (i3 == 1) {
                    makeupItemStatus = MakeupItemStatus.NOT_FOUND;
                } else if (i3 == 2) {
                    makeupItemStatus = MakeupItemStatus.NOT_SUPPORTED;
                } else {
                    makeupItemStatus = (ApplyEffectUtility.F(str).d() && (bVar.e() != d.b.MAKEUP || j2 <= LookHandlerPreferences.f40327b.getLong(str, 0L)) && ((bVar.e() != d.b.NAIL || j2 <= NailLookHandlerPreferences.f40329b.getLong(str, 0L)) && (bVar.e() != d.b.JEWELRY || j2 <= JewelryLookHandlerPreferences.f40325b.getLong(str, 0L)))) ? MakeupItemStatus.UPDATED : MakeupItemStatus.OUTDATED;
                }
                concurrentHashMap.put(str, makeupItemStatus);
                return bVar;
            case 3:
                Pair pair = (Pair) obj;
                String str2 = (String) pair.first;
                com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c cVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c) concurrentHashMap.get((String) pair.second);
                Objects.requireNonNull(cVar);
                return Pair.create(str2, cVar);
            case 4:
                Pair pair2 = (Pair) obj;
                concurrentHashMap.put((String) pair2.second, (String) pair2.first);
                return (String) pair2.second;
            default:
                com.perfectcorp.perfectlib.ph.database.ymk.pattern.b bVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) obj;
                SkuInfo skuInfo = (SkuInfo) concurrentHashMap.get(bVar2.f41252b);
                return skuInfo != null ? Optional.e(Pair.create(bVar2, skuInfo)) : Optional.a();
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
        return !this.f69065c.containsKey((String) obj);
    }
}
