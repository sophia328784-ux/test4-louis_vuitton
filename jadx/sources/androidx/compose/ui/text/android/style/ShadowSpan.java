package androidx.compose.ui.text.android.style;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/android/style/ShadowSpan;", "Landroid/text/style/CharacterStyle;", "", "color", "", "offsetX", "offsetY", "radius", "<init>", "(IFFF)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShadowSpan extends CharacterStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f10653c;
    public final float d;

    public ShadowSpan(int i2, float f2, float f3, float f4) {
        this.f10651a = i2;
        this.f10652b = f2;
        this.f10653c = f3;
        this.d = f4;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        textPaint.setShadowLayer(this.d, this.f10652b, this.f10653c, this.f10651a);
    }
}
