package com.perfectcorp.perfectlib.ph.kernelctrl.sku;

import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ymk.Globals;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata;
import defpackage.mt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class f {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f41563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f41564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static a f41565c;
        private static final /* synthetic */ a[] d;

        static {
            a aVar = new a("CONTENT_ZIP", 0);
            f41563a = aVar;
            a aVar2 = new a("IMAGE_ZIP", 1);
            f41564b = aVar2;
            a aVar3 = new a("DFP_ZIP", 2);
            f41565c = aVar3;
            d = new a[]{aVar, aVar2, aVar3};
        }

        public static a[] a() {
            return (a[]) d.clone();
        }
    }

    public static class b extends c {
    }

    public static class c implements DownloadMetadata {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.perfectcorp.perfectlib.ph.database.ymk.sku.h f41566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41567b;

        public c(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, String str) {
            this.f41566a = hVar;
            this.f41567b = str;
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
        public final String a() {
            return "sku";
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
        public final long b() {
            return this.f41566a.skuId;
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
        public final String c() {
            return "";
        }

        @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
        public final String d() {
            return this.f41567b;
        }
    }

    public static class d extends c {
    }

    public static class e extends c {
    }

    public static c a(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, a aVar) {
        int i2 = g.f41568a[aVar.ordinal()];
        if (i2 == 1) {
            return new b(hVar, hVar.skuGUID + "_" + a.f41563a);
        }
        if (i2 != 2) {
            mt.i("DownloadType doesn't match");
            return null;
        }
        return new e(hVar, hVar.skuGUID + "_" + a.f41564b);
    }

    public static String b(Sku sku, a aVar) {
        return Globals.a() + "/mcsdk/download/sku/" + sku.f41262a + "_" + sku.f41266f + "_" + aVar;
    }
}
