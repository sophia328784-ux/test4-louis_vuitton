package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductTabsSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleProductTabsDataUiModel f58706c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleProductTabsSectionUiModel(String str, String str2, ImmersiveArticleProductTabsDataUiModel immersiveArticleProductTabsDataUiModel) {
        super(null);
        str.getClass();
        immersiveArticleProductTabsDataUiModel.getClass();
        this.f58704a = str;
        this.f58705b = str2;
        this.f58706c = immersiveArticleProductTabsDataUiModel;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58704a() {
        return this.f58704a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleProductTabsSectionUiModel)) {
            return false;
        }
        ImmersiveArticleProductTabsSectionUiModel immersiveArticleProductTabsSectionUiModel = (ImmersiveArticleProductTabsSectionUiModel) obj;
        return Intrinsics.c(this.f58704a, immersiveArticleProductTabsSectionUiModel.f58704a) && Intrinsics.c(this.f58705b, immersiveArticleProductTabsSectionUiModel.f58705b) && Intrinsics.c(this.f58706c, immersiveArticleProductTabsSectionUiModel.f58706c);
    }

    public final int hashCode() {
        int iHashCode = this.f58704a.hashCode() * 31;
        String str = this.f58705b;
        return this.f58706c.f58703a.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleProductTabsSectionUiModel(key=", this.f58704a, ", type=", this.f58705b, ", data=");
        sbS.append(this.f58706c);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ ImmersiveArticleProductTabsSectionUiModel(String str, String str2, ImmersiveArticleProductTabsDataUiModel immersiveArticleProductTabsDataUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, immersiveArticleProductTabsDataUiModel);
    }
}
