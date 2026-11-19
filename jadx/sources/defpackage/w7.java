package defpackage;

import android.util.Pair;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.f;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class w7 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f80779c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ w7(DownloadTaskCancelable downloadTaskCancelable, boolean z, int i2) {
        this.f80778b = i2;
        this.f80779c = downloadTaskCancelable;
        this.d = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f80778b;
        boolean z = this.d;
        DownloadTaskCancelable downloadTaskCancelable = this.f80779c;
        switch (i2) {
            case 0:
                Pair pair = (Pair) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                List list = (List) pair.second;
                Collection collection = (Collection) pair.first;
                int i3 = 0;
                f fVarD = a.d(list, false, downloadTaskCancelable, false);
                Observable map = Observable.fromIterable(collection).flatMap(new v7(10)).map(new v7(11));
                if (z) {
                    ApplyEffectUtility.z(new n2(collection, 3));
                }
                Single list2 = ApplyEffectUtility.f(fVarD).mergeWith(map).toList(new a8(i3));
                Function function = Functions.f42605a;
                list2.getClass();
                return new o(list2, function).doFinally(new n7(2));
            default:
                return a.d((List) obj, true, downloadTaskCancelable, z);
        }
    }
}
