package androidx.compose.runtime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/Invalidation;", "", "Landroidx/compose/runtime/RecomposeScopeImpl;", "scope", "", "location", "instances", "<init>", "(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class Invalidation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RecomposeScopeImpl f8006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f8008c;

    public Invalidation(RecomposeScopeImpl recomposeScopeImpl, int i2, Object obj) {
        this.f8006a = recomposeScopeImpl;
        this.f8007b = i2;
        this.f8008c = obj;
    }
}
