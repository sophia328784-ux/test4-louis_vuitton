package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Density;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/AndroidEdgeEffectOverscrollFactory;", "Landroidx/compose/foundation/OverscrollFactory;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/graphics/Color;", "glowColor", "Landroidx/compose/foundation/layout/PaddingValues;", "glowDrawPadding", "<init>", "(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AndroidEdgeEffectOverscrollFactory implements OverscrollFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Density f4141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4142c;
    public final PaddingValues d;

    public /* synthetic */ AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j2, PaddingValues paddingValues, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, density, (i2 & 4) != 0 ? AndroidOverscroll_androidKt.f4143a : j2, (i2 & 8) != 0 ? AndroidOverscroll_androidKt.f4144b : paddingValues, null);
    }

    @Override // androidx.compose.foundation.OverscrollFactory
    public final AndroidEdgeEffectOverscrollEffect a() {
        return new AndroidEdgeEffectOverscrollEffect(this.f4140a, this.f4141b, this.f4142c, this.d, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!AndroidEdgeEffectOverscrollFactory.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) obj;
        return Intrinsics.c(this.f4140a, androidEdgeEffectOverscrollFactory.f4140a) && Intrinsics.c(this.f4141b, androidEdgeEffectOverscrollFactory.f4141b) && Color.c(this.f4142c, androidEdgeEffectOverscrollFactory.f4142c) && Intrinsics.c(this.d, androidEdgeEffectOverscrollFactory.d);
    }

    public final int hashCode() {
        int iHashCode = (this.f4141b.hashCode() + (this.f4140a.hashCode() * 31)) * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.d.hashCode() + fc.a(iHashCode, 31, this.f4142c);
    }

    public AndroidEdgeEffectOverscrollFactory(Context context, Density density, long j2, PaddingValues paddingValues, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4140a = context;
        this.f4141b = density;
        this.f4142c = j2;
        this.d = paddingValues;
    }
}
