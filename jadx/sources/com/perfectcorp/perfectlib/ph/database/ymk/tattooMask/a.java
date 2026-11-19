package com.perfectcorp.perfectlib.ph.database.ymk.tattooMask;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f41351c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41353f;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.a$a, reason: collision with other inner class name */
    public static final class C0158a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41354a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41355b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f41356c;
        public final String d;

        public C0158a(a aVar) {
            this.f41354a = aVar.f41349a;
            this.f41355b = aVar.f41350b;
            this.f41356c = aVar.f41351c;
            this.d = aVar.d;
        }
    }

    public a(String str, String str2, List<String> list, String str3, String str4, String str5) {
        this.f41349a = str;
        this.f41350b = str2;
        this.f41351c = list != null ? ImmutableList.u(list) : Collections.EMPTY_LIST;
        this.d = str3;
        this.f41352e = str4;
        this.f41353f = str5;
    }
}
