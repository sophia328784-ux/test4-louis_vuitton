package com.perfectcorp.perfectlib.makeupcam.camera;

import com.perfectcorp.perfectlib.jniproxy.VN_Lipliner_Type;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class LipLinerPayload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VN_Lipliner_Type f40679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f40680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f40681c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f40682e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f40683f;
    public final ImmutableList g;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public VN_Lipliner_Type f40684a = VN_Lipliner_Type.LIPLINER_THICK;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f40685b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f40686c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f40687e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f40688f;
        public ImmutableList g;
    }

    public static final class Setting {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f40689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f40690b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f40691c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f40692e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f40693f;

        public Setting(String str, String str2, String str3, int i2, int i3, List<YMKPrimitiveData.MakeupColor> list) {
            Objects.requireNonNull(str, "patternId == null");
            this.f40689a = str;
            Objects.requireNonNull(str2, "paletteId == null");
            this.f40690b = str2;
            Objects.requireNonNull(str3, "subPaletteId == null");
            this.f40691c = str3;
            this.d = i2;
            this.f40692e = i3;
            Objects.requireNonNull(list, "colors == null");
            this.f40693f = new ArrayList();
            Iterator<YMKPrimitiveData.MakeupColor> it = list.iterator();
            while (it.hasNext()) {
                this.f40693f.add(new YMKPrimitiveData.MakeupColor(it.next()));
            }
        }
    }

    public LipLinerPayload(Builder builder) {
        this.f40679a = builder.f40684a;
        this.f40680b = builder.f40685b;
        this.f40681c = builder.f40686c;
        this.d = builder.d;
        this.f40682e = builder.f40687e;
        this.f40683f = builder.f40688f;
        ImmutableList immutableList = builder.g;
        Objects.requireNonNull(immutableList);
        this.g = immutableList;
    }
}
