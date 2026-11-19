package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.common.utility.MoreCollections;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class EyeShadowLinerPayload implements PayloadValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f40613a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f40614a = Collections.EMPTY_LIST;
    }

    public static final class Setting {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40615a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40616b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40617c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f40618e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f40619f;

        public Setting(String str, String str2, String str3, int i2, int i3, List<YMKPrimitiveData.MakeupColor> list) {
            Objects.requireNonNull(str, "patternId == null");
            this.f40615a = str;
            Objects.requireNonNull(str2, "paletteId == null");
            this.f40616b = str2;
            Objects.requireNonNull(str3, "subPaletteId == null");
            this.f40617c = str3;
            this.d = i2;
            this.f40618e = i3;
            Objects.requireNonNull(list, "colors == null");
            this.f40619f = new ArrayList();
            Iterator<YMKPrimitiveData.MakeupColor> it = list.iterator();
            while (it.hasNext()) {
                this.f40619f.add(new YMKPrimitiveData.MakeupColor(it.next()));
            }
        }
    }

    public EyeShadowLinerPayload(List list) {
        this.f40613a = list;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        if (MoreCollections.a(this.f40613a)) {
            md.n("settings is empty");
        }
    }
}
