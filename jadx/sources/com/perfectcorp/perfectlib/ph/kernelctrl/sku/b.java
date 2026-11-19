package com.perfectcorp.perfectlib.ph.kernelctrl.sku;

import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.exceptions.SkuNotFoundException;
import com.perfectcorp.perfectlib.exceptions.SkuNotSupportedException;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$q;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import defpackage.a61;
import defpackage.x1;
import defpackage.xx0;
import defpackage.y71;
import defpackage.zw;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f41543a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final NetworkTaskManager.TaskPriority f41544a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Collection f41545b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f41546c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f41547e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f41548f;

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.sku.b$a$a, reason: collision with other inner class name */
        public static final class C0178a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f41550b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Collection f41549a = Collections.EMPTY_SET;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f41551c = true;
            public boolean d = true;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f41552e = true;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public NetworkTaskManager.TaskPriority f41553f = NetworkTaskManager.TaskPriority.NORMAL;
        }

        public a(C0178a c0178a) {
            this.f41545b = c0178a.f41549a;
            this.f41546c = c0178a.f41550b;
            this.d = c0178a.f41551c;
            this.f41547e = c0178a.d;
            this.f41548f = c0178a.f41552e;
            this.f41544a = c0178a.f41553f;
        }
    }

    public b(a aVar) {
        this.f41543a = aVar;
    }

    public final Single a() {
        Log.g(3, "SkuManager", "begin query sku metadata");
        if (MoreCollections.a(this.f41543a.f41545b)) {
            return Single.h(new e((Throwable) new IllegalAccessException("you must setup one of status/guidList(not empty) to builder!")));
        }
        final int i2 = 0;
        Observable observableRetry = new o(new p(new Callable() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.sku.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Iterables.b(this.f41577b.f41543a.f41545b);
            }
        }), Functions.f42605a).flatMapSingle(new Function(this) { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.sku.j

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ b f41579c;

            {
                this.f41579c = this;
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                int i3 = i2;
                b bVar = this.f41579c;
                switch (i3) {
                    case 0:
                        return bVar.b((List) obj);
                    default:
                        b.a aVar = bVar.f41543a;
                        Log.g(3, "SkuManager", "begin check sku metadata status");
                        LinkedList linkedList = new LinkedList();
                        LinkedList linkedList2 = new LinkedList();
                        LinkedList linkedList3 = new LinkedList();
                        LinkedList linkedList4 = new LinkedList();
                        for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar : ((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g) obj).d) {
                            linkedList.add(hVar);
                            int i4 = c.f41554a[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.b(hVar.statusCode).ordinal()];
                            if (i4 == 1) {
                                linkedList3.add(hVar);
                            } else if (i4 == 2) {
                                linkedList2.add(hVar);
                            } else if (i4 == 3) {
                                linkedList4.add(hVar);
                            }
                        }
                        Log.g(3, "SkuManager", "finish check sku metadata status");
                        if (!linkedList2.isEmpty()) {
                            Log.d("SkuManager", "sku not found: " + linkedList2);
                            if (aVar.d) {
                                throw new SkuNotFoundException(Lists.c(linkedList2, new xx0(22)).toString());
                            }
                        }
                        if (!linkedList3.isEmpty()) {
                            Log.d("SkuManager", "sku not supported: " + linkedList2);
                            if (aVar.f41547e) {
                                throw new SkuNotSupportedException(Lists.c(linkedList3, new xx0(23)).toString());
                            }
                        }
                        Log.g(3, "SkuManager", "return sku metadata and wrap in Result");
                        return aVar.f41548f ? new e(linkedList4) : new e(linkedList);
                }
            }
        }).observeOn(h.f41569a).retry(2L);
        final int i3 = 1;
        Single list = observableRetry.map(new Function(this) { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.sku.j

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ b f41579c;

            {
                this.f41579c = this;
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj) {
                int i4 = i3;
                b bVar = this.f41579c;
                switch (i4) {
                    case 0:
                        return bVar.b((List) obj);
                    default:
                        b.a aVar = bVar.f41543a;
                        Log.g(3, "SkuManager", "begin check sku metadata status");
                        LinkedList linkedList = new LinkedList();
                        LinkedList linkedList2 = new LinkedList();
                        LinkedList linkedList3 = new LinkedList();
                        LinkedList linkedList4 = new LinkedList();
                        for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar : ((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.g) obj).d) {
                            linkedList.add(hVar);
                            int i5 = c.f41554a[com.perfectcorp.perfectlib.ph.database.ymk.sku.h.e.b(hVar.statusCode).ordinal()];
                            if (i5 == 1) {
                                linkedList3.add(hVar);
                            } else if (i5 == 2) {
                                linkedList2.add(hVar);
                            } else if (i5 == 3) {
                                linkedList4.add(hVar);
                            }
                        }
                        Log.g(3, "SkuManager", "finish check sku metadata status");
                        if (!linkedList2.isEmpty()) {
                            Log.d("SkuManager", "sku not found: " + linkedList2);
                            if (aVar.d) {
                                throw new SkuNotFoundException(Lists.c(linkedList2, new xx0(22)).toString());
                            }
                        }
                        if (!linkedList3.isEmpty()) {
                            Log.d("SkuManager", "sku not supported: " + linkedList2);
                            if (aVar.f41547e) {
                                throw new SkuNotSupportedException(Lists.c(linkedList3, new xx0(23)).toString());
                            }
                        }
                        Log.g(3, "SkuManager", "return sku metadata and wrap in Result");
                        return aVar.f41548f ? new e(linkedList4) : new e(linkedList);
                }
            }
        }).onErrorReturn(new a61(22)).flatMapIterable(new x1(27)).toList();
        a61 a61Var = new a61(23);
        list.getClass();
        return new t(list, a61Var);
    }

    public Single b(List list) {
        a aVar = this.f41543a;
        c$q c_q = new c$q(list, aVar.f41546c);
        c_q.f42049a = aVar.f41544a;
        return c_q.a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(c_q, 16)), new y71(4)));
    }
}
