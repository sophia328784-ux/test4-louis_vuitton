package com.vuitton.android.presentation.screen.immersivearticle.models;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventContentUiModel;", "", "", "surtitle", "title", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleEventContentUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f58655c;

    public ImmersiveArticleEventContentUiModel(String str, String str2, String str3) {
        str2.getClass();
        this.f58653a = str;
        this.f58654b = str2;
        this.f58655c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleEventContentUiModel)) {
            return false;
        }
        ImmersiveArticleEventContentUiModel immersiveArticleEventContentUiModel = (ImmersiveArticleEventContentUiModel) obj;
        return Intrinsics.c(this.f58653a, immersiveArticleEventContentUiModel.f58653a) && Intrinsics.c(this.f58654b, immersiveArticleEventContentUiModel.f58654b) && Intrinsics.c(this.f58655c, immersiveArticleEventContentUiModel.f58655c);
    }

    public final int hashCode() {
        String str = this.f58653a;
        int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f58654b);
        String str2 = this.f58655c;
        return iB + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f58655c, ")", fc.s("ImmersiveArticleEventContentUiModel(surtitle=", this.f58653a, ", title=", this.f58654b, ", description="));
    }
}
