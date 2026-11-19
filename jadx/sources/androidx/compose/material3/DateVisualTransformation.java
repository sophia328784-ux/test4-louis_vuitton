package androidx.compose.material3;

import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/material3/DateVisualTransformation;", "Landroidx/compose/ui/text/input/VisualTransformation;", "Landroidx/compose/material3/internal/DateInputFormat;", "dateInputFormat", "<init>", "(Landroidx/compose/material3/internal/DateInputFormat;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class DateVisualTransformation implements VisualTransformation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DateInputFormat f6884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6885c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DateVisualTransformation$dateOffsetTranslator$1 f6887f;

    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.material3.DateVisualTransformation$dateOffsetTranslator$1] */
    public DateVisualTransformation(DateInputFormat dateInputFormat) {
        this.f6884b = dateInputFormat;
        String str = dateInputFormat.f7598a;
        char c2 = dateInputFormat.f7599b;
        this.f6885c = StringsKt.u(str, c2, 0, 6);
        this.d = StringsKt.z(dateInputFormat.f7598a, c2, 0, 6);
        this.f6886e = dateInputFormat.f7600c.length();
        this.f6887f = new OffsetMapping() { // from class: androidx.compose.material3.DateVisualTransformation$dateOffsetTranslator$1
            @Override // androidx.compose.ui.text.input.OffsetMapping
            public final int a(int i2) {
                DateVisualTransformation dateVisualTransformation = this.f6888a;
                if (i2 <= dateVisualTransformation.f6885c - 1) {
                    return i2;
                }
                if (i2 <= dateVisualTransformation.d - 1) {
                    return i2 - 1;
                }
                int i3 = dateVisualTransformation.f6886e;
                return i2 <= i3 + 1 ? i2 - 2 : i3;
            }

            @Override // androidx.compose.ui.text.input.OffsetMapping
            public final int b(int i2) {
                DateVisualTransformation dateVisualTransformation = this.f6888a;
                if (i2 < dateVisualTransformation.f6885c) {
                    return i2;
                }
                if (i2 < dateVisualTransformation.d) {
                    return i2 + 1;
                }
                int i3 = dateVisualTransformation.f6886e;
                return i2 <= i3 ? i2 + 2 : i3 + 2;
            }
        };
    }

    @Override // androidx.compose.ui.text.input.VisualTransformation
    public final TransformedText h(AnnotatedString annotatedString) {
        int length = annotatedString.f10420c.length();
        String strSubstring = annotatedString.f10420c;
        int i2 = 0;
        int i3 = this.f6886e;
        if (length > i3) {
            IntRange intRangeJ = RangesKt.j(0, i3);
            strSubstring.getClass();
            intRangeJ.getClass();
            strSubstring = strSubstring.substring(intRangeJ.f71951b, intRangeJ.f71952c + 1);
        }
        String string = "";
        int i4 = 0;
        while (i2 < strSubstring.length()) {
            int i5 = i4 + 1;
            string = string + strSubstring.charAt(i2);
            if (i5 == this.f6885c || i4 + 2 == this.d) {
                StringBuilder sbT = n00.t(string);
                sbT.append(this.f6884b.f7599b);
                string = sbT.toString();
            }
            i2++;
            i4 = i5;
        }
        return new TransformedText(new AnnotatedString(string, null, 2, null), this.f6887f);
    }
}
