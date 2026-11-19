package defpackage;

import android.util.Pair;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkinCareProduct;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.a;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xw0 implements Function, Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f81219c;

    public /* synthetic */ xw0(Map map, int i2) {
        this.f81218b = i2;
        this.f81219c = map;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f81218b;
        Map map = this.f81219c;
        switch (i2) {
            case 0:
                map.putAll((Map) obj);
                return map;
            case 1:
            default:
                String str = (String) obj;
                return new Pair(str, (String) map.get(str));
            case 2:
                a.C0191a c0191a = (a.C0191a) map.get((String) obj);
                Objects.requireNonNull(c0191a);
                return new SkinCareProduct.Inventory(c0191a);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        int i2 = this.f81218b;
        Map map = this.f81219c;
        String str = (String) obj;
        switch (i2) {
            case 1:
                return map.containsKey(str);
            default:
                if (map.containsKey(str)) {
                    return true;
                }
                Log.d("SkuHandler", "map to skuGuid failed, productId=" + str);
                return false;
        }
    }
}
