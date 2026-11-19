package com.vuitton.android.presentation.common.editorial.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;", "", "", "title", "surtitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TitlesUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50880b;

    public TitlesUiModel(String str, String str2) {
        str.getClass();
        this.f50879a = str;
        this.f50880b = str2;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF50880b() {
        return this.f50880b;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getF50879a() {
        return this.f50879a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TitlesUiModel)) {
            return false;
        }
        TitlesUiModel titlesUiModel = (TitlesUiModel) obj;
        return Intrinsics.c(this.f50879a, titlesUiModel.f50879a) && Intrinsics.c(this.f50880b, titlesUiModel.f50880b);
    }

    public final int hashCode() {
        int iHashCode = this.f50879a.hashCode() * 31;
        String str = this.f50880b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("TitlesUiModel(title=", this.f50879a, ", surtitle=", this.f50880b, ")");
    }

    public /* synthetic */ TitlesUiModel(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2);
    }
}
