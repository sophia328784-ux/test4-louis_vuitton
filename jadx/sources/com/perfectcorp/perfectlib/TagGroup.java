package com.perfectcorp.perfectlib;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class TagGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f39976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f39978c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f39979a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f39980b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f39981c;
    }

    public TagGroup(Builder builder) {
        String str = builder.f39979a;
        Objects.requireNonNull(str);
        this.f39976a = str;
        String str2 = builder.f39980b;
        Objects.requireNonNull(str2);
        this.f39977b = str2;
        this.f39978c = builder.f39981c;
    }

    public final String getName() {
        return this.f39977b;
    }

    public final String getTagGroupId() {
        return this.f39976a;
    }

    public final boolean isFreeTag() {
        return this.f39978c;
    }
}
