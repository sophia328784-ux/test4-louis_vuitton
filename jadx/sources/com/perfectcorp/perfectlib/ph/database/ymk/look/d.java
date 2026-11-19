package com.perfectcorp.perfectlib.ph.database.ymk.look;

import defpackage.md;
import defpackage.tr;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f41204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41205c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41206e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41207f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f41208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f41209i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f41210j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f41211k;
    public final String l;
    public final String m;

    public enum b {
        MAKEUP("MAKEUP"),
        NAIL("NAIL"),
        JEWELRY("JEWELRY");

        public final String d;

        b(String str) {
            this.d = str;
        }

        public static b a(String str) {
            for (b bVar : (b[]) values().clone()) {
                if (bVar.d.equals(str)) {
                    return bVar;
                }
            }
            md.n(tr.g("Unknown type string ", str));
            return null;
        }
    }

    public d(a aVar) {
        this.f41203a = aVar.f41212a;
        this.f41204b = aVar.f41213b;
        this.f41205c = aVar.f41214c;
        this.d = aVar.d;
        this.f41206e = aVar.f41215e;
        this.f41207f = aVar.f41216f;
        this.g = aVar.g;
        this.f41208h = aVar.f41217h;
        this.f41209i = aVar.f41218i;
        this.f41210j = aVar.f41219j;
        this.f41211k = aVar.f41220k;
        this.l = aVar.l;
        this.m = aVar.m;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f41213b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41214c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f41215e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f41216f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f41217h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f41218i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f41219j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f41220k;
        public String l;
        public String m;

        public a(d dVar) {
            this.f41220k = "";
            this.l = "";
            this.m = b.MAKEUP.d;
            this.f41212a = dVar.f41203a;
            this.f41213b = dVar.f41204b;
            this.f41214c = dVar.f41205c;
            this.d = dVar.d;
            this.f41215e = dVar.f41206e;
            this.f41216f = dVar.f41207f;
            this.g = dVar.g;
            this.f41217h = dVar.f41208h;
            this.f41218i = dVar.f41209i;
            this.f41220k = dVar.f41211k;
            this.f41219j = dVar.f41210j;
            this.l = dVar.l;
            this.m = dVar.m;
        }

        public a(String str) {
            this.f41220k = "";
            this.l = "";
            this.m = b.MAKEUP.d;
            this.f41212a = str;
        }
    }
}
