package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Trace;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.compose.ui.text.android.selection.WordIterator;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.IndentationFixSpan_androidKt;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.LineHeightStyle;
import defpackage.xg;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001BÅ\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0003\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\b\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0018\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Landroidx/compose/ui/text/android/TextLayout;", "", "", "charSequence", "", "width", "Landroid/text/TextPaint;", "textPaint", "", "alignment", "Landroid/text/TextUtils$TruncateAt;", "ellipsize", "textDirectionHeuristic", "lineSpacingMultiplier", "lineSpacingExtra", "", "includePadding", "fallbackLineSpacing", "maxLines", "breakStrategy", "lineBreakStyle", "lineBreakWordStyle", "hyphenationFrequency", "justificationMode", "", "leftIndents", "rightIndents", "Landroidx/compose/ui/text/android/LayoutIntrinsics;", "layoutIntrinsics", "<init>", "(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f10609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextUtils.TruncateAt f10610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f10611c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f10612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WordIterator f10613f;
    public final Layout g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10614h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10615i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f10616j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f10617k;
    public final float l;
    public final boolean m;
    public final Paint.FontMetricsInt n;
    public final int o;
    public final LineHeightStyleSpan[] p;
    public final Rect q;
    public LayoutHelper r;

    /* JADX WARN: Code duplicated, block: B:116:0x023d  */
    /* JADX WARN: Code duplicated, block: B:117:0x023f  */
    /* JADX WARN: Code duplicated, block: B:119:0x0244  */
    /* JADX WARN: Code duplicated, block: B:120:0x0246  */
    /* JADX WARN: Code duplicated, block: B:58:0x0145  */
    /* JADX WARN: Code duplicated, block: B:69:0x017b  */
    /* JADX WARN: Code duplicated, block: B:80:0x019a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r31v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v8 */
    public TextLayout(CharSequence charSequence, float f2, TextPaint textPaint, int i2, TextUtils.TruncateAt truncateAt, int i3, float f3, float f4, boolean z, boolean z2, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, int[] iArr2, LayoutIntrinsics layoutIntrinsics) {
        int i10;
        TextDirectionHeuristic textDirectionHeuristic;
        int i11;
        Layout layoutA;
        LineHeightStyleSpan[] lineHeightStyleSpanArr;
        int i12;
        int i13;
        long j2;
        char c2;
        int i14;
        int i15;
        long jA;
        ?? r7;
        boolean zA;
        int topPadding;
        boolean zB;
        long jA2;
        Paint.FontMetricsInt fontMetricsInt;
        LineHeightStyleSpan lineHeightStyleSpan;
        LineHeightStyleSpan lineHeightStyleSpan2;
        int i16;
        int i17;
        this.f10609a = textPaint;
        this.f10610b = truncateAt;
        this.f10611c = z;
        this.d = z2;
        this.q = new Rect();
        int length = charSequence.length();
        TextDirectionHeuristic textDirectionHeuristicB = TextLayout_androidKt.b(i3);
        Layout.Alignment alignment = TextAlignmentAdapter.f10606a;
        Layout.Alignment alignment2 = i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? Layout.Alignment.ALIGN_NORMAL : TextAlignmentAdapter.f10607b : TextAlignmentAdapter.f10606a : Layout.Alignment.ALIGN_CENTER : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        boolean z3 = (charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(-1, length, BaselineShiftSpan.class) < length;
        Trace.beginSection("TextLayout:initLayout");
        try {
            BoringLayout.Metrics metricsA = layoutIntrinsics.a();
            double d = f2;
            int iCeil = (int) Math.ceil(d);
            if (metricsA == null || layoutIntrinsics.c() > f2 || z3) {
                this.m = false;
                StaticLayoutFactory23 staticLayoutFactory23 = StaticLayoutFactory.f10596a;
                i10 = i4;
                textDirectionHeuristic = textDirectionHeuristicB;
                i11 = 0;
                layoutA = StaticLayoutFactory.a(charSequence, textPaint, iCeil, charSequence.length(), textDirectionHeuristic, alignment2, i10, truncateAt, (int) Math.ceil(d), f3, f4, i9, z, z2, i5, i6, i7, i8, iArr, iArr2);
            } else {
                this.m = true;
                if (iCeil < 0) {
                    InlineClassHelperKt.a("negative width");
                }
                if (iCeil < 0) {
                    InlineClassHelperKt.a("negative ellipsized width");
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    layoutA = xg.a(charSequence, textPaint, iCeil, alignment2, metricsA, z, truncateAt, iCeil, z2);
                    i17 = 0;
                } else {
                    i17 = 0;
                    layoutA = new BoringLayout(charSequence, textPaint, iCeil, alignment2, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, metricsA, z, truncateAt, iCeil);
                }
                i10 = i4;
                textDirectionHeuristic = textDirectionHeuristicB;
                i11 = i17;
            }
            this.g = layoutA;
            Trace.endSection();
            int iMin = Math.min(layoutA.getLineCount(), i10);
            this.f10614h = iMin;
            int i18 = iMin - 1;
            this.f10612e = (iMin >= i10 && (layoutA.getEllipsisCount(i18) > 0 || layoutA.getLineEnd(i18) != charSequence.length())) ? 1 : i11;
            if (layoutA.getText() instanceof Spanned) {
                CharSequence text = layoutA.getText();
                text.getClass();
                if (SpannedExtensions_androidKt.a((Spanned) text, LineHeightStyleSpan.class) || layoutA.getText().length() <= 0) {
                    CharSequence text2 = layoutA.getText();
                    text2.getClass();
                    lineHeightStyleSpanArr = (LineHeightStyleSpan[]) ((Spanned) text2).getSpans(i11, layoutA.getText().length(), LineHeightStyleSpan.class);
                } else {
                    lineHeightStyleSpanArr = null;
                }
            } else {
                lineHeightStyleSpanArr = null;
            }
            this.p = lineHeightStyleSpanArr;
            if (lineHeightStyleSpanArr == null || (lineHeightStyleSpan2 = (LineHeightStyleSpan) ArraysKt.x(lineHeightStyleSpanArr)) == null) {
                i12 = i11;
            } else {
                if (lineHeightStyleSpan2.f10637e) {
                    int i19 = lineHeightStyleSpan2.f10639h;
                    LineHeightStyle.Mode.f10952b.getClass();
                    if (i19 == LineHeightStyle.Mode.d) {
                        i16 = 1;
                    } else {
                        i16 = i11;
                    }
                } else {
                    i16 = i11;
                }
                i12 = i16;
            }
            if (lineHeightStyleSpanArr == null || (lineHeightStyleSpan = (LineHeightStyleSpan) ArraysKt.x(lineHeightStyleSpanArr)) == null || !lineHeightStyleSpan.f10638f) {
                i13 = i11;
            } else {
                int i20 = lineHeightStyleSpan.f10639h;
                LineHeightStyle.Mode.f10952b.getClass();
                if (i20 == LineHeightStyle.Mode.d) {
                    i13 = 1;
                } else {
                    i13 = i11;
                }
            }
            if (i12 == 0 || i13 == 0) {
                long jA3 = TextLayout_androidKt.f10619b;
                if (z) {
                    j2 = BodyPartID.bodyIdMax;
                } else {
                    if (this.m) {
                        BoringLayout boringLayout = (BoringLayout) layoutA;
                        int i21 = Build.VERSION.SDK_INT;
                        j2 = BodyPartID.bodyIdMax;
                        if (i21 >= 33) {
                            zB = BoringLayoutFactory33.b(boringLayout);
                        } else {
                            r7 = i11;
                        }
                    } else {
                        j2 = BodyPartID.bodyIdMax;
                        StaticLayoutFactory23 staticLayoutFactory24 = StaticLayoutFactory.f10596a;
                        StaticLayout staticLayout = (StaticLayout) layoutA;
                        StaticLayoutFactory.f10596a.getClass();
                        if (Build.VERSION.SDK_INT >= 33) {
                            zA = StaticLayoutFactory33.a(staticLayout);
                        } else {
                            r7 = z2;
                        }
                    }
                    if (r7 == 0) {
                        r7 = zA;
                        TextPaint paint = layoutA.getPaint();
                        CharSequence text3 = layoutA.getText();
                        Rect rectA = PaintExtensions_androidKt.a(paint, text3, layoutA.getLineStart(i11), layoutA.getLineEnd(i11));
                        int lineAscent = layoutA.getLineAscent(i11);
                        c2 = ' ';
                        int i22 = rectA.top;
                        if (i22 < lineAscent) {
                            r7 = zB;
                            topPadding = lineAscent - i22;
                        } else {
                            r7 = zB;
                            topPadding = layoutA.getTopPadding();
                        }
                        rectA = iMin != 1 ? PaintExtensions_androidKt.a(paint, text3, layoutA.getLineStart(i18), layoutA.getLineEnd(i18)) : rectA;
                        int lineDescent = layoutA.getLineDescent(i18);
                        int i23 = rectA.bottom;
                        int bottomPadding = i23 > lineDescent ? i23 - lineDescent : layoutA.getBottomPadding();
                        if (topPadding != 0 || bottomPadding != 0) {
                            jA3 = TextLayout_androidKt.a(topPadding, bottomPadding);
                        }
                    }
                    if (i12 != 0) {
                        i14 = i11;
                    } else {
                        i14 = (int) (jA3 >> c2);
                    }
                    if (i13 != 0) {
                        i15 = i11;
                    } else {
                        i15 = (int) (jA3 & j2);
                    }
                    jA = TextLayout_androidKt.a(i14, i15);
                }
                r7 = zA;
                r7 = zB;
                c2 = ' ';
                if (i12 != 0) {
                    i14 = i11;
                } else {
                    i14 = (int) (jA3 >> c2);
                }
                if (i13 != 0) {
                    i15 = i11;
                } else {
                    i15 = (int) (jA3 & j2);
                }
                jA = TextLayout_androidKt.a(i14, i15);
            } else {
                jA = TextLayout_androidKt.f10619b;
                j2 = BodyPartID.bodyIdMax;
                c2 = ' ';
            }
            if (lineHeightStyleSpanArr != null) {
                int length2 = lineHeightStyleSpanArr.length;
                int iMax = i11;
                int iMax2 = iMax;
                for (int i24 = iMax2; i24 < length2; i24++) {
                    LineHeightStyleSpan lineHeightStyleSpan3 = lineHeightStyleSpanArr[i24];
                    int i25 = lineHeightStyleSpan3.m;
                    iMax = i25 < 0 ? Math.max(iMax, Math.abs(i25)) : iMax;
                    int i26 = lineHeightStyleSpan3.n;
                    if (i26 < 0) {
                        iMax2 = Math.max(iMax, Math.abs(i26));
                    }
                }
                jA2 = (iMax == 0 && iMax2 == 0) ? TextLayout_androidKt.f10619b : TextLayout_androidKt.a(iMax, iMax2);
            } else {
                jA2 = TextLayout_androidKt.f10619b;
            }
            this.f10615i = Math.max((int) (jA >> c2), (int) (jA2 >> c2));
            this.f10616j = Math.max((int) (jA & j2), (int) (jA2 & j2));
            TextPaint textPaint2 = this.f10609a;
            LineHeightStyleSpan[] lineHeightStyleSpanArr2 = this.p;
            int i27 = this.f10614h - 1;
            Layout layout = this.g;
            if (layout.getLineStart(i27) != layout.getLineEnd(i27) || lineHeightStyleSpanArr2 == null || lineHeightStyleSpanArr2.length == 0) {
                fontMetricsInt = null;
            } else {
                TextDirectionHeuristic textDirectionHeuristic2 = textDirectionHeuristic;
                SpannableString spannableString = new SpannableString("\u200b");
                LineHeightStyleSpan lineHeightStyleSpan4 = (LineHeightStyleSpan) ArraysKt.w(lineHeightStyleSpanArr2);
                spannableString.setSpan(new LineHeightStyleSpan(lineHeightStyleSpan4.f10635b, 0, spannableString.length(), (i27 == 0 || !lineHeightStyleSpan4.f10638f) ? lineHeightStyleSpan4.f10638f : i11, lineHeightStyleSpan4.f10638f, lineHeightStyleSpan4.g, lineHeightStyleSpan4.f10639h, null), i11, spannableString.length(), 33);
                StaticLayoutFactory23 staticLayoutFactory25 = StaticLayoutFactory.f10596a;
                StaticLayout staticLayoutA = StaticLayoutFactory.a(spannableString, textPaint2, Integer.MAX_VALUE, spannableString.length(), textDirectionHeuristic2, LayoutCompat.f10581a, Integer.MAX_VALUE, null, Integer.MAX_VALUE, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, this.f10611c, this.d, 0, 0, 0, 0, null, null);
                fontMetricsInt = new Paint.FontMetricsInt();
                fontMetricsInt.ascent = staticLayoutA.getLineAscent(i11);
                fontMetricsInt.descent = staticLayoutA.getLineDescent(i11);
                fontMetricsInt.top = staticLayoutA.getLineTop(i11);
                fontMetricsInt.bottom = staticLayoutA.getLineBottom(i11);
            }
            this.o = fontMetricsInt != null ? fontMetricsInt.bottom - ((int) (f(i18) - h(i18))) : i11;
            this.n = fontMetricsInt;
            Layout layout2 = this.g;
            this.f10617k = IndentationFixSpan_androidKt.a(layout2, i18, layout2.getPaint());
            Layout layout3 = this.g;
            this.l = IndentationFixSpan_androidKt.b(layout3, i18, layout3.getPaint());
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public final void a(int i2, int i3, int i4, float[] fArr) {
        float fA;
        float fA2;
        TextLayout textLayout = this;
        Layout layout = textLayout.g;
        int length = layout.getText().length();
        if (i2 < 0) {
            InlineClassHelperKt.a("startOffset must be > 0");
        }
        if (i2 >= length) {
            InlineClassHelperKt.a("startOffset must be less than text length");
        }
        if (i3 <= i2) {
            InlineClassHelperKt.a("endOffset must be greater than startOffset");
        }
        if (i3 > length) {
            InlineClassHelperKt.a("endOffset must be smaller or equal to text length");
        }
        if (fArr.length - i4 < (i3 - i2) * 4) {
            InlineClassHelperKt.a("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4");
        }
        int lineForOffset = layout.getLineForOffset(i2);
        int lineForOffset2 = layout.getLineForOffset(i3 - 1);
        HorizontalPositionCache horizontalPositionCache = new HorizontalPositionCache(textLayout);
        if (lineForOffset > lineForOffset2) {
            return;
        }
        int i5 = lineForOffset;
        int i6 = i4;
        while (true) {
            int lineStart = layout.getLineStart(i5);
            int iG = textLayout.g(i5);
            int iMin = Math.min(i3, iG);
            float fH = textLayout.h(i5);
            float f2 = textLayout.f(i5);
            boolean z = false;
            boolean z2 = layout.getParagraphDirection(i5) == 1;
            for (int iMax = Math.max(i2, lineStart); iMax < iMin; iMax++) {
                boolean zIsRtlCharAt = layout.isRtlCharAt(iMax);
                if (!z2 || zIsRtlCharAt) {
                    if (z2 && zIsRtlCharAt) {
                        z = false;
                        float fA3 = horizontalPositionCache.a(iMax, false, false, false);
                        fA = horizontalPositionCache.a(iMax + 1, true, true, false);
                        fA2 = fA3;
                    } else {
                        z = false;
                        if (z2 || !zIsRtlCharAt) {
                            fA = horizontalPositionCache.a(iMax, false, false, false);
                            fA2 = horizontalPositionCache.a(iMax + 1, true, true, false);
                        } else {
                            fA2 = horizontalPositionCache.a(iMax, false, false, true);
                            fA = horizontalPositionCache.a(iMax + 1, true, true, true);
                        }
                    }
                    fArr[i6] = fA;
                    fArr[i6 + 1] = fH;
                    fArr[i6 + 2] = fA2;
                    fArr[i6 + 3] = f2;
                    i6 += 4;
                } else {
                    fA = horizontalPositionCache.a(iMax, z, z, true);
                    fA2 = horizontalPositionCache.a(iMax + 1, true, true, true);
                }
                z = false;
                fArr[i6] = fA;
                fArr[i6 + 1] = fH;
                fArr[i6 + 2] = fA2;
                fArr[i6 + 3] = f2;
                i6 += 4;
            }
            if (i5 == lineForOffset2) {
                return;
            }
            i5++;
            textLayout = this;
        }
    }

    public final int b() {
        boolean z = this.f10612e;
        Layout layout = this.g;
        return (z ? layout.getLineBottom(this.f10614h - 1) : layout.getHeight()) + this.f10615i + this.f10616j + this.o;
    }

    public final float c(int i2) {
        return i2 == this.f10614h + (-1) ? this.f10617k + this.l : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final LayoutHelper d() {
        LayoutHelper layoutHelper = this.r;
        if (layoutHelper != null) {
            return layoutHelper;
        }
        LayoutHelper layoutHelper2 = new LayoutHelper(this.g);
        this.r = layoutHelper2;
        return layoutHelper2;
    }

    public final float e(int i2) {
        Paint.FontMetricsInt fontMetricsInt;
        return this.f10615i + ((i2 != this.f10614h + (-1) || (fontMetricsInt = this.n) == null) ? this.g.getLineBaseline(i2) : h(i2) - fontMetricsInt.ascent);
    }

    public final float f(int i2) {
        Paint.FontMetricsInt fontMetricsInt;
        int i3 = this.f10614h;
        int i4 = i3 - 1;
        Layout layout = this.g;
        if (i2 != i4 || (fontMetricsInt = this.n) == null) {
            return this.f10615i + layout.getLineBottom(i2) + (i2 == i3 + (-1) ? this.f10616j : 0);
        }
        return layout.getLineBottom(i2 - 1) + fontMetricsInt.bottom;
    }

    public final int g(int i2) {
        ThreadLocal threadLocal = TextLayout_androidKt.f10618a;
        Layout layout = this.g;
        return (layout.getEllipsisCount(i2) <= 0 || this.f10610b != TextUtils.TruncateAt.END) ? layout.getLineEnd(i2) : layout.getText().length();
    }

    public final float h(int i2) {
        return this.g.getLineTop(i2) + (i2 == 0 ? 0 : this.f10615i);
    }

    public final float i(int i2, boolean z) {
        return c(this.g.getLineForOffset(i2)) + d().c(i2, true, z);
    }

    public final float j(int i2, boolean z) {
        return c(this.g.getLineForOffset(i2)) + d().c(i2, false, z);
    }

    public final WordIterator k() {
        WordIterator wordIterator = this.f10613f;
        if (wordIterator != null) {
            return wordIterator;
        }
        Layout layout = this.g;
        WordIterator wordIterator2 = new WordIterator(layout.getText(), 0, layout.getText().length(), this.f10609a.getTextLocale());
        this.f10613f = wordIterator2;
        return wordIterator2;
    }

    public /* synthetic */ TextLayout(CharSequence charSequence, float f2, TextPaint textPaint, int i2, TextUtils.TruncateAt truncateAt, int i3, float f3, float f4, boolean z, boolean z2, int i4, int i5, int i6, int i7, int i8, int i9, int[] iArr, int[] iArr2, LayoutIntrinsics layoutIntrinsics, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        CharSequence charSequence2;
        TextPaint textPaint2;
        LayoutIntrinsics layoutIntrinsics2;
        int i11 = (i10 & 8) != 0 ? 0 : i2;
        TextUtils.TruncateAt truncateAt2 = (i10 & 16) != 0 ? null : truncateAt;
        int i12 = (i10 & 32) != 0 ? 2 : i3;
        float f5 = (i10 & 64) != 0 ? 1.0f : f3;
        float f6 = (i10 & 128) != 0 ? 0.0f : f4;
        boolean z3 = (i10 & 256) != 0 ? false : z;
        boolean z4 = (i10 & 512) != 0 ? true : z2;
        int i13 = (i10 & 1024) != 0 ? Integer.MAX_VALUE : i4;
        int i14 = (i10 & 2048) != 0 ? 0 : i5;
        int i15 = (i10 & 4096) != 0 ? 0 : i6;
        int i16 = (i10 & 8192) != 0 ? 0 : i7;
        int i17 = (i10 & 16384) != 0 ? 0 : i8;
        int i18 = (32768 & i10) != 0 ? 0 : i9;
        int[] iArr3 = (65536 & i10) != 0 ? null : iArr;
        int[] iArr4 = (131072 & i10) != 0 ? null : iArr2;
        if ((i10 & 262144) != 0) {
            charSequence2 = charSequence;
            textPaint2 = textPaint;
            layoutIntrinsics2 = new LayoutIntrinsics(charSequence2, textPaint2, i12);
        } else {
            charSequence2 = charSequence;
            textPaint2 = textPaint;
            layoutIntrinsics2 = layoutIntrinsics;
        }
        this(charSequence2, f2, textPaint2, i11, truncateAt2, i12, f5, f6, z3, z4, i13, i14, i15, i16, i17, i18, iArr3, iArr4, layoutIntrinsics2);
    }
}
