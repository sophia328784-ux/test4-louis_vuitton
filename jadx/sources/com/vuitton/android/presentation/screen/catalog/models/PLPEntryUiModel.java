package com.vuitton.android.presentation.screen.catalog.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;", "", "", b.a.f24015b, "plpId", "title", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PLPEntryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55374c;
    public final AssetImageUiModel d;

    public PLPEntryUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel) {
        cj.z(str, str2, str3);
        this.f55372a = str;
        this.f55373b = str2;
        this.f55374c = str3;
        this.d = assetImageUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PLPEntryUiModel)) {
            return false;
        }
        PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) obj;
        return Intrinsics.c(this.f55372a, pLPEntryUiModel.f55372a) && Intrinsics.c(this.f55373b, pLPEntryUiModel.f55373b) && Intrinsics.c(this.f55374c, pLPEntryUiModel.f55374c) && Intrinsics.c(this.d, pLPEntryUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f55372a.hashCode() * 31, 31, this.f55373b), 31, this.f55374c);
        AssetImageUiModel assetImageUiModel = this.d;
        return iB + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PLPEntryUiModel(id=", this.f55372a, ", plpId=", this.f55373b, ", title=");
        sbS.append(this.f55374c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ PLPEntryUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : assetImageUiModel);
    }
}
