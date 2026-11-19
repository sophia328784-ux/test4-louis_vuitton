package com.google.vr.dynamite.client;

import defpackage.n00;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35682b;

    public f(String str, String str2) {
        this.f35681a = str;
        this.f35682b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Objects.equals(this.f35681a, fVar.f35681a) && Objects.equals(this.f35682b, fVar.f35682b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f35682b) + (Objects.hashCode(this.f35681a) * 37);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[packageName=");
        sb.append(this.f35681a);
        sb.append(",libraryName=");
        return n00.r(this.f35682b, "]", sb);
    }
}
