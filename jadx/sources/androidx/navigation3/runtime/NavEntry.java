package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.om;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001BH\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\n¢\u0006\u0004\b\f\u0010\rB0\b\u0016\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\n¢\u0006\u0004\b\f\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/navigation3/runtime/NavEntry;", "", "T", ConfigurationName.KEY, "contentKey", "", "", "metadata", "Lkotlin/Function1;", "", "Landroidx/compose/runtime/Composable;", "content", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V", "navEntry", "(Landroidx/navigation3/runtime/NavEntry;Lkotlin/jvm/functions/Function3;)V", "navigation3-runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NavEntry<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f18397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f18398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f18399c;
    public final Function3 d;

    public NavEntry(Object obj, Object obj2, Map map, Function3 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (i2 & 2) != 0 ? obj.toString() : obj2, (i2 & 4) != 0 ? MapsKt.c() : map, function3);
    }

    public final void a(Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(295512821);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(this) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            this.d.A(this.f18397a, gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(this, i2, 7);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && NavEntry.class == obj.getClass()) {
            NavEntry navEntry = (NavEntry) obj;
            if (Intrinsics.c(this.f18397a, navEntry.f18397a) && Intrinsics.c(this.f18398b, navEntry.f18398b) && Intrinsics.c(this.f18399c, navEntry.f18399c) && this.d == navEntry.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.d.hashCode() * 31) + (this.f18399c.hashCode() * 31) + (this.f18398b.hashCode() * 31) + (this.f18397a.hashCode() * 31);
    }

    public final String toString() {
        return "NavEntry(key=" + this.f18397a + ", contentKey=" + this.f18398b + ", metadata=" + this.f18399c + ", content=" + this.d + ')';
    }

    public NavEntry(NavEntry<T> navEntry, Function3<? super T, ? super Composer, ? super Integer, Unit> function3) {
        this(navEntry.f18397a, navEntry.f18398b, navEntry.f18399c, function3);
    }

    public NavEntry(T t, Object obj, Map<String, ? extends Object> map, Function3<? super T, ? super Composer, ? super Integer, Unit> function3) {
        this.f18397a = t;
        this.f18398b = obj;
        this.f18399c = map;
        this.d = function3;
    }
}
