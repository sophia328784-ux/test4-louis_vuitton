package com.perfectcorp.perfectlib.ph.template;

import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f41612c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f41613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41614f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f41615h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f41616i;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f41617a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41618b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f41619c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public List f41620e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f41621f;
        public List g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f41622h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f41623i;

        public a(c cVar) {
            this.f41617a = cVar.f41610a;
            this.f41618b = cVar.f41611b;
            this.f41619c = cVar.f41612c;
            this.d = cVar.d;
            this.f41620e = cVar.f41613e;
            this.f41621f = cVar.f41614f;
            this.g = cVar.g;
            this.f41622h = cVar.f41615h;
            this.f41623i = cVar.f41616i;
        }

        public final c a() {
            return new c(this.f41617a, this.f41618b, this.f41619c, this.d, this.f41620e, this.f41621f, this.g, this.f41622h, this.f41623i);
        }
    }

    public c(String str, String str2, List<String> list, String str3, List<String> list2, String str4, List<String> list3, List<String> list4, int i2) {
        this.f41610a = str;
        this.f41611b = str2;
        this.f41612c = list != null ? ImmutableList.u(list) : Collections.EMPTY_LIST;
        this.d = str3;
        this.f41613e = list2;
        this.f41614f = str4;
        this.g = list3 != null ? ImmutableList.u(list3) : Collections.EMPTY_LIST;
        this.f41615h = list4 != null ? ImmutableList.u(list4) : Collections.EMPTY_LIST;
        this.f41616i = i2;
    }

    public final String a() {
        List list = this.g;
        return !list.isEmpty() ? (String) list.get(0) : "";
    }
}
