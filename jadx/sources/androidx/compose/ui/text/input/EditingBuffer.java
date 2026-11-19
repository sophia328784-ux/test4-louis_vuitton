package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.fc;
import defpackage.md;
import defpackage.no0;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\b\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/text/input/EditingBuffer;", "", "Landroidx/compose/ui/text/AnnotatedString;", "text", "Landroidx/compose/ui/text/TextRange;", "selection", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EditingBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PartialGapBuffer f10778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f10779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10780c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10781e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/input/EditingBuffer$Companion;", "", "", "NOWHERE", "I", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public EditingBuffer(AnnotatedString annotatedString, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        String str = annotatedString.f10420c;
        this.f10778a = new PartialGapBuffer(str);
        this.f10779b = TextRange.f(j2);
        this.f10780c = TextRange.e(j2);
        this.d = -1;
        this.f10781e = -1;
        int iF = TextRange.f(j2);
        int iE = TextRange.e(j2);
        if (iF < 0 || iF > str.length()) {
            no0.s(fc.q(iF, "start (", ") offset is outside of text region "), str.length());
            throw null;
        }
        if (iE < 0 || iE > str.length()) {
            no0.s(fc.q(iE, "end (", ") offset is outside of text region "), str.length());
            throw null;
        }
        if (iF <= iE) {
            return;
        }
        md.n(o60.h(iF, iE, "Do not set reversed range: ", " > "));
        throw null;
    }

    public final void a(int i2, int i3) {
        long jA = TextRangeKt.a(i2, i3);
        this.f10778a.b(i2, i3, "");
        long jA2 = EditingBufferKt.a(TextRangeKt.a(this.f10779b, this.f10780c), jA);
        j(TextRange.f(jA2));
        i(TextRange.e(jA2));
        if (e()) {
            long jA3 = EditingBufferKt.a(TextRangeKt.a(this.d, this.f10781e), jA);
            if (TextRange.c(jA3)) {
                this.d = -1;
                this.f10781e = -1;
            } else {
                this.d = TextRange.f(jA3);
                this.f10781e = TextRange.e(jA3);
            }
        }
    }

    public final char b(int i2) {
        PartialGapBuffer partialGapBuffer = this.f10778a;
        GapBuffer gapBuffer = partialGapBuffer.f10823b;
        if (gapBuffer != null && i2 >= partialGapBuffer.f10824c) {
            int iA = gapBuffer.f10782a - gapBuffer.a();
            int i3 = partialGapBuffer.f10824c;
            if (i2 >= iA + i3) {
                return partialGapBuffer.f10822a.charAt(i2 - ((iA - partialGapBuffer.d) + i3));
            }
            int i4 = i2 - i3;
            int i5 = gapBuffer.f10784c;
            char[] cArr = gapBuffer.f10783b;
            return i4 < i5 ? cArr[i4] : cArr[(i4 - i5) + gapBuffer.d];
        }
        return partialGapBuffer.f10822a.charAt(i2);
    }

    public final TextRange c() {
        if (e()) {
            return new TextRange(TextRangeKt.a(this.d, this.f10781e));
        }
        return null;
    }

    public final int d() {
        int i2 = this.f10779b;
        int i3 = this.f10780c;
        if (i2 == i3) {
            return i3;
        }
        return -1;
    }

    public final boolean e() {
        return this.d != -1;
    }

    public final void f(int i2, int i3, String str) {
        PartialGapBuffer partialGapBuffer = this.f10778a;
        if (i2 < 0 || i2 > partialGapBuffer.a()) {
            no0.s(fc.q(i2, "start (", ") offset is outside of text region "), partialGapBuffer.a());
            return;
        }
        if (i3 < 0 || i3 > partialGapBuffer.a()) {
            no0.s(fc.q(i3, "end (", ") offset is outside of text region "), partialGapBuffer.a());
            return;
        }
        if (i2 > i3) {
            md.n(o60.h(i2, i3, "Do not set reversed range: ", " > "));
            return;
        }
        partialGapBuffer.b(i2, i3, str);
        j(str.length() + i2);
        i(str.length() + i2);
        this.d = -1;
        this.f10781e = -1;
    }

    public final void g(int i2, int i3) {
        PartialGapBuffer partialGapBuffer = this.f10778a;
        if (i2 < 0 || i2 > partialGapBuffer.a()) {
            no0.s(fc.q(i2, "start (", ") offset is outside of text region "), partialGapBuffer.a());
            return;
        }
        if (i3 < 0 || i3 > partialGapBuffer.a()) {
            no0.s(fc.q(i3, "end (", ") offset is outside of text region "), partialGapBuffer.a());
        } else if (i2 >= i3) {
            md.n(o60.h(i2, i3, "Do not set reversed or empty range: ", " > "));
        } else {
            this.d = i2;
            this.f10781e = i3;
        }
    }

    public final void h(int i2, int i3) {
        PartialGapBuffer partialGapBuffer = this.f10778a;
        if (i2 < 0 || i2 > partialGapBuffer.a()) {
            no0.s(fc.q(i2, "start (", ") offset is outside of text region "), partialGapBuffer.a());
            return;
        }
        if (i3 < 0 || i3 > partialGapBuffer.a()) {
            no0.s(fc.q(i3, "end (", ") offset is outside of text region "), partialGapBuffer.a());
        } else if (i2 > i3) {
            md.n(o60.h(i2, i3, "Do not set reversed range: ", " > "));
        } else {
            j(i2);
            i(i3);
        }
    }

    public final void i(int i2) {
        if (!(i2 >= 0)) {
            InlineClassHelperKt.a("Cannot set selectionEnd to a negative value: " + i2);
        }
        this.f10780c = i2;
    }

    public final void j(int i2) {
        if (!(i2 >= 0)) {
            InlineClassHelperKt.a("Cannot set selectionStart to a negative value: " + i2);
        }
        this.f10779b = i2;
    }

    public final String toString() {
        return this.f10778a.toString();
    }

    public EditingBuffer(String str, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(new AnnotatedString(str, null, 2, null), j2, (DefaultConstructorMarker) null);
    }
}
