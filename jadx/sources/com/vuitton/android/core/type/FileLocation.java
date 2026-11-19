package com.vuitton.android.core.type;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/core/type/FileLocation;", "", "path", "", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class FileLocation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43532a;

    public final boolean equals(Object obj) {
        if (obj instanceof FileLocation) {
            return Intrinsics.c(this.f43532a, ((FileLocation) obj).f43532a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f43532a.hashCode();
    }

    public final String toString() {
        return fc.h("FileLocation(path=", this.f43532a, ")");
    }
}
