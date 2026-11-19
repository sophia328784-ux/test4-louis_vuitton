package com.vuitton.android.presentation.screen.immersivearticle.models;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsDataUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;", "tabs", "<init>", "(Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleProductTabsDataUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f58703a;

    public ImmersiveArticleProductTabsDataUiModel(List<ImmersiveArticleProductTabsUiModel> list) {
        list.getClass();
        this.f58703a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ImmersiveArticleProductTabsDataUiModel) && Intrinsics.c(this.f58703a, ((ImmersiveArticleProductTabsDataUiModel) obj).f58703a);
    }

    public final int hashCode() {
        return this.f58703a.hashCode();
    }

    public final String toString() {
        return d21.o("ImmersiveArticleProductTabsDataUiModel(tabs=", ")", this.f58703a);
    }
}
