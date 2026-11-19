package androidx.compose.ui.graphics;

import android.graphics.Shader;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/ui/graphics/BrushKt$ShaderBrush$1", "Landroidx/compose/ui/graphics/ShaderBrush;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BrushKt$ShaderBrush$1 extends ShaderBrush {
    public final /* synthetic */ Shader d;

    public BrushKt$ShaderBrush$1(Shader shader) {
        this.d = shader;
    }

    @Override // androidx.compose.ui.graphics.ShaderBrush
    public final Shader b(long j2) {
        return this.d;
    }
}
