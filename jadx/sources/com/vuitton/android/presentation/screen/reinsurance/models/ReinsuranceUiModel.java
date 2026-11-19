package com.vuitton.android.presentation.screen.reinsurance.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;", "", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;", "type", "", "title", "subtitle", "text", "", "images", "variations", "variationId", "<init>", "(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReinsuranceUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReinsuranceTypeUiModel f63436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f63438c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f63439e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f63440f;
    public final String g;

    public ReinsuranceUiModel(ReinsuranceTypeUiModel reinsuranceTypeUiModel, String str, String str2, String str3, List<String> list, List<ReinsuranceUiModel> list2, String str4) {
        reinsuranceTypeUiModel.getClass();
        str.getClass();
        str3.getClass();
        this.f63436a = reinsuranceTypeUiModel;
        this.f63437b = str;
        this.f63438c = str2;
        this.d = str3;
        this.f63439e = list;
        this.f63440f = list2;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReinsuranceUiModel)) {
            return false;
        }
        ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) obj;
        return this.f63436a == reinsuranceUiModel.f63436a && Intrinsics.c(this.f63437b, reinsuranceUiModel.f63437b) && Intrinsics.c(this.f63438c, reinsuranceUiModel.f63438c) && Intrinsics.c(this.d, reinsuranceUiModel.d) && Intrinsics.c(this.f63439e, reinsuranceUiModel.f63439e) && Intrinsics.c(this.f63440f, reinsuranceUiModel.f63440f) && Intrinsics.c(this.g, reinsuranceUiModel.g);
    }

    public final int hashCode() {
        int iB = fc.b(this.f63436a.hashCode() * 31, 31, this.f63437b);
        String str = this.f63438c;
        int iB2 = fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        List list = this.f63439e;
        int iHashCode = (iB2 + (list == null ? 0 : list.hashCode())) * 31;
        List list2 = this.f63440f;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str2 = this.g;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ReinsuranceUiModel(type=");
        sb.append(this.f63436a);
        sb.append(", title=");
        sb.append(this.f63437b);
        sb.append(", subtitle=");
        cj.C(sb, this.f63438c, ", text=", this.d, ", images=");
        a.C(sb, this.f63439e, ", variations=", this.f63440f, ", variationId=");
        return n00.r(this.g, ")", sb);
    }

    public /* synthetic */ ReinsuranceUiModel(ReinsuranceTypeUiModel reinsuranceTypeUiModel, String str, String str2, String str3, List list, List list2, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(reinsuranceTypeUiModel, str, str2, str3, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : list2, (i2 & 64) != 0 ? null : str4);
    }
}
