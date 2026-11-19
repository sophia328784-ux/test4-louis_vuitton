package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector1D;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B#\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;", "Ljava/util/concurrent/CancellationException;", "Lkotlin/coroutines/cancellation/CancellationException;", "", "itemOffset", "Landroidx/compose/animation/core/AnimationState;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "previousAnimation", "<init>", "(ILandroidx/compose/animation/core/AnimationState;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class ItemFoundInScroll extends CancellationException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimationState f5409c;

    public ItemFoundInScroll(int i2, AnimationState<Float, AnimationVector1D> animationState) {
        this.f5408b = i2;
        this.f5409c = animationState;
    }
}
