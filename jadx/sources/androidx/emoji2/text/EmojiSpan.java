package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataItem;

/* JADX INFO: loaded from: classes.dex */
public abstract class EmojiSpan extends ReplacementSpan {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypefaceEmojiRasterizer f13099c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint.FontMetricsInt f13098b = new Paint.FontMetricsInt();
    public short d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f13100e = 1.0f;

    public EmojiSpan(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        Preconditions.e(typefaceEmojiRasterizer, "rasterizer cannot be null");
        this.f13099c = typefaceEmojiRasterizer;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f13098b;
        paint.getFontMetricsInt(fontMetricsInt2);
        float fAbs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        TypefaceEmojiRasterizer typefaceEmojiRasterizer = this.f13099c;
        MetadataItem metadataItemB = typefaceEmojiRasterizer.b();
        int iA = metadataItemB.a(14);
        this.f13100e = fAbs / (iA != 0 ? metadataItemB.f13128b.getShort(iA + metadataItemB.f13127a) : (short) 0);
        MetadataItem metadataItemB2 = typefaceEmojiRasterizer.b();
        int iA2 = metadataItemB2.a(14);
        if (iA2 != 0) {
            metadataItemB2.f13128b.getShort(iA2 + metadataItemB2.f13127a);
        }
        MetadataItem metadataItemB3 = typefaceEmojiRasterizer.b();
        int iA3 = metadataItemB3.a(12);
        short s = (short) ((iA3 != 0 ? metadataItemB3.f13128b.getShort(iA3 + metadataItemB3.f13127a) : (short) 0) * this.f13100e);
        this.d = s;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s;
    }
}
