package com.vuitton.android.presentation.screen.filter.model;

import defpackage.fc;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;", "", "", "query", "filters", "sortId", "Ljava/util/UUID;", "requestHash", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SearchParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f57990c;
    public final UUID d;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SearchParams(String str, String str2, String str3, UUID uuid, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i2 & 1) != 0 ? "" : str;
        str2 = (i2 & 2) != 0 ? "" : str2;
        str3 = (i2 & 4) != 0 ? null : str3;
        if ((i2 & 8) != 0) {
            uuid = UUID.randomUUID();
            uuid.getClass();
        }
        this(str, str2, str3, uuid);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchParams)) {
            return false;
        }
        SearchParams searchParams = (SearchParams) obj;
        return Intrinsics.c(this.f57988a, searchParams.f57988a) && Intrinsics.c(this.f57989b, searchParams.f57989b) && Intrinsics.c(this.f57990c, searchParams.f57990c) && Intrinsics.c(this.d, searchParams.d);
    }

    public final int hashCode() {
        int iB = fc.b(this.f57988a.hashCode() * 31, 31, this.f57989b);
        String str = this.f57990c;
        return this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SearchParams(query=", this.f57988a, ", filters=", this.f57989b, ", sortId=");
        sbS.append(this.f57990c);
        sbS.append(", requestHash=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public SearchParams(String str, String str2, String str3, UUID uuid) {
        str.getClass();
        str2.getClass();
        uuid.getClass();
        this.f57988a = str;
        this.f57989b = str2;
        this.f57990c = str3;
        this.d = uuid;
    }

    public SearchParams() {
        this(null, null, null, null, 15, null);
    }
}
