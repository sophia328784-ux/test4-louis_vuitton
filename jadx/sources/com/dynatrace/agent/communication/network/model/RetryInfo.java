package com.dynatrace.agent.communication.network.model;

import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/network/model/RetryInfo;", "", "", b.a.f24018f, "", "reason", "<init>", "(ILjava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class RetryInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26646b;

    public RetryInfo(int i2, String str) {
        this.f26645a = i2;
        this.f26646b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RetryInfo)) {
            return false;
        }
        RetryInfo retryInfo = (RetryInfo) obj;
        return this.f26645a == retryInfo.f26645a && Intrinsics.c(this.f26646b, retryInfo.f26646b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f26645a) * 31;
        String str = this.f26646b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RetryInfo(count=");
        sb.append(this.f26645a);
        sb.append(", reason=");
        return fc.l(sb, this.f26646b, ')');
    }
}
