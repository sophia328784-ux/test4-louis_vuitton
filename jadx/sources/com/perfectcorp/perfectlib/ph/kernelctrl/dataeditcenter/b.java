package com.perfectcorp.perfectlib.ph.kernelctrl.dataeditcenter;

import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
final class b extends CacheLoader<String, List<YMKPrimitiveData.MakeupColor>> {
    @Override // com.perfectcorp.thirdparty.com.google.common.cache.CacheLoader
    public final Object a(Object obj) {
        ExecutorService executorService = e.f41633a;
        return e.f(TemplateUtils.x((String) obj));
    }
}
