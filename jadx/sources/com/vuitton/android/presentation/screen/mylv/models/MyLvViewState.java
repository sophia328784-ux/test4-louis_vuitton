package com.vuitton.android.presentation.screen.mylv.models;

import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.profile.models.ProfileUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0004¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isCountersLoading", "isCheckingForEligibilityLoading", "Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;", "profile", "", "displayUserName", "userInitials", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;", "counters", "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;", "featureFlags", "isEligibleForPass", "hasUnreadNotifications", "", "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;", "hotContentList", "shouldAnimateHotContentWidget", "careServicePromotionKey", "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "userAvatar", "isNavigationSimplified", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLcom/vuitton/android/presentation/profile/models/ProfileUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;ZLjava/lang/Boolean;Ljava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MyLvViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f59447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59449c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProfileUiModel f59450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f59451f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MyLvCounters f59452h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MyLvFeatureFlags f59453i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f59454j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f59455k;
    public final List l;
    public final boolean m;
    public final String n;
    public final AvatarItemUiModel o;
    public final boolean p;

    /* JADX WARN: Illegal instructions before constructor call */
    public MyLvViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, boolean z3, ProfileUiModel profileUiModel, String str, String str2, MyLvCounters myLvCounters, MyLvFeatureFlags myLvFeatureFlags, boolean z4, Boolean bool, List list, boolean z5, String str3, AvatarItemUiModel avatarItemUiModel, boolean z6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        AvatarItemUiModel avatarItemUiModel2;
        boolean z7 = (i2 & 2) != 0 ? false : z;
        boolean z8 = (i2 & 4) != 0 ? false : z2;
        boolean z9 = (i2 & 8) != 0 ? false : z3;
        ProfileUiModel profileUiModel2 = (i2 & 16) != 0 ? null : profileUiModel;
        String str4 = (i2 & 32) != 0 ? "" : str;
        String str5 = (i2 & 64) != 0 ? null : str2;
        MyLvCounters myLvCounters2 = (i2 & 128) != 0 ? new MyLvCounters(0, 0, 0, 0, 0, 0, 63, null) : myLvCounters;
        MyLvFeatureFlags myLvFeatureFlags2 = (i2 & 256) != 0 ? new MyLvFeatureFlags(false, false, false, false, false, false, false, false, false, false, false, false, false, 8191, null) : myLvFeatureFlags;
        boolean z10 = (i2 & 512) != 0 ? false : z4;
        Boolean bool2 = (i2 & 1024) != 0 ? null : bool;
        List list2 = (i2 & 2048) != 0 ? null : list;
        boolean z11 = (i2 & 4096) != 0 ? false : z5;
        String str6 = (i2 & 8192) == 0 ? str3 : null;
        if ((i2 & 16384) != 0) {
            AvatarItemUiModel.f52325f.getClass();
            avatarItemUiModel2 = AvatarItemUiModel.g;
        } else {
            avatarItemUiModel2 = avatarItemUiModel;
        }
        this(inAppDispatch, z7, z8, z9, profileUiModel2, str4, str5, myLvCounters2, myLvFeatureFlags2, z10, bool2, list2, z11, str6, avatarItemUiModel2, (i2 & 32768) != 0 ? false : z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MyLvViewState)) {
            return false;
        }
        MyLvViewState myLvViewState = (MyLvViewState) obj;
        return Intrinsics.c(this.f59447a, myLvViewState.f59447a) && this.f59448b == myLvViewState.f59448b && this.f59449c == myLvViewState.f59449c && this.d == myLvViewState.d && Intrinsics.c(this.f59450e, myLvViewState.f59450e) && Intrinsics.c(this.f59451f, myLvViewState.f59451f) && Intrinsics.c(this.g, myLvViewState.g) && Intrinsics.c(this.f59452h, myLvViewState.f59452h) && Intrinsics.c(this.f59453i, myLvViewState.f59453i) && this.f59454j == myLvViewState.f59454j && Intrinsics.c(this.f59455k, myLvViewState.f59455k) && Intrinsics.c(this.l, myLvViewState.l) && this.m == myLvViewState.m && Intrinsics.c(this.n, myLvViewState.n) && Intrinsics.c(this.o, myLvViewState.o) && this.p == myLvViewState.p;
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(o60.b(this.f59447a.hashCode() * 31, 31, this.f59448b), 31, this.f59449c), 31, this.d);
        ProfileUiModel profileUiModel = this.f59450e;
        int iB2 = fc.b((iB + (profileUiModel == null ? 0 : profileUiModel.hashCode())) * 31, 31, this.f59451f);
        String str = this.g;
        int iB3 = o60.b((this.f59453i.hashCode() + ((this.f59452h.hashCode() + ((iB2 + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31, 31, this.f59454j);
        Boolean bool = this.f59455k;
        int iHashCode = (iB3 + (bool == null ? 0 : bool.hashCode())) * 31;
        List list = this.l;
        int iB4 = o60.b((iHashCode + (list == null ? 0 : list.hashCode())) * 31, 31, this.m);
        String str2 = this.n;
        return Boolean.hashCode(this.p) + ((this.o.hashCode() + ((iB4 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MyLvViewState(inAppDispatch=");
        sb.append(this.f59447a);
        sb.append(", isLoading=");
        sb.append(this.f59448b);
        sb.append(", isCountersLoading=");
        fc.y(sb, this.f59449c, ", isCheckingForEligibilityLoading=", this.d, ", profile=");
        sb.append(this.f59450e);
        sb.append(", displayUserName=");
        sb.append(this.f59451f);
        sb.append(", userInitials=");
        sb.append(this.g);
        sb.append(", counters=");
        sb.append(this.f59452h);
        sb.append(", featureFlags=");
        sb.append(this.f59453i);
        sb.append(", isEligibleForPass=");
        sb.append(this.f59454j);
        sb.append(", hasUnreadNotifications=");
        sb.append(this.f59455k);
        sb.append(", hotContentList=");
        sb.append(this.l);
        sb.append(", shouldAnimateHotContentWidget=");
        cj.A(", careServicePromotionKey=", this.n, ", userAvatar=", sb, this.m);
        sb.append(this.o);
        sb.append(", isNavigationSimplified=");
        sb.append(this.p);
        sb.append(")");
        return sb.toString();
    }

    public MyLvViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, boolean z3, ProfileUiModel profileUiModel, String str, String str2, MyLvCounters myLvCounters, MyLvFeatureFlags myLvFeatureFlags, boolean z4, Boolean bool, List<? extends HotContentItemUiModel> list, boolean z5, String str3, AvatarItemUiModel avatarItemUiModel, boolean z6) {
        inAppDispatch.getClass();
        str.getClass();
        myLvCounters.getClass();
        myLvFeatureFlags.getClass();
        avatarItemUiModel.getClass();
        this.f59447a = inAppDispatch;
        this.f59448b = z;
        this.f59449c = z2;
        this.d = z3;
        this.f59450e = profileUiModel;
        this.f59451f = str;
        this.g = str2;
        this.f59452h = myLvCounters;
        this.f59453i = myLvFeatureFlags;
        this.f59454j = z4;
        this.f59455k = bool;
        this.l = list;
        this.m = z5;
        this.n = str3;
        this.o = avatarItemUiModel;
        this.p = z6;
    }
}
