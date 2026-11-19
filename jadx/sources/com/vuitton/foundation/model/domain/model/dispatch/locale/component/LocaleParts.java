package com.vuitton.foundation.model.domain.model.dispatch.locale.component;

import defpackage.fc;
import defpackage.n00;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\nB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;", "languageCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;", "scriptCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;", "regionCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LocaleParts {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67512c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LocaleParts$Companion;", "", "", "LANGUAGE_ONLY", "I", "LANGUAGE_REGION", "LANGUAGE_SCRIPT_REGION", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static LocaleParts a(String str) {
            Object failure;
            str.getClass();
            List listSplit$default = StringsKt__StringsKt.split$default(StringsKt.J(str, "_", "-"), new String[]{"-"}, false, 0, 6, null);
            int size = listSplit$default.size();
            if (size == 1) {
                LanguageCode.Companion companion = LanguageCode.f67497b;
                String str2 = (String) listSplit$default.get(0);
                companion.getClass();
                String strA = LanguageCode.Companion.a(str2);
                if (strA != null) {
                    return new LocaleParts(strA, null, null, 6, null);
                }
            } else if (size == 2) {
                LanguageCode.Companion companion2 = LanguageCode.f67497b;
                String str3 = (String) listSplit$default.get(0);
                companion2.getClass();
                String strA2 = LanguageCode.Companion.a(str3);
                if (strA2 != null) {
                    RegionCode.Companion companion3 = RegionCode.f67513b;
                    String str4 = (String) listSplit$default.get(1);
                    companion3.getClass();
                    return new LocaleParts(strA2, null, RegionCode.Companion.a(str4), 2, null);
                }
            } else if (size == 3) {
                LanguageCode.Companion companion4 = LanguageCode.f67497b;
                String str5 = (String) listSplit$default.get(0);
                companion4.getClass();
                String strA3 = LanguageCode.Companion.a(str5);
                if (strA3 != null) {
                    ScriptCode.Companion companion5 = ScriptCode.f67522b;
                    String str6 = (String) listSplit$default.get(1);
                    companion5.getClass();
                    str6.getClass();
                    try {
                        Result.Companion companion6 = Result.INSTANCE;
                        if (StringsKt.w(str6)) {
                            throw new IllegalArgumentException("Invalid ISO 15924 format: ".concat(str6).toString());
                        }
                        failure = new Result(new ScriptCode(str6));
                        Throwable thA = Result.a(failure);
                        if (thA != null) {
                            if (thA instanceof CancellationException) {
                                throw thA;
                            }
                            failure = new Result(new Result.Failure(thA));
                        }
                        Object obj = ((Result) failure).f71708b;
                        if (obj instanceof Result.Failure) {
                            obj = null;
                        }
                        ScriptCode scriptCode = (ScriptCode) obj;
                        String str7 = scriptCode != null ? scriptCode.f67523a : null;
                        RegionCode.Companion companion7 = RegionCode.f67513b;
                        String str8 = (String) listSplit$default.get(2);
                        companion7.getClass();
                        return new LocaleParts(strA3, str7, RegionCode.Companion.a(str8), null);
                    } catch (Throwable th) {
                        Result.Companion companion8 = Result.INSTANCE;
                        failure = new Result.Failure(th);
                    }
                }
            }
            return null;
        }
    }

    public /* synthetic */ LocaleParts(String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0023  */
    /* JADX WARN: Code duplicated, block: B:25:0x003b  */
    public final boolean equals(Object obj) {
        boolean zC;
        boolean zC2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocaleParts)) {
            return false;
        }
        LocaleParts localeParts = (LocaleParts) obj;
        String str = localeParts.f67510a;
        LanguageCode.Companion companion = LanguageCode.f67497b;
        if (!Intrinsics.c(this.f67510a, str)) {
            return false;
        }
        String str2 = localeParts.f67511b;
        String str3 = this.f67511b;
        if (str3 == null) {
            if (str2 == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str2 == null) {
            zC = false;
        } else {
            ScriptCode.Companion companion2 = ScriptCode.f67522b;
            zC = Intrinsics.c(str3, str2);
        }
        if (!zC) {
            return false;
        }
        String str4 = localeParts.f67512c;
        String str5 = this.f67512c;
        if (str5 == null) {
            if (str4 == null) {
                zC2 = true;
            } else {
                zC2 = false;
            }
        } else if (str4 == null) {
            zC2 = false;
        } else {
            RegionCode.Companion companion3 = RegionCode.f67513b;
            zC2 = Intrinsics.c(str5, str4);
        }
        return zC2;
    }

    public final int hashCode() {
        int iHashCode;
        LanguageCode.Companion companion = LanguageCode.f67497b;
        int iHashCode2 = this.f67510a.hashCode() * 31;
        int iHashCode3 = 0;
        String str = this.f67511b;
        if (str == null) {
            iHashCode = 0;
        } else {
            ScriptCode.Companion companion2 = ScriptCode.f67522b;
            iHashCode = str.hashCode();
        }
        int i2 = (iHashCode2 + iHashCode) * 31;
        String str2 = this.f67512c;
        if (str2 != null) {
            RegionCode.Companion companion3 = RegionCode.f67513b;
            iHashCode3 = str2.hashCode();
        }
        return i2 + iHashCode3;
    }

    public final String toString() {
        String strA = LanguageCode.a(this.f67510a);
        String str = this.f67511b;
        String strA2 = str == null ? "null" : ScriptCode.a(str);
        String str2 = this.f67512c;
        return n00.r(str2 != null ? RegionCode.a(str2) : "null", ")", fc.s("LocaleParts(languageCode=", strA, ", scriptCode=", strA2, ", regionCode="));
    }

    public LocaleParts(String str, String str2, String str3, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f67510a = str;
        this.f67511b = str2;
        this.f67512c = str3;
    }
}
