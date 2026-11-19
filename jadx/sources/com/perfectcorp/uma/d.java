package com.perfectcorp.uma;

import defpackage.md;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f43267a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class a {
        public static final a DAILY;
        public static final a MONTHLY;
        public static final a QUARTERLY;
        public static final a WEEKLY;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ a[] f43268a;

        static {
            e eVar = new e();
            DAILY = eVar;
            f fVar = new f();
            WEEKLY = fVar;
            g gVar = new g();
            MONTHLY = gVar;
            h hVar = new h();
            QUARTERLY = hVar;
            f43268a = new a[]{eVar, fVar, gVar, hVar};
        }

        public static a[] values() {
            return (a[]) f43268a.clone();
        }

        public abstract void a(Calendar calendar);
    }

    static {
        Iterator it = EnumSet.allOf(a.class).iterator();
        int iOrdinal = 0;
        while (it.hasNext()) {
            iOrdinal |= 1 << ((a) it.next()).ordinal();
        }
        f43267a = iOrdinal;
    }

    public static int a(long j2, long j3) {
        int iOrdinal = 0;
        if (j2 < j3) {
            md.n("now < seen");
            return 0;
        }
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"), Locale.US);
        calendar.setTimeInMillis(j2);
        EnumSet enumSetNoneOf = EnumSet.noneOf(a.class);
        for (a aVar : a.values()) {
            aVar.a(calendar);
            if (j3 < calendar.getTimeInMillis()) {
                enumSetNoneOf.add(aVar);
            }
        }
        Iterator it = enumSetNoneOf.iterator();
        while (it.hasNext()) {
            iOrdinal |= 1 << ((a) it.next()).ordinal();
        }
        return iOrdinal;
    }
}
