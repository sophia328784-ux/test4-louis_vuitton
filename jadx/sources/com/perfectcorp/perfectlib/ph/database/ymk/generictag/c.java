package com.perfectcorp.perfectlib.ph.database.ymk.generictag;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f41176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41177c;
    public final boolean d;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41178a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f41179b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41180c;
        public boolean d;
    }

    public c(a aVar) {
        String str = aVar.f41178a;
        Objects.requireNonNull(str);
        this.f41175a = str;
        this.f41176b = aVar.f41179b;
        String str2 = aVar.f41180c;
        Objects.requireNonNull(str2);
        this.f41177c = str2;
        this.d = aVar.d;
    }
}
