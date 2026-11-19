package org.squirrelframework.foundation.component;

/* JADX INFO: loaded from: classes5.dex */
public interface CompositePostProcessor<T> extends SquirrelPostProcessor<T> {
    void clear();

    void compose(SquirrelPostProcessor<? super T> squirrelPostProcessor);

    void decompose(SquirrelPostProcessor<? super T> squirrelPostProcessor);
}
