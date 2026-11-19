package com.dynamicyield.sdk.wrapper.core.models.common;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/common/Warning;", "", "", m.v, "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Warning {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26193b;

    public Warning(String str, String str2) {
        str2.getClass();
        this.f26192a = str;
        this.f26193b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Warning)) {
            return false;
        }
        Warning warning = (Warning) obj;
        return Intrinsics.c(this.f26192a, warning.f26192a) && Intrinsics.c(this.f26193b, warning.f26193b);
    }

    public final int hashCode() {
        String str = this.f26192a;
        return this.f26193b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Warning(code=");
        sb.append(this.f26192a);
        sb.append(", message=");
        return fc.l(sb, this.f26193b, ')');
    }

    public /* synthetic */ Warning(String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, str2);
    }
}
