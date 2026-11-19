package com.google.firebase.platforminfo;

import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_LibraryVersion extends LibraryVersion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35361b;

    public AutoValue_LibraryVersion(String str, String str2) {
        this.f35360a = str;
        if (str2 != null) {
            this.f35361b = str2;
        } else {
            r81.d("Null version");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LibraryVersion)) {
            return false;
        }
        AutoValue_LibraryVersion autoValue_LibraryVersion = (AutoValue_LibraryVersion) ((LibraryVersion) obj);
        return this.f35360a.equals(autoValue_LibraryVersion.f35360a) && this.f35361b.equals(autoValue_LibraryVersion.f35361b);
    }

    public final int hashCode() {
        return this.f35361b.hashCode() ^ ((this.f35360a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f35360a);
        sb.append(", version=");
        return n00.r(this.f35361b, "}", sb);
    }
}
