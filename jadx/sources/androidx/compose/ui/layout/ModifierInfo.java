package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/layout/ModifierInfo;", "", "Landroidx/compose/ui/Modifier;", "modifier", "Landroidx/compose/ui/layout/LayoutCoordinates;", "coordinates", "extra", "<init>", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LayoutCoordinates;Ljava/lang/Object;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ModifierInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Modifier f9537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LayoutCoordinates f9538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f9539c;

    public ModifierInfo(Modifier modifier, LayoutCoordinates layoutCoordinates, Object obj) {
        this.f9537a = modifier;
        this.f9538b = layoutCoordinates;
        this.f9539c = obj;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ModifierInfo(");
        sb.append(this.f9537a);
        sb.append(", ");
        sb.append(this.f9538b);
        sb.append(", ");
        return o60.r(sb, this.f9539c, ')');
    }

    public /* synthetic */ ModifierInfo(Modifier modifier, LayoutCoordinates layoutCoordinates, Object obj, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(modifier, layoutCoordinates, (i2 & 4) != 0 ? null : obj);
    }
}
