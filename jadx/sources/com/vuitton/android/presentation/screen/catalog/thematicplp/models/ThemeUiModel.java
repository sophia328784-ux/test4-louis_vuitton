package com.vuitton.android.presentation.screen.catalog.thematicplp.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "backgroundColor", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ThemeUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55437c;
    public final AssetImageUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55438e;

    public ThemeUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, String str4) {
        str.getClass();
        assetImageUiModel.getClass();
        str4.getClass();
        this.f55435a = str;
        this.f55436b = str2;
        this.f55437c = str3;
        this.d = assetImageUiModel;
        this.f55438e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeUiModel)) {
            return false;
        }
        ThemeUiModel themeUiModel = (ThemeUiModel) obj;
        return Intrinsics.c(this.f55435a, themeUiModel.f55435a) && Intrinsics.c(this.f55436b, themeUiModel.f55436b) && Intrinsics.c(this.f55437c, themeUiModel.f55437c) && Intrinsics.c(this.d, themeUiModel.d) && Intrinsics.c(this.f55438e, themeUiModel.f55438e);
    }

    public final int hashCode() {
        int iHashCode = this.f55435a.hashCode() * 31;
        String str = this.f55436b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f55437c;
        return this.f55438e.hashCode() + ((this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ThemeUiModel(id=", this.f55435a, ", title=", this.f55436b, ", description=");
        sbS.append(this.f55437c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", backgroundColor=");
        return n00.r(this.f55438e, ")", sbS);
    }
}
