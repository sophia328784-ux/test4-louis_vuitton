package com.vuitton.android.presentation.screen.mylv;

import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvLauncherViewState;", "", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "avatar", "", "initials", "", "hasUnreadNotifications", "<init>", "(Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MyLvLauncherViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AvatarItemUiModel f59260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f59261b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59262c;

    /* JADX WARN: Illegal instructions before constructor call */
    public MyLvLauncherViewState(AvatarItemUiModel avatarItemUiModel, String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            AvatarItemUiModel.f52325f.getClass();
            avatarItemUiModel = AvatarItemUiModel.g;
        }
        this(avatarItemUiModel, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MyLvLauncherViewState)) {
            return false;
        }
        MyLvLauncherViewState myLvLauncherViewState = (MyLvLauncherViewState) obj;
        return Intrinsics.c(this.f59260a, myLvLauncherViewState.f59260a) && Intrinsics.c(this.f59261b, myLvLauncherViewState.f59261b) && this.f59262c == myLvLauncherViewState.f59262c;
    }

    public final int hashCode() {
        int iHashCode = this.f59260a.hashCode() * 31;
        String str = this.f59261b;
        return Boolean.hashCode(this.f59262c) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MyLvLauncherViewState(avatar=");
        sb.append(this.f59260a);
        sb.append(", initials=");
        sb.append(this.f59261b);
        sb.append(", hasUnreadNotifications=");
        return defpackage.a.p(sb, this.f59262c, ")");
    }

    public MyLvLauncherViewState(AvatarItemUiModel avatarItemUiModel, String str, boolean z) {
        avatarItemUiModel.getClass();
        this.f59260a = avatarItemUiModel;
        this.f59261b = str;
        this.f59262c = z;
    }

    public MyLvLauncherViewState() {
        this(null, null, false, 7, null);
    }
}
