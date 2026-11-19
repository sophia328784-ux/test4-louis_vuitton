package androidx.constraintlayout.compose;

import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLString;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/constraintlayout/compose/DimensionSymbol;", "", "Landroidx/compose/ui/unit/Dp;", "value", "", "symbol", "debugName", "<init>", "(Landroidx/compose/ui/unit/Dp;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DimensionSymbol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Dp f11265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11266b;

    public DimensionSymbol(Dp dp, String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f11265a = dp;
        this.f11266b = str;
    }

    public final CLElement a() {
        Dp dp = this.f11265a;
        if (dp != null) {
            return new CLNumber(dp.f11006b);
        }
        String str = this.f11266b;
        return str != null ? CLString.z(str) : CLString.z("wrap");
    }
}
