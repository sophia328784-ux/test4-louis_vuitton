package com.perfectcorp.perfectlib.ph.template;

import android.text.TextUtils;
import android.util.Pair;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.template.b$b, reason: collision with other inner class name */
    public static class C0181b {
        List<c> result = Collections.EMPTY_LIST;

        private C0181b() {
        }

        public final List a() {
            com.perfectcorp.perfectlib.ph.template.idc.e eVar;
            if (MoreCollections.a(this.result)) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            for (c cVar : this.result) {
                if (!TextUtils.isEmpty(cVar.id) && (eVar = cVar.payload.pattern) != com.perfectcorp.perfectlib.ph.template.idc.e.f41662a && !TextUtils.isEmpty(eVar.attr_guid)) {
                    arrayList.add(Pair.create(eVar, Long.valueOf(cVar.lastModified)));
                }
            }
            return arrayList;
        }

        public final List b() {
            com.perfectcorp.perfectlib.ph.template.idc.e eVar;
            if (MoreCollections.a(this.result)) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            for (c cVar : this.result) {
                if (!TextUtils.isEmpty(cVar.id) && (eVar = cVar.payload.pattern) != com.perfectcorp.perfectlib.ph.template.idc.e.f41662a && !TextUtils.isEmpty(eVar.attr_guid)) {
                    arrayList.add(eVar);
                }
            }
            return arrayList;
        }

        public final List c() {
            com.perfectcorp.perfectlib.ph.template.idc.d dVar;
            if (MoreCollections.a(this.result)) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            for (c cVar : this.result) {
                if (!TextUtils.isEmpty(cVar.id) && (dVar = cVar.payload.palette) != com.perfectcorp.perfectlib.ph.template.idc.d.f41655a && !TextUtils.isEmpty(dVar.attr_guid)) {
                    arrayList.add(Pair.create(dVar, Long.valueOf(cVar.lastModified)));
                }
            }
            return arrayList;
        }

        public final List d() {
            com.perfectcorp.perfectlib.ph.template.idc.g gVar;
            if (MoreCollections.a(this.result)) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            for (c cVar : this.result) {
                if (!TextUtils.isEmpty(cVar.id) && (gVar = cVar.payload.texture) != com.perfectcorp.perfectlib.ph.template.idc.g.f41665a && !TextUtils.isEmpty(gVar.attr_guid)) {
                    arrayList.add(Pair.create(gVar, Long.valueOf(cVar.lastModified)));
                }
            }
            return arrayList;
        }

        public final List e() {
            com.perfectcorp.perfectlib.ph.template.idc.f fVar;
            if (MoreCollections.a(this.result)) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            for (c cVar : this.result) {
                if (!TextUtils.isEmpty(cVar.id) && (fVar = cVar.payload.shape) != com.perfectcorp.perfectlib.ph.template.idc.f.f41664a && !TextUtils.isEmpty(fVar.attr_guid)) {
                    arrayList.add(Pair.create(fVar, Long.valueOf(cVar.lastModified)));
                }
            }
            return arrayList;
        }
    }

    public static class c {
        final String id = "";
        final a payload = new a(0);
        final long lastModified = 0;
    }

    public static Optional a(TemplateUtils.b bVar) {
        return (bVar.f41596e.isEmpty() && bVar.d.isEmpty()) ? Optional.a() : Optional.e(bVar);
    }

    public static class a {
        final com.perfectcorp.perfectlib.ph.template.idc.d palette;
        final com.perfectcorp.perfectlib.ph.template.idc.e pattern;
        final com.perfectcorp.perfectlib.ph.template.idc.f shape;
        final com.perfectcorp.perfectlib.ph.template.idc.g texture;

        private a() {
            this.pattern = com.perfectcorp.perfectlib.ph.template.idc.e.f41662a;
            this.palette = com.perfectcorp.perfectlib.ph.template.idc.d.f41655a;
            this.texture = com.perfectcorp.perfectlib.ph.template.idc.g.f41665a;
            this.shape = com.perfectcorp.perfectlib.ph.template.idc.f.f41664a;
        }

        public /* synthetic */ a(int i2) {
            this();
        }
    }
}
