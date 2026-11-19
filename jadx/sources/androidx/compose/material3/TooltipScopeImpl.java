package androidx.compose.material3;

import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material3/TooltipScopeImpl;", "Landroidx/compose/material3/TooltipScope;", "Lkotlin/Function0;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getAnchorBounds", "Landroidx/compose/ui/window/PopupPositionProvider;", "positionProvider", "<init>", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TooltipScopeImpl implements TooltipScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function0 f7416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PopupPositionProvider f7417b;

    public TooltipScopeImpl(Function0<? extends LayoutCoordinates> function0, PopupPositionProvider popupPositionProvider) {
        this.f7416a = function0;
        this.f7417b = popupPositionProvider;
    }
}
