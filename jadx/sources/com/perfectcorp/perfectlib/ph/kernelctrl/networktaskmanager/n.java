package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.text.TextUtils;
import android.util.Pair;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.guava.FluentFuture;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.DownloadKey;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.exceptions.IdSystemDataNotFoundException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import defpackage.md;
import java.io.File;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class n implements com.perfectcorp.thirdparty.com.google.common.util.concurrent.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f41520b;

    public /* synthetic */ n(Object obj, int i2) {
        this.f41519a = i2;
        this.f41520b = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
    public final ListenableFuture apply(Object obj) {
        ListenableFuture listenableFutureG;
        int i2 = this.f41519a;
        boolean z = true;
        Object obj2 = this.f41520b;
        switch (i2) {
            case 0:
                return c.b.e((c.b) obj2, (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj);
            case 1:
                c.b bVar = (c.b) obj2;
                TemplateUtils.c cVar = (TemplateUtils.c) obj;
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar2 = bVar.f41447e;
                Set set = bVar.q;
                if (set != null && !cVar.f41602a.t.isEmpty()) {
                    for (TemplateUtils.a aVar : cVar.f41602a.t.values()) {
                        if (!set.contains(aVar.f41589a)) {
                            Log.d("DownloadMakeupHandle", "preload look lack of download component item id=" + aVar.f41589a + " look guid=" + bVar2.d);
                            z = false;
                        }
                    }
                    if (!z) {
                        throw new IdSystemDataNotFoundException("preload look failed, guid=" + bVar2.d);
                    }
                }
                return Futures.g(cVar);
            case 2:
                final c.b bVar3 = (c.b) obj2;
                final TemplateUtils.c cVar2 = (TemplateUtils.c) obj;
                if (bVar3.t) {
                    Objects.requireNonNull(cVar2);
                    return Futures.g(new c.b.a(cVar2, DownloadImageDao.d.e(YMKDatabase.b(), ConfigurationName.DOWNLOAD_PLUGIN_URL, ((com.perfectcorp.perfectlib.ph.database.ymk.look.d) cVar2.f41602a.f41600j.get(0)).f41206e), bVar3.f39299b));
                }
                Objects.requireNonNull(cVar2);
                String str = ((com.perfectcorp.perfectlib.ph.database.ymk.look.d) cVar2.f41602a.f41600j.get(0)).f41206e;
                DownloadImageInfo.Builder builder = new DownloadImageInfo.Builder();
                builder.f40310a = str;
                builder.f40312c = ((com.perfectcorp.perfectlib.ph.database.ymk.look.d) cVar2.f41602a.f41600j.get(0)).f41203a;
                builder.d = DownloadImageDao.Type.LOOK;
                Pair pairCreate = Pair.create(str, builder);
                if (bVar3.n == Configuration.ImageSource.FILE) {
                    defpackage.a.A(new StringBuilder("downloadLookThumbnail url: "), (String) pairCreate.first, 3, "DownloadMakeupHandle");
                    String str2 = (String) pairCreate.first;
                    DownloadImageInfo.Builder builder2 = (DownloadImageInfo.Builder) pairCreate.second;
                    SettableFuture settableFuture = new SettableFuture();
                    Disposable disposableSubscribe = DownloadImageHelper.a(Collections.singleton(new DownloadImageHelper.DownloadComponent(str2)), bVar3.f41448f, bVar3.o).map(new p()).subscribe(new q(builder2, settableFuture), new r(settableFuture, 0));
                    ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                    LookHandler lookHandler = LookHandler.getInstance();
                    if (lookHandler != null) {
                        lookHandler.f39664a.b(disposableSubscribe);
                        listenableFutureG = settableFuture;
                    }
                    md.k("LookHandler is null. SDK might be released.");
                    return null;
                }
                listenableFutureG = Futures.g(null);
                b0 b0VarG = bVar3.g(cVar2, bVar3.n);
                final SettableFuture settableFuture2 = new SettableFuture();
                String str3 = cVar2.f41602a.w;
                bVar3.y.f41458c = 1;
                if (!TextUtils.isEmpty(str3)) {
                    com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.a.C0164a c0164a = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.background.a.C0164a(new DownloadKey.Guid(str3), str3);
                    NetworkTaskManager.TaskPriority taskPriority = bVar3.f41448f;
                    Objects.requireNonNull(taskPriority);
                    c0164a.f41418c = taskPriority;
                    com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.b bVarA = c0164a.a().a();
                    Action action = new Action() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.s
                        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                        public final void run() {
                            ExecutorService executorService = c.b.z;
                            Log.g(3, "DownloadMakeupHandle", "download background succeed");
                            c.b.C0165b c0165b = bVar3.y;
                            c0165b.f41460f.incrementAndGet();
                            c.b bVar4 = c.b.this;
                            if (bVar4.s) {
                                bVar4.a(c0165b.a());
                            }
                            settableFuture2.set(cVar2);
                        }
                    };
                    r rVar = new r(settableFuture2, 1);
                    bVarA.getClass();
                    CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(rVar, action);
                    bVarA.a(callbackCompletableObserver);
                    ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                    LookHandler lookHandler2 = LookHandler.getInstance();
                    if (lookHandler2 != null) {
                        lookHandler2.f39664a.b(callbackCompletableObserver);
                    }
                    md.k("LookHandler is null. SDK might be released.");
                    return null;
                }
                c.b.C0165b c0165b = bVar3.y;
                c0165b.f41460f.incrementAndGet();
                c.b bVar4 = c.b.this;
                if (bVar4.s) {
                    bVar4.a(c0165b.a());
                }
                settableFuture2.set(cVar2);
                return FluentFuture.a(Futures.e(listenableFutureG, settableFuture2, Futures.i(bVar3.h(cVar2, bVar3.f41447e.n), new n(b0VarG, 4), CallingThread.ANY))).b(new t(bVar3, cVar2, pairCreate, 0));
            case 3:
                c.b bVar5 = (c.b) obj2;
                File file = (File) obj;
                ExecutorService executorService = c.b.z;
                Objects.requireNonNull(file);
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar6 = bVar5.f41447e;
                Objects.requireNonNull(bVar6);
                TemplateUtils.c cVarD = TemplateUtils.d(IO.d(file.getAbsolutePath()), YMKPrimitiveData.SourceType.DOWNLOAD, bVar6, null);
                if (!bVar5.f41452k) {
                    FileUtils.c(file);
                }
                Throwable th = cVarD.f41603b;
                return th != null ? Futures.f(th) : Futures.g(cVarD);
            default:
                ExecutorService executorService2 = c.b.z;
                return (ListenableFuture) ((b0) obj2).call();
        }
    }
}
