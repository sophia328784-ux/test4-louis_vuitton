package org.squirrelframework.foundation.component.impl;

import com.google.common.base.Predicate;
import java.lang.reflect.Method;
import org.squirrelframework.foundation.component.Observable;
import org.squirrelframework.foundation.component.SquirrelProvider;
import org.squirrelframework.foundation.event.ListenerMethod;
import org.squirrelframework.foundation.event.PolymEventDispatcher;
import org.squirrelframework.foundation.event.SquirrelEvent;
import org.squirrelframework.foundation.util.ReflectUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractSubject implements Observable {
    private PolymEventDispatcher eventDispatcher;
    private boolean notifiable = true;

    @Override // org.squirrelframework.foundation.component.Observable
    public void addListener(Class<?> cls, Object obj, Method method) {
        if (this.eventDispatcher == null) {
            this.eventDispatcher = (PolymEventDispatcher) SquirrelProvider.getInstance().newInstance(PolymEventDispatcher.class);
        }
        this.eventDispatcher.register(cls, obj, method);
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void fireEvent(SquirrelEvent squirrelEvent) {
        if (this.eventDispatcher == null || !isNotifiable()) {
            return;
        }
        this.eventDispatcher.fireEvent(squirrelEvent);
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public int getListenerSize() {
        PolymEventDispatcher polymEventDispatcher = this.eventDispatcher;
        if (polymEventDispatcher != null) {
            return polymEventDispatcher.getListenerSize();
        }
        return 0;
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public boolean isNotifiable() {
        return this.notifiable;
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void removeAllListeners() {
        PolymEventDispatcher polymEventDispatcher = this.eventDispatcher;
        if (polymEventDispatcher != null) {
            polymEventDispatcher.unregisterAll();
        }
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void removeListener(Class<?> cls, Object obj, String str) {
        removeListener(cls, obj, ReflectUtils.getFirstMethodOfName(obj.getClass(), str));
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void setNotifiable(boolean z) {
        this.notifiable = z;
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void removeListener(Class<?> cls, Object obj, Method method) {
        PolymEventDispatcher polymEventDispatcher = this.eventDispatcher;
        if (polymEventDispatcher != null) {
            polymEventDispatcher.unregister(cls, obj, method);
        }
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void removeListener(Predicate<ListenerMethod> predicate) {
        PolymEventDispatcher polymEventDispatcher = this.eventDispatcher;
        if (polymEventDispatcher != null) {
            polymEventDispatcher.unregister(predicate);
        }
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void removeListener(Class<?> cls, Object obj) {
        PolymEventDispatcher polymEventDispatcher = this.eventDispatcher;
        if (polymEventDispatcher != null) {
            polymEventDispatcher.unregister(cls, obj);
        }
    }

    @Override // org.squirrelframework.foundation.component.Observable
    public void addListener(Class<?> cls, Object obj, String str) {
        addListener(cls, obj, ReflectUtils.getFirstMethodOfName(obj.getClass(), str));
    }
}
