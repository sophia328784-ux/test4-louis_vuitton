package io.reactivex.rxjava3.kotlin;

import io.reactivex.rxjava3.functions.BiFunction;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0004\u0010\u0000\u001aB\u0012\f\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002\u0012\f\u0012\n \u0003*\u0004\u0018\u0001H\u0004H\u0004 \u0003* \u0012\f\u0012\n \u0003*\u0004\u0018\u0001H\u0002H\u0002\u0012\f\u0012\n \u0003*\u0004\u0018\u0001H\u0004H\u0004\u0018\u00010\u00010\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0005\"\b\b\u0001\u0010\u0004*\u00020\u00052\u000e\u0010\u0006\u001a\n \u0003*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0007\u001a\n \u0003*\u0004\u0018\u0001H\u0004H\u0004H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "T", "kotlin.jvm.PlatformType", "U", "", "t", "u", "apply", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;"}, k = 3, mv = {1, 4, 0})
final class ObservablesKt$withLatestFrom$2<T1, T2, R> implements BiFunction<Object, Object, Pair<Object, Object>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ObservablesKt$withLatestFrom$2 f71128a = new ObservablesKt$withLatestFrom$2();

    @Override // io.reactivex.rxjava3.functions.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return new Pair(obj, obj2);
    }
}
