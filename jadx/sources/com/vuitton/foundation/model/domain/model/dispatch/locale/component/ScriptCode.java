package com.vuitton.foundation.model.domain.model.dispatch.locale.component;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode;", "", "Companion", "iso15924Code", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class ScriptCode {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f67522b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67523a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/ScriptCode$Companion;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ ScriptCode(String str) {
        this.f67523a = str;
    }

    public static String a(String str) {
        return fc.h("ScriptCode(iso15924Code=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ScriptCode) {
            return this.f67523a.equals(((ScriptCode) obj).f67523a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f67523a.hashCode();
    }

    public final String toString() {
        return a(this.f67523a);
    }
}
