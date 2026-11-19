package org.squirrelframework.foundation.component;

import com.google.common.base.Predicate;
import java.lang.reflect.Method;
import org.squirrelframework.foundation.event.ListenerMethod;
import org.squirrelframework.foundation.event.SquirrelEvent;

/* JADX INFO: loaded from: classes5.dex */
public interface Observable {
    void addListener(Class<?> cls, Object obj, String str);

    void addListener(Class<?> cls, Object obj, Method method);

    void fireEvent(SquirrelEvent squirrelEvent);

    int getListenerSize();

    boolean isNotifiable();

    void removeAllListeners();

    void removeListener(Predicate<ListenerMethod> predicate);

    void removeListener(Class<?> cls, Object obj);

    void removeListener(Class<?> cls, Object obj, String str);

    void removeListener(Class<?> cls, Object obj, Method method);

    void setNotifiable(boolean z);
}
