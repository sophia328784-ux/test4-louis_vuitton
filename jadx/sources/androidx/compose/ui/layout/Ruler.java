package androidx.compose.ui.layout;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001\u0082\u0001\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/layout/Ruler;", "", "Landroidx/compose/ui/layout/HorizontalRuler;", "Landroidx/compose/ui/layout/VerticalRuler;", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Ruler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function2 f9564a;

    public Ruler(Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f9564a = function2;
    }

    public abstract float a(float f2, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2);
}
