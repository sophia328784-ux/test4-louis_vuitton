package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/TargetData;", "", "Landroidx/compose/ui/geometry/Size;", "size", "Landroidx/compose/ui/geometry/Offset;", "initialMfrOffset", "targetStructuralOffset", "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TargetData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableState f3750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f3752c;
    public final MutableState d;

    public TargetData(long j2, long j3, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3750a = SnapshotStateKt.g(new Size(j2));
        this.f3751b = SnapshotStateKt.g(new Offset(j3));
        this.f3752c = SnapshotStateKt.g(new Offset(j4));
        this.d = SnapshotStateKt.g(new Offset(j3));
    }
}
