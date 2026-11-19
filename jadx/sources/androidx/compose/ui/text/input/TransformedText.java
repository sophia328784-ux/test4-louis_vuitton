package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/input/TransformedText;", "", "Landroidx/compose/ui/text/AnnotatedString;", "text", "Landroidx/compose/ui/text/input/OffsetMapping;", "offsetMapping", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransformedText {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnnotatedString f10863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OffsetMapping f10864b;

    public TransformedText(AnnotatedString annotatedString, OffsetMapping offsetMapping) {
        this.f10863a = annotatedString;
        this.f10864b = offsetMapping;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransformedText)) {
            return false;
        }
        TransformedText transformedText = (TransformedText) obj;
        return Intrinsics.c(this.f10863a, transformedText.f10863a) && Intrinsics.c(this.f10864b, transformedText.f10864b);
    }

    public final int hashCode() {
        return this.f10864b.hashCode() + (this.f10863a.hashCode() * 31);
    }

    public final String toString() {
        return "TransformedText(text=" + ((Object) this.f10863a) + ", offsetMapping=" + this.f10864b + ')';
    }
}
