package com.vuitton.foundation.model.domain.model.personalselections;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSharing;", "", "", b.a.f24015b, "selectionId", "Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;", "selectionType", "title", "previewImageUrl", "creationDate", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PersonalSharing {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectionType f67803c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67805f;
    public final String g;

    public PersonalSharing(String str, String str2, SelectionType selectionType, String str3, String str4, String str5, String str6) {
        str.getClass();
        str2.getClass();
        selectionType.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        this.f67801a = str;
        this.f67802b = str2;
        this.f67803c = selectionType;
        this.d = str3;
        this.f67804e = str4;
        this.f67805f = str5;
        this.g = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalSharing)) {
            return false;
        }
        PersonalSharing personalSharing = (PersonalSharing) obj;
        return Intrinsics.c(this.f67801a, personalSharing.f67801a) && Intrinsics.c(this.f67802b, personalSharing.f67802b) && this.f67803c == personalSharing.f67803c && Intrinsics.c(this.d, personalSharing.d) && Intrinsics.c(this.f67804e, personalSharing.f67804e) && Intrinsics.c(this.f67805f, personalSharing.f67805f) && Intrinsics.c(this.g, personalSharing.g);
    }

    public final int hashCode() {
        return this.g.hashCode() + fc.b(fc.b(fc.b((this.f67803c.hashCode() + fc.b(this.f67801a.hashCode() * 31, 31, this.f67802b)) * 31, 31, this.d), 31, this.f67804e), 31, this.f67805f);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PersonalSharing(id=", this.f67801a, ", selectionId=", this.f67802b, ", selectionType=");
        sbS.append(this.f67803c);
        sbS.append(", title=");
        sbS.append(this.d);
        sbS.append(", previewImageUrl=");
        cj.C(sbS, this.f67804e, ", creationDate=", this.f67805f, ", description=");
        return n00.r(this.g, ")", sbS);
    }
}
