package androidx.compose.ui.text.input;

import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.e31;
import defpackage.fc;
import defpackage.z21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB)\b\u0016\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/compose/ui/text/input/TextFieldValue;", "", "Landroidx/compose/ui/text/AnnotatedString;", "annotatedString", "Landroidx/compose/ui/text/TextRange;", "selection", "composition", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "text", "(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextFieldValue {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SaverKt$Saver$1 f10839e = new SaverKt$Saver$1(new e31(0), new z21(8));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnnotatedString f10840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextRange f10842c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/input/TextFieldValue$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TextFieldValue(AnnotatedString annotatedString, long j2, TextRange textRange, DefaultConstructorMarker defaultConstructorMarker) {
        TextRange textRange2;
        this.f10840a = annotatedString;
        this.f10841b = TextRangeKt.b(annotatedString.f10420c.length(), j2);
        if (textRange != null) {
            textRange2 = new TextRange(TextRangeKt.b(annotatedString.f10420c.length(), textRange.f10566a));
        } else {
            textRange2 = null;
        }
        this.f10842c = textRange2;
    }

    public static TextFieldValue a(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j2, int i2) {
        if ((i2 & 1) != 0) {
            annotatedString = textFieldValue.f10840a;
        }
        AnnotatedString annotatedString2 = annotatedString;
        if ((i2 & 2) != 0) {
            j2 = textFieldValue.f10841b;
        }
        long j3 = j2;
        TextRange textRange = (i2 & 4) != 0 ? textFieldValue.f10842c : null;
        textFieldValue.getClass();
        return new TextFieldValue(annotatedString2, j3, textRange, (DefaultConstructorMarker) null);
    }

    public static TextFieldValue b(TextFieldValue textFieldValue, String str) {
        long j2 = textFieldValue.f10841b;
        TextRange textRange = textFieldValue.f10842c;
        textFieldValue.getClass();
        return new TextFieldValue(new AnnotatedString(str, null, 2, null), j2, textRange, (DefaultConstructorMarker) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        return TextRange.b(this.f10841b, textFieldValue.f10841b) && Intrinsics.c(this.f10842c, textFieldValue.f10842c) && Intrinsics.c(this.f10840a, textFieldValue.f10840a);
    }

    public final int hashCode() {
        int iHashCode = this.f10840a.hashCode() * 31;
        TextRange.Companion companion = TextRange.f10564b;
        int iA = fc.a(iHashCode, 31, this.f10841b);
        TextRange textRange = this.f10842c;
        return iA + (textRange != null ? Long.hashCode(textRange.f10566a) : 0);
    }

    public final String toString() {
        return "TextFieldValue(text='" + ((Object) this.f10840a) + "', selection=" + ((Object) TextRange.h(this.f10841b)) + ", composition=" + this.f10842c + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextFieldValue(AnnotatedString annotatedString, long j2, TextRange textRange, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            TextRange.f10564b.getClass();
            j2 = TextRange.f10565c;
        }
        this(annotatedString, j2, (i2 & 4) != 0 ? null : textRange, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextFieldValue(String str, long j2, TextRange textRange, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str2 = (i2 & 1) != 0 ? "" : str;
        if ((i2 & 2) != 0) {
            TextRange.f10564b.getClass();
            j2 = TextRange.f10565c;
        }
        this(str2, j2, (i2 & 4) != 0 ? null : textRange, (DefaultConstructorMarker) null);
    }

    public TextFieldValue(String str, long j2, TextRange textRange, DefaultConstructorMarker defaultConstructorMarker) {
        this(new AnnotatedString(str, null, 2, null), j2, textRange, (DefaultConstructorMarker) null);
    }
}
