package com.kakao.sdk.user.model;

import com.google.gson.annotations.SerializedName;
import com.kakao.sdk.common.json.UnknownValue;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001cB;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0011\u001a\u0004\b\u0014\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0011\u001a\u0004\b\u0015\u0010\u0013R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/kakao/sdk/user/model/ServiceTerms;", "", "", "tag", "", "required", "agreed", "revocable", "Ljava/util/Date;", "agreedAt", "Lcom/kakao/sdk/user/model/ServiceTerms$Referer;", "referer", "<init>", "(Ljava/lang/String;ZZZLjava/util/Date;Lcom/kakao/sdk/user/model/ServiceTerms$Referer;)V", "Ljava/lang/String;", "getTag", "()Ljava/lang/String;", "Z", "getRequired", "()Z", "getAgreed", "getRevocable", "Ljava/util/Date;", "getAgreedAt", "()Ljava/util/Date;", "Lcom/kakao/sdk/user/model/ServiceTerms$Referer;", "getReferer", "()Lcom/kakao/sdk/user/model/ServiceTerms$Referer;", "Referer", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class ServiceTerms {
    private final boolean agreed;
    private final Date agreedAt;

    @SerializedName("agreed_by")
    private final Referer referer;
    private final boolean required;
    private final boolean revocable;
    private final String tag;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/user/model/ServiceTerms$Referer;", "", "KAUTH", "KAPI", "UNKNOWN", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Referer {
        private static final /* synthetic */ Referer[] $VALUES;
        public static final Referer KAPI;
        public static final Referer KAUTH;

        @UnknownValue
        public static final Referer UNKNOWN;

        static {
            Referer referer = new Referer("KAUTH", 0);
            KAUTH = referer;
            Referer referer2 = new Referer("KAPI", 1);
            KAPI = referer2;
            Referer referer3 = new Referer("UNKNOWN", 2);
            UNKNOWN = referer3;
            $VALUES = new Referer[]{referer, referer2, referer3};
        }

        public static Referer valueOf(String str) {
            return (Referer) Enum.valueOf(Referer.class, str);
        }

        public static Referer[] values() {
            return (Referer[]) $VALUES.clone();
        }
    }

    public ServiceTerms(String str, boolean z, boolean z2, boolean z3, Date date, Referer referer) {
        str.getClass();
        this.tag = str;
        this.required = z;
        this.agreed = z2;
        this.revocable = z3;
        this.agreedAt = date;
        this.referer = referer;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServiceTerms)) {
            return false;
        }
        ServiceTerms serviceTerms = (ServiceTerms) obj;
        return Intrinsics.c(this.tag, serviceTerms.tag) && this.required == serviceTerms.required && this.agreed == serviceTerms.agreed && this.revocable == serviceTerms.revocable && Intrinsics.c(this.agreedAt, serviceTerms.agreedAt) && this.referer == serviceTerms.referer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    public final int hashCode() {
        int iHashCode = this.tag.hashCode() * 31;
        boolean z = this.required;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i2 = (iHashCode + r1) * 31;
        boolean z2 = this.agreed;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i3 = (i2 + r2) * 31;
        boolean z3 = this.revocable;
        int i4 = (i3 + (z3 ? 1 : z3)) * 31;
        Date date = this.agreedAt;
        int iHashCode2 = (i4 + (date == null ? 0 : date.hashCode())) * 31;
        Referer referer = this.referer;
        return iHashCode2 + (referer != null ? referer.hashCode() : 0);
    }

    public final String toString() {
        return "ServiceTerms(tag=" + this.tag + ", required=" + this.required + ", agreed=" + this.agreed + ", revocable=" + this.revocable + ", agreedAt=" + this.agreedAt + ", referer=" + this.referer + ')';
    }
}
