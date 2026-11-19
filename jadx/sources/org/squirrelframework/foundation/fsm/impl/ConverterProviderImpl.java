package org.squirrelframework.foundation.fsm.impl;

import java.util.HashMap;
import java.util.Map;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.fsm.Converter;
import org.squirrelframework.foundation.fsm.ConverterProvider;
import org.squirrelframework.foundation.fsm.GeneralConverter;

/* JADX INFO: loaded from: classes5.dex */
public class ConverterProviderImpl implements ConverterProvider {
    private Map<Class<?>, Converter<?>> converterRegistry = new HashMap();

    @Override // org.squirrelframework.foundation.fsm.ConverterProvider
    public void clearRegistry() {
        this.converterRegistry.clear();
    }

    @Override // org.squirrelframework.foundation.fsm.ConverterProvider
    public <T> Converter<T> getConverter(Class<T> cls) {
        Converter<T> converter = (Converter) this.converterRegistry.get(cls);
        return converter == null ? new GeneralConverter(cls) : converter;
    }

    @Override // org.squirrelframework.foundation.fsm.ConverterProvider
    public void register(Class<?> cls, Class<? extends Converter<?>> cls2) {
        register(cls, (Converter<?>) SquirrelProvider.getInstance().newInstance(cls2));
    }

    @Override // org.squirrelframework.foundation.fsm.ConverterProvider
    public void unregister(Class<?> cls) {
        this.converterRegistry.remove(cls);
    }

    @Override // org.squirrelframework.foundation.fsm.ConverterProvider
    public void register(Class<?> cls, Converter<?> converter) {
        this.converterRegistry.put(cls, converter);
    }
}
