package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/RenderEffect;", "", "Landroidx/compose/ui/graphics/BlurEffect;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class RenderEffect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.graphics.RenderEffect f8914a;

    public RenderEffect(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public final android.graphics.RenderEffect a() {
        android.graphics.RenderEffect renderEffect = this.f8914a;
        if (renderEffect != null) {
            return renderEffect;
        }
        android.graphics.RenderEffect renderEffectB = b();
        this.f8914a = renderEffectB;
        return renderEffectB;
    }

    public abstract android.graphics.RenderEffect b();
}
