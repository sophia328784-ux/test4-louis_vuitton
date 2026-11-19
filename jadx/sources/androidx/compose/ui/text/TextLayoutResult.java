package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import defpackage.fc;
import defpackage.md0;
import defpackage.pq0;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/TextLayoutResult;", "", "Landroidx/compose/ui/text/TextLayoutInput;", "layoutInput", "Landroidx/compose/ui/text/MultiParagraph;", "multiParagraph", "Landroidx/compose/ui/unit/IntSize;", "size", "<init>", "(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextLayoutResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextLayoutInput f10552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MultiParagraph f10553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10554c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f10555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f10556f;

    public TextLayoutResult(TextLayoutInput textLayoutInput, MultiParagraph multiParagraph, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f10552a = textLayoutInput;
        this.f10553b = multiParagraph;
        this.f10554c = j2;
        ArrayList arrayList = multiParagraph.f10466h;
        boolean zIsEmpty = arrayList.isEmpty();
        float fR = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.d = zIsEmpty ? 0.0f : ((ParagraphInfo) arrayList.get(0)).f10471a.f();
        ArrayList arrayList2 = multiParagraph.f10466h;
        if (!arrayList2.isEmpty()) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) CollectionsKt.M(arrayList2);
            fR = paragraphInfo.f10471a.r() + paragraphInfo.f10475f;
        }
        this.f10555e = fR;
        this.f10556f = multiParagraph.g;
    }

    public final ResolvedTextDirection a(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.l(i2);
        int length = multiParagraph.f10461a.f10467a.f10420c.length();
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i2 == length ? CollectionsKt.F(arrayList) : MultiParagraphKt.a(i2, arrayList));
        return paragraphInfo.f10471a.u(paragraphInfo.d(i2));
    }

    public final Rect b(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.k(i2);
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.a(i2, arrayList));
        return paragraphInfo.a(paragraphInfo.f10471a.w(paragraphInfo.d(i2)));
    }

    public final Rect c(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.l(i2);
        int length = multiParagraph.f10461a.f10467a.f10420c.length();
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i2 == length ? CollectionsKt.F(arrayList) : MultiParagraphKt.a(i2, arrayList));
        return paragraphInfo.a(paragraphInfo.f10471a.c(paragraphInfo.d(i2)));
    }

    public final boolean d() {
        MultiParagraph multiParagraph = this.f10553b;
        return multiParagraph.f10463c || ((float) ((int) (this.f10554c & BodyPartID.bodyIdMax))) < multiParagraph.f10464e;
    }

    public final boolean e() {
        return ((float) ((int) (this.f10554c >> 32))) < this.f10553b.d || d();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextLayoutResult)) {
            return false;
        }
        TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
        return Intrinsics.c(this.f10552a, textLayoutResult.f10552a) && Intrinsics.c(this.f10553b, textLayoutResult.f10553b) && IntSize.b(this.f10554c, textLayoutResult.f10554c) && this.d == textLayoutResult.d && this.f10555e == textLayoutResult.f10555e && Intrinsics.c(this.f10556f, textLayoutResult.f10556f);
    }

    public final float f(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.m(i2);
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i2, arrayList));
        return paragraphInfo.f10471a.o(i2 - paragraphInfo.d);
    }

    public final float g(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.m(i2);
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i2, arrayList));
        return paragraphInfo.f10471a.j(i2 - paragraphInfo.d);
    }

    public final int h(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.m(i2);
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i2, arrayList));
        return paragraphInfo.f10471a.h(i2 - paragraphInfo.d) + paragraphInfo.f10472b;
    }

    public final int hashCode() {
        int iHashCode = (this.f10553b.hashCode() + (this.f10552a.hashCode() * 31)) * 31;
        IntSize.Companion companion = IntSize.f11020b;
        return this.f10556f.hashCode() + pq0.b(pq0.b(fc.a(iHashCode, 31, this.f10554c), 31, this.d), 31, this.f10555e);
    }

    public final ResolvedTextDirection i(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.l(i2);
        int length = multiParagraph.f10461a.f10467a.f10420c.length();
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i2 == length ? CollectionsKt.F(arrayList) : MultiParagraphKt.a(i2, arrayList));
        return paragraphInfo.f10471a.a(paragraphInfo.d(i2));
    }

    public final AndroidPath j(int i2, int i3) {
        MultiParagraph multiParagraph = this.f10553b;
        MultiParagraphIntrinsics multiParagraphIntrinsics = multiParagraph.f10461a;
        if (i2 < 0 || i2 > i3 || i3 > multiParagraphIntrinsics.f10467a.f10420c.length()) {
            StringBuilder sbP = fc.p(i2, i3, "Start(", ") or End(", ") is out of range [0..");
            sbP.append(multiParagraphIntrinsics.f10467a.f10420c.length());
            sbP.append("), or start > end!");
            InlineClassHelperKt.a(sbP.toString());
        }
        if (i2 == i3) {
            return AndroidPath_androidKt.a();
        }
        AndroidPath androidPathA = AndroidPath_androidKt.a();
        MultiParagraphKt.d(multiParagraph.f10466h, TextRangeKt.a(i2, i3), new md0(i2, i3, 0, androidPathA));
        return androidPathA;
    }

    public final long k(int i2) {
        MultiParagraph multiParagraph = this.f10553b;
        multiParagraph.l(i2);
        int length = multiParagraph.f10461a.f10467a.f10420c.length();
        ArrayList arrayList = multiParagraph.f10466h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i2 == length ? CollectionsKt.F(arrayList) : MultiParagraphKt.a(i2, arrayList));
        return paragraphInfo.b(paragraphInfo.f10471a.e(paragraphInfo.d(i2)), false);
    }

    public final String toString() {
        return "TextLayoutResult(layoutInput=" + this.f10552a + ", multiParagraph=" + this.f10553b + ", size=" + ((Object) IntSize.c(this.f10554c)) + ", firstBaseline=" + this.d + ", lastBaseline=" + this.f10555e + ", placeholderRects=" + this.f10556f + ')';
    }
}
