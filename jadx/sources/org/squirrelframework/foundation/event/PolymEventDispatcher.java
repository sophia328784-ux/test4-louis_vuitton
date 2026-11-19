package org.squirrelframework.foundation.event;

import com.google.common.base.Predicate;
import com.google.common.collect.Iterators;
import defpackage.b21;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.squirrelframework.foundation.component.SquirrelComponent;

/* JADX INFO: loaded from: classes5.dex */
public class PolymEventDispatcher implements SquirrelComponent {
    private LinkedHashSet<ListenerMethod> listeners = null;

    public void fireEvent(Object obj) {
        LinkedHashSet<ListenerMethod> linkedHashSet = this.listeners;
        if (linkedHashSet == null) {
            return;
        }
        ListenerMethod[] listenerMethodArr = (ListenerMethod[]) linkedHashSet.toArray(new ListenerMethod[linkedHashSet.size()]);
        for (int i2 = 0; i2 < listenerMethodArr.length; i2++) {
            if (listenerMethodArr[i2].getEventType().isAssignableFrom(obj.getClass())) {
                listenerMethodArr[i2].invokeMethod(obj);
            }
        }
    }

    public int getListenerSize() {
        LinkedHashSet<ListenerMethod> linkedHashSet = this.listeners;
        if (linkedHashSet != null) {
            return linkedHashSet.size();
        }
        return 0;
    }

    public void register(Class<?> cls, Object obj, Method method) {
        if (this.listeners == null) {
            this.listeners = new LinkedHashSet<>();
        }
        this.listeners.add(new ListenerMethod(cls, obj, method));
    }

    public void unregister(final Class<?> cls, final Object obj, final Method method) {
        LinkedHashSet<ListenerMethod> linkedHashSet = this.listeners;
        if (linkedHashSet != null) {
            Iterator<ListenerMethod> it = linkedHashSet.iterator();
            Predicate<ListenerMethod> predicate = new Predicate<ListenerMethod>() { // from class: org.squirrelframework.foundation.event.PolymEventDispatcher.2
                @Override // com.google.common.base.Predicate
                public boolean apply(ListenerMethod listenerMethod) {
                    return listenerMethod.matches(cls, obj, method);
                }
            };
            it.getClass();
            while (it.hasNext()) {
                ListenerMethod next = it.next();
                if (predicate.apply(next)) {
                    ListenerMethod listenerMethod = next;
                    if (listenerMethod != null) {
                        this.listeners.remove(listenerMethod);
                        return;
                    }
                    return;
                }
            }
            b21.x();
        }
    }

    public void unregisterAll() {
        this.listeners = null;
    }

    public void unregister(final Class<?> cls, final Object obj) {
        LinkedHashSet<ListenerMethod> linkedHashSet = this.listeners;
        if (linkedHashSet != null) {
            Iterators.a(linkedHashSet.iterator(), new Predicate<ListenerMethod>() { // from class: org.squirrelframework.foundation.event.PolymEventDispatcher.1
                @Override // com.google.common.base.Predicate
                public boolean apply(ListenerMethod listenerMethod) {
                    return listenerMethod.matches(cls, obj);
                }
            });
        }
    }

    public void unregister(Predicate<ListenerMethod> predicate) {
        LinkedHashSet<ListenerMethod> linkedHashSet = this.listeners;
        if (linkedHashSet != null) {
            Iterators.a(linkedHashSet.iterator(), predicate);
        }
    }
}
