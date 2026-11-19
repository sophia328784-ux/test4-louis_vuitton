package com.vuitton.foundation.model.domain.model.connectivity.sync;

import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;", "", "", "captionText", "icon", "identifier", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorial;", "items", "title", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SectionTutorials {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67346c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67347e;

    public /* synthetic */ SectionTutorials(String str, String str2, String str3, List list, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? null : str4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SectionTutorials)) {
            return false;
        }
        SectionTutorials sectionTutorials = (SectionTutorials) obj;
        return Intrinsics.c(this.f67344a, sectionTutorials.f67344a) && Intrinsics.c(this.f67345b, sectionTutorials.f67345b) && Intrinsics.c(this.f67346c, sectionTutorials.f67346c) && Intrinsics.c(this.d, sectionTutorials.d) && Intrinsics.c(this.f67347e, sectionTutorials.f67347e);
    }

    public final int hashCode() {
        String str = this.f67344a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67345b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67346c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.d;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        String str4 = this.f67347e;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SectionTutorials(captionText=", this.f67344a, ", icon=", this.f67345b, ", identifier=");
        d21.z(this.f67346c, ", items=", ", title=", sbS, this.d);
        return n00.r(this.f67347e, ")", sbS);
    }

    public SectionTutorials(String str, String str2, String str3, List<WatchTutorial> list, String str4) {
        this.f67344a = str;
        this.f67345b = str2;
        this.f67346c = str3;
        this.d = list;
        this.f67347e = str4;
    }

    public SectionTutorials() {
        this(null, null, null, null, null, 31, null);
    }
}
