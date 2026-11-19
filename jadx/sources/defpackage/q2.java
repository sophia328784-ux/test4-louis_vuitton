package defpackage;

import android.util.Pair;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.VtoSetting;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q2 implements Function, Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f78983c;

    public /* synthetic */ q2(int i2, ArrayList arrayList) {
        this.f78982b = i2;
        this.f78983c = arrayList;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f78982b;
        ArrayList arrayList = this.f78983c;
        switch (i2) {
            case 0:
                return Pair.create((List) obj, arrayList);
            case 1:
                return Pair.create((List) obj, arrayList);
            case 2:
                return Pair.create((List) obj, arrayList);
            case 3:
                return Pair.create((List) obj, arrayList);
            case 4:
                VtoSetting vtoSetting = (VtoSetting) obj;
                arrayList.add(vtoSetting);
                return vtoSetting.f40014a;
            case 5:
                VtoSetting vtoSetting2 = (VtoSetting) obj;
                arrayList.add(vtoSetting2);
                return vtoSetting2.f40014a;
            case 6:
                return Pair.create((List) obj, arrayList);
            default:
                return Pair.create((List) obj, arrayList);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        b.C0171b c0171b = (b.C0171b) obj;
        try {
            Iterator it = this.f78983c.iterator();
            it.getClass();
            while (it.hasNext()) {
                Object next = it.next();
                a aVar = (a) next;
                Objects.requireNonNull(aVar);
                if (aVar.f41328a.equalsIgnoreCase(c0171b.guid)) {
                    return c0171b.payload.lastModified > ((a) next).f41331e;
                }
            }
            throw new NoSuchElementException();
        } catch (Throwable th) {
            Log.e("SkuCacheStrategyHelper", "[queryForCacheFirstThenUpdate] rawData filtered, SKU set ID=" + c0171b.guid, th);
            return false;
        }
    }
}
