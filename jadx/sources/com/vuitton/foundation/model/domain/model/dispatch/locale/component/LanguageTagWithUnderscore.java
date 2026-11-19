package com.vuitton.foundation.model.domain.model.dispatch.locale.component;

import defpackage.fc;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;", "", "Companion", "value", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class LanguageTagWithUnderscore {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f67508b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67509a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(String str) throws Throwable {
            Object failure;
            str.getClass();
            try {
                Result.Companion companion = Result.INSTANCE;
                failure = new Result(new LanguageTagWithUnderscore(StringsKt.J(str, "-", "_")));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
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
            LanguageTagWithUnderscore languageTagWithUnderscore = (LanguageTagWithUnderscore) obj;
            if (languageTagWithUnderscore != null) {
                return languageTagWithUnderscore.f67509a;
            }
            return null;
        }

        public static String b(String str) throws Throwable {
            str.getClass();
            String strA = a(str);
            LanguageTagWithUnderscore languageTagWithUnderscore = strA != null ? new LanguageTagWithUnderscore(strA) : null;
            if (languageTagWithUnderscore != null) {
                return languageTagWithUnderscore.f67509a;
            }
            md.n("Required value was null.");
            return null;
        }
    }

    public /* synthetic */ LanguageTagWithUnderscore(String str) {
        this.f67509a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LanguageTagWithUnderscore) {
            return this.f67509a.equals(((LanguageTagWithUnderscore) obj).f67509a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f67509a.hashCode();
    }

    public final String toString() {
        return fc.h("LanguageTagWithUnderscore(value=", this.f67509a, ")");
    }
}
