package defpackage;

import android.util.Pair;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.Triple;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.exceptions.LookNotFoundException;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.f;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q7 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadTaskCancelable f79029c;
    public final /* synthetic */ String d;

    public /* synthetic */ q7(DownloadTaskCancelable downloadTaskCancelable, String str, int i2) {
        this.f79028b = i2;
        this.f79029c = downloadTaskCancelable;
        this.d = str;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f79028b;
        String str = this.d;
        DownloadTaskCancelable downloadTaskCancelable = this.f79029c;
        switch (i2) {
            case 0:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                downloadTaskCancelable.c();
                for (b bVar : (Iterable) obj) {
                    if (bVar == null) {
                        b bVar2 = b.r;
                    } else if (bVar != b.r && bVar.d.equals(str)) {
                        ApplyEffectUtility.v(bVar);
                        return bVar;
                    }
                }
                throw new LookNotFoundException("No guid matched!");
            case 1:
                downloadTaskCancelable.c();
                return Pair.create(Integer.valueOf(SkuBeautyMode$FeatureType.a(str)), (Set) ((Triple) obj).f39438c);
            default:
                RequestTask.Response response = (RequestTask.Response) obj;
                downloadTaskCancelable.c();
                f fVar = (f) response.f39358b;
                Objects.requireNonNull(fVar);
                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] Get sku tree returned with response. type=" + str + ", responseCode=" + response.f39357a);
                List listB = fVar.b();
                StringBuilder sb = new StringBuilder("[getListBySyncServerProtocol] Get sku tree returned skus.size()=");
                sb.append(listB.size());
                Log.g(3, "SkuHandler", sb.toString());
                ImmutableSet immutableSetQ = FluentIterable.n(listB).r(new xx0(5)).q();
                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] toBeAddedSkuIds.size()=" + immutableSetQ.size());
                return Pair.create(Integer.valueOf(SkuBeautyMode$FeatureType.a(str)), immutableSetQ);
        }
    }
}
