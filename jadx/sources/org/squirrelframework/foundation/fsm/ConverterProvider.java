package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.component.SquirrelComponent;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.component.SquirrelSingleton;

/* JADX INFO: loaded from: classes5.dex */
public interface ConverterProvider extends SquirrelComponent, SquirrelSingleton {
    public static final ConverterProvider INSTANCE = (ConverterProvider) SquirrelProvider.getInstance().newInstance(ConverterProvider.class);

    void clearRegistry();

    <T> Converter<T> getConverter(Class<T> cls);

    void register(Class<?> cls, Class<? extends Converter<?>> cls2);

    void register(Class<?> cls, Converter<?> converter);

    void unregister(Class<?> cls);
}
