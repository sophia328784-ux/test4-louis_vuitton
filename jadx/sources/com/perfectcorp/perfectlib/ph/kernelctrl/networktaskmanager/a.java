package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import android.text.TextUtils;
import com.perfectcorp.common.network.DownloadTaskHelper$FileDownloader;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadStateMonitors;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.DownloadPriority;
import defpackage.d21;
import defpackage.n00;
import java.io.File;
import java.net.URI;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f41402c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a$a, reason: collision with other inner class name */
    public static final class EnumC0163a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EnumC0163a f41403a = new EnumC0163a("PATTERN_THUMBNAIL", 0, "pattern_thumbnail");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final EnumC0163a f41404b = new EnumC0163a("PATTERN_MASK", 1, "pattern_mask");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final EnumC0163a f41405c = new EnumC0163a("TATTOO_MASK", 2, "tattoo_mask");
        public static final EnumC0163a d = new EnumC0163a("COLORED_MASK", 3, "colored_mask");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final EnumC0163a f41406e = new EnumC0163a("TEXTURE_THUMBNAIL", 4, "texture_thumbnail");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final EnumC0163a f41407f = new EnumC0163a("PALETTE_THUMBNAIL", 5, "palette_thumbnail");
        public static final EnumC0163a g = new EnumC0163a("SHAPE_THUMBNAIL", 6, "shape_thumbnail");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final EnumC0163a f41408h = new EnumC0163a("SHAPE_MASK", 7, "shape_mask");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final String f41409i;

        public EnumC0163a(String str, int i2, String str2) {
            super(str, i2);
            this.f41409i = str2;
        }
    }

    public a(String str, String str2, boolean z) {
        this.f41400a = str;
        this.f41401b = str2;
        this.f41402c = z;
    }

    public static DownloadTaskHelper$FileDownloader a(String str, a aVar, NetworkTaskManager.TaskPriority taskPriority) {
        DownloadTaskHelper$FileDownloader downloadTaskHelper$FileDownloader = new DownloadTaskHelper$FileDownloader();
        URI uriD = NetworkManager.d(aVar.f41401b);
        Objects.requireNonNull(uriD);
        downloadTaskHelper$FileDownloader.f39333a = uriD;
        downloadTaskHelper$FileDownloader.g = DownloadStateMonitors.f41988a;
        Objects.requireNonNull(taskPriority, "priority can't be null");
        downloadTaskHelper$FileDownloader.f39336e = taskPriority;
        downloadTaskHelper$FileDownloader.d = DownloadPriority.a();
        String strB = b(str, aVar);
        if (!aVar.f41402c) {
            downloadTaskHelper$FileDownloader.f39334b = new File(strB);
            return downloadTaskHelper$FileDownloader;
        }
        downloadTaskHelper$FileDownloader.f39334b = new File(d21.j(strB, "_tmp"));
        downloadTaskHelper$FileDownloader.f39335c = new File(strB);
        return downloadTaskHelper$FileDownloader;
    }

    public static String b(String str, a aVar) {
        if (aVar == null) {
            return "";
        }
        String str2 = aVar.f41400a;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str2)) {
            return "";
        }
        File file = new File(((b) aVar).d, str);
        file.mkdirs();
        return new File(file, str2).getAbsolutePath();
    }

    public static HashMap c(com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e, String str, String str2) {
        HashMap map = new HashMap();
        e(map, c0184e.attr_src, str, false, str2);
        e(map, c0184e.attr_imagesrc, str, false, str2);
        e(map, c0184e.attr_shapesrc, str, false, str2);
        e(map, c0184e.attr_secondsrc, str, false, str2);
        e(map, c0184e.attr_thumbnail, str, false, str2);
        String str3 = c0184e.attr_obb_path;
        e(map, str3, str, !TextUtils.isEmpty(str3) && c0184e.attr_obb_path.endsWith(".zip"), str2);
        if (!TextUtils.isEmpty(c0184e.attr_occluder_path) && URI.create(c0184e.attr_occluder_path).isAbsolute()) {
            e(map, c0184e.attr_occluder_path, str, false, str2);
        }
        e(map, c0184e.attr_shapesrc3d, str, false, str2);
        e(map, c0184e.attr_feathersrc3d, str, false, str2);
        return map;
    }

    public static HashMap d(com.perfectcorp.perfectlib.ph.template.idc.e eVar, String str) {
        HashMap map = new HashMap();
        e(map, eVar.attr_thumbnail, EnumC0163a.f41403a.f41409i, false, str);
        for (com.perfectcorp.perfectlib.ph.template.idc.e.i iVar : eVar.pattern_mask) {
            int i2 = 0;
            while (i2 < iVar.mask.size()) {
                com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e = iVar.mask.get(i2);
                StringBuilder sb = new StringBuilder();
                sb.append(EnumC0163a.f41404b.f41409i);
                sb.append("_");
                i2++;
                sb.append(i2);
                map.putAll(c(c0184e, sb.toString(), str));
            }
        }
        for (com.perfectcorp.perfectlib.ph.template.idc.e.j jVar : eVar.pattern_mask_cube_eyewear) {
            int i3 = 0;
            while (i3 < jVar.mask.size()) {
                com.perfectcorp.perfectlib.ph.template.idc.e.f fVar = new com.perfectcorp.perfectlib.ph.template.idc.e.f(jVar.mask.get(i3));
                StringBuilder sb2 = new StringBuilder();
                sb2.append(EnumC0163a.f41404b.f41409i);
                sb2.append("_");
                i3++;
                sb2.append(i3);
                String string = sb2.toString();
                HashMap map2 = new HashMap();
                e(map2, fVar.a("front_src"), string, false, str);
                e(map2, fVar.a("left_src"), string, false, str);
                e(map2, fVar.a("right_src"), string, false, str);
                e(map2, fVar.a("env_region_src"), string, false, str);
                e(map2, fVar.a("env_map_src"), string, false, str);
                e(map2, fVar.a("env_frame_src"), string, false, str);
                map.putAll(map2);
            }
        }
        for (com.perfectcorp.perfectlib.ph.template.idc.e.l lVar : eVar.tattoo_mask) {
            int i4 = 0;
            while (i4 < lVar.mask.size()) {
                com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e2 = lVar.mask.get(i4);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(EnumC0163a.f41405c.f41409i);
                sb3.append("_");
                i4++;
                sb3.append(i4);
                map.putAll(c(c0184e2, sb3.toString(), str));
            }
        }
        for (com.perfectcorp.perfectlib.ph.template.idc.e.a aVar : eVar.colored_mask) {
            int i5 = 0;
            while (i5 < aVar.mask.size()) {
                com.perfectcorp.perfectlib.ph.template.idc.e.C0184e c0184e3 = aVar.mask.get(i5);
                StringBuilder sb4 = new StringBuilder();
                sb4.append(EnumC0163a.d.f41409i);
                sb4.append("_");
                i5++;
                sb4.append(i5);
                map.putAll(c(c0184e3, sb4.toString(), str));
            }
        }
        return map;
    }

    public static void e(HashMap map, String str, String str2, boolean z, String str3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sbU = n00.u(str2, "_");
        sbU.append(new File(str).getName());
        map.put(str, new b(sbU.toString(), str, str3, z));
    }
}
