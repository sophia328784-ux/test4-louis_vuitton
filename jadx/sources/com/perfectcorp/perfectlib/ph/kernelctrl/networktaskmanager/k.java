package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.TemplateConsts;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.ms;
import defpackage.ua0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class k implements Function<i.a, SingleSource<Pair<List<com.perfectcorp.perfectlib.ph.template.a>, TemplateUtils.c>>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ DownloadTaskCancelable f41503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ int f41504c;
    public /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ String f41505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ BeautyMode f41506f;
    public /* synthetic */ YMKPrimitiveData.SourceType g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ String f41507h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ float f41508i;

    public final void a(i.a aVar, ImmutableList.Builder builder) {
        String str = this.f41505e;
        ArrayList<String> arrayList = new ArrayList(this.d);
        for (Pair pair : aVar.f41493c) {
            builder.f(!TextUtils.isEmpty(str) ? new com.perfectcorp.perfectlib.ph.template.a(((com.perfectcorp.perfectlib.ph.template.idc.e) pair.first).attr_guid, str, ((Long) pair.second).longValue()) : new com.perfectcorp.perfectlib.ph.template.a(((com.perfectcorp.perfectlib.ph.template.idc.e) pair.first).attr_guid, Collections.EMPTY_LIST, ((Long) pair.second).longValue()));
            arrayList.remove(((com.perfectcorp.perfectlib.ph.template.idc.e) pair.first).attr_guid);
        }
        for (Pair pair2 : aVar.d) {
            builder.f(!TextUtils.isEmpty(str) ? new com.perfectcorp.perfectlib.ph.template.a(((com.perfectcorp.perfectlib.ph.template.idc.g) pair2.first).attr_guid, str, ((Long) pair2.second).longValue()) : new com.perfectcorp.perfectlib.ph.template.a(((com.perfectcorp.perfectlib.ph.template.idc.g) pair2.first).attr_guid, Collections.EMPTY_LIST, ((Long) pair2.second).longValue()));
            arrayList.remove(((com.perfectcorp.perfectlib.ph.template.idc.g) pair2.first).attr_guid);
        }
        for (Pair pair3 : aVar.f41494e) {
            builder.f(!TextUtils.isEmpty(str) ? new com.perfectcorp.perfectlib.ph.template.a(((com.perfectcorp.perfectlib.ph.template.idc.d) pair3.first).attr_guid, str, ((Long) pair3.second).longValue()) : new com.perfectcorp.perfectlib.ph.template.a(((com.perfectcorp.perfectlib.ph.template.idc.d) pair3.first).attr_guid, Collections.EMPTY_LIST, ((Long) pair3.second).longValue()));
            arrayList.remove(((com.perfectcorp.perfectlib.ph.template.idc.d) pair3.first).attr_guid);
        }
        for (String str2 : arrayList) {
            builder.f(!TextUtils.isEmpty(str) ? new com.perfectcorp.perfectlib.ph.template.a(str2, str, 0L) : new com.perfectcorp.perfectlib.ph.template.a(str2, Collections.EMPTY_LIST, 0L));
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) throws JSONException {
        TemplateUtils.b bVar;
        String str;
        DownloadTaskCancelable downloadTaskCancelable;
        Map map;
        String string;
        final i.a aVar = (i.a) obj;
        DownloadTaskCancelable downloadTaskCancelable2 = this.f41503b;
        downloadTaskCancelable2.c();
        final TemplateUtils.c cVar = new TemplateUtils.c();
        StringBuilder sb = new StringBuilder("[#");
        int i2 = this.f41504c;
        sb.append(i2);
        sb.append("] #makeData(); begin");
        Log.g(3, "IdSystemDataHelper", sb.toString());
        Collection collection = aVar.f41493c;
        Map map2 = aVar.f41492a;
        Iterator it = collection.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            bVar = cVar.f41602a;
            if (!zHasNext) {
                break;
            }
            Pair pair = (Pair) it.next();
            boolean zIsEmpty = TextUtils.isEmpty(((com.perfectcorp.perfectlib.ph.template.idc.e) pair.first).attr_itemZIP);
            Object obj2 = pair.first;
            if (zIsEmpty) {
                defpackage.a.A(new StringBuilder("no zip, pattern id: "), ((com.perfectcorp.perfectlib.ph.template.idc.e) obj2).attr_guid, 3, "IdSystemDataHelper");
                com.perfectcorp.perfectlib.ph.template.idc.e eVar = (com.perfectcorp.perfectlib.ph.template.idc.e) pair.first;
                YMKPrimitiveData.SourceType sourceType = this.g;
                String str2 = this.f41507h;
                float f2 = this.f41508i;
                eVar.getClass();
                com.perfectcorp.perfectlib.ph.template.idc.e.a(eVar, bVar, sourceType, str2, f2, aVar);
            } else {
                StringBuilder sb2 = new StringBuilder("has zip, pattern id: ");
                sb2.append(((com.perfectcorp.perfectlib.ph.template.idc.e) obj2).attr_guid);
                sb2.append(", zip: ");
                defpackage.a.A(sb2, ((com.perfectcorp.perfectlib.ph.template.idc.e) pair.first).attr_itemZIP, 3, "IdSystemDataHelper");
                String str3 = ((com.perfectcorp.perfectlib.ph.template.idc.e) pair.first).attr_guid;
                String strC = TemplateConsts.c(this.f41506f);
                AtomicInteger atomicInteger = j.f41498a;
                if (!TextUtils.isEmpty(str3)) {
                    if (!((ImmutableList) j.f41499b).contains(BeautyMode.valueOfSkuFeatureType(strC))) {
                        bVar.u.put(str3, new SkuDataForProtocol.IdSystemContentZip(str3));
                    }
                }
            }
        }
        Iterator it2 = aVar.d.iterator();
        while (true) {
            str = "";
            if (!it2.hasNext()) {
                break;
            }
            com.perfectcorp.perfectlib.ph.template.idc.g gVar = (com.perfectcorp.perfectlib.ph.template.idc.g) ((Pair) it2.next()).first;
            gVar.getClass();
            Threads.b();
            (bVar == null ? new TemplateUtils.b() : bVar).p.add(new com.perfectcorp.perfectlib.ph.template.u(gVar.attr_guid, Collections.singletonList(a.b(gVar.attr_guid, (a) map2.get(gVar.attr_thumbnail))), ""));
        }
        Iterator it3 = aVar.f41494e.iterator();
        while (it3.hasNext()) {
            ((com.perfectcorp.perfectlib.ph.template.idc.d) ((Pair) it3.next()).first).a(bVar, this.f41507h, this.g, aVar);
        }
        Iterator it4 = aVar.f41495f.iterator();
        while (it4.hasNext()) {
            com.perfectcorp.perfectlib.ph.template.idc.f fVar = (com.perfectcorp.perfectlib.ph.template.idc.f) ((Pair) it4.next()).first;
            fVar.getClass();
            Threads.b();
            TemplateUtils.b bVar2 = bVar == null ? new TemplateUtils.b() : bVar;
            String strB = a.b(fVar.attr_guid, (a) map2.get(fVar.attr_thumbnail));
            String strB2 = a.b(fVar.attr_guid, (a) map2.get(fVar.attr_mask));
            Iterator it5 = it4;
            String strB3 = a.b(fVar.attr_guid, (a) map2.get(fVar.attr_shadow));
            TemplateUtils.b bVar3 = bVar;
            String strB4 = a.b(fVar.attr_guid, (a) map2.get(fVar.attr_highlight));
            String str4 = str;
            String strB5 = a.b(fVar.attr_guid, (a) map2.get(fVar.attr_lip_shape_ombre));
            try {
                JSONObject jSONObject = new JSONObject();
                map = map2;
                downloadTaskCancelable = downloadTaskCancelable2;
                try {
                    jSONObject.put("attr_guid", fVar.attr_guid);
                    jSONObject.put("attr_thumbnail", strB);
                    jSONObject.put("attr_mask", strB2);
                    jSONObject.put("attr_shadow", strB3);
                    jSONObject.put("attr_highlight", strB4);
                    jSONObject.put("attr_lip_shape_ombre", strB5);
                    jSONObject.put("attr_height_intensity", fVar.attr_height_intensity);
                    jSONObject.put("attr_height_upper_intensity", fVar.attr_height_upper_intensity);
                    jSONObject.put("attr_height_lower_intensity", fVar.attr_height_lower_intensity);
                    jSONObject.put("attr_size_intensity", fVar.attr_size_intensity);
                    jSONObject.put("attr_width_intensity", fVar.attr_width_intensity);
                    jSONObject.put("attr_mshaped_intensity", fVar.attr_mshaped_intensity);
                    jSONObject.put("attr_lip_shape_roi_start", fVar.attr_lip_shape_roi_start);
                    jSONObject.put("attr_itemZIP", fVar.attr_itemZIP);
                    string = jSONObject.toString();
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    string = str4;
                }
            } catch (Exception e3) {
                e = e3;
                downloadTaskCancelable = downloadTaskCancelable2;
                map = map2;
            }
            bVar2.o.add(new com.perfectcorp.perfectlib.ph.template.p(fVar.attr_guid, strB, string));
            it4 = it5;
            bVar = bVar3;
            str = str4;
            map2 = map;
            downloadTaskCancelable2 = downloadTaskCancelable;
        }
        DownloadTaskCancelable downloadTaskCancelable3 = downloadTaskCancelable2;
        Log.g(3, "IdSystemDataHelper", "[#" + i2 + "] #makeData(); end");
        TemplateUtils.b bVar4 = cVar.f41602a;
        if (bVar4.u.isEmpty()) {
            Log.g(3, "IdSystemDataHelper", "no idcZipDownloadComponents");
            bz bzVar = ImmutableList.f42200c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            a(aVar, builder);
            return Single.h(new Pair(builder.i(), cVar));
        }
        Log.g(3, "IdSystemDataHelper", "has idcZipDownloadComponents, total: " + bVar4.u.size());
        Single singleCollectInto = Observable.fromIterable(bVar4.u.values()).flatMapSingle(new ua0(downloadTaskCancelable3, 3)).collectInto(new AtomicInteger(0), new ms(i2, 5));
        Function function = new Function() { // from class: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i0
            @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
            public final Object apply(Object obj3) {
                bz bzVar2 = ImmutableList.f42200c;
                ImmutableList.Builder builder2 = new ImmutableList.Builder();
                this.f41496b.a(aVar, builder2);
                return new Pair(builder2.i(), cVar);
            }
        };
        singleCollectInto.getClass();
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(singleCollectInto, function);
    }
}
