package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.debug.PerformanceCounter;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.exceptions.ContentIssueException;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.internal.DownloadTaskCancelable;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.perfectlib.makeupcam.template.ColorInfo;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.template.SkuTemplateUtils;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$d;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.SkuBeautyMode$FeatureType;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import com.perfectcorp.thirdparty.com.google.common.collect.ArrayListMultimap;
import com.perfectcorp.thirdparty.com.google.common.collect.HashMultimap;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import com.perfectcorp.thirdparty.com.google.common.collect.al;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.io.Files;
import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ak;
import defpackage.ex0;
import defpackage.hn0;
import defpackage.na0;
import defpackage.ww0;
import defpackage.y71;
import defpackage.yw0;
import defpackage.zw;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONException;
import org.w3c.dom.Element;

/* JADX INFO: loaded from: classes3.dex */
public final class SkuDataForProtocol {
    public static final PerformanceCounter n;
    public static final PerformanceCounter o;
    public static final PerformanceCounter p;
    public static final PerformanceCounter q;
    public static final PerformanceCounter r;
    public static final PerformanceCounter s;
    public static final PerformanceCounter t;
    public static final PerformanceCounter u;
    public static final PerformanceCounter v;
    public static final List w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f39912a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f39913b = new LinkedBlockingQueue();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f39914c = new ConcurrentHashMap();
    public final ArrayListMultimap d = new ArrayListMultimap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMultimap f39915e = new HashMultimap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMultimap f39916f = new HashMultimap();
    public final HashMultimap g = new HashMultimap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ConcurrentHashMap f39917h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Set f39918i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Set f39919j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayListMultimap f39920k;
    public final Set l;
    public final HashSet m;

    public interface DownloadComponent {
        Completable a(String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable);

        String a();

        String b();

