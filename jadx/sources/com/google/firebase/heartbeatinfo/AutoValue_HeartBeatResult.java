package com.google.firebase.heartbeatinfo;

import defpackage.r81;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_HeartBeatResult extends HeartBeatResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f35129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f35130b;

    public AutoValue_HeartBeatResult(String str, ArrayList arrayList) {
        if (str == null) {
            r81.d("Null userAgent");
            throw null;
        }
        this.f35129a = str;
        this.f35130b = arrayList;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public final List a() {
        return this.f35130b;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatResult
    public final String b() {
        return this.f35129a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeartBeatResult)) {
            return false;
        }
        HeartBeatResult heartBeatResult = (HeartBeatResult) obj;
        return this.f35129a.equals(heartBeatResult.b()) && this.f35130b.equals(heartBeatResult.a());
    }

    public final int hashCode() {
        return this.f35130b.hashCode() ^ ((this.f35129a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.f35129a + ", usedDates=" + this.f35130b + "}";
    }
}
