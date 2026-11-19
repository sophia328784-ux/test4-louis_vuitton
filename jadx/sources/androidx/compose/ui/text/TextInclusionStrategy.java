package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import defpackage.b21;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/TextInclusionStrategy;", "", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface TextInclusionStrategy {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/TextInclusionStrategy$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b21 f10538a = new b21(3);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b21 f10539b = new b21(4);
    }

    boolean i(Rect rect, Rect rect2);
}
