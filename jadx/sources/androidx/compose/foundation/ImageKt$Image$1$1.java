package androidx.compose.foundation;

import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import defpackage.dy;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class ImageKt$Image$1$1 implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImageKt$Image$1$1 f4230a = new ImageKt$Image$1$1();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        return measureScope.V0(Constraints.j(j2), Constraints.i(j2), MapsKt.c(), new dy(23));
    }
}