        DownloadType c();
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class DownloadType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DownloadType f39921a = new DownloadType("IDC", 0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final DownloadType f39922b = new DownloadType("IMAGE", 1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final DownloadType f39923c = new DownloadType("IDC_FILES", 2);
    }

    @FunctionalInterface
    public interface ExtraInfoImageProcessor {
        void a(String str, String str2);
    }

    static {
        PerformanceCounter performanceCounter = PerformanceCounter.f39180b;
        n = performanceCounter;
        o = performanceCounter;
        p = performanceCounter;
        q = performanceCounter;
        r = performanceCounter;
        s = performanceCounter;
        t = performanceCounter;
        u = performanceCounter;
        v = performanceCounter;
        w = Collections.singletonList(SkuBeautyMode$FeatureType.EARRINGS.toString());
    }

    public SkuDataForProtocol() {
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        this.f39918i = setNewSetFromMap;
        this.f39919j = Collections.unmodifiableSet(setNewSetFromMap);
        this.f39920k = new ArrayListMultimap();
        this.l = Sets.e();
        this.m = new HashSet();
    }

    public static ArrayListMultimap b(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, String str, ExtraInfoImageProcessor extraInfoImageProcessor) {
        com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a aVar;
        String strA;
        com.perfectcorp.perfectlib.ph.kernelctrl.sku.d dVar = str != null ? new com.perfectcorp.perfectlib.ph.kernelctrl.sku.d(hVar, str) : null;
        ArrayListMultimap arrayListMultimap = new ArrayListMultimap();
        Iterator<com.perfectcorp.perfectlib.ph.template.o.f> it = hVar.info.room.skus.iterator();
        while (it.hasNext()) {
            Iterator<com.perfectcorp.perfectlib.ph.template.o.e> it2 = it.next().sku.iterator();
            while (it2.hasNext()) {
                for (com.perfectcorp.perfectlib.ph.template.o.b bVar : it2.next().image) {
                    String str2 = bVar.attr_path;
                    if (!TextUtils.isEmpty(str2)) {
                        DownloadImageInfo.Builder builder = new DownloadImageInfo.Builder();
                        builder.f40310a = str2;
                        builder.f40312c = hVar.skuGUID;
                        builder.d = DownloadImageDao.Type.SKU;
                        if (dVar != null) {
                            String str3 = bVar.attr_name;
                            if (str3 != null) {
                                switch (str3) {
                                    case "menu":
                                        strA = dVar.a();
                                        break;
                                    case "item_thumbnail":
                                        strA = dVar.b(bVar.attr_item_guid);
                                        break;
                                    case "menu_popup_n":
                                        strA = dVar.c();
                                        break;
                                    case "sku_thumbnail":
                                        strA = dVar.d();
                                        break;
                                    default:
                                        strA = "";
                                        break;
                                }
                                if (!TextUtils.isEmpty(strA)) {
                                    try {
                                        File file = new File(new DownloadImageHelper.DownloadComponent(str2).a());
                                        Files.b(new File(strA), file);
                                        builder.f40311b = file.getAbsolutePath();
                                        builder.f40313e = file.length();
                                        arrayListMultimap.put(str2, builder);
                                    } catch (Throwable th) {
                                        Log.e("SkuDataForProtocol", "[getImageInfoBuilders] can't copy image from room folder.", th);
                                        arrayListMultimap.put(str2, builder);
                                    }
                                }
                            }
                        }
                        arrayListMultimap.put(str2, builder);
                    }
                }
            }
        }
        com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b bVar2 = hVar.extraInfo;
        if (bVar2 != null && (aVar = bVar2.eyewearInfo) != null) {
            Iterator<com.perfectcorp.perfectlib.ph.database.ymk.sku.h.b.a.C0152a.C0153a> it3 = aVar.eyewear_attributes.frames.iterator();
            while (it3.hasNext()) {
                String str4 = it3.next().frame_thumbnail;
                if (!TextUtils.isEmpty(str4)) {
                    DownloadImageInfo.Builder builder2 = new DownloadImageInfo.Builder();
                    builder2.f40310a = str4;
                    builder2.f40312c = hVar.skuGUID;
                    builder2.d = DownloadImageDao.Type.SKU;
                    if (extraInfoImageProcessor != null) {
                        File file2 = new File(new DownloadImageHelper.DownloadComponent(str4).a());
                        extraInfoImageProcessor.a(str4, file2.getAbsolutePath());
                        builder2.f40311b = file2.getAbsolutePath();
                        builder2.f40313e = file2.length();
                    }
                    arrayListMultimap.put(str4, builder2);
                }
            }
        }
        return arrayListMultimap;
    }

    public static void c(SkuDataForProtocol skuDataForProtocol, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, Configuration.ImageSource imageSource, String str, ExtraInfoImageProcessor extraInfoImageProcessor) {
        ArrayListMultimap arrayListMultimap = skuDataForProtocol.f39920k;
        HashMultimap hashMultimap = skuDataForProtocol.f39916f;
        if (imageSource != Configuration.ImageSource.FILE) {
            for (Map.Entry entry : b(hVar, str, extraInfoImageProcessor).f()) {
                arrayListMultimap.put((String) entry.getKey(), (DownloadImageInfo.Builder) entry.getValue());
            }
            return;
        }
        ArrayListMultimap arrayListMultimapB = b(hVar, str, extraInfoImageProcessor);
        for (String str2 : arrayListMultimapB.keySet()) {
            Collection collection = arrayListMultimapB.get((Object) str2);
            List listE = DownloadImageDao.d.e(YMKDatabase.b(), ConfigurationName.DOWNLOAD_PLUGIN_URL, str2);
            DownloadImageHelper.DownloadComponent downloadComponent = new DownloadImageHelper.DownloadComponent(str2);
            na0 na0Var = new na0(skuDataForProtocol, str2, 6);
            Image image = new Image();
            image.f39931a = downloadComponent;
            image.f39932b = na0Var;
            if (listE.isEmpty()) {
                String str3 = downloadComponent.f40322b;
                if (!hashMultimap.o(str3)) {
                    skuDataForProtocol.f39915e.put(hVar.skuGUID, str3);
                    hashMultimap.put(str3, hVar.skuGUID);
                    skuDataForProtocol.f39918i.add(image);
                }
            }
            arrayListMultimap.n(collection, str2);
        }
    }

    public static void d(SkuDataForProtocol skuDataForProtocol, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, com.perfectcorp.perfectlib.ph.template.idc.e eVar, HashMap map) throws JSONException {
        skuDataForProtocol.d.put(hVar.skuGUID, new TemplateUtils.c(com.perfectcorp.perfectlib.ph.template.idc.e.a(eVar, null, YMKPrimitiveData.SourceType.SKU, hVar.type, TemplateUtils.f41580a, new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i(map))));
    }

    public static void e(File file, String str, String str2, String str3, HashMap map) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Files.b(new File(file, str3), new File(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.b(str, (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a) map.get(str2))));
    }

