package com.vuitton.foundation.model.domain.model.dispatch;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchArea;", "", "", b.a.f24015b, "order", "", "name", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "locationList", "<init>", "(IILjava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DispatchArea {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f67473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f67474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67475c;
    public final List d;

    public DispatchArea(int i2, int i3, String str, List<InAppDispatch> list) {
        str.getClass();
        list.getClass();
        this.f67473a = i2;
        this.f67474b = i3;
        this.f67475c = str;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DispatchArea)) {
            return false;
        }
        DispatchArea dispatchArea = (DispatchArea) obj;
        return this.f67473a == dispatchArea.f67473a && this.f67474b == dispatchArea.f67474b && Intrinsics.c(this.f67475c, dispatchArea.f67475c) && Intrinsics.c(this.d, dispatchArea.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(tr.b(this.f67474b, Integer.hashCode(this.f67473a) * 31, 31), 31, this.f67475c);
    }

    public final String toString() {
        return o60.o(this.f67475c, ", locationList=", ")", fc.p(this.f67473a, this.f67474b, "DispatchArea(id=", ", order=", ", name="), this.d);
    }
}
