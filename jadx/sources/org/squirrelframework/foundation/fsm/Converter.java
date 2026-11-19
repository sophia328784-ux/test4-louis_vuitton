package org.squirrelframework.foundation.fsm;

import org.squirrelframework.foundation.component.SquirrelComponent;

/* JADX INFO: loaded from: classes5.dex */
public interface Converter<T> extends SquirrelComponent {
    T convertFromString(String str);

    String convertToString(T t);
}
