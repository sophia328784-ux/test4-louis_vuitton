package org.squirrelframework.foundation.component.impl;

import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.List;
import org.squirrelframework.foundation.component.CompositePostProcessor;
import org.squirrelframework.foundation.component.SquirrelPostProcessor;

/* JADX INFO: loaded from: classes5.dex */
public class CompositePostProcessorImpl<T> implements CompositePostProcessor<T> {
    List<SquirrelPostProcessor<? super T>> processors;

    public CompositePostProcessorImpl() {
        this.processors = new ArrayList();
    }

    @Override // org.squirrelframework.foundation.component.CompositePostProcessor
    public void clear() {
        this.processors.clear();
    }

    @Override // org.squirrelframework.foundation.component.CompositePostProcessor
    public void compose(SquirrelPostProcessor<? super T> squirrelPostProcessor) {
        if (this.processors.contains(squirrelPostProcessor)) {
            return;
        }
        this.processors.add(squirrelPostProcessor);
    }

    @Override // org.squirrelframework.foundation.component.CompositePostProcessor
    public void decompose(SquirrelPostProcessor<? super T> squirrelPostProcessor) {
        this.processors.remove(squirrelPostProcessor);
    }

    @Override // org.squirrelframework.foundation.component.SquirrelPostProcessor
    public void postProcess(T t) {
        for (Object obj : this.processors.toArray()) {
            ((SquirrelPostProcessor) obj).postProcess(t);
        }
    }

    public CompositePostProcessorImpl(SquirrelPostProcessor<? super T>... squirrelPostProcessorArr) {
        this.processors = Lists.b(squirrelPostProcessorArr);
    }
}
