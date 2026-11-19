package com.vuitton.foundation.model.domain.model.osa;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/osa/CancelAppointmentResponseItem;", "", "", "success", "", "sfCode", "action", "statusCode", "message", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CancelAppointmentResponseItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f67766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67768c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67769e;

    public CancelAppointmentResponseItem(boolean z, String str, String str2, String str3, String str4) {
        d21.y(str, str2, str3, str4);
        this.f67766a = z;
        this.f67767b = str;
        this.f67768c = str2;
        this.d = str3;
        this.f67769e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CancelAppointmentResponseItem)) {
            return false;
        }
        CancelAppointmentResponseItem cancelAppointmentResponseItem = (CancelAppointmentResponseItem) obj;
        return this.f67766a == cancelAppointmentResponseItem.f67766a && Intrinsics.c(this.f67767b, cancelAppointmentResponseItem.f67767b) && Intrinsics.c(this.f67768c, cancelAppointmentResponseItem.f67768c) && Intrinsics.c(this.d, cancelAppointmentResponseItem.d) && Intrinsics.c(this.f67769e, cancelAppointmentResponseItem.f67769e);
    }

    public final int hashCode() {
        return this.f67769e.hashCode() + fc.b(fc.b(fc.b(Boolean.hashCode(this.f67766a) * 31, 31, this.f67767b), 31, this.f67768c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CancelAppointmentResponseItem(success=");
        sb.append(this.f67766a);
        sb.append(", sfCode=");
        sb.append(this.f67767b);
        sb.append(", action=");
        cj.C(sb, this.f67768c, ", statusCode=", this.d, ", message=");
        return n00.r(this.f67769e, ")", sb);
    }
}
