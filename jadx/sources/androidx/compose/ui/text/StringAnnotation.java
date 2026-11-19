package androidx.compose.ui.text;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/StringAnnotation;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "value", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class StringAnnotation implements AnnotatedString.Annotation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10534a;

    public /* synthetic */ StringAnnotation(String str) {
        this.f10534a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof StringAnnotation) {
            return Intrinsics.c(this.f10534a, ((StringAnnotation) obj).f10534a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10534a.hashCode();
    }

    public final String toString() {
        return d21.d(')', "StringAnnotation(value=", this.f10534a);
    }
}
