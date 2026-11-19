package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B·\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0004\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0004\u0012\u0006\u0010\u001c\u001a\u00020\u0004\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutParams;", "", "", "text", "", "start", "end", "Landroid/text/TextPaint;", "paint", "width", "Landroid/text/TextDirectionHeuristic;", "textDir", "Landroid/text/Layout$Alignment;", "alignment", "maxLines", "Landroid/text/TextUtils$TruncateAt;", "ellipsize", "ellipsizedWidth", "", "lineSpacingMultiplier", "lineSpacingExtra", "justificationMode", "", "includePadding", "useFallbackLineSpacing", "breakStrategy", "lineBreakStyle", "lineBreakWordStyle", "hyphenationFrequency", "", "leftIndents", "rightIndents", "<init>", "(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class StaticLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f10597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10599c;
    public final TextPaint d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f10600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextDirectionHeuristic f10601f;
    public final Layout.Alignment g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10602h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextUtils.TruncateAt f10603i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10604j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f10605k;
    public final float l;
    public final int m;
    public final boolean n;
    public final boolean o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final int[] t;
    public final int[] u;

    public StaticLayoutParams(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i5, TextUtils.TruncateAt truncateAt, int i6, float f2, float f3, int i7, boolean z, boolean z2, int i8, int i9, int i10, int i11, int[] iArr, int[] iArr2) {
        this.f10597a = charSequence;
        this.f10598b = i2;
        this.f10599c = i3;
        this.d = textPaint;
        this.f10600e = i4;
        this.f10601f = textDirectionHeuristic;
        this.g = alignment;
        this.f10602h = i5;
        this.f10603i = truncateAt;
        this.f10604j = i6;
        this.f10605k = f2;
        this.l = f3;
        this.m = i7;
        this.n = z;
        this.o = z2;
        this.p = i8;
        this.q = i9;
        this.r = i10;
        this.s = i11;
        this.t = iArr;
        this.u = iArr2;
        if (!(i2 >= 0 && i2 <= i3)) {
            InlineClassHelperKt.a("invalid start value");
        }
        if (!(i3 >= 0 && i3 <= charSequence.length())) {
            InlineClassHelperKt.a("invalid end value");
        }
        if (!(i5 >= 0)) {
            InlineClassHelperKt.a("invalid maxLines value");
        }
        if (!(i4 >= 0)) {
            InlineClassHelperKt.a("invalid width value");
        }
        if (!(i6 >= 0)) {
            InlineClassHelperKt.a("invalid ellipsizedWidth value");
        }
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        InlineClassHelperKt.a("invalid lineSpacingMultiplier value");
    }

    public /* synthetic */ StaticLayoutParams(CharSequence charSequence, int i2, int i3, TextPaint textPaint, int i4, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i5, TextUtils.TruncateAt truncateAt, int i6, float f2, float f3, int i7, boolean z, boolean z2, int i8, int i9, int i10, int i11, int[] iArr, int[] iArr2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, (i12 & 2) != 0 ? 0 : i2, i3, textPaint, i4, textDirectionHeuristic, alignment, i5, truncateAt, i6, f2, f3, i7, z, z2, i8, i9, i10, i11, iArr, iArr2);
    }
}
