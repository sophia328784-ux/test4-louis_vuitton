package com.vuitton.android.presentation.screen.cart.models;

import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;", "", "", "sampleId", "identifier", "name", "description", "imageUrl", "Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;", "state", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PerfumeSampleUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55215c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PerfumeSampleState f55217f;

    public PerfumeSampleUiModel(String str, String str2, String str3, String str4, String str5, PerfumeSampleState perfumeSampleState) {
        perfumeSampleState.getClass();
        this.f55213a = str;
        this.f55214b = str2;
        this.f55215c = str3;
        this.d = str4;
        this.f55216e = str5;
        this.f55217f = perfumeSampleState;
    }

    public static PerfumeSampleUiModel a(PerfumeSampleUiModel perfumeSampleUiModel, PerfumeSampleState perfumeSampleState, int i2) {
        String str = perfumeSampleUiModel.f55213a;
        String str2 = perfumeSampleUiModel.f55214b;
        String str3 = perfumeSampleUiModel.f55215c;
        String str4 = perfumeSampleUiModel.d;
        String str5 = perfumeSampleUiModel.f55216e;
        if ((i2 & 32) != 0) {
            perfumeSampleState = perfumeSampleUiModel.f55217f;
        }
        PerfumeSampleState perfumeSampleState2 = perfumeSampleState;
        perfumeSampleUiModel.getClass();
        perfumeSampleState2.getClass();
        return new PerfumeSampleUiModel(str, str2, str3, str4, str5, perfumeSampleState2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PerfumeSampleUiModel)) {
            return false;
        }
        PerfumeSampleUiModel perfumeSampleUiModel = (PerfumeSampleUiModel) obj;
        return Intrinsics.c(this.f55213a, perfumeSampleUiModel.f55213a) && Intrinsics.c(this.f55214b, perfumeSampleUiModel.f55214b) && Intrinsics.c(this.f55215c, perfumeSampleUiModel.f55215c) && Intrinsics.c(this.d, perfumeSampleUiModel.d) && Intrinsics.c(this.f55216e, perfumeSampleUiModel.f55216e) && this.f55217f == perfumeSampleUiModel.f55217f;
    }

    public final int hashCode() {
        String str = this.f55213a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f55214b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f55215c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f55216e;
        return this.f55217f.hashCode() + ((iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PerfumeSampleUiModel(sampleId=", this.f55213a, ", identifier=", this.f55214b, ", name=");
        cj.C(sbS, this.f55215c, ", description=", this.d, ", imageUrl=");
        sbS.append(this.f55216e);
        sbS.append(", state=");
        sbS.append(this.f55217f);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ PerfumeSampleUiModel(String str, String str2, String str3, String str4, String str5, PerfumeSampleState perfumeSampleState, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, (i2 & 32) != 0 ? PerfumeSampleState.NORMAL : perfumeSampleState);
    }
}
