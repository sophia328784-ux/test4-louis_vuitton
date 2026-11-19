package com.vuitton.android.presentation.screen.personalselections.list.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;", "", "", b.a.f24015b, "selectionId", "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;", "selectionType", "title", "previewImageUrl", "creationDate", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PersonalSharingUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionTypeUiModel f62650c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f62651e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f62652f;
    public final String g;

    public PersonalSharingUiModel(String str, String str2, SelectionTypeUiModel selectionTypeUiModel, String str3, String str4, String str5, String str6) {
        str.getClass();
        str2.getClass();
        selectionTypeUiModel.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        this.f62648a = str;
        this.f62649b = str2;
        this.f62650c = selectionTypeUiModel;
        this.d = str3;
        this.f62651e = str4;
        this.f62652f = str5;
        this.g = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSharingUiModel)) {
            return false;
        }
        PersonalSharingUiModel personalSharingUiModel = (PersonalSharingUiModel) obj;
        return Intrinsics.c(this.f62648a, personalSharingUiModel.f62648a) && Intrinsics.c(this.f62649b, personalSharingUiModel.f62649b) && this.f62650c == personalSharingUiModel.f62650c && Intrinsics.c(this.d, personalSharingUiModel.d) && Intrinsics.c(this.f62651e, personalSharingUiModel.f62651e) && Intrinsics.c(this.f62652f, personalSharingUiModel.f62652f) && Intrinsics.c(this.g, personalSharingUiModel.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + fc.b(fc.b(fc.b((this.f62650c.hashCode() + fc.b(this.f62648a.hashCode() * 31, 31, this.f62649b)) * 31, 31, this.d), 31, this.f62651e), 31, this.f62652f);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PersonalSharingUiModel(id=", this.f62648a, ", selectionId=", this.f62649b, ", selectionType=");
        sbS.append(this.f62650c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", previewImageUrl=");
        cj.C(sbS, this.f62651e, ", creationDate=", this.f62652f, ", description=");
        return n00.r(this.g, ")", sbS);
    }
}
