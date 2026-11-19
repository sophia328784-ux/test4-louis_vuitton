package com.vuitton.android.presentation.screen.account.editavatar.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarLibraryUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;", "sections", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "defaultAvatar", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AvatarLibraryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f52330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AvatarItemUiModel f52331b;

    public AvatarLibraryUiModel(List<AvatarSectionUiModel> list, AvatarItemUiModel avatarItemUiModel) {
        list.getClass();
        avatarItemUiModel.getClass();
        this.f52330a = list;
        this.f52331b = avatarItemUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarLibraryUiModel)) {
            return false;
        }
        AvatarLibraryUiModel avatarLibraryUiModel = (AvatarLibraryUiModel) obj;
        return Intrinsics.c(this.f52330a, avatarLibraryUiModel.f52330a) && Intrinsics.c(this.f52331b, avatarLibraryUiModel.f52331b);
    }

    public final int hashCode() {
        return this.f52331b.hashCode() + (this.f52330a.hashCode() * 31);
    }

    public final String toString() {
        return "AvatarLibraryUiModel(sections=" + this.f52330a + ", defaultAvatar=" + this.f52331b + ")";
    }
}
