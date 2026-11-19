package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.batch.android.s.b;
import com.sightcall.universal.agent.Product;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;", "", "", b.a.f24015b, "title", "", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", Product.TYPE, "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductTabsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f58709c;
    public final ImmersiveArticleCtaUiModel d;

    public ImmersiveArticleProductTabsUiModel(String str, String str2, List<CarouselSItemUiModel> list, ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel) {
        pq0.B(str, str2, list);
        this.f58707a = str;
        this.f58708b = str2;
        this.f58709c = list;
        this.d = immersiveArticleCtaUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductTabsUiModel)) {
            return false;
        }
        ImmersiveArticleProductTabsUiModel immersiveArticleProductTabsUiModel = (ImmersiveArticleProductTabsUiModel) obj;
        return Intrinsics.c(this.f58707a, immersiveArticleProductTabsUiModel.f58707a) && Intrinsics.c(this.f58708b, immersiveArticleProductTabsUiModel.f58708b) && Intrinsics.c(this.f58709c, immersiveArticleProductTabsUiModel.f58709c) && Intrinsics.c(this.d, immersiveArticleProductTabsUiModel.d);
    }

    public final int hashCode() {
        int iA = n00.a(fc.b(this.f58707a.hashCode() * 31, 31, this.f58708b), 31, this.f58709c);
        ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel = this.d;
        return iA + (immersiveArticleCtaUiModel == null ? 0 : immersiveArticleCtaUiModel.hashCode());
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleProductTabsUiModel(id=", this.f58707a, ", title=", this.f58708b, ", products=");
        sbS.append(this.f58709c);
        sbS.append(", cta=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ ImmersiveArticleProductTabsUiModel(String str, String str2, List list, ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, list, (i2 & 8) != 0 ? null : immersiveArticleCtaUiModel);
    }
}
