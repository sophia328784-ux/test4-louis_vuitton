package com.dynatrace.agent.communication.preprocessing;

import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventRecord;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/communication/preprocessing/DispatchableData;", "", "Lcom/dynatrace/agent/storage/db/EndPointInfo;", "endPoint", "", "Lcom/dynatrace/agent/storage/db/EventRecord;", DbParams.KEY_DATA, "", "isPriorityData", "<init>", "(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/util/List;Z)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class DispatchableData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndPointInfo f26662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f26663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26664c;

    public DispatchableData(EndPointInfo endPointInfo, List<EventRecord> list, boolean z) {
        endPointInfo.getClass();
        list.getClass();
        this.f26662a = endPointInfo;
        this.f26663b = list;
        this.f26664c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DispatchableData)) {
            return false;
        }
        DispatchableData dispatchableData = (DispatchableData) obj;
        return Intrinsics.c(this.f26662a, dispatchableData.f26662a) && Intrinsics.c(this.f26663b, dispatchableData.f26663b) && this.f26664c == dispatchableData.f26664c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f26664c) + n00.a(this.f26662a.hashCode() * 31, 31, this.f26663b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DispatchableData(endPoint=");
        sb.append(this.f26662a);
        sb.append(", data=");
        sb.append(this.f26663b);
        sb.append(", isPriorityData=");
        return d21.q(sb, this.f26664c, ')');
    }
}
