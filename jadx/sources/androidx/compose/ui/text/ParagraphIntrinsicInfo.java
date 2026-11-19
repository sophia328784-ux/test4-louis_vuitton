package androidx.compose.ui.text;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/ParagraphIntrinsicInfo;", "", "Landroidx/compose/ui/text/ParagraphIntrinsics;", "intrinsics", "", "startIndex", "endIndex", "<init>", "(Landroidx/compose/ui/text/ParagraphIntrinsics;II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ParagraphIntrinsicInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParagraphIntrinsics f10476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10478c;

    public ParagraphIntrinsicInfo(ParagraphIntrinsics paragraphIntrinsics, int i2, int i3) {
        this.f10476a = paragraphIntrinsics;
        this.f10477b = i2;
        this.f10478c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphIntrinsicInfo)) {
            return false;
        }
        ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
        return Intrinsics.c(this.f10476a, paragraphIntrinsicInfo.f10476a) && this.f10477b == paragraphIntrinsicInfo.f10477b && this.f10478c == paragraphIntrinsicInfo.f10478c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f10478c) + tr.b(this.f10477b, this.f10476a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphIntrinsicInfo(intrinsics=");
        sb.append(this.f10476a);
        sb.append(", startIndex=");
        sb.append(this.f10477b);
        sb.append(", endIndex=");
        return tr.k(sb, this.f10478c, ')');
    }
}
