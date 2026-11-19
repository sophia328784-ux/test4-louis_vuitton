package androidx.compose.ui.text.platform.style;

import android.graphics.Shader;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.text.platform.AndroidTextPaint_androidKt;
import defpackage.hv0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;", "Landroid/text/style/CharacterStyle;", "Landroid/text/style/UpdateAppearance;", "Landroidx/compose/ui/graphics/ShaderBrush;", "shaderBrush", "", "alpha", "<init>", "(Landroidx/compose/ui/graphics/ShaderBrush;F)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShaderBrushSpan extends CharacterStyle implements UpdateAppearance {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f10918f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShaderBrush f10919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f10920c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final State f10921e;

    public ShaderBrushSpan(ShaderBrush shaderBrush, float f2) {
        this.f10919b = shaderBrush;
        this.f10920c = f2;
        Size.f8820b.getClass();
        this.d = SnapshotStateKt.g(new Size(Size.f8821c));
        this.f10921e = SnapshotStateKt.e(new hv0(this, 2));
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        AndroidTextPaint_androidKt.a(textPaint, this.f10920c);
        textPaint.setShader((Shader) this.f10921e.getF10755b());
    }
}
