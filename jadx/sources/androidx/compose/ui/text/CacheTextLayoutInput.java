package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.TextUnit;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/CacheTextLayoutInput;", "", "Landroidx/compose/ui/text/TextLayoutInput;", "textLayoutInput", "<init>", "(Landroidx/compose/ui/text/TextLayoutInput;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CacheTextLayoutInput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextLayoutInput f10448a;

    public CacheTextLayoutInput(TextLayoutInput textLayoutInput) {
        this.f10448a = textLayoutInput;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CacheTextLayoutInput)) {
            return false;
        }
        TextLayoutInput textLayoutInput = this.f10448a;
        AnnotatedString annotatedString = textLayoutInput.f10543a;
        TextLayoutInput textLayoutInput2 = ((CacheTextLayoutInput) obj).f10448a;
        if (!Intrinsics.c(annotatedString, textLayoutInput2.f10543a) || !textLayoutInput.f10544b.c(textLayoutInput2.f10544b) || !Intrinsics.c(textLayoutInput.f10545c, textLayoutInput2.f10545c) || textLayoutInput.d != textLayoutInput2.d || textLayoutInput.f10546e != textLayoutInput2.f10546e) {
            return false;
        }
        int i2 = textLayoutInput.f10547f;
        int i3 = textLayoutInput2.f10547f;
        TextOverflow.Companion companion = TextOverflow.f10989a;
        return i2 == i3 && Intrinsics.c(textLayoutInput.g, textLayoutInput2.g) && textLayoutInput.f10548h == textLayoutInput2.f10548h && textLayoutInput.f10549i == textLayoutInput2.f10549i && Constraints.b(textLayoutInput.f10550j, textLayoutInput2.f10550j);
    }

    public final int hashCode() {
        TextLayoutInput textLayoutInput = this.f10448a;
        int iHashCode = textLayoutInput.f10543a.hashCode() * 31;
        TextStyle textStyle = textLayoutInput.f10544b;
        SpanStyle spanStyle = textStyle.f10568a;
        long j2 = spanStyle.fontSize;
        TextUnit.Companion companion = TextUnit.f11023b;
        int iHashCode2 = Long.hashCode(j2) * 31;
        FontWeight fontWeight = spanStyle.fontWeight;
        int i2 = (iHashCode2 + (fontWeight != null ? fontWeight.f10734b : 0)) * 31;
        FontStyle fontStyle = spanStyle.fontStyle;
        int iHashCode3 = (i2 + (fontStyle != null ? Integer.hashCode(fontStyle.f10717a) : 0)) * 31;
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        int iHashCode4 = (iHashCode3 + (fontSynthesis != null ? Integer.hashCode(fontSynthesis.f10721a) : 0)) * 31;
        FontFamily fontFamily = spanStyle.fontFamily;
        int iHashCode5 = (iHashCode4 + (fontFamily != null ? fontFamily.hashCode() : 0)) * 31;
        String str = spanStyle.fontFeatureSettings;
        int iA = fc.a((iHashCode5 + (str != null ? str.hashCode() : 0)) * 31, 31, spanStyle.letterSpacing);
        BaselineShift baselineShift = spanStyle.baselineShift;
        int iHashCode6 = (iA + (baselineShift != null ? Float.hashCode(baselineShift.f10924a) : 0)) * 31;
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        int iHashCode7 = (iHashCode6 + (textGeometricTransform != null ? textGeometricTransform.hashCode() : 0)) * 31;
        LocaleList localeList = spanStyle.localeList;
        int iHashCode8 = (iHashCode7 + (localeList != null ? localeList.f10873b.hashCode() : 0)) * 31;
        long j3 = spanStyle.l;
        Color.Companion companion2 = Color.f8866b;
        ULong.Companion companion3 = ULong.INSTANCE;
        int iA2 = fc.a(iHashCode8, 31, j3);
        PlatformSpanStyle platformSpanStyle = spanStyle.platformStyle;
        int iHashCode9 = (textStyle.f10569b.hashCode() + ((iA2 + (platformSpanStyle != null ? platformSpanStyle.hashCode() : 0)) * 31)) * 31;
        PlatformTextStyle platformTextStyle = textStyle.platformStyle;
        int iB = o60.b((n00.a((iHashCode9 + (platformTextStyle != null ? platformTextStyle.hashCode() : 0) + iHashCode) * 31, 31, textLayoutInput.f10545c) + textLayoutInput.d) * 31, 31, textLayoutInput.f10546e);
        int i3 = textLayoutInput.f10547f;
        TextOverflow.Companion companion4 = TextOverflow.f10989a;
        int iHashCode10 = (textLayoutInput.f10549i.hashCode() + ((textLayoutInput.f10548h.hashCode() + ((textLayoutInput.g.hashCode() + tr.b(i3, iB, 31)) * 31)) * 31)) * 31;
        long j4 = textLayoutInput.f10550j;
        Constraints.Companion companion5 = Constraints.f10998b;
        return Long.hashCode(j4) + iHashCode10;
    }
}
