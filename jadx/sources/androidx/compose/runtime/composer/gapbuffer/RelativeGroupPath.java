package androidx.compose.runtime.composer.gapbuffer;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/RelativeGroupPath;", "Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;", "parent", "", "index", "<init>", "(Landroidx/compose/runtime/composer/gapbuffer/SourceInformationGroupPath;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class RelativeGroupPath extends SourceInformationGroupPath {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SourceInformationGroupPath f8197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8198b;

    public RelativeGroupPath(SourceInformationGroupPath sourceInformationGroupPath, int i2) {
        super(null);
        this.f8197a = sourceInformationGroupPath;
        this.f8198b = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RelativeGroupPath)) {
            return false;
        }
        RelativeGroupPath relativeGroupPath = (RelativeGroupPath) obj;
        return Intrinsics.c(relativeGroupPath.f8197a, this.f8197a) && relativeGroupPath.f8198b == this.f8198b;
    }

    public final int hashCode() {
        return this.f8197a.hashCode() + (this.f8198b * 31);
    }
}
