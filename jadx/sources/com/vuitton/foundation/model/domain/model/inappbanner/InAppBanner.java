package com.vuitton.foundation.model.domain.model.inappbanner;

import defpackage.fc;
import defpackage.o60;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bm\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u00126\u0010\u0011\u001a2\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\n¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;", "", "", "message", "actionLabel", "Ljava/time/Instant;", "creationDate", "endDate", "", "isAnimationConsumed", "Lkotlin/Function2;", "", "Lkotlin/ParameterName;", "name", "topMargin", "bottomMargin", "", "onClick", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;ZLkotlin/jvm/functions/Function2;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class InAppBanner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Instant f67756c;
    public final Instant d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f67757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function2 f67758f;

    public InAppBanner(String str, String str2, Instant instant, Instant instant2, boolean z, Function2<? super Integer, ? super Integer, Unit> function2) {
        str.getClass();
        instant.getClass();
        instant2.getClass();
        function2.getClass();
        this.f67754a = str;
        this.f67755b = str2;
        this.f67756c = instant;
        this.d = instant2;
        this.f67757e = z;
        this.f67758f = function2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InAppBanner)) {
            return false;
        }
        InAppBanner inAppBanner = (InAppBanner) obj;
        return Intrinsics.c(this.f67754a, inAppBanner.f67754a) && Intrinsics.c(this.f67755b, inAppBanner.f67755b) && Intrinsics.c(this.f67756c, inAppBanner.f67756c) && Intrinsics.c(this.d, inAppBanner.d) && this.f67757e == inAppBanner.f67757e && Intrinsics.c(this.f67758f, inAppBanner.f67758f);
    }

    public final int hashCode() {
        int iHashCode = this.f67754a.hashCode() * 31;
        String str = this.f67755b;
        return this.f67758f.hashCode() + o60.b((this.d.hashCode() + ((this.f67756c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31, 31, this.f67757e);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("InAppBanner(message=", this.f67754a, ", actionLabel=", this.f67755b, ", creationDate=");
        sbS.append(this.f67756c);
        sbS.append(", endDate=");
        sbS.append(this.d);
        sbS.append(", isAnimationConsumed=");
        sbS.append(this.f67757e);
        sbS.append(", onClick=");
        sbS.append(this.f67758f);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ InAppBanner(String str, String str2, Instant instant, Instant instant2, boolean z, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? null : str2, instant, instant2, z, function2);
    }
}
