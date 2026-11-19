package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/ParagraphInfo;", "", "Landroidx/compose/ui/text/Paragraph;", "paragraph", "", "startIndex", "endIndex", "startLineIndex", "endLineIndex", "", "top", "bottom", "<init>", "(Landroidx/compose/ui/text/Paragraph;IIIIFF)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ParagraphInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paragraph f10471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10473c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10474e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f10475f;
    public final float g;

    public /* synthetic */ ParagraphInfo(Paragraph paragraph, int i2, int i3, int i4, int i5, float f2, float f3, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        this(paragraph, i2, i3, (i6 & 8) != 0 ? -1 : i4, (i6 & 16) != 0 ? -1 : i5, (i6 & 32) != 0 ? -1.0f : f2, (i6 & 64) != 0 ? -1.0f : f3);
    }

    public final Rect a(Rect rect) {
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(this.f10475f)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return rect.i(jFloatToRawIntBits);
    }

    public final long b(long j2, boolean z) {
        if (z) {
            TextRange.f10564b.getClass();
            long j3 = TextRange.f10565c;
            if (TextRange.b(j2, j3)) {
                return j3;
            }
        }
        TextRange.Companion companion = TextRange.f10564b;
        int i2 = this.f10472b;
        return TextRangeKt.a(((int) (j2 >> 32)) + i2, ((int) (j2 & BodyPartID.bodyIdMax)) + i2);
    }

    public final Rect c(Rect rect) {
        float f2 = -this.f10475f;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
        Offset.Companion companion = Offset.f8806b;
        return rect.i(jFloatToRawIntBits);
    }

    public final int d(int i2) {
        int i3 = this.f10473c;
        int i4 = this.f10472b;
        return RangesKt.d(i2, i4, i3) - i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphInfo)) {
            return false;
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
        return Intrinsics.c(this.f10471a, paragraphInfo.f10471a) && this.f10472b == paragraphInfo.f10472b && this.f10473c == paragraphInfo.f10473c && this.d == paragraphInfo.d && this.f10474e == paragraphInfo.f10474e && Float.compare(this.f10475f, paragraphInfo.f10475f) == 0 && Float.compare(this.g, paragraphInfo.g) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.g) + pq0.b(tr.b(this.f10474e, tr.b(this.d, tr.b(this.f10473c, tr.b(this.f10472b, this.f10471a.hashCode() * 31, 31), 31), 31), 31), 31, this.f10475f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphInfo(paragraph=");
        sb.append(this.f10471a);
        sb.append(", startIndex=");
        sb.append(this.f10472b);
        sb.append(", endIndex=");
        sb.append(this.f10473c);
        sb.append(", startLineIndex=");
        sb.append(this.d);
        sb.append(", endLineIndex=");
        sb.append(this.f10474e);
        sb.append(", top=");
        sb.append(this.f10475f);
        sb.append(", bottom=");
        return defpackage.a.m(sb, this.g, ')');
    }

    public ParagraphInfo(Paragraph paragraph, int i2, int i3, int i4, int i5, float f2, float f3) {
        this.f10471a = paragraph;
        this.f10472b = i2;
        this.f10473c = i3;
        this.d = i4;
        this.f10474e = i5;
        this.f10475f = f2;
        this.g = f3;
    }
}
