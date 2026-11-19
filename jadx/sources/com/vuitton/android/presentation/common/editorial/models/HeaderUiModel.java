package com.vuitton.android.presentation.common.editorial.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;", "", "", "title", "surtitle", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HeaderUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageUiModel f50861c;

    public /* synthetic */ HeaderUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : assetImageUiModel);
    }

    public static HeaderUiModel a(HeaderUiModel headerUiModel, AssetImageUiModel assetImageUiModel) {
        String str = headerUiModel.f50859a;
        String str2 = headerUiModel.f50860b;
        str.getClass();
        return new HeaderUiModel(str, str2, assetImageUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderUiModel)) {
            return false;
        }
        HeaderUiModel headerUiModel = (HeaderUiModel) obj;
        return Intrinsics.c(this.f50859a, headerUiModel.f50859a) && Intrinsics.c(this.f50860b, headerUiModel.f50860b) && Intrinsics.c(this.f50861c, headerUiModel.f50861c);
    }

    public final int hashCode() {
        int iHashCode = this.f50859a.hashCode() * 31;
        String str = this.f50860b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImageUiModel assetImageUiModel = this.f50861c;
        return iHashCode2 + (assetImageUiModel != null ? assetImageUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HeaderUiModel(title=", this.f50859a, ", surtitle=", this.f50860b, ", image=");
        sbS.append(this.f50861c);
        sbS.append(")");
        return sbS.toString();
    }

    public HeaderUiModel(String str, String str2, AssetImageUiModel assetImageUiModel) {
        str.getClass();
        this.f50859a = str;
        this.f50860b = str2;
        this.f50861c = assetImageUiModel;
    }
}
