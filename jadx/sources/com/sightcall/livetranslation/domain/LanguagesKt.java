package com.sightcall.livetranslation.domain;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001a\u0010\t\u001a\u0004\u0018\u00010\u0006*\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\n\u001a\u00020\u0001\u001a\u0018\u0010\u000b\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\n\u001a\u00020\u0001\u001a\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005*\b\u0012\u0004\u0012\u00020\u00060\u0005\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"defaultSelectedLanguage", "", "getDefaultSelectedLanguage", "()Ljava/lang/String;", "defaultLanguages", "", "Lcom/sightcall/livetranslation/domain/Language;", "getDefaultLanguages", "()Ljava/util/List;", "getLanguage", "tag", "getIndexOf", "", "names", "livetranslation_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class LanguagesKt {
    private static final List<Language> defaultLanguages = CollectionsKt.P(new Language("ar-BH", "Arabic (Bahrain), modern standard"), new Language("ar-EG", "Arabic (Egypt)"), new Language("ar-IQ", "Arabic (Iraq)"), new Language("ar-IL", "Arabic (Israel)"), new Language("ar-JO", "Arabic (Jordan)"), new Language("ar-KW", "Arabic (Kuwait)"), new Language("ar-LB", "Arabic (Lebanon)"), new Language("ar-OM", "Arabic (Oman)"), new Language("ar-QA", "Arabic (Qatar)"), new Language("ar-SA", "Arabic (Saudi Arabia)"), new Language("ar-PS", "Arabic (State of Palestine)"), new Language("ar-SY", "Arabic (Syria)"), new Language("ar-AE", "Arabic (United Arab Emirates)"), new Language("bg-BG", "Bulgarian (Bulgaria)"), new Language("ca-ES", "Catalan (Spain)"), new Language("zh-HK", "Chinese (Cantonese, Traditional)"), new Language("zh-CN", "Chinese (Mandarin, Simplified)"), new Language("zh-TW", "Chinese (Taiwanese Mandarin)"), new Language("hr-HR", "Croatian (Croatia)"), new Language("cs-CZ", "Czech (Czech Republic)"), new Language("da-DK", "Danish (Denmark)"), new Language("nl-NL", "Dutch (Netherlands)"), new Language("en-AU", "English (Australia)"), new Language("en-CA", "English (Canada)"), new Language("en-GH", "English (Ghana)"), new Language("en-HK", "English (Hong Kong)"), new Language("en-IN", "English (India)"), new Language("en-IE", "English (Ireland)"), new Language("en-KE", "English (Kenya)"), new Language("en-NZ", "English (New Zealand)"), new Language("en-NG", "English (Nigeria)"), new Language("en-PH", "English (Philippines)"), new Language("en-SG", "English (Singapore)"), new Language("en-ZA", "English (South Africa)"), new Language("en-TZ", "English (Tanzania)"), new Language("en-GB", "English (United Kingdom)"), new Language("en-US", "English (United States)"), new Language("et-EE", "Estonian (Estonia)"), new Language("fil-PH", "Filipino (Philippines)"), new Language("fi-FI", "Finnish (Finland)"), new Language("fr-CA", "French (Canada)"), new Language("fr-FR", "French (France)"), new Language("fr-CH", "French (Switzerland)"), new Language("de-AT", "German (Austria)"), new Language("de-DE", "German (Germany)"), new Language("el-GR", "Greek (Greece)"), new Language("gu-IN", "Gujarati (Indian)"), new Language("hi-IN", "Hindi (India)"), new Language("hu-HU", "Hungarian (Hungary)"), new Language("id-ID", "Indonesian (Indonesia)"), new Language("ga-IE", "Irish(Ireland)"), new Language("it-IT", "Italian (Italy)"), new Language("ja-JP", "Japanese (Japan)"), new Language("ko-KR", "Korean (Korea)"), new Language("lv-LV", "Latvian (Latvia)"), new Language("lt-LT", "Lithuanian (Lithuania)"), new Language("ms-MY", "Malay (Malaysia)"), new Language("mt-MT", "Maltese (Malta)"), new Language("mr-IN", "Marathi (India)"), new Language("nb-NO", "Norwegian (Bokmål, Norway)"), new Language("pl-PL", "Polish (Poland)"), new Language("pt-BR", "Portuguese (Brazil)"), new Language("pt-PT", "Portuguese (Portugal)"), new Language("ro-RO", "Romanian (Romania)"), new Language("ru-RU", "Russian (Russia)"), new Language("sk-SK", "Slovak (Slovakia)"), new Language("sl-SI", "Slovenian (Slovenia)"), new Language("es-AR", "Spanish (Argentina)"), new Language("es-BO", "Spanish (Bolivia)"), new Language("es-CL", "Spanish (Chile)"), new Language("es-CO", "Spanish (Colombia)"), new Language("es-CR", "Spanish (Costa Rica)"), new Language("es-CU", "Spanish (Cuba)"), new Language("es-DO", "Spanish (Dominican Republic)"), new Language("es-EC", "Spanish (Ecuador)"), new Language("es-SV", "Spanish (El Salvador)"), new Language("es-GQ", "Spanish (Equatorial Guinea)"), new Language("es-GT", "Spanish (Guatemala)"), new Language("es-HN", "Spanish (Honduras)"), new Language("es-MX", "Spanish (Mexico)"), new Language("es-NI", "Spanish (Nicaragua)"), new Language("es-PA", "Spanish (Panama)"), new Language("es-PY", "Spanish (Paraguay)"), new Language("es-PE", "Spanish (Peru)"), new Language("es-PR", "Spanish (Puerto Rico)"), new Language("es-ES", "Spanish (Spain)"), new Language("es-UY", "Spanish (Uruguay)"), new Language("es-US", "Spanish (USA)"), new Language("es-VE", "Spanish (Venezuela)"), new Language("sv-SE", "Swedish (Sweden)"), new Language("ta-IN", "Tamil (India)"), new Language("te-IN", "Telugu (India)"), new Language("th-TH", "Thai (Thailand)"), new Language("tr-TR", "Turkish (Turkey)"), new Language("vi-VN", "Vietnamese (Vietnam)"));
    private static final String defaultSelectedLanguage = "en-US";

    public static final List<Language> getDefaultLanguages() {
        return defaultLanguages;
    }

    public static final String getDefaultSelectedLanguage() {
        return defaultSelectedLanguage;
    }

    public static final int getIndexOf(List<Language> list, String str) {
        list.getClass();
        str.getClass();
        Iterator<Language> it = list.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (Intrinsics.c(it.next().getTag(), str)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static final Language getLanguage(List<Language> list, String str) {
        Object next;
        list.getClass();
        str.getClass();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.c(((Language) next).getTag(), str)) {
                return (Language) next;
            }
        }
        next = null;
        return (Language) next;
    }

    public static final List<String> names(List<Language> list) {
        list.getClass();
        List<Language> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((Language) it.next()).getName());
        }
        return arrayList;
    }
}
