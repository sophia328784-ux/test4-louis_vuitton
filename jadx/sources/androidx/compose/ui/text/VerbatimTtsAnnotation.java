package androidx.compose.ui.text;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/VerbatimTtsAnnotation;", "Landroidx/compose/ui/text/TtsAnnotation;", "", "verbatim", "<init>", "(Ljava/lang/String;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VerbatimTtsAnnotation extends TtsAnnotation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10573a;

    public VerbatimTtsAnnotation(String str) {
        super(null);
        this.f10573a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VerbatimTtsAnnotation) {
            return Intrinsics.c(this.f10573a, ((VerbatimTtsAnnotation) obj).f10573a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10573a.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("VerbatimTtsAnnotation(verbatim="), this.f10573a, ')');
    }
}
