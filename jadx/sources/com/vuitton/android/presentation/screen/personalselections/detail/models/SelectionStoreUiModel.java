package com.vuitton.android.presentation.screen.personalselections.detail.models;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;", "", "", b.a.f24015b, "name", "imageURL", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SelectionStoreUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62589c;

    public /* synthetic */ SelectionStoreUiModel(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? null : str3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionStoreUiModel)) {
            return false;
        }
        SelectionStoreUiModel selectionStoreUiModel = (SelectionStoreUiModel) obj;
        return Intrinsics.c(this.f62587a, selectionStoreUiModel.f62587a) && Intrinsics.c(this.f62588b, selectionStoreUiModel.f62588b) && Intrinsics.c(this.f62589c, selectionStoreUiModel.f62589c);
    }

    public final int hashCode() {
        String str = this.f62587a;
        int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f62588b);
        String str2 = this.f62589c;
        return iB + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f62589c, ")", fc.s("SelectionStoreUiModel(id=", this.f62587a, ", name=", this.f62588b, ", imageURL="));
    }

    public SelectionStoreUiModel(String str, String str2, String str3) {
        str2.getClass();
        this.f62587a = str;
        this.f62588b = str2;
        this.f62589c = str3;
    }

    public SelectionStoreUiModel() {
        this(null, null, null, 7, null);
    }
}
