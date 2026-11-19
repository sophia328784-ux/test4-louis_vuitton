package com.perfectcorp.perfectlib;

import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.gson.JsonElement;
import com.perfectcorp.thirdparty.com.google.gson.JsonNull;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class SkinCareSurveyForm implements SurveyForm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Page.Lang f39905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f39906b;

    public static final class Option {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f39907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Page.Element.Option.Lang f39908b;

        public Option(Page.Element.Option option, String str, String str2) {
            this.f39907a = Long.toString(option.id);
            this.f39908b = (Page.Element.Option.Lang) SkinCareSurveyForm.a(str, str2, option.langs);
        }

        public final String getId() {
            int i2 = Nulls.f42040a;
            return Strings.b(this.f39907a);
        }

        public final String getTitle() {
            String str = this.f39908b.title;
            int i2 = Nulls.f42040a;
            return Strings.b(str);
        }
    }

    public static final class Page {
        final List<String> allLangs;
        final String defLang;
        final String description;
        final List<Element> elements;
        final JsonElement fontMapping;
        final Map<String, Lang> langs;
        final JsonElement setting;
        final long surveyId = 0;
        final String title = "";

        public static final class Element {
            final JsonElement maxOptions;
            final JsonElement minOptions;
            final List<Option> options;
            final long id = -1;
            final String type = "";
            final String title = "";
            final Map<String, Lang> langs = Collections.EMPTY_MAP;
            final boolean isRequired = false;

            public static final class Lang {
                final String title = "";
                final String description = "";
            }

            public static final class Option {
                final long id = -1;
                final String title = "";
                final Map<String, Lang> langs = Collections.EMPTY_MAP;
                final boolean isFreeText = false;

                public static final class Lang {
                    final String title = "";
                }
            }

            public Element() {
                JsonNull jsonNull = JsonNull.f42453b;
                this.minOptions = jsonNull;
                this.maxOptions = jsonNull;
                this.options = Collections.EMPTY_LIST;
            }
        }

        public static final class Lang {
            final String title = "";
            final String prevBtn = "";
            final String nextBtn = "";
            final String doneBtn = "";
            final String question = "";
        }

        public Page() {
            List list = Collections.EMPTY_LIST;
            this.allLangs = list;
            this.defLang = "";
            this.description = "";
            this.langs = Collections.EMPTY_MAP;
            JsonNull jsonNull = JsonNull.f42453b;
            this.setting = jsonNull;
            this.elements = list;
            this.fontMapping = jsonNull;
        }
    }

    public static final class Question {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Page.Element f39909a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Page.Element.Lang f39910b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f39911c;

        public Question(Page.Element element, String str, String str2) {
            this.f39909a = element;
            this.f39910b = (Page.Element.Lang) SkinCareSurveyForm.a(str, str2, element.langs);
            this.f39911c = (List) Observable.fromIterable(element.options).map(new h4(str, str2, 1)).toList().c();
        }

        public final String getDescription() {
            String str = this.f39910b.description;
            int i2 = Nulls.f42040a;
            return Strings.b(str);
        }

        public final List<Option> getOptions() {
            return this.f39911c;
        }

        public final String getTitle() {
            String str = this.f39910b.title;
            int i2 = Nulls.f42040a;
            return Strings.b(str);
        }

        public final SurveyQuestionType getType() {
            return SurveyQuestionType.a(this.f39909a.type);
        }

        public final boolean isRequired() {
            return this.f39909a.isRequired;
        }
    }

    public SkinCareSurveyForm(Page page, String str) {
        Objects.requireNonNull(page);
        Objects.requireNonNull(str, "languageCode can't be null");
        String strReplace = str.replace('_', '-');
        String str2 = page.defLang;
        Objects.requireNonNull(str2, "default language code can't be null");
        this.f39905a = (Page.Lang) a(strReplace, str2, page.langs);
        this.f39906b = (List) Observable.fromIterable(page.elements).map(new h4(strReplace, str2, 0)).toList().c();
    }

    public static Object a(String str, String str2, Map map) {
        Object obj = map.get(str);
        if (obj != null) {
            return obj;
        }
        Object obj2 = map.get(str2);
        Objects.requireNonNull(obj2, "can not get default language '" + str2 + "' from " + map);
        return obj2;
    }

    public final String getDoneButtonText() {
        String str = this.f39905a.doneBtn;
        int i2 = Nulls.f42040a;
        return Strings.b(str);
    }

    public final String getNextButtonText() {
        String str = this.f39905a.nextBtn;
        int i2 = Nulls.f42040a;
        return Strings.b(str);
    }

    public final String getPreviousButtonText() {
        String str = this.f39905a.prevBtn;
        int i2 = Nulls.f42040a;
        return Strings.b(str);
    }

    public final String getQuestionText() {
        String str = this.f39905a.question;
        int i2 = Nulls.f42040a;
        return Strings.b(str);
    }

    public final List<Question> getQuestions() {
        return this.f39906b;
    }

    public final String getTitle() {
        String str = this.f39905a.title;
        int i2 = Nulls.f42040a;
        return Strings.b(str);
    }
}
