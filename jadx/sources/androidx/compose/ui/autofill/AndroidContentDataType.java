package androidx.compose.ui.autofill;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0083@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/autofill/AndroidContentDataType;", "Landroidx/compose/ui/autofill/ContentDataType;", "androidAutofillType", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
final class AndroidContentDataType implements ContentDataType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8639a;

    public final boolean equals(Object obj) {
        if (obj instanceof AndroidContentDataType) {
            return this.f8639a == ((AndroidContentDataType) obj).f8639a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f8639a);
    }

    public final String toString() {
        return n00.q("AndroidContentDataType(androidAutofillType=", this.f8639a, ')');
    }
}
