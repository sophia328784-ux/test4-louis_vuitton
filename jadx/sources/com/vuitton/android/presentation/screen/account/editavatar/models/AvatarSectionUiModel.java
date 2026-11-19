package com.vuitton.android.presentation.screen.account.editavatar.models;

import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;", "", "", "title", "", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "avatars", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AvatarSectionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f52333b;

    public AvatarSectionUiModel(String str, List<AvatarItemUiModel> list) {
        str.getClass();
        list.getClass();
        this.f52332a = str;
        this.f52333b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarSectionUiModel)) {
            return false;
        }
        AvatarSectionUiModel avatarSectionUiModel = (AvatarSectionUiModel) obj;
        return Intrinsics.c(this.f52332a, avatarSectionUiModel.f52332a) && Intrinsics.c(this.f52333b, avatarSectionUiModel.f52333b);
    }

    public final int hashCode() {
        return this.f52333b.hashCode() + (this.f52332a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("AvatarSectionUiModel(title=", this.f52332a, ", avatars=", this.f52333b, ")");
    }
}
