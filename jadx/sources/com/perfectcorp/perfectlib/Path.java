package com.perfectcorp.perfectlib;

import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Path {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f39735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f39736b;

    public Path(boolean z, String str) {
        this.f39735a = z;
        Objects.requireNonNull(str, "path can't be null");
        this.f39736b = str;
    }

    public static Path assets(String str) {
        return new Path(true, str);
    }

    public static Path file(String str) {
        return new Path(false, str);
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("Path");
        toStringHelper.c("isAssets", this.f39735a);
        toStringHelper.b("path", this.f39736b);
        return toStringHelper.toString();
    }
}
