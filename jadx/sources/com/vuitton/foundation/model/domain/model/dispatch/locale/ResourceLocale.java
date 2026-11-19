package com.vuitton.foundation.model.domain.model.dispatch.locale;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageCode;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagBcp47;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LocalePartsKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'AUSTRALIA' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b#\b\u0086\u0081\u0002\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4¨\u00065"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;", "", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;", "languageCode", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;", "regionCode", NBSSpanMetricUnit.Day, "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;", "scriptCode", "e", "", "aliasRegionCodes", "Ljava/util/List;", "a", "()Ljava/util/List;", "", "isDefaultForLanguage", "Z", "f", "()Z", "Companion", "AUSTRALIA", "BRAZIL", "CANADA_ENGLISH", "CANADA_FRENCH", "CHINA", "FRANCE", "GERMANY", "HONG_KONG_CHINESE", "HONG_KONG_ENGLISH", "INTERNATIONAL_ARABIC", "INTERNATIONAL_ENGLISH", "ITALY", "JAPAN", "MEXICO", "RUSSIA", "SINGAPORE", "SOUTH_KOREA", "SPAIN", "TAIWAN", "THAILAND", "UAE_ARABIC", "UAE_ENGLISH", "UNITED_KINGDOM", "UNITED_STATES", "SWITZERLAND_FRENCH", "SWITZERLAND_GERMAN", "POLAND", "PHILIPPINES", "INDIA", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ResourceLocale {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ResourceLocale[] $VALUES;
    public static final ResourceLocale AUSTRALIA;
    public static final ResourceLocale BRAZIL;
    public static final ResourceLocale CANADA_ENGLISH;
    public static final ResourceLocale CANADA_FRENCH;
    public static final ResourceLocale CHINA;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ResourceLocale FRANCE;
    public static final ResourceLocale GERMANY;
    public static final ResourceLocale HONG_KONG_CHINESE;
    public static final ResourceLocale HONG_KONG_ENGLISH;
    public static final ResourceLocale INDIA;
    public static final ResourceLocale INTERNATIONAL_ARABIC;
    public static final ResourceLocale INTERNATIONAL_ENGLISH;
    public static final ResourceLocale ITALY;
    public static final ResourceLocale JAPAN;
    public static final ResourceLocale MEXICO;
    public static final ResourceLocale PHILIPPINES;
    public static final ResourceLocale POLAND;
    public static final ResourceLocale RUSSIA;
    public static final ResourceLocale SINGAPORE;
    public static final ResourceLocale SOUTH_KOREA;
    public static final ResourceLocale SPAIN;
    public static final ResourceLocale SWITZERLAND_FRENCH;
    public static final ResourceLocale SWITZERLAND_GERMAN;
    public static final ResourceLocale TAIWAN;
    public static final ResourceLocale THAILAND;
    public static final ResourceLocale UAE_ARABIC;
    public static final ResourceLocale UAE_ENGLISH;
    public static final ResourceLocale UNITED_KINGDOM;
    public static final ResourceLocale UNITED_STATES;
    private final List<RegionCode> aliasRegionCodes;
    private final boolean isDefaultForLanguage;
    private final String languageCode;
    private final String regionCode;
    private final String scriptCode;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        LanguageCode.f67497b.getClass();
        String str = LanguageCode.f67499e;
        RegionCode.f67513b.getClass();
        ResourceLocale resourceLocale = new ResourceLocale("AUSTRALIA", str, RegionCode.f67514c, 0, 28, null);
        AUSTRALIA = resourceLocale;
        ResourceLocale resourceLocale2 = new ResourceLocale("BRAZIL", LanguageCode.f67504k, RegionCode.f67516f, 1, 28, null);
        BRAZIL = resourceLocale2;
        String str2 = RegionCode.g;
        ResourceLocale resourceLocale3 = new ResourceLocale("CANADA_ENGLISH", str, str2, 2, 28, null);
        CANADA_ENGLISH = resourceLocale3;
        String str3 = LanguageCode.f67500f;
        ResourceLocale resourceLocale4 = new ResourceLocale("CANADA_FRENCH", str3, str2, 3, 28, null);
        CANADA_FRENCH = resourceLocale4;
        String str4 = LanguageCode.d;
        ResourceLocale resourceLocale5 = new ResourceLocale("CHINA", str4, RegionCode.f67517h, 4, 28, null);
        CHINA = resourceLocale5;
        ResourceLocale resourceLocale6 = new ResourceLocale("FRANCE", str3, RegionCode.f67520k, 5, 28, null);
        FRANCE = resourceLocale6;
        String str5 = LanguageCode.g;
        ResourceLocale resourceLocale7 = new ResourceLocale("GERMANY", str5, RegionCode.l, 6, 28, null);
        GERMANY = resourceLocale7;
        String str6 = RegionCode.m;
        ResourceLocale resourceLocale8 = new ResourceLocale("HONG_KONG_CHINESE", str4, str6, 7, 28, null);
        HONG_KONG_CHINESE = resourceLocale8;
        ResourceLocale resourceLocale9 = new ResourceLocale("HONG_KONG_ENGLISH", str, str6, 8, 28, null);
        HONG_KONG_ENGLISH = resourceLocale9;
        String str7 = LanguageCode.f67498c;
        ResourceLocale resourceLocale10 = new ResourceLocale("INTERNATIONAL_ARABIC", str7, null, 9, 12, null);
        INTERNATIONAL_ARABIC = resourceLocale10;
        ResourceLocale resourceLocale11 = new ResourceLocale("INTERNATIONAL_ENGLISH", str, null, 10, 12, null);
        INTERNATIONAL_ENGLISH = resourceLocale11;
        ResourceLocale resourceLocale12 = new ResourceLocale("ITALY", LanguageCode.f67501h, RegionCode.p, 11, 28, null);
        ITALY = resourceLocale12;
        ResourceLocale resourceLocale13 = new ResourceLocale("JAPAN", LanguageCode.f67502i, RegionCode.q, 12, 28, null);
        JAPAN = resourceLocale13;
        String str8 = LanguageCode.m;
        ResourceLocale resourceLocale14 = new ResourceLocale("MEXICO", str8, RegionCode.s, 13, 28, null);
        MEXICO = resourceLocale14;
        ResourceLocale resourceLocale15 = new ResourceLocale("RUSSIA", LanguageCode.l, RegionCode.v, 14, 28, null);
        RUSSIA = resourceLocale15;
        ResourceLocale resourceLocale16 = new ResourceLocale("SINGAPORE", str, RegionCode.x, 15, 28, null);
        SINGAPORE = resourceLocale16;
        ResourceLocale resourceLocale17 = new ResourceLocale("SOUTH_KOREA", LanguageCode.f67503j, RegionCode.y, 16, 28, null);
        SOUTH_KOREA = resourceLocale17;
        ResourceLocale resourceLocale18 = new ResourceLocale("SPAIN", str8, RegionCode.z, 17, 28, null);
        SPAIN = resourceLocale18;
        ResourceLocale resourceLocale19 = new ResourceLocale("TAIWAN", str4, RegionCode.B, 18, 28, null);
        TAIWAN = resourceLocale19;
        ResourceLocale resourceLocale20 = new ResourceLocale("THAILAND", LanguageCode.n, RegionCode.C, 19, 28, null);
        THAILAND = resourceLocale20;
        String str9 = RegionCode.D;
        String str10 = RegionCode.w;
        ResourceLocale resourceLocale21 = new ResourceLocale("UAE_ARABIC", str7, str9, 20, 20, CollectionsKt.O(new RegionCode(str10)));
        UAE_ARABIC = resourceLocale21;
        ResourceLocale resourceLocale22 = new ResourceLocale("UAE_ENGLISH", str, str9, 21, 20, CollectionsKt.O(new RegionCode(str10)));
        UAE_ENGLISH = resourceLocale22;
        ResourceLocale resourceLocale23 = new ResourceLocale("UNITED_KINGDOM", str, RegionCode.E, 22, 28, null);
        UNITED_KINGDOM = resourceLocale23;
        ResourceLocale resourceLocale24 = new ResourceLocale("UNITED_STATES", str, RegionCode.F, 23, 28, null);
        UNITED_STATES = resourceLocale24;
        String str11 = RegionCode.G;
        ResourceLocale resourceLocale25 = new ResourceLocale("SWITZERLAND_FRENCH", str3, str11, 24, 28, null);
        SWITZERLAND_FRENCH = resourceLocale25;
        ResourceLocale resourceLocale26 = new ResourceLocale("SWITZERLAND_GERMAN", str5, str11, 25, 28, null);
        SWITZERLAND_GERMAN = resourceLocale26;
        ResourceLocale resourceLocale27 = new ResourceLocale("POLAND", LanguageCode.o, RegionCode.H, 26, 28, null);
        POLAND = resourceLocale27;
        ResourceLocale resourceLocale28 = new ResourceLocale("PHILIPPINES", str, RegionCode.I, 27, 28, null);
        PHILIPPINES = resourceLocale28;
        ResourceLocale resourceLocale29 = new ResourceLocale("INDIA", str, RegionCode.J, 28, 28, null);
        INDIA = resourceLocale29;
        ResourceLocale[] resourceLocaleArr = {resourceLocale, resourceLocale2, resourceLocale3, resourceLocale4, resourceLocale5, resourceLocale6, resourceLocale7, resourceLocale8, resourceLocale9, resourceLocale10, resourceLocale11, resourceLocale12, resourceLocale13, resourceLocale14, resourceLocale15, resourceLocale16, resourceLocale17, resourceLocale18, resourceLocale19, resourceLocale20, resourceLocale21, resourceLocale22, resourceLocale23, resourceLocale24, resourceLocale25, resourceLocale26, resourceLocale27, resourceLocale28, resourceLocale29};
        $VALUES = resourceLocaleArr;
        $ENTRIES = EnumEntriesKt.a(resourceLocaleArr);
        INSTANCE = new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceLocale(String str, String str2, String str3, int i2, int i3, List list) {
        super(str, i2);
        list = (i3 & 8) != 0 ? EmptyList.f71768b : list;
        boolean z = (i3 & 16) == 0;
        this.languageCode = str2;
        this.regionCode = str3;
        this.scriptCode = null;
        this.aliasRegionCodes = list;
        this.isDefaultForLanguage = z;
    }

    public static EnumEntries b() {
        return $ENTRIES;
    }

    public static ResourceLocale valueOf(String str) {
        return (ResourceLocale) Enum.valueOf(ResourceLocale.class, str);
    }

    public static ResourceLocale[] values() {
        return (ResourceLocale[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getAliasRegionCodes() {
        return this.aliasRegionCodes;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getLanguageCode() {
        return this.languageCode;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getRegionCode() {
        return this.regionCode;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getScriptCode() {
        return this.scriptCode;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final boolean getIsDefaultForLanguage() {
        return this.isDefaultForLanguage;
    }

    public final Locale g() {
        return LocalePartsKt.a(this.languageCode, this.scriptCode, this.regionCode);
    }

    public final String h() {
        String strB = LocalePartsKt.b("-", this.languageCode, this.scriptCode, this.regionCode);
        LanguageTagBcp47.f67506b.getClass();
        return LanguageTagBcp47.Companion.b(strB);
    }
}
