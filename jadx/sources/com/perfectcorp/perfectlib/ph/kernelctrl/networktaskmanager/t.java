package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.util.Pair;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TemplateUtils.c f41531c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f41532e;

    public /* synthetic */ t(Object obj, TemplateUtils.c cVar, Object obj2, int i2) {
        this.f41530b = i2;
        this.d = obj;
        this.f41531c = cVar;
        this.f41532e = obj2;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) throws JSONException {
        int i2 = this.f41530b;
        Object obj2 = this.f41532e;
        TemplateUtils.c cVar = this.f41531c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                ExecutorService executorService = c.b.z;
                DownloadImageInfo.Builder builder = (DownloadImageInfo.Builder) ((Pair) obj2).second;
                builder.getClass();
                return new c.b.a(cVar, Collections.singletonList(new DownloadImageInfo(builder)), ((c.b) obj3).f39299b);
            default:
                List list = (List) obj;
                ExecutorService executorService2 = c.b.z;
                TemplateUtils.b bVar = cVar.f41602a;
                i iVar = new i((ConcurrentHashMap) obj2);
                Iterator<T> it = ((com.perfectcorp.perfectlib.ph.database.ymk.makeup.c) obj3).makeup.eye_contact.iterator();
                while (it.hasNext()) {
                    Iterator<com.perfectcorp.perfectlib.ph.database.ymk.makeup.c.a.C0137a.b> it2 = ((com.perfectcorp.perfectlib.ph.database.ymk.makeup.c.a.C0137a) it.next()).patterns.iterator();
                    while (it2.hasNext()) {
                        for (com.perfectcorp.perfectlib.ph.template.idc.e eVar : it2.next().pattern) {
                            YMKPrimitiveData.SourceType sourceType = YMKPrimitiveData.SourceType.DOWNLOAD;
                            float f2 = TemplateUtils.f41580a;
                            eVar.getClass();
                            com.perfectcorp.perfectlib.ph.template.idc.e.a(eVar, bVar, sourceType, "eye_contact", f2, iVar);
                        }
                    }
                }
                Objects.requireNonNull(list);
                return (File) list.get(0);
        }
    }
}
