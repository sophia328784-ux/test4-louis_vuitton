package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B/\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/core/TwoWayConverterImpl;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/TwoWayConverter;", "Lkotlin/Function1;", "convertToVector", "convertFromVector", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TwoWayConverterImpl<T, V extends AnimationVector> implements TwoWayConverter<T, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f4034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f4035b;

    public TwoWayConverterImpl(Function1<? super T, ? extends V> function1, Function1<? super V, ? extends T> function2) {
        this.f4034a = function1;
        this.f4035b = function2;
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Function1 getF4034a() {
        return this.f4034a;
    }

    @Override // androidx.compose.animation.core.TwoWayConverter
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Function1 getF4035b() {
        return this.f4035b;
    }
}
