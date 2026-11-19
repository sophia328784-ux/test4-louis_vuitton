package com.vuitton.foundation.model.domain.model.dispatch.locale;

import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionGroup;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.ScriptCode;
import defpackage.a;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;", "languageCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;", "scriptCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;", "regionCode", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;", "regionGroup", "", "usedNonConventionalInternationalRegionCodeForCountry", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionGroup;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DispatchLocale {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67493c;
    public final RegionGroup d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f67494e;

    public /* synthetic */ DispatchLocale(String str, String str2, String str3, RegionGroup regionGroup, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, str3, (i2 & 8) != 0 ? null : regionGroup, (i2 & 16) != 0 ? false : z, null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0023  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DispatchLocale)) {
            return false;
        }
        DispatchLocale dispatchLocale = (DispatchLocale) obj;
        String str = dispatchLocale.f67491a;
        LanguageCode.Companion companion = LanguageCode.f67497b;
        if (!Intrinsics.c(this.f67491a, str)) {
            return false;
        }
        String str2 = dispatchLocale.f67492b;
        String str3 = this.f67492b;
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
        String str4 = dispatchLocale.f67493c;
        RegionCode.Companion companion3 = RegionCode.f67513b;
        return Intrinsics.c(this.f67493c, str4) && this.d == dispatchLocale.d && this.f67494e == dispatchLocale.f67494e;
    }

    public final int hashCode() {
        int iHashCode;
        LanguageCode.Companion companion = LanguageCode.f67497b;
        int iHashCode2 = this.f67491a.hashCode() * 31;
        String str = this.f67492b;
        if (str == null) {
            iHashCode = 0;
        } else {
            ScriptCode.Companion companion2 = ScriptCode.f67522b;
            iHashCode = str.hashCode();
        }
        int i2 = (iHashCode2 + iHashCode) * 31;
        RegionCode.Companion companion3 = RegionCode.f67513b;
        int iB = fc.b(i2, 31, this.f67493c);
        RegionGroup regionGroup = this.d;
        return Boolean.hashCode(this.f67494e) + ((iB + (regionGroup != null ? regionGroup.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String strA = LanguageCode.a(this.f67491a);
        String str = this.f67492b;
        String strA2 = str == null ? "null" : ScriptCode.a(str);
        String strA3 = RegionCode.a(this.f67493c);
        StringBuilder sbS = fc.s("DispatchLocale(languageCode=", strA, ", scriptCode=", strA2, ", regionCode=");
        sbS.append(strA3);
        sbS.append(", regionGroup=");
        sbS.append(this.d);
        sbS.append(", usedNonConventionalInternationalRegionCodeForCountry=");
        return a.p(sbS, this.f67494e, ")");
    }

    public DispatchLocale(String str, String str2, String str3, RegionGroup regionGroup, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str3.getClass();
        this.f67491a = str;
        this.f67492b = str2;
        this.f67493c = str3;
        this.d = regionGroup;
        this.f67494e = z;
    }
}
