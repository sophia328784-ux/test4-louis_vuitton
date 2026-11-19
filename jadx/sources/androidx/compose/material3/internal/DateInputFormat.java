package androidx.compose.material3.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\f\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/material3/internal/DateInputFormat;", "", "", "patternWithDelimiters", "", "delimiter", "<init>", "(Ljava/lang/String;C)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class DateInputFormat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char f7599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f7600c;

    public DateInputFormat(String str, char c2) {
        this.f7598a = str;
        this.f7599b = c2;
        this.f7600c = StringsKt.J(str, String.valueOf(c2), "");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DateInputFormat)) {
            return false;
        }
        DateInputFormat dateInputFormat = (DateInputFormat) obj;
        return Intrinsics.c(this.f7598a, dateInputFormat.f7598a) && this.f7599b == dateInputFormat.f7599b;
    }

    public final int hashCode() {
        return Character.hashCode(this.f7599b) + (this.f7598a.hashCode() * 31);
    }

    public final String toString() {
        return "DateInputFormat(patternWithDelimiters=" + this.f7598a + ", delimiter=" + this.f7599b + ')';
    }
}
