package com.vuitton.android.presentation.screen.filter.model;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import defpackage.fc;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;", "", "", "filterKey", "sortId", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", Payload.SOURCE, "Ljava/util/UUID;", "requestHash", "Lcom/vuitton/android/presentation/screen/filter/model/FilterType;", "filterType", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FilterParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f57984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f57985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QafSource f57986c;
    public final UUID d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FilterType f57987e;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ FilterParams(String str, String str2, QafSource qafSource, UUID uuid, FilterType filterType, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        qafSource = (i2 & 4) != 0 ? null : qafSource;
        if ((i2 & 8) != 0) {
            uuid = UUID.randomUUID();
            uuid.getClass();
        }
        this(str, str2, qafSource, uuid, (i2 & 16) != 0 ? null : filterType);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilterParams)) {
            return false;
        }
        FilterParams filterParams = (FilterParams) obj;
        return Intrinsics.c(this.f57984a, filterParams.f57984a) && Intrinsics.c(this.f57985b, filterParams.f57985b) && this.f57986c == filterParams.f57986c && Intrinsics.c(this.d, filterParams.d) && this.f57987e == filterParams.f57987e;
    }

    public final int hashCode() {
        int iHashCode = this.f57984a.hashCode() * 31;
        String str = this.f57985b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        QafSource qafSource = this.f57986c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (qafSource == null ? 0 : qafSource.hashCode())) * 31)) * 31;
        FilterType filterType = this.f57987e;
        return iHashCode3 + (filterType != null ? filterType.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("FilterParams(filterKey=", this.f57984a, ", sortId=", this.f57985b, ", source=");
        sbS.append(this.f57986c);
        sbS.append(", requestHash=");
        sbS.append(this.d);
        sbS.append(", filterType=");
        sbS.append(this.f57987e);
        sbS.append(")");
        return sbS.toString();
    }

    public FilterParams(String str, String str2, QafSource qafSource, UUID uuid, FilterType filterType) {
        str.getClass();
        uuid.getClass();
        this.f57984a = str;
        this.f57985b = str2;
        this.f57986c = qafSource;
        this.d = uuid;
        this.f57987e = filterType;
    }
}
