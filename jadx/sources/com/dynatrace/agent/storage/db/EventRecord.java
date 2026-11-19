package com.dynatrace.agent.storage.db;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/dynatrace/agent/storage/db/EventRecord;", "", "", b.a.f24015b, "", MvelScriptManager.VAR_EVENT, "timestamp", "", "isPriorityData", "", "eventSizeBytes", "<init>", "(JLjava/lang/String;JZI)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class EventRecord {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f26924c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f26925e;

    public EventRecord(long j2, String str, long j3, boolean z, int i2) {
        str.getClass();
        this.f26922a = j2;
        this.f26923b = str;
        this.f26924c = j3;
        this.d = z;
        this.f26925e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventRecord)) {
            return false;
        }
        EventRecord eventRecord = (EventRecord) obj;
        return this.f26922a == eventRecord.f26922a && Intrinsics.c(this.f26923b, eventRecord.f26923b) && this.f26924c == eventRecord.f26924c && this.d == eventRecord.d && this.f26925e == eventRecord.f26925e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f26925e) + o60.b(fc.a(fc.b(Long.hashCode(this.f26922a) * 31, 31, this.f26923b), 31, this.f26924c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventRecord(id=");
        sb.append(this.f26922a);
        sb.append(", event=");
        sb.append(this.f26923b);
        sb.append(", timestamp=");
        sb.append(this.f26924c);
        sb.append(", isPriorityData=");
        sb.append(this.d);
        sb.append(", eventSizeBytes=");
        return tr.k(sb, this.f26925e, ')');
    }

    public /* synthetic */ EventRecord(long j2, String str, long j3, boolean z, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0L : j2, str, j3, z, i2);
    }
}
