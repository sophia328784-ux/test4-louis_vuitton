package com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder;

import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends GsonBaseResponse {
    private final C0190a info = C0190a.f41832a;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.shadefinder.a$a, reason: collision with other inner class name */
    public static final class C0190a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0190a f41832a = new C0190a();
        private final List<String> shadeFinderV4ItemGuids;
        private final List<String> shadeFinderV4ProductGuids;

        public C0190a() {
            List<String> list = Collections.EMPTY_LIST;
            this.shadeFinderV4ItemGuids = list;
            this.shadeFinderV4ProductGuids = list;
        }

        public final List a() {
            List<String> list = this.shadeFinderV4ItemGuids;
            Set set = MoreCollections.f39434a;
            return list == null ? Collections.EMPTY_LIST : list;
        }

        public final List b() {
            List<String> list = this.shadeFinderV4ProductGuids;
            Set set = MoreCollections.f39434a;
            return list == null ? Collections.EMPTY_LIST : list;
        }
    }

    public final C0190a a() {
        C0190a c0190a = this.info;
        return c0190a != null ? c0190a : C0190a.f41832a;
    }
}
