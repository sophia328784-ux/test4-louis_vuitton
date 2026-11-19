package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleAuthenticationSectionUiModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;", "", ConfigurationName.KEY, "type", "title", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleAuthenticationSectionUiModel extends ImmersiveArticleSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58644c;
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleAuthenticationSectionUiModel(String str, String str2, String str3, String str4) {
        super(null);
        cj.z(str, str2, str3);
        this.f58642a = str;
        this.f58643b = str2;
        this.f58644c = str3;
        this.d = str4;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF58642a() {
        return this.f58642a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleAuthenticationSectionUiModel)) {
            return false;
        }
        ImmersiveArticleAuthenticationSectionUiModel immersiveArticleAuthenticationSectionUiModel = (ImmersiveArticleAuthenticationSectionUiModel) obj;
        return Intrinsics.c(this.f58642a, immersiveArticleAuthenticationSectionUiModel.f58642a) && Intrinsics.c(this.f58643b, immersiveArticleAuthenticationSectionUiModel.f58643b) && Intrinsics.c(this.f58644c, immersiveArticleAuthenticationSectionUiModel.f58644c) && Intrinsics.c(this.d, immersiveArticleAuthenticationSectionUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f58642a.hashCode() * 31, 31, this.f58643b), 31, this.f58644c);
        String str = this.d;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return tr.l(fc.s("ImmersiveArticleAuthenticationSectionUiModel(key=", this.f58642a, ", type=", this.f58643b, ", title="), this.f58644c, ", description=", this.d, ")");
    }
}
