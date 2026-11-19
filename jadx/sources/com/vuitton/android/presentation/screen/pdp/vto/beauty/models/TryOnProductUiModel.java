package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "vtoId", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", "type", "stackingType", "", "isDualEnabled", "name", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;", "color", "", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;", "looks", "hasTutorial", "isLimitedEdition", "", "icon", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;Ljava/util/List;ZZLjava/lang/Integer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TryOnProductUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BeautyProductTypeUiModel f62185c;
    public final BeautyProductTypeUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f62186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f62187f;
    public final ColorUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f62188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f62189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f62190j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Integer f62191k;

    public TryOnProductUiModel(String str, String str2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyProductTypeUiModel beautyProductTypeUiModel2, boolean z, String str3, ColorUiModel colorUiModel, List list, boolean z2, boolean z3, Integer num, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        beautyProductTypeUiModel.getClass();
        str3.getClass();
        this.f62183a = str;
        this.f62184b = str2;
        this.f62185c = beautyProductTypeUiModel;
        this.d = beautyProductTypeUiModel2;
        this.f62186e = z;
        this.f62187f = str3;
        this.g = colorUiModel;
        this.f62188h = list;
        this.f62189i = z2;
        this.f62190j = z3;
        this.f62191k = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TryOnProductUiModel)) {
            return false;
        }
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) obj;
        String str = tryOnProductUiModel.f62183a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f62183a, str) && Intrinsics.c(this.f62184b, tryOnProductUiModel.f62184b) && this.f62185c == tryOnProductUiModel.f62185c && this.d == tryOnProductUiModel.d && this.f62186e == tryOnProductUiModel.f62186e && Intrinsics.c(this.f62187f, tryOnProductUiModel.f62187f) && Intrinsics.c(this.g, tryOnProductUiModel.g) && Intrinsics.c(this.f62188h, tryOnProductUiModel.f62188h) && this.f62189i == tryOnProductUiModel.f62189i && this.f62190j == tryOnProductUiModel.f62190j && Intrinsics.c(this.f62191k, tryOnProductUiModel.f62191k);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = d21.b(this.f62185c, fc.b(this.f62183a.hashCode() * 31, 31, this.f62184b), 31);
        BeautyProductTypeUiModel beautyProductTypeUiModel = this.d;
        int iB2 = fc.b(o60.b((iB + (beautyProductTypeUiModel == null ? 0 : beautyProductTypeUiModel.hashCode())) * 31, 31, this.f62186e), 31, this.f62187f);
        ColorUiModel colorUiModel = this.g;
        int iHashCode = (iB2 + (colorUiModel == null ? 0 : colorUiModel.hashCode())) * 31;
        List list = this.f62188h;
        int iB3 = o60.b(o60.b((iHashCode + (list == null ? 0 : list.hashCode())) * 31, 31, this.f62189i), 31, this.f62190j);
        Integer num = this.f62191k;
        return iB3 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("TryOnProductUiModel(sku=", this.f62183a, ", vtoId=", this.f62184b, ", type=");
        sbS.append(this.f62185c);
        sbS.append(", stackingType=");
        sbS.append(this.d);
        sbS.append(", isDualEnabled=");
        cj.A(", name=", this.f62187f, ", color=", sbS, this.f62186e);
        sbS.append(this.g);
        sbS.append(", looks=");
        sbS.append(this.f62188h);
        sbS.append(", hasTutorial=");
        fc.y(sbS, this.f62189i, ", isLimitedEdition=", this.f62190j, ", icon=");
        sbS.append(this.f62191k);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ TryOnProductUiModel(String str, String str2, BeautyProductTypeUiModel beautyProductTypeUiModel, BeautyProductTypeUiModel beautyProductTypeUiModel2, boolean z, String str3, ColorUiModel colorUiModel, List list, boolean z2, boolean z3, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, beautyProductTypeUiModel, beautyProductTypeUiModel2, z, str3, colorUiModel, list, z2, z3, (i2 & 1024) != 0 ? null : num, null);
    }
}
