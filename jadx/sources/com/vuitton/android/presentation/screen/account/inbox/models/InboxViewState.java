package com.vuitton.android.presentation.screen.account.inbox.models;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "inAppDispatch", "", "isLoading", "isError", "", "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;", "notificationList", "currentNotificationDisplayed", "areNotificationsEnabled", "isUserOptInToCustomization", "revealedItem", "showLongPressTooltip", "<init>", "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;ZZLcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class InboxViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InAppDispatch f52426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f52427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f52428c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InboxNotificationUiModel f52429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f52430f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InboxNotificationUiModel f52431h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f52432i;

    public InboxViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List list, InboxNotificationUiModel inboxNotificationUiModel, boolean z3, boolean z4, InboxNotificationUiModel inboxNotificationUiModel2, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(inAppDispatch, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? EmptyList.f71768b : list, (i2 & 16) != 0 ? null : inboxNotificationUiModel, (i2 & 32) != 0 ? false : z3, (i2 & 64) != 0 ? false : z4, (i2 & 128) != 0 ? null : inboxNotificationUiModel2, (i2 & 256) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InboxViewState)) {
            return false;
        }
        InboxViewState inboxViewState = (InboxViewState) obj;
        return Intrinsics.c(this.f52426a, inboxViewState.f52426a) && this.f52427b == inboxViewState.f52427b && this.f52428c == inboxViewState.f52428c && Intrinsics.c(this.d, inboxViewState.d) && Intrinsics.c(this.f52429e, inboxViewState.f52429e) && this.f52430f == inboxViewState.f52430f && this.g == inboxViewState.g && Intrinsics.c(this.f52431h, inboxViewState.f52431h) && this.f52432i == inboxViewState.f52432i;
    }

    public final int hashCode() {
        int iA = n00.a(o60.b(o60.b(this.f52426a.hashCode() * 31, 31, this.f52427b), 31, this.f52428c), 31, this.d);
        InboxNotificationUiModel inboxNotificationUiModel = this.f52429e;
        int iB = o60.b(o60.b((iA + (inboxNotificationUiModel == null ? 0 : inboxNotificationUiModel.hashCode())) * 31, 31, this.f52430f), 31, this.g);
        InboxNotificationUiModel inboxNotificationUiModel2 = this.f52431h;
        return Boolean.hashCode(this.f52432i) + ((iB + (inboxNotificationUiModel2 != null ? inboxNotificationUiModel2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InboxViewState(inAppDispatch=");
        sb.append(this.f52426a);
        sb.append(", isLoading=");
        sb.append(this.f52427b);
        sb.append(", isError=");
        sb.append(this.f52428c);
        sb.append(", notificationList=");
        sb.append(this.d);
        sb.append(", currentNotificationDisplayed=");
        sb.append(this.f52429e);
        sb.append(", areNotificationsEnabled=");
        sb.append(this.f52430f);
        sb.append(", isUserOptInToCustomization=");
        sb.append(this.g);
        sb.append(", revealedItem=");
        sb.append(this.f52431h);
        sb.append(", showLongPressTooltip=");
        return a.p(sb, this.f52432i, ")");
    }

    public InboxViewState(InAppDispatch inAppDispatch, boolean z, boolean z2, List<InboxNotificationUiModel> list, InboxNotificationUiModel inboxNotificationUiModel, boolean z3, boolean z4, InboxNotificationUiModel inboxNotificationUiModel2, boolean z5) {
        inAppDispatch.getClass();
        list.getClass();
        this.f52426a = inAppDispatch;
        this.f52427b = z;
        this.f52428c = z2;
        this.d = list;
        this.f52429e = inboxNotificationUiModel;
        this.f52430f = z3;
        this.g = z4;
        this.f52431h = inboxNotificationUiModel2;
        this.f52432i = z5;
    }
}
