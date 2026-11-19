package defpackage;

import android.util.Pair;
import androidx.media3.common.util.Consumer;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.e;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.c;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.h;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.d;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zy0 implements Function, BiConsumer, Consumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81748b;

    public /* synthetic */ zy0(int i2) {
        this.f81748b = i2;
    }

    public static /* synthetic */ void b() {
        throw new IndexOutOfBoundsException();
    }

    public static /* synthetic */ void c(String str) {
        throw new NoSuchElementException(str);
    }

    public static /* synthetic */ void d(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalStateException(sb.toString().toString());
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        ((HashSet) obj).add((String) obj2);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        Boolean bool;
        int i2 = 8;
        int i3 = 9;
        switch (this.f81748b) {
            case 0:
                if (((Boolean) obj).booleanValue()) {
                    bool = Boolean.TRUE;
                } else {
                    if (h.e()) {
                        Single list = new d(a.c(), new yw0(i2)).concatMapIterable(new zy0(6)).filter(new yw0(i3)).take(1L).toList();
                        yw0 yw0Var = new yw0(10);
                        list.getClass();
                        return new t(list, yw0Var).f(new pv0(12));
                    }
                    bool = Boolean.FALSE;
                }
                return Single.h(bool);
            case 1:
                String str = (String) obj;
                return Pair.create(str, a.i(str));
            case 2:
                return new t(SkuHandler.e(), new c8((List) obj, i2));
            case 3:
                List list2 = (List) obj;
                return new m(new p(new sa0(list2, 4)).j(Schedulers.f43170c), new c8(list2, i3));
            case 4:
                Pair pair = (Pair) obj;
                Observable observableG = ApplyEffectUtility.g((Collection) pair.first);
                Collection collection = (Collection) pair.second;
                h.a.C0179a c0179a = new h.a.C0179a();
                c0179a.d = NetworkTaskManager.TaskPriority.NORMAL;
                c0179a.f41574a = false;
                c0179a.f41575b = false;
                c0179a.f41576c = false;
                return observableG.mergeWith(new o(h.a(collection, 0, new h.a(c0179a)), new yw0(13)));
            case 5:
                String str2 = (String) obj;
                return Pair.create(str2, a.i(str2));
            case 6:
                return ((b) obj).b();
            case 7:
                Log.e("SkuHandler", "getProductInfosWithGuids failed", (Throwable) obj);
                return Optional.a();
            case 8:
                return (ProductInfo) ((Optional) obj).c();
            case 9:
                String str3 = (String) obj;
                return new Pair(str3, str3);
            case 10:
                return ((e) obj).f41292a;
            case 11:
                return (List) ((Pair) obj).second;
            case 12:
                return ((c) ((Pair) obj).first).f41341b;
            case 13:
                return (List) ((Pair) obj).second;
            case 14:
                return ((c) ((Pair) obj).first).f41341b;
            case 15:
                return ((c) ((Pair) obj).first).f41341b;
            case 16:
            default:
                return (List) ((Pair) obj).second;
            case 17:
                return (List) ((Pair) obj).second;
            case 18:
                return ((c) ((Pair) obj).first).f41341b;
            case 19:
                return (List) ((Pair) obj).second;
            case 20:
                return ((c) ((Pair) obj).first).f41341b;
            case 21:
                return (List) ((Pair) obj).second;
            case 22:
                return ((c) ((Pair) obj).first).f41341b;
        }
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
    }
}
