package androidx.constraintlayout.compose;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/constraintlayout/compose/DimensionDescription;", "Landroidx/constraintlayout/compose/Dimension$Coercible;", "Landroidx/constraintlayout/compose/Dimension$MinCoercible;", "Landroidx/constraintlayout/compose/Dimension$MaxCoercible;", "Landroidx/constraintlayout/compose/Dimension;", "", "valueSymbol", "<init>", "(Ljava/lang/String;)V", "Landroidx/compose/ui/unit/Dp;", "value", "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DimensionDescription implements Dimension.Coercible, Dimension.MinCoercible, Dimension.MaxCoercible, Dimension {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DimensionSymbol f11262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DimensionSymbol f11263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DimensionSymbol f11264c;

    public DimensionDescription(Dp dp, String str) {
        this.f11262a = new DimensionSymbol(dp, str, "base", null);
        this.f11263b = new DimensionSymbol(null, null, "min", null);
        this.f11264c = new DimensionSymbol(null, null, "max", null);
    }

    public DimensionDescription(float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this(new Dp(f2), (String) null);
    }

    public DimensionDescription(String str) {
        this((Dp) null, str);
    }
}