    public static void f(Element element, HashMap map, String str) {
        String attribute = element.getAttribute(str);
        if (TextUtils.isEmpty(attribute)) {
            return;
        }
        map.put(str, attribute);
    }

    public static boolean g(SkuDataForProtocol skuDataForProtocol, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d dVar) {
        String str = hVar.skuGUID;
        List<com.perfectcorp.perfectlib.ph.template.idc.d> list = dVar.info.itemContent.palettes;
        Set set = MoreCollections.f39434a;
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        boolean z = false;
        for (com.perfectcorp.perfectlib.ph.template.idc.d dVar2 : list) {
            Optional optionalA = dVar2.a(null, hVar.type, YMKPrimitiveData.SourceType.SKU, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i.f41491b);
            if (optionalA.d()) {
                TemplateUtils.b bVar = (TemplateUtils.b) optionalA.c();
                skuDataForProtocol.d.put(str, new TemplateUtils.c(bVar));
                for (TemplateUtils.a aVar : bVar.t.values()) {
                    if (SkuTemplateUtils.b(BeautyMode.valueOfSkuFeatureType(hVar.type)) || !dVar2.attr_guid.equals(aVar.f41589a)) {
                        HashMultimap hashMultimap = skuDataForProtocol.f39915e;
                        String str2 = aVar.f41589a;
                        hashMultimap.put(str, str2);
                        skuDataForProtocol.f39916f.put(str2, str);
                        skuDataForProtocol.g.put(str2, str);
                        skuDataForProtocol.f39918i.add(new IdSystem(aVar));
                    }
                }
                z = true;
            }
        }
        return z;
    }

