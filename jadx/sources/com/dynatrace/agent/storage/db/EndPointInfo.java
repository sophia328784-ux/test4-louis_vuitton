package com.dynatrace.agent.storage.db;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/storage/db/EndPointInfo;", "", "", "applicationId", ConfigurationName.DOWNLOAD_PLUGIN_URL, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class EndPointInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26895b;

    public EndPointInfo(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f26894a = str;
        this.f26895b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EndPointInfo)) {
            return false;
        }
        EndPointInfo endPointInfo = (EndPointInfo) obj;
        return Intrinsics.c(this.f26894a, endPointInfo.f26894a) && Intrinsics.c(this.f26895b, endPointInfo.f26895b);
    }

    public final int hashCode() {
        return this.f26895b.hashCode() + (this.f26894a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EndPointInfo(applicationId=");
        sb.append(this.f26894a);
        sb.append(", url=");
        return fc.l(sb, this.f26895b, ')');
    }
}
