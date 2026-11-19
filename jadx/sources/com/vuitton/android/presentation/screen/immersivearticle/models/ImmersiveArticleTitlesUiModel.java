package com.vuitton.android.presentation.screen.immersivearticle.models;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;", "", "", "title", "surtitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleTitlesUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58719b;

    public ImmersiveArticleTitlesUiModel(String str, String str2) {
        str.getClass();
        this.f58718a = str;
        this.f58719b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleTitlesUiModel)) {
            return false;
        }
        ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel = (ImmersiveArticleTitlesUiModel) obj;
        return Intrinsics.c(this.f58718a, immersiveArticleTitlesUiModel.f58718a) && Intrinsics.c(this.f58719b, immersiveArticleTitlesUiModel.f58719b);
    }

    public final int hashCode() {
        int iHashCode = this.f58718a.hashCode() * 31;
        String str = this.f58719b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return d21.l("ImmersiveArticleTitlesUiModel(title=", this.f58718a, ", surtitle=", this.f58719b, ")");
    }
}
