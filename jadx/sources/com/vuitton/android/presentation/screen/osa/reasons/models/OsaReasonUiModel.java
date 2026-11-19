package com.vuitton.android.presentation.screen.osa.reasons.models;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;", "", "", b.a.f24015b, "description", "radioTag", "textTag", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OsaReasonUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60967c;
    public final String d;

    public OsaReasonUiModel(String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        this.f60965a = str;
        this.f60966b = str2;
        this.f60967c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OsaReasonUiModel)) {
            return false;
        }
        OsaReasonUiModel osaReasonUiModel = (OsaReasonUiModel) obj;
        return Intrinsics.c(this.f60965a, osaReasonUiModel.f60965a) && Intrinsics.c(this.f60966b, osaReasonUiModel.f60966b) && Intrinsics.c(this.f60967c, osaReasonUiModel.f60967c) && Intrinsics.c(this.d, osaReasonUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(this.f60965a.hashCode() * 31, 31, this.f60966b);
        String str = this.f60967c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return tr.l(fc.s("OsaReasonUiModel(id=", this.f60965a, ", description=", this.f60966b, ", radioTag="), this.f60967c, ", textTag=", this.d, ")");
    }

    public /* synthetic */ OsaReasonUiModel(String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4);
    }
}
