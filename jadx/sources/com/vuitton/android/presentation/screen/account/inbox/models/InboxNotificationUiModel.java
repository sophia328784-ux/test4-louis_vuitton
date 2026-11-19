package com.vuitton.android.presentation.screen.account.inbox.models;

import com.batch.android.BatchActionActivity;
import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;", "", "", b.a.f24015b, "title", "body", "imageUrl", BatchActionActivity.EXTRA_DEEPLINK_KEY, "", "isUnread", "Ljava/util/Date;", "date", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class InboxNotificationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52414c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f52415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f52416f;
    public final Date g;

    public InboxNotificationUiModel(String str, String str2, String str3, String str4, String str5, boolean z, Date date) {
        str.getClass();
        str3.getClass();
        date.getClass();
        this.f52412a = str;
        this.f52413b = str2;
        this.f52414c = str3;
        this.d = str4;
        this.f52415e = str5;
        this.f52416f = z;
        this.g = date;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InboxNotificationUiModel)) {
            return false;
        }
        InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) obj;
        return Intrinsics.c(this.f52412a, inboxNotificationUiModel.f52412a) && Intrinsics.c(this.f52413b, inboxNotificationUiModel.f52413b) && Intrinsics.c(this.f52414c, inboxNotificationUiModel.f52414c) && Intrinsics.c(this.d, inboxNotificationUiModel.d) && Intrinsics.c(this.f52415e, inboxNotificationUiModel.f52415e) && this.f52416f == inboxNotificationUiModel.f52416f && Intrinsics.c(this.g, inboxNotificationUiModel.g);
    }

    public final int hashCode() {
        int iHashCode = this.f52412a.hashCode() * 31;
        String str = this.f52413b;
        int iB = fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f52414c);
        String str2 = this.d;
        int iHashCode2 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f52415e;
        return this.g.hashCode() + o60.b((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31, 31, this.f52416f);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("InboxNotificationUiModel(id=", this.f52412a, ", title=", this.f52413b, ", body=");
        cj.C(sbS, this.f52414c, ", imageUrl=", this.d, ", deeplink=");
        pq0.A(this.f52415e, ", isUnread=", ", date=", sbS, this.f52416f);
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }
}
