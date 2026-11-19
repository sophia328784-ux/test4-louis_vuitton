package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f41539b;

    public /* synthetic */ x(Object obj, int i2) {
        this.f41538a = i2;
        this.f41539b = obj;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41538a;
        Object obj2 = this.f41539b;
        switch (i2) {
            case 0:
                String str = (String) obj;
                ExecutorService executorService = c.b.z;
                ((Map) obj2).put(str, new TemplateUtils.a(str, TemplateUtils.a.EnumC0180a.f41592a, BeautyMode.UNDEFINED, YMKPrimitiveData.SourceType.DOWNLOAD));
                break;
            default:
                c.b.C0165b c0165b = ((c.b) obj2).y;
                c0165b.d.incrementAndGet();
                c.b bVar = c.b.this;
                if (bVar.s) {
                    bVar.a(c0165b.a());
                }
                break;
        }
    }
}
