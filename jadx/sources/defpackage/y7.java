package defpackage;

import android.util.Pair;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Tracer;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y7 implements Function, CallbackToFutureAdapter.Resolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f81314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81315c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81317f;

    public /* synthetic */ y7(String str, Configuration.ImageSource imageSource, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable, ProgressCallback progressCallback) {
        this.f81314b = str;
        this.f81315c = imageSource;
        this.d = taskPriority;
        this.f81316e = downloadTaskCancelable;
        this.f81317f = progressCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) throws Exception {
        Configuration.ImageSource imageSource = (Configuration.ImageSource) this.f81315c;
        NetworkTaskManager.TaskPriority taskPriority = (NetworkTaskManager.TaskPriority) this.d;
        DownloadTaskCancelable downloadTaskCancelable = (DownloadTaskCancelable) this.f81316e;
        final ProgressCallback progressCallback = (ProgressCallback) this.f81317f;
        List list = (List) obj;
        ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
        int i2 = 3;
        Log.g(3, "ApplyEffectUtility", "[downloadSkuByProtocolMethod] metadataList.size=" + list.size());
        String str = !list.isEmpty() ? ((h) list.get(0)).skuGUID : this.f81314b;
        SkuDataForProtocol skuDataForProtocolI = SkuDataForProtocol.i(list, imageSource, null, null);
        Set set = skuDataForProtocolI.f39919j;
        if (set.isEmpty()) {
            return Single.h(Pair.create(str, skuDataForProtocolI));
        }
        final double size = set.size();
        Single singleCollectInto = Observable.fromIterable(set).flatMapSingle(new y81(str, taskPriority, downloadTaskCancelable, 2)).collectInto(new AtomicInteger(0), new BiConsumer() { // from class: e8
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
            public final void accept(Object obj2, Object obj3) {
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                progressCallback.a(((double) ((AtomicInteger) obj2).incrementAndGet()) / size);
            }
        });
        p3 p3Var = new p3(str, skuDataForProtocolI, i2);
        singleCollectInto.getClass();
        return new t(singleCollectInto, p3Var);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object i(CallbackToFutureAdapter.Completer completer) {
        ((Executor) this.f81315c).execute(new gd((Tracer) this.d, this.f81314b, (Function0) this.f81316e, (MutableLiveData) this.f81317f, completer));
        return Unit.f71739a;
    }

    public /* synthetic */ y7(Executor executor, Tracer tracer, String str, Function0 function0, MutableLiveData mutableLiveData) {
        this.f81315c = executor;
        this.d = tracer;
        this.f81314b = str;
        this.f81316e = function0;
        this.f81317f = mutableLiveData;
    }
}
