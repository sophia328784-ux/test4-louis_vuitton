package kotlin.reflect.jvm.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.reflect.KCallable;
import kotlin.reflect.jvm.internal.calls.Caller;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003À\u0006\u0003"}, d2 = {"Lkotlin/reflect/jvm/internal/ReflectKCallable;", "R", "Lkotlin/reflect/KCallable;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ReflectKCallable<R> extends KCallable<R> {
    Object C();

    Caller c();

    KDeclarationContainerImpl getContainer();

    List u();

    Caller x();
}
