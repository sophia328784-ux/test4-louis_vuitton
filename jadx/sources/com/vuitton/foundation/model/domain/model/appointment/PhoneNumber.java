package com.vuitton.foundation.model.domain.model.appointment;

import com.linkplay.medialib.ContentTree;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/appointment/PhoneNumber;", "", "", "prefix", "regionCodeIso31661Alpha2", "number", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PhoneNumber {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66543c;

    public PhoneNumber(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f66541a = str;
        this.f66542b = str2;
        this.f66543c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhoneNumber)) {
            return false;
        }
        PhoneNumber phoneNumber = (PhoneNumber) obj;
        return Intrinsics.c(this.f66541a, phoneNumber.f66541a) && Intrinsics.c(this.f66542b, phoneNumber.f66542b) && Intrinsics.c(this.f66543c, phoneNumber.f66543c);
    }

    public final int hashCode() {
        return this.f66543c.hashCode() + fc.b(this.f66541a.hashCode() * 31, 31, this.f66542b);
    }

    public final String toString() {
        String str = this.f66543c;
        if (StringsKt.w(str)) {
            return "";
        }
        if (StringsKt.P(str, "+", false)) {
            return str;
        }
        boolean zP = StringsKt.P(str, ContentTree.ROOT_ID, false);
        String str2 = this.f66541a;
        return zP ? d21.j(str2, StringsKt.n(1, str)) : d21.j(str2, str);
    }
}
