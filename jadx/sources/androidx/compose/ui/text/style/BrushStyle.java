package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/style/BrushStyle;", "Landroidx/compose/ui/text/style/TextForegroundStyle;", "Landroidx/compose/ui/graphics/ShaderBrush;", "value", "", "alpha", "<init>", "(Landroidx/compose/ui/graphics/ShaderBrush;F)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class BrushStyle implements TextForegroundStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ShaderBrush f10925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10926b;

    public BrushStyle(ShaderBrush shaderBrush, float f2) {
        this.f10925a = shaderBrush;
        this.f10926b = f2;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    /* JADX INFO: renamed from: a, reason: from getter */
    public final float getF10926b() {
        return this.f10926b;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    /* JADX INFO: renamed from: b */
    public final long getF10927a() {
        Color.f8866b.getClass();
        return Color.f8871i;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final Brush e() {
        return this.f10925a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BrushStyle)) {
            return false;
        }
        BrushStyle brushStyle = (BrushStyle) obj;
        return Intrinsics.c(this.f10925a, brushStyle.f10925a) && Float.compare(this.f10926b, brushStyle.f10926b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f10926b) + (this.f10925a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BrushStyle(value=");
        sb.append(this.f10925a);
        sb.append(", alpha=");
        return a.m(sb, this.f10926b, ')');
    }
}
