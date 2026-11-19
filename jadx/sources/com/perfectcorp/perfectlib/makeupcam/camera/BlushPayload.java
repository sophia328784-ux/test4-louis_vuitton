package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.jniproxy.VN_BlushType;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class BlushPayload implements PayloadValidator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f40586a;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f40587a = Collections.EMPTY_LIST;
    }

    public static final class Setting {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40589b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40590c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f40591e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f40592f;

        public Setting(String str, String str2, String str3, int i2, int i3, List<YMKPrimitiveData.MakeupColor> list) {
            Objects.requireNonNull(str, "patternId == null");
            this.f40588a = str;
            Objects.requireNonNull(str2, "paletteId == null");
            this.f40589b = str2;
            Objects.requireNonNull(str3, "subPaletteId == null");
            this.f40590c = str3;
            this.d = i2;
            this.f40591e = i3;
            Objects.requireNonNull(list, "colors == null");
            this.f40592f = new ArrayList();
            Iterator<YMKPrimitiveData.MakeupColor> it = list.iterator();
            while (it.hasNext()) {
                this.f40592f.add(new YMKPrimitiveData.MakeupColor(it.next()));
            }
        }
    }

    public BlushPayload(List list) {
        this.f40586a = list;
    }

    public static VN_BlushType b(String str) {
        if (str.isEmpty()) {
            return VN_BlushType.VN_BLUSH_MATTE;
        }
        if (str.equals("blush_texture_shimmer")) {
            return VN_BlushType.VN_BLUSH_SHIMMER;
        }
        return !str.equals("blush_texture_satin") ? VN_BlushType.VN_BLUSH_MATTE : VN_BlushType.VN_BLUSH_SATIN;
    }

    @Override // com.perfectcorp.perfectlib.makeupcam.camera.PayloadValidator
    public final void a() {
        if (MoreCollections.a(this.f40586a)) {
            md.n("settings is empty");
        }
    }
}
