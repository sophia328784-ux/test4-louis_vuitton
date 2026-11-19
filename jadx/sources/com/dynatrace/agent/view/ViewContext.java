package com.dynatrace.agent.view;

import com.batch.android.s.b;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0080\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/view/ViewContext;", "", "", b.a.f24015b, "name", "detectedName", "", "sequenceNumber", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class ViewContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27219c;
    public final int d;

    public ViewContext(String str, String str2, String str3, int i2) {
        str.getClass();
        this.f27217a = str;
        this.f27218b = str2;
        this.f27219c = str3;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewContext)) {
            return false;
        }
        ViewContext viewContext = (ViewContext) obj;
        return Intrinsics.c(this.f27217a, viewContext.f27217a) && Intrinsics.c(this.f27218b, viewContext.f27218b) && Intrinsics.c(this.f27219c, viewContext.f27219c) && this.d == viewContext.d;
    }

    public final int hashCode() {
        int iHashCode = this.f27217a.hashCode() * 31;
        String str = this.f27218b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f27219c;
        return Integer.hashCode(this.d) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ViewContext(id=");
        sb.append(this.f27217a);
        sb.append(", name=");
        sb.append(this.f27218b);
        sb.append(", detectedName=");
        sb.append(this.f27219c);
        sb.append(", sequenceNumber=");
        return tr.k(sb, this.d, ')');
    }

    public /* synthetic */ ViewContext(String str, String str2, String str3, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? null : str3, i2);
    }
}
