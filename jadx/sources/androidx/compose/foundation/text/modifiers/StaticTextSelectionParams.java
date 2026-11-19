package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0011\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;", "", "Landroidx/compose/ui/layout/LayoutCoordinates;", "layoutCoordinates", "Landroidx/compose/ui/text/TextLayoutResult;", "textLayoutResult", "<init>", "(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/TextLayoutResult;)V", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class StaticTextSelectionParams {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f6313c = new Companion(null);
    public static final StaticTextSelectionParams d = new StaticTextSelectionParams(null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LayoutCoordinates f6314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextLayoutResult f6315b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/text/modifiers/StaticTextSelectionParams$Companion;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public StaticTextSelectionParams(LayoutCoordinates layoutCoordinates, TextLayoutResult textLayoutResult) {
        this.f6314a = layoutCoordinates;
        this.f6315b = textLayoutResult;
    }

    public static StaticTextSelectionParams a(StaticTextSelectionParams staticTextSelectionParams, LayoutCoordinates layoutCoordinates, TextLayoutResult textLayoutResult, int i2) {
        if ((i2 & 1) != 0) {
            layoutCoordinates = staticTextSelectionParams.f6314a;
        }
        if ((i2 & 2) != 0) {
            textLayoutResult = staticTextSelectionParams.f6315b;
        }
        staticTextSelectionParams.getClass();
        return new StaticTextSelectionParams(layoutCoordinates, textLayoutResult);
    }
}
