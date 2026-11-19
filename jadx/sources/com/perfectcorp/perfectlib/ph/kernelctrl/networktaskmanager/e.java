package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.util.Pair;
import com.perfectcorp.common.network.DownloadKey;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.DownloadCacheStrategy;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.ab;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class e implements Function<List<com.perfectcorp.perfectlib.ph.database.ymk.makeup.b>, Single<DownloadReport.CompleteReport>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ NetworkTaskManager f41477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ c.a f41478c;

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        c.a aVar = this.f41478c;
        List list = (List) obj;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ApplyEffectUtility.v((com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) it.next());
        }
        if (aVar.f39300c.isCancelled()) {
            throw new SkipCallbackException("Future had been cancelled.");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list.iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                Pair pairCreate = Pair.create(arrayList, arrayList2);
                aVar.o.a(Lists.c((List) pairCreate.first, new d0(1)));
                Iterable iterable = (Iterable) pairCreate.second;
                c0 c0Var = new c0(this, pairCreate, 1);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(iterable, "sources is null");
                return new ab(iterable, c0Var);
            }
            com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) it2.next();
            c.C0166c c0166cA = c.C0166c.a(bVar);
            String str = bVar.d;
            NetworkTaskManager.TaskPriority taskPriority = aVar.f41448f;
            Objects.requireNonNull(taskPriority, "priority can't be null");
            c0166cA.d = taskPriority;
            c0166cA.n = aVar.s;
            c0166cA.f41461a = new DownloadKey.Guid(str);
            c0166cA.f41464e = DownloadStateMonitors.f41988a;
            c0166cA.g = false;
            c0166cA.f41466h = aVar.G;
            c0166cA.f41467i = aVar.H;
            DownloadCacheStrategy downloadCacheStrategy = aVar.m;
            Objects.requireNonNull(downloadCacheStrategy);
            c0166cA.f41468j = downloadCacheStrategy;
            Configuration.ImageSource imageSource = aVar.n;
            Objects.requireNonNull(imageSource);
            c0166cA.f41469k = imageSource;
            if (!aVar.D || !Objects.equals(aVar.E, str)) {
                z = false;
            }
            c0166cA.f41462b = z;
            c.b bVar2 = new c.b(c0166cA);
            bVar2.j(this.f41477b);
            arrayList.add(bVar2);
            arrayList2.add(bVar2.d(aVar.I, Schedulers.f43170c));
        }
    }
}
