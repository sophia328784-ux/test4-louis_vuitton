package com.vuitton.foundation.model.domain.model.forms;

import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagWithUnderscore;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;", "", "languageTagWithUnderscore", "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagWithUnderscore;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class FormDispatchId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67581a;

    public final boolean equals(Object obj) {
        if (!(obj instanceof FormDispatchId)) {
            return false;
        }
        String str = ((FormDispatchId) obj).f67581a;
        LanguageTagWithUnderscore.Companion companion = LanguageTagWithUnderscore.f67508b;
        return Intrinsics.c(this.f67581a, str);
    }

    public final int hashCode() {
        LanguageTagWithUnderscore.Companion companion = LanguageTagWithUnderscore.f67508b;
        return this.f67581a.hashCode();
    }

    public final String toString() {
        LanguageTagWithUnderscore.Companion companion = LanguageTagWithUnderscore.f67508b;
        return fc.h("FormDispatchId(languageTagWithUnderscore=", fc.h("LanguageTagWithUnderscore(value=", this.f67581a, ")"), ")");
    }
}
