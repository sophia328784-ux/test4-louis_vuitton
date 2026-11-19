package com.vuitton.foundation.model.domain.model.dispatch.locale.component;

import defpackage.fc;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode;", "", "Companion", "iso6391Code", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class LanguageCode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f67497b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f67498c = "ar";
    public static final String d = "zh";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f67499e = "en";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f67500f = "fr";
    public static final String g = "de";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f67501h = "it";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f67502i = "ja";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f67503j = "ko";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f67504k = "pt";
    public static final String l = "ru";
    public static final String m = "es";
    public static final String n = "th";
    public static final String o = "pl";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67505a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageCode$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(String str) throws Throwable {
            Object failure;
            str.getClass();
            try {
                Result.Companion companion = Result.INSTANCE;
                String lowerCase = str.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                if (!new Regex("^[a-z]{2}$").f(lowerCase)) {
                    throw new IllegalArgumentException("Invalid ISO 639-1 format: ".concat(lowerCase).toString());
                }
                failure = new Result(new LanguageCode(lowerCase));
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
                LanguageCode languageCode = (LanguageCode) obj;
                if (languageCode != null) {
                    return languageCode.f67505a;
                }
                return null;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
    }

    public /* synthetic */ LanguageCode(String str) {
        this.f67505a = str;
    }

    public static String a(String str) {
        return fc.h("LanguageCode(iso6391Code=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LanguageCode) {
            return Intrinsics.c(this.f67505a, ((LanguageCode) obj).f67505a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f67505a.hashCode();
    }

    public final String toString() {
        return a(this.f67505a);
    }
}
