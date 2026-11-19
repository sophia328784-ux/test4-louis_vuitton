package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f41491b = new i(Collections.EMPTY_MAP);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f41492a;

    public static class a extends i {
        public static final a g;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Collection f41493c;
        public final Collection d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Collection f41494e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Collection f41495f;

        static {
            List list = Collections.EMPTY_LIST;
            g = new a(list, list, list, list, Collections.EMPTY_MAP);
        }

        public a(List list, List list2, List list3, List list4, Map map) {
            super(map);
            this.f41493c = list;
            this.d = list2;
            this.f41494e = list3;
            this.f41495f = list4;
        }
    }

    public i(Map<String, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.a> map) {
        this.f41492a = map;
    }
}
