package androidx.compose.material3;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import defpackage.k40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class InteractiveComponentSizeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HorizontalAlignmentLine f7011a = new HorizontalAlignmentLine(InteractiveComponentSizeKt$MinimumInteractiveTopAlignmentLine$1.f7015b);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final VerticalAlignmentLine f7012b = new VerticalAlignmentLine(InteractiveComponentSizeKt$MinimumInteractiveLeftAlignmentLine$1.f7014b);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f7013c;

    static {
        new StaticProvidableCompositionLocal(new k40(0));
        f7013c = new StaticProvidableCompositionLocal(new k40(1));
    }
}
