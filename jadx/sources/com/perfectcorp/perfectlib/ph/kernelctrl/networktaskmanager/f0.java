package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.zip.DataFormatException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class f0 implements com.perfectcorp.thirdparty.com.google.common.util.concurrent.i {
    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
    public final ListenableFuture apply(Object obj) {
        com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b) obj;
        ExecutorService executorService = c.b.z;
        Objects.requireNonNull(bVar);
        Threads.b();
        Optional optionalA = bVar.n.a(bVar, YMKPrimitiveData.SourceType.DOWNLOAD);
        return optionalA.d() ? Futures.g(new TemplateUtils.c((TemplateUtils.b) optionalA.c())) : Futures.f(new DataFormatException("[getProcessResult] parse zip info failed."));
    }
}
