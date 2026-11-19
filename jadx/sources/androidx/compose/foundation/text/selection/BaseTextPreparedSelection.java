package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import androidx.compose.foundation.text.StringHelpers_androidKt;
import androidx.compose.foundation.text.selection.BaseTextPreparedSelection;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b!\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002:\u0001\u000fB1\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;", "T", "", "Landroidx/compose/ui/text/AnnotatedString;", "originalText", "Landroidx/compose/ui/text/TextRange;", "originalSelection", "Landroidx/compose/ui/text/TextLayoutResult;", "layoutResult", "Landroidx/compose/ui/text/input/OffsetMapping;", "offsetMapping", "Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;", "state", "<init>", "(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextPreparedSelectionState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseTextPreparedSelection<T extends BaseTextPreparedSelection<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnnotatedString f6336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextLayoutResult f6338c;
    public final OffsetMapping d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextPreparedSelectionState f6339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f6340f;
    public final AnnotatedString g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection$Companion;", "", "", "NoCharacterFound", "I", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public BaseTextPreparedSelection(AnnotatedString annotatedString, long j2, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6336a = annotatedString;
        this.f6337b = j2;
        this.f6338c = textLayoutResult;
        this.d = offsetMapping;
        this.f6339e = textPreparedSelectionState;
        this.f6340f = j2;
        this.g = annotatedString;
    }

    public final Integer a() {
        TextLayoutResult textLayoutResult = this.f6338c;
        if (textLayoutResult == null) {
            return null;
        }
        MultiParagraph multiParagraph = textLayoutResult.f10553b;
        int iE = TextRange.e(this.f6340f);
        OffsetMapping offsetMapping = this.d;
        return Integer.valueOf(offsetMapping.a(multiParagraph.c(multiParagraph.d(offsetMapping.b(iE)), true)));
    }

    public final Integer b() {
        TextLayoutResult textLayoutResult = this.f6338c;
        if (textLayoutResult == null) {
            return null;
        }
        int iF = TextRange.f(this.f6340f);
        OffsetMapping offsetMapping = this.d;
        return Integer.valueOf(offsetMapping.a(textLayoutResult.h(textLayoutResult.f10553b.d(offsetMapping.b(iF)))));
    }

    public final Integer c() {
        int length;
        TextLayoutResult textLayoutResult = this.f6338c;
        if (textLayoutResult == null) {
            return null;
        }
        int iP = p();
        while (true) {
            AnnotatedString annotatedString = this.f6336a;
            if (iP < annotatedString.f10420c.length()) {
                int length2 = this.g.f10420c.length() - 1;
                if (iP <= length2) {
                    length2 = iP;
                }
                long jK = textLayoutResult.k(length2);
                TextRange.Companion companion = TextRange.f10564b;
                int i2 = (int) (jK & BodyPartID.bodyIdMax);
                if (i2 > iP) {
                    length = this.d.a(i2);
                    break;
                }
                iP++;
            } else {
                length = annotatedString.f10420c.length();
                break;
            }
        }
        return Integer.valueOf(length);
    }

    public final Integer d() {
        int iA;
        TextLayoutResult textLayoutResult = this.f6338c;
        if (textLayoutResult == null) {
            return null;
        }
        for (int iP = p(); iP > 0; iP--) {
            int length = this.g.f10420c.length() - 1;
            if (iP <= length) {
                length = iP;
            }
            long jK = textLayoutResult.k(length);
            TextRange.Companion companion = TextRange.f10564b;
            int i2 = (int) (jK >> 32);
            if (i2 < iP) {
                iA = this.d.a(i2);
                return Integer.valueOf(iA);
            }
        }
        iA = 0;
        return Integer.valueOf(iA);
    }

    public final boolean e() {
        TextLayoutResult textLayoutResult = this.f6338c;
        return (textLayoutResult != null ? textLayoutResult.i(p()) : null) != ResolvedTextDirection.Rtl;
    }

    public final int f(TextLayoutResult textLayoutResult, int i2) {
        int iP = p();
        TextPreparedSelectionState textPreparedSelectionState = this.f6339e;
        if (textPreparedSelectionState.f6500a == null) {
            textPreparedSelectionState.f6500a = Float.valueOf(textLayoutResult.c(iP).f8811a);
        }
        MultiParagraph multiParagraph = textLayoutResult.f10553b;
        int iD = multiParagraph.d(iP) + i2;
        if (iD < 0) {
            return 0;
        }
        if (iD >= multiParagraph.f10465f) {
            return this.g.f10420c.length();
        }
        float fB = multiParagraph.b(iD) - 1.0f;
        Float f2 = textPreparedSelectionState.f6500a;
        f2.getClass();
        float fFloatValue = f2.floatValue();
        if ((e() && fFloatValue >= textLayoutResult.g(iD)) || (!e() && fFloatValue <= textLayoutResult.f(iD))) {
            return multiParagraph.c(iD, true);
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fB)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2.floatValue()) << 32);
        Offset.Companion companion = Offset.f8806b;
        return this.d.a(multiParagraph.g(jFloatToRawIntBits));
    }

    public final void g() {
        TextPreparedSelectionState textPreparedSelectionState = this.f6339e;
        textPreparedSelectionState.f6500a = null;
        AnnotatedString annotatedString = this.g;
        if (annotatedString.f10420c.length() > 0) {
            if (e()) {
                i();
                return;
            }
            textPreparedSelectionState.f6500a = null;
            if (annotatedString.f10420c.length() > 0) {
                String str = annotatedString.f10420c;
                long j2 = this.f6340f;
                TextRange.Companion companion = TextRange.f10564b;
                int iA = StringHelpers_androidKt.a((int) (j2 & BodyPartID.bodyIdMax), str);
                if (iA != -1) {
                    o(iA, iA);
                }
            }
        }
    }

    public final void h() {
        this.f6339e.f6500a = null;
        AnnotatedString annotatedString = this.g;
        String str = annotatedString.f10420c;
        String str2 = annotatedString.f10420c;
        if (str.length() > 0) {
            int iA = StringHelpersKt.a(str2, TextRange.e(this.f6340f));
            if (iA == TextRange.e(this.f6340f) && iA != str2.length()) {
                iA = StringHelpersKt.a(str2, iA + 1);
            }
            o(iA, iA);
        }
    }

    public final void i() {
        this.f6339e.f6500a = null;
        AnnotatedString annotatedString = this.g;
        if (annotatedString.f10420c.length() > 0) {
            String str = annotatedString.f10420c;
            long j2 = this.f6340f;
            TextRange.Companion companion = TextRange.f10564b;
            int iB = StringHelpers_androidKt.b((int) (j2 & BodyPartID.bodyIdMax), str);
            if (iB != -1) {
                o(iB, iB);
            }
        }
    }

    public final void j() {
        this.f6339e.f6500a = null;
        AnnotatedString annotatedString = this.g;
        String str = annotatedString.f10420c;
        String str2 = annotatedString.f10420c;
        if (str.length() > 0) {
            int iB = StringHelpersKt.b(str2, TextRange.f(this.f6340f));
            if (iB == TextRange.f(this.f6340f) && iB != 0) {
                iB = StringHelpersKt.b(str2, iB - 1);
            }
            o(iB, iB);
        }
    }

    public final void k() {
        TextPreparedSelectionState textPreparedSelectionState = this.f6339e;
        textPreparedSelectionState.f6500a = null;
        AnnotatedString annotatedString = this.g;
        if (annotatedString.f10420c.length() > 0) {
            if (!e()) {
                i();
                return;
            }
            textPreparedSelectionState.f6500a = null;
            if (annotatedString.f10420c.length() > 0) {
                String str = annotatedString.f10420c;
                long j2 = this.f6340f;
                TextRange.Companion companion = TextRange.f10564b;
                int iA = StringHelpers_androidKt.a((int) (j2 & BodyPartID.bodyIdMax), str);
                if (iA != -1) {
                    o(iA, iA);
                }
            }
        }
    }

    public final void l() {
        Integer numA;
        this.f6339e.f6500a = null;
        if (this.g.f10420c.length() <= 0 || (numA = a()) == null) {
            return;
        }
        int iIntValue = numA.intValue();
        o(iIntValue, iIntValue);
    }

    public final void m() {
        Integer numB;
        this.f6339e.f6500a = null;
        if (this.g.f10420c.length() <= 0 || (numB = b()) == null) {
            return;
        }
        int iIntValue = numB.intValue();
        o(iIntValue, iIntValue);
    }

    public final void n() {
        if (this.g.f10420c.length() > 0) {
            TextRange.Companion companion = TextRange.f10564b;
            this.f6340f = TextRangeKt.a((int) (this.f6337b >> 32), (int) (this.f6340f & BodyPartID.bodyIdMax));
        }
    }

    public final void o(int i2, int i3) {
        this.f6340f = TextRangeKt.a(i2, i3);
    }

    public final int p() {
        long j2 = this.f6340f;
        TextRange.Companion companion = TextRange.f10564b;
        return this.d.b((int) (j2 & BodyPartID.bodyIdMax));
    }
}
