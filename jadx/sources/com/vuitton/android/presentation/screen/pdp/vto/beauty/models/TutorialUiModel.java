package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\n¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;", "", "", "sku", "productId", "title", "surtitle", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "introduction", "", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionUiModel;", "sectionList", "", "isRecommendedLoading", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "recommendedProducts", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TutorialUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f62203c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImageUiModel f62204e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f62205f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f62206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f62207i;

    public TutorialUiModel(String str, String str2, String str3, String str4, AssetImageUiModel assetImageUiModel, String str5, List<TutorialSectionUiModel> list, boolean z, List<CarouselSItemUiModel> list2) {
        str.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        list2.getClass();
        this.f62201a = str;
        this.f62202b = str2;
        this.f62203c = str3;
        this.d = str4;
        this.f62204e = assetImageUiModel;
        this.f62205f = str5;
        this.g = list;
        this.f62206h = z;
        this.f62207i = list2;
    }

    public static TutorialUiModel a(TutorialUiModel tutorialUiModel, ArrayList arrayList, int i2) {
        String str = tutorialUiModel.f62201a;
        String str2 = tutorialUiModel.f62202b;
        String str3 = tutorialUiModel.f62203c;
        String str4 = tutorialUiModel.d;
        AssetImageUiModel assetImageUiModel = tutorialUiModel.f62204e;
        String str5 = tutorialUiModel.f62205f;
        List list = tutorialUiModel.g;
        List list2 = arrayList;
        if ((i2 & 256) != 0) {
            list2 = tutorialUiModel.f62207i;
        }
        List list3 = list2;
        tutorialUiModel.getClass();
        str.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        list3.getClass();
        return new TutorialUiModel(str, str2, str3, str4, assetImageUiModel, str5, list, false, list3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TutorialUiModel)) {
            return false;
        }
        TutorialUiModel tutorialUiModel = (TutorialUiModel) obj;
        return Intrinsics.c(this.f62201a, tutorialUiModel.f62201a) && Intrinsics.c(this.f62202b, tutorialUiModel.f62202b) && Intrinsics.c(this.f62203c, tutorialUiModel.f62203c) && Intrinsics.c(this.d, tutorialUiModel.d) && Intrinsics.c(this.f62204e, tutorialUiModel.f62204e) && Intrinsics.c(this.f62205f, tutorialUiModel.f62205f) && Intrinsics.c(this.g, tutorialUiModel.g) && this.f62206h == tutorialUiModel.f62206h && Intrinsics.c(this.f62207i, tutorialUiModel.f62207i);
    }

    public final int hashCode() {
        int iHashCode = this.f62201a.hashCode() * 31;
        String str = this.f62202b;
        int iB = fc.b(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f62203c), 31, this.d);
        AssetImageUiModel assetImageUiModel = this.f62204e;
        int iHashCode2 = (iB + (assetImageUiModel == null ? 0 : assetImageUiModel.hashCode())) * 31;
        String str2 = this.f62205f;
        return this.f62207i.hashCode() + o60.b(n00.a((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.g), 31, this.f62206h);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TutorialUiModel(sku=", this.f62201a, ", productId=", this.f62202b, ", title=");
        cj.C(sbS, this.f62203c, ", surtitle=", this.d, ", image=");
        sbS.append(this.f62204e);
        sbS.append(", introduction=");
        sbS.append(this.f62205f);
        sbS.append(", sectionList=");
        sbS.append(this.g);
        sbS.append(", isRecommendedLoading=");
        sbS.append(this.f62206h);
        sbS.append(", recommendedProducts=");
        return a.o(sbS, this.f62207i, ")");
    }

    public TutorialUiModel(String str, String str2, String str3, String str4, AssetImageUiModel assetImageUiModel, String str5, List list, boolean z, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, str3, str4, (i2 & 16) != 0 ? null : assetImageUiModel, (i2 & 32) != 0 ? null : str5, list, (i2 & 128) != 0 ? true : z, (i2 & 256) != 0 ? EmptyList.f71768b : list2);
    }
}
