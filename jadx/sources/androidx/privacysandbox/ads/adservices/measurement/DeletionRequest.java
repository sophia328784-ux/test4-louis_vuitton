package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.Instant;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eBK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;", "", "", "deletionMode", "matchBehavior", "Ljava/time/Instant;", "start", "end", "", "Landroid/net/Uri;", "domainUris", "originUris", "<init>", "(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/List;Ljava/util/List;)V", "Companion", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DeletionRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f19069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Instant f19071c;
    public final Instant d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f19072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f19073f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0002\b\tR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\n"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;", "", "", "DELETION_MODE_ALL", "I", "DELETION_MODE_EXCLUDE_INTERNAL_DATA", "MATCH_BEHAVIOR_DELETE", "MATCH_BEHAVIOR_PRESERVE", "DeletionMode", "MatchBehavior", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion$DeletionMode;", "", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @Retention(RetentionPolicy.SOURCE)
        @kotlin.annotation.Retention
        public @interface DeletionMode {
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion$MatchBehavior;", "", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        @Retention(RetentionPolicy.SOURCE)
        @kotlin.annotation.Retention
        public @interface MatchBehavior {
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DeletionRequest(int i2, int i3, Instant instant, Instant instant2, List list, List list2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i4 & 4) != 0) {
            instant = Instant.MIN;
            instant.getClass();
        }
        Instant instant3 = instant;
        if ((i4 & 8) != 0) {
            instant2 = Instant.MAX;
            instant2.getClass();
        }
        this(i2, i3, instant3, instant2, (i4 & 16) != 0 ? EmptyList.f71768b : list, (i4 & 32) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeletionRequest)) {
            return false;
        }
        DeletionRequest deletionRequest = (DeletionRequest) obj;
        return this.f19069a == deletionRequest.f19069a && new HashSet(this.f19072e).equals(new HashSet(deletionRequest.f19072e)) && new HashSet(this.f19073f).equals(new HashSet(deletionRequest.f19073f)) && Intrinsics.c(this.f19071c, deletionRequest.f19071c) && Intrinsics.c(this.d, deletionRequest.d) && this.f19070b == deletionRequest.f19070b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f19070b) + ((this.d.hashCode() + ((this.f19071c.hashCode() + n00.a(n00.a(Integer.hashCode(this.f19069a) * 31, 31, this.f19072e), 31, this.f19073f)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("DeletionRequest { DeletionMode=", this.f19069a == 0 ? "DELETION_MODE_ALL" : "DELETION_MODE_EXCLUDE_INTERNAL_DATA", ", MatchBehavior=", this.f19070b == 0 ? "MATCH_BEHAVIOR_DELETE" : "MATCH_BEHAVIOR_PRESERVE", ", Start=");
        sbS.append(this.f19071c);
        sbS.append(", End=");
        sbS.append(this.d);
        sbS.append(", DomainUris=");
        sbS.append(this.f19072e);
        sbS.append(", OriginUris=");
        return a.o(sbS, this.f19073f, " }");
    }

    public DeletionRequest(int i2, int i3, Instant instant, Instant instant2, List<? extends Uri> list, List<? extends Uri> list2) {
        instant.getClass();
        instant2.getClass();
        list.getClass();
        list2.getClass();
        this.f19069a = i2;
        this.f19070b = i3;
        this.f19071c = instant;
        this.d = instant2;
        this.f19072e = list;
        this.f19073f = list2;
    }
}
