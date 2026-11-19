package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntSize;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001BL\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012#\b\u0002\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/animation/ChangeSize;", "", "Landroidx/compose/ui/Alignment;", "alignment", "Lkotlin/Function1;", "Landroidx/compose/ui/unit/IntSize;", "Lkotlin/ParameterName;", "name", "fullSize", "size", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "animationSpec", "", "clip", "<init>", "(Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;Z)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ChangeSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Alignment f3544a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f3545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FiniteAnimationSpec f3546c;
    public final boolean d;

    /* JADX INFO: renamed from: androidx.compose.animation.ChangeSize$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "Landroidx/compose/ui/unit/IntSize;", "it", "invoke-mzRDjE0", "(J)J"}, k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 extends Lambda implements Function1<IntSize, IntSize> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f3547c = new AnonymousClass1(1);

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            long j2 = ((IntSize) obj).f11021a;
            return new IntSize(0L);
        }
    }

    public /* synthetic */ ChangeSize(Alignment alignment, Function1 function1, FiniteAnimationSpec finiteAnimationSpec, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignment, (i2 & 2) != 0 ? AnonymousClass1.f3547c : function1, finiteAnimationSpec, (i2 & 8) != 0 ? true : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChangeSize)) {
            return false;
        }
        ChangeSize changeSize = (ChangeSize) obj;
        return Intrinsics.c(this.f3544a, changeSize.f3544a) && Intrinsics.c(this.f3545b, changeSize.f3545b) && Intrinsics.c(this.f3546c, changeSize.f3546c) && this.d == changeSize.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + ((this.f3546c.hashCode() + ((this.f3545b.hashCode() + (this.f3544a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChangeSize(alignment=");
        sb.append(this.f3544a);
        sb.append(", size=");
        sb.append(this.f3545b);
        sb.append(", animationSpec=");
        sb.append(this.f3546c);
        sb.append(", clip=");
        return d21.q(sb, this.d, ')');
    }

    public ChangeSize(Alignment alignment, Function1<? super IntSize, IntSize> function1, FiniteAnimationSpec<IntSize> finiteAnimationSpec, boolean z) {
        this.f3544a = alignment;
        this.f3545b = function1;
        this.f3546c = finiteAnimationSpec;
        this.d = z;
    }
}
