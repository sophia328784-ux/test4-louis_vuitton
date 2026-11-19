package com.vuitton.foundation.model.domain.model.dispatch;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.dispatch.locale.DispatchLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.ResourceLocale;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.DispatchRegionCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LocaleParts;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LocalePartsKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionGroup;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0013\u0014BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0001\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;", b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;", "dispatchLocale", "boLocaleId", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;", "resourceLocale", "", "order", "", "displayName", "name", "", "isECommerce", "flagUrl", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "Id", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class InAppDispatch {
    public static final Companion q = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DispatchLocale f67477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67478c;
    public final ResourceLocale d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f67479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67480f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f67481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f67483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67484k;
    public final String l;
    public final Locale m;
    public final Locale n;
    public final Locale o;
    public final boolean p;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Companion;", "", "", "NON_CONVENTIONAL_INTERNATIONAL_REGION_CODE_FOR_RESOURCE", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;", "", "Companion", "value", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @JvmInline
    public static final class Id {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Companion f67485b = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67486a;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public static String a(String str, String str2) {
                str.getClass();
                LocaleParts.d.getClass();
                LocaleParts localePartsA = LocaleParts.Companion.a(str);
                if (localePartsA == null) {
                    return null;
                }
                String strB = LocalePartsKt.b("_", localePartsA.f67510a, localePartsA.f67511b, str2);
                Companion companion = Id.f67485b;
                return strB;
            }
        }

        public static String a(String str) {
            return fc.h("Id(value=", str, ")");
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Id) {
                return this.f67486a.equals(((Id) obj).f67486a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f67486a.hashCode();
        }

        public final String toString() {
            return a(this.f67486a);
        }
    }

    public InAppDispatch(String str, DispatchLocale dispatchLocale, String str2, ResourceLocale resourceLocale, int i2, String str3, String str4, boolean z, String str5, DefaultConstructorMarker defaultConstructorMarker) {
        String lowerCase;
        str.getClass();
        dispatchLocale.getClass();
        str2.getClass();
        resourceLocale.getClass();
        str3.getClass();
        str4.getClass();
        this.f67476a = str;
        this.f67477b = dispatchLocale;
        this.f67478c = str2;
        this.d = resourceLocale;
        this.f67479e = i2;
        this.f67480f = str3;
        this.g = str4;
        this.f67481h = z;
        this.f67482i = str5;
        DispatchRegionCode.Companion companion = DispatchRegionCode.f67495b;
        String str6 = dispatchLocale.f67493c;
        companion.getClass();
        str6.getClass();
        this.f67483j = str6;
        List list = InAppDispatchExtKt.f67487a;
        RegionGroup regionGroup = dispatchLocale.d;
        if (regionGroup == RegionGroup.EURO_LAND) {
            lowerCase = "EU".toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        } else {
            lowerCase = str6.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        }
        this.f67484k = lowerCase;
        this.l = tr.h(resourceLocale.g().getLanguage(), "-", lowerCase);
        this.m = resourceLocale.g();
        this.n = resourceLocale.g();
        this.o = LocalePartsKt.a(dispatchLocale.f67491a, dispatchLocale.f67492b, str6);
        this.p = regionGroup != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InAppDispatch)) {
            return false;
        }
        InAppDispatch inAppDispatch = (InAppDispatch) obj;
        String str = inAppDispatch.f67476a;
        Id.Companion companion = Id.f67485b;
        return this.f67476a.equals(str) && this.f67477b.equals(inAppDispatch.f67477b) && this.f67478c.equals(inAppDispatch.f67478c) && this.d == inAppDispatch.d && this.f67479e == inAppDispatch.f67479e && this.f67480f.equals(inAppDispatch.f67480f) && this.g.equals(inAppDispatch.g) && this.f67481h == inAppDispatch.f67481h && Intrinsics.c(this.f67482i, inAppDispatch.f67482i);
    }

    public final int hashCode() {
        Id.Companion companion = Id.f67485b;
        int iB = o60.b(fc.b(fc.b(tr.b(this.f67479e, (this.d.hashCode() + fc.b((this.f67477b.hashCode() + (this.f67476a.hashCode() * 31)) * 31, 31, this.f67478c)) * 31, 31), 31, this.f67480f), 31, this.g), 31, this.f67481h);
        String str = this.f67482i;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        String strA = Id.a(this.f67476a);
        String strH = fc.h("BoLocaleId(value=", this.f67478c, ")");
        StringBuilder sb = new StringBuilder("InAppDispatch(id=");
        sb.append(strA);
        sb.append(", dispatchLocale=");
        sb.append(this.f67477b);
        sb.append(", boLocaleId=");
        sb.append(strH);
        sb.append(", resourceLocale=");
        sb.append(this.d);
        sb.append(", order=");
        sb.append(this.f67479e);
        sb.append(", displayName=");
        sb.append(this.f67480f);
        sb.append(", name=");
        pq0.A(this.g, ", isECommerce=", ", flagUrl=", sb, this.f67481h);
        return n00.r(this.f67482i, ")", sb);
    }
}