    public static boolean h(com.perfectcorp.perfectlib.ph.template.idc.e eVar) {
        Iterator<com.perfectcorp.perfectlib.ph.template.idc.e.i> it = eVar.pattern_mask.iterator();
        while (it.hasNext()) {
            Iterator<com.perfectcorp.perfectlib.ph.template.idc.e.C0184e> it2 = it.next().mask.iterator();
            while (it2.hasNext()) {
                String name = new File(it2.next().attr_obb_path).getName();
                int iLastIndexOf = name.lastIndexOf(46);
                if ("obb".equalsIgnoreCase((iLastIndexOf <= 0 || iLastIndexOf >= name.length() - 1) ? "" : name.substring(iLastIndexOf + 1).toLowerCase(Locale.US))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static SkuDataForProtocol i(Iterable iterable, Configuration.ImageSource imageSource, String str, x xVar) throws Exception {
        PerformanceCounter.Tracer tracerA = n.a();
        SkuDataForProtocol skuDataForProtocol = new SkuDataForProtocol();
        synchronized (skuDataForProtocol.f39912a) {
            try {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) it.next();
                    String str2 = hVar.skuGUID;
                    com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar = hVar.backgroundInfo;
                    boolean z = false;
                    if (aVar != null) {
                        String str3 = aVar.payload;
                        if (str3 != null) {
                            com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a c0173a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a) GsonHelper.f39260a.i(str3, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a.class);
                            ArrayList<String> arrayList = new ArrayList();
                            if (!TextUtils.isEmpty(c0173a.data.thumbnail)) {
                                arrayList.add(c0173a.data.thumbnail);
                            }
                            if (!TextUtils.isEmpty(c0173a.makeup.background.get(0).imageUrl)) {
                                arrayList.add(c0173a.makeup.background.get(0).imageUrl);
                            }
                            if (!TextUtils.isEmpty(c0173a.makeup.foreground.get(0).imageUrl)) {
                                arrayList.add(c0173a.makeup.foreground.get(0).imageUrl);
                            }
                            for (String str4 : arrayList) {
                                DownloadImageInfo.Builder builder = new DownloadImageInfo.Builder();
                                builder.f40310a = str4;
                                builder.f40312c = hVar.skuGUID;
                                builder.d = DownloadImageDao.Type.SKU;
                                List listE = DownloadImageDao.d.e(YMKDatabase.b(), ConfigurationName.DOWNLOAD_PLUGIN_URL, str4);
                                DownloadImageHelper.DownloadComponent downloadComponent = new DownloadImageHelper.DownloadComponent(str4);
                                na0 na0Var = new na0(skuDataForProtocol, str4, 6);
                                Image image = new Image();
                                image.f39931a = downloadComponent;
                                image.f39932b = na0Var;
                                if (listE.isEmpty() && !skuDataForProtocol.f39916f.o(downloadComponent.f40322b)) {
                                    skuDataForProtocol.f39915e.put(hVar.skuGUID, downloadComponent.f40322b);
                                    skuDataForProtocol.f39916f.put(downloadComponent.f40322b, hVar.skuGUID);
                                    skuDataForProtocol.f39918i.add(image);
                                    skuDataForProtocol.f39920k.n(Collections.singletonList(builder), str4);
                                }
                            }
                        }
                        ConcurrentHashMap concurrentHashMap = skuDataForProtocol.f39917h;
                        com.perfectcorp.perfectlib.ph.database.ymk.background.a aVar2 = hVar.backgroundInfo;
                        concurrentHashMap.put(aVar2.guid, aVar2);
                        skuDataForProtocol.f39913b.add(str2);
                        skuDataForProtocol.f39914c.put(str2, hVar);
                    } else {
                        for (com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d dVar : hVar.items) {
                            boolean zG = g(skuDataForProtocol, hVar, dVar);
                            boolean zM = m(skuDataForProtocol, hVar, dVar);
                            boolean zL = l(skuDataForProtocol, hVar, dVar);
                            if (zG || zM || zL) {
                                z = true;
                            }
                        }
                        c(skuDataForProtocol, hVar, imageSource, str, xVar);
                        if (!z) {
                            throw new ContentIssueException("Invalid metadata for product ID=" + str2);
                        }
                        skuDataForProtocol.f39913b.add(str2);
                        skuDataForProtocol.f39914c.put(str2, hVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        tracerA.close();
        return skuDataForProtocol;
    }

    public static HashMap j(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, com.perfectcorp.perfectlib.ph.template.idc.e eVar) {
        hVar.getClass();
        return com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a.d(eVar, com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.b(new Sku(hVar), com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a.f41563a));
    }

    public static boolean l(SkuDataForProtocol skuDataForProtocol, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d dVar) {
        String str = hVar.skuGUID;
        List<com.perfectcorp.perfectlib.ph.template.idc.a> list = dVar.info.itemContent.colors;
        Set set = MoreCollections.f39434a;
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        boolean z = false;
        for (com.perfectcorp.perfectlib.ph.template.idc.a aVar : list) {
            String str2 = hVar.type;
            YMKPrimitiveData.SourceType sourceType = YMKPrimitiveData.SourceType.SKU;
            aVar.getClass();
            Threads.b();
            TemplateUtils.b bVar = new TemplateUtils.b();
            if (!TextUtils.isEmpty(aVar.attr_sku_guid)) {
                bVar.v.add(aVar.attr_sku_guid);
            }
            ColorInfo colorInfo = new ColorInfo(TemplateUtils.g(), str2, TemplateUtils.u(aVar.inner_text.trim()), String.valueOf(aVar.attr_intensity), sourceType.name(), YMKPrimitiveData.MakeupColor.ExtraData.c("", "", "false", "-1", "", "-1", null, aVar.attr_glow_intensity, aVar.attr_coverage_intensity, aVar.attr_skin_smooth_intensity, "-1", "-1", "-1", "-1", "-1", "-1", "-1", "").toString(), aVar.attr_guid, "");
            bVar.g.add(colorInfo);
            if (!com.perfectcorp.perfectlib.ph.template.idc.d.d(aVar.attr_guid, sourceType)) {
                bVar.f41596e.add(new com.perfectcorp.perfectlib.ph.template.d(aVar.attr_guid, colorInfo.f40929a, 1, "", "", sourceType.name(), TemplateUtils.f41580a, sourceType == YMKPrimitiveData.SourceType.DOWNLOAD, aVar.attr_sku_guid, str2, aVar.attr_color_number, "", GsonHelper.f39261b.k(new com.perfectcorp.perfectlib.ph.template.idc.d.f(new com.perfectcorp.perfectlib.ph.template.idc.d.f.a()))));
            }
            Optional optionalA = com.perfectcorp.perfectlib.ph.template.b.a(bVar);
            if (optionalA.d()) {
                skuDataForProtocol.d.put(str, new TemplateUtils.c((TemplateUtils.b) optionalA.c()));
                z = true;
            }
        }
        return z;
    }

    public static boolean m(SkuDataForProtocol skuDataForProtocol, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, com.perfectcorp.perfectlib.ph.database.ymk.sku.h.d dVar) {
        boolean z;
        boolean z2;
        boolean z3;
        SkuDataForProtocol skuDataForProtocol2;
        com.perfectcorp.perfectlib.ph.template.idc.e eVar;
        Set set = skuDataForProtocol.l;
        HashMultimap hashMultimap = skuDataForProtocol.f39916f;
        HashMultimap hashMultimap2 = skuDataForProtocol.f39915e;
        HashMultimap hashMultimap3 = skuDataForProtocol.g;
        Set set2 = skuDataForProtocol.f39918i;
        String str = hVar.skuGUID;
        try {
            List<com.perfectcorp.perfectlib.ph.template.idc.e> list = dVar.info.itemContent.patterns;
            Set set3 = MoreCollections.f39434a;
            if (list == null) {
                list = Collections.EMPTY_LIST;
            }
            Iterator<com.perfectcorp.perfectlib.ph.template.idc.e> it = list.iterator();
            boolean z4 = false;
            while (it.hasNext()) {
                try {
                    com.perfectcorp.perfectlib.ph.template.idc.e next = it.next();
                    z3 = true;
                    boolean zContains = YMKPrimitiveData.TextureSupportedMode.c(next.attr_texture_supported_mode).contains(YMKPrimitiveData.TextureSupportedMode.REAL_3D);
                    SkuBeautyMode$FeatureType skuBeautyMode$FeatureType = SkuBeautyMode$FeatureType.RING;
                    SkuBeautyMode$FeatureType skuBeautyMode$FeatureType2 = SkuBeautyMode$FeatureType.BRACELET;
                    SkuBeautyMode$FeatureType skuBeautyMode$FeatureType3 = SkuBeautyMode$FeatureType.WATCH;
                    z2 = z4;
                    try {
                        SkuBeautyMode$FeatureType skuBeautyMode$FeatureType4 = SkuBeautyMode$FeatureType.NECKLACE;
                        bz bzVar = ImmutableList.f42200c;
                        Object[] objArr = {skuBeautyMode$FeatureType, skuBeautyMode$FeatureType2, skuBeautyMode$FeatureType3, skuBeautyMode$FeatureType4};
                        al.a.d(4, objArr);
                        ImmutableList immutableListS = ImmutableList.s(4, objArr);
                        if (zContains || immutableListS.contains(SkuTemplateUtils.a(hVar.type))) {
                            it = it;
                            String str2 = next.attr_patternGuid;
                            Preconditions.g(!TextUtils.isEmpty(str2), "patternGuid is empty. productGuid=" + str + ", skuGuid=" + next.attr_guid);
                            if (!com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.e(-98432, Collections.singletonList(str2), str).isEmpty()) {
                                hashMultimap3.put(str2, str);
                                if (!set.contains(str2)) {
                                    set2.add((hVar.type.equals(skuBeautyMode$FeatureType3.toString()) || hVar.type.equals(skuBeautyMode$FeatureType2.toString()) || hVar.type.equals(skuBeautyMode$FeatureType.toString()) || hVar.type.equals(skuBeautyMode$FeatureType4.toString())) ? new IdSystemContentZip(str2, hVar, next) : new IdSystemContentZip(str2, hVar));
                                    set.add(str2);
                                }
                            }
                        } else {
                            TemplateUtils.b bVarA = com.perfectcorp.perfectlib.ph.template.idc.e.a(next, null, YMKPrimitiveData.SourceType.SKU, hVar.type, TemplateUtils.f41580a, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.i.f41491b);
                            try {
                                boolean z5 = SkuTemplateUtils.b(BeautyMode.valueOfSkuFeatureType(hVar.type)) && !h(next);
                                if (z5) {
                                    HashMap mapJ = j(hVar, next);
                                    String str3 = next.attr_guid;
                                    Collection collectionValues = mapJ.values();
                                    ww0 ww0Var = new ww0(skuDataForProtocol, hVar, next, mapJ, 1);
                                    skuDataForProtocol2 = skuDataForProtocol;
                                    eVar = next;
                                    IdSystemFiles idSystemFiles = new IdSystemFiles(str3, collectionValues, ww0Var);
                                    hashMultimap2.put(str, str3);
                                    hashMultimap.put(str3, str);
                                    set2.add(idSystemFiles);
                                } else {
                                    skuDataForProtocol2 = skuDataForProtocol;
                                    eVar = next;
                                }
                                for (TemplateUtils.a aVar : bVarA.t.values()) {
                                    if (!z5 || !eVar.attr_guid.equals(aVar.f41589a)) {
                                        skuDataForProtocol2.d.put(str, new TemplateUtils.c(bVarA));
                                        String str4 = aVar.f41589a;
                                        hashMultimap2.put(str, str4);
                                        hashMultimap.put(str4, str);
                                        hashMultimap3.put(str4, str);
                                        if (!hVar.type.equals(SkuBeautyMode$FeatureType.EYE_CONTACT.toString())) {
                                            set2.add(new IdSystem(aVar));
                                        }
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                z = z3;
                                Log.e("SkuDataForProtocol", "[collectData] parse pattern failed. skuId=" + str, th);
                                return z;
                            }
                        }
                        it = it;
                        z4 = true;
                    } catch (Throwable th2) {
                        th = th2;
                        z = z2;
                        Log.e("SkuDataForProtocol", "[collectData] parse pattern failed. skuId=" + str, th);
                        return z;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    z2 = z4;
                }
            }
            z2 = z4;
            z3 = true;
            if (!w.contains(hVar.type)) {
                return z2;
            }
            List<String> list2 = dVar.info.pattern;
            if (list2 == null) {
                list2 = Collections.EMPTY_LIST;
            }
            z = z2;
            for (String str5 : list2) {
                try {
                    Preconditions.g(!TextUtils.isEmpty(str5), "patternGuid is empty. productGuid=" + str + ", skuGuid=" + dVar.itemGUID);
                    if (!com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.e(-84242, Collections.singletonList(str5), str).isEmpty()) {
                        hashMultimap3.put(str5, str);
                        if (!set.contains(str5)) {
                            set2.add(new IdSystemContentZip(str5, hVar));
                            set.add(str5);
                        }
                    }
                    z = true;
                } catch (Throwable th4) {
                    th = th4;
                    Log.e("SkuDataForProtocol", "[collectData] parse pattern failed. skuId=" + str, th);
                    return z;
                }
            }
            return z;
        } catch (Throwable th5) {
            th = th5;
            z = false;
        }
    }

    public final com.perfectcorp.perfectlib.ph.database.ymk.sku.h a(String str) {
        com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar;
        synchronized (this.f39912a) {
            hVar = (com.perfectcorp.perfectlib.ph.database.ymk.sku.h) this.f39914c.get(str);
        }
        return hVar;
    }

    public final void k() throws Exception {
        PerformanceCounter.Tracer tracerA = o.a();
        synchronized (this.f39912a) {
            PerformanceCounter.Tracer tracerA2 = v.a();
            DBUtility.i(YMKDatabase.c(), new hn0(this, 18));
            tracerA2.close();
        }
        tracerA.close();
    }

    public static class IdSystemContentZip implements DownloadComponent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f39925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.perfectlib.ph.database.ymk.sku.h f39926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.perfectlib.ph.template.idc.e f39927c;

        public IdSystemContentZip(String str, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, com.perfectcorp.perfectlib.ph.template.idc.e eVar) {
            this.f39925a = str;
            this.f39927c = eVar;
            this.f39926b = hVar;
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final Completable a(String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
            c$d c_d = new c$d(Collections.singletonList(this.f39925a));
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.n(c_d.a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(c_d, 4)), new y71(1))), new ex0(this, taskPriority, downloadTaskCancelable, str));
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String b() {
            return "IDC_CONTENT_ZIP";
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final DownloadType c() {
            return DownloadType.f39921a;
        }

        public IdSystemContentZip(String str, com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar) {
            this(str, hVar, null);
        }

        public IdSystemContentZip(String str) {
            this(str, null, null);
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String a() {
            return this.f39925a;
        }
    }

    public static class IdSystem implements DownloadComponent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TemplateUtils.a f39924a;

        public IdSystem(TemplateUtils.a aVar) {
            this.f39924a = aVar;
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final Completable a(String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j.c(Collections.singleton(this.f39924a), str, taskPriority, downloadTaskCancelable));
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String b() {
            return "IDC";
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final DownloadType c() {
            return DownloadType.f39921a;
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String a() {
            return this.f39924a.f41589a;
        }
    }

    public static class IdSystemFiles implements DownloadComponent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f39928a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Collection f39929b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Action f39930c;

        public IdSystemFiles(String str, Collection collection, Action action) {
            this.f39928a = str;
            this.f39929b = collection;
            this.f39930c = action;
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final Completable a(String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
            Single list = Observable.fromIterable(this.f39929b).flatMapSingle(new defpackage.p3(this, taskPriority, 27)).toList();
            list.getClass();
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(list).e(this.f39930c);
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String b() {
            return "IDC files";
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final DownloadType c() {
            return DownloadType.f39923c;
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String a() {
            return this.f39928a;
        }
    }

    public static class Image implements DownloadComponent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DownloadImageHelper.DownloadComponent f39931a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public na0 f39932b;

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final Completable a(String str, NetworkTaskManager.TaskPriority taskPriority, DownloadTaskCancelable downloadTaskCancelable) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t(new ak(DownloadImageHelper.a(Collections.singleton(this.f39931a), taskPriority, downloadTaskCancelable), null), new yw0(4)).f(this.f39932b));
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String b() {
            return "image";
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final DownloadType c() {
            return DownloadType.f39922b;
        }

        @Override // com.perfectcorp.perfectlib.SkuDataForProtocol.DownloadComponent
        public final String a() {
            return this.f39931a.f40322b;
        }
    }
}
