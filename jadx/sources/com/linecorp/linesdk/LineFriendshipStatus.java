package com.linecorp.linesdk;

import defpackage.d21;

/* JADX INFO: loaded from: classes2.dex */
public class LineFriendshipStatus {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f36068a;

    public LineFriendshipStatus(boolean z) {
        this.f36068a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f36068a == ((LineFriendshipStatus) obj).f36068a;
    }

    public final int hashCode() {
        return this.f36068a ? 1 : 0;
    }

    public final String toString() {
        return d21.q(new StringBuilder("LineFriendshipStatus{friendFlag="), this.f36068a, '}');
    }
}
