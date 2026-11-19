package com.google.firebase.components;

import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.dynamicloading.ComponentLoader;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import defpackage.jr;
import defpackage.kn;
import defpackage.ln;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentRuntime implements ComponentContainer, ComponentLoader {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ln f34389h = new ln(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f34390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f34391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f34392c;
    public final HashSet d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EventBus f34393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReference f34394f;
    public final ComponentRegistrarProcessor g;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Executor f34395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f34396b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f34397c = new ArrayList();
        public ComponentRegistrarProcessor d = ComponentRegistrarProcessor.s0;

        public Builder(UiExecutor uiExecutor) {
            this.f34395a = uiExecutor;
        }
    }

    public ComponentRuntime(Executor executor, ArrayList arrayList, List list, ComponentRegistrarProcessor componentRegistrarProcessor) {
        this.f34390a = new HashMap();
        this.f34391b = new HashMap();
        this.f34392c = new HashMap();
        this.d = new HashSet();
        this.f34394f = new AtomicReference();
        EventBus eventBus = new EventBus(executor);
        this.f34393e = eventBus;
        this.g = componentRegistrarProcessor;
        ArrayList<Component> arrayList2 = new ArrayList();
        arrayList2.add(Component.c(eventBus, EventBus.class, Subscriber.class, Publisher.class));
        arrayList2.add(Component.c(this, ComponentLoader.class, new Class[0]));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Component component = (Component) it.next();
            if (component != null) {
                arrayList2.add(component);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(it2.next());
        }
        ArrayList arrayList4 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((Provider) it3.next()).get();
                    if (componentRegistrar != null) {
                        arrayList2.addAll(this.g.a(componentRegistrar));
                        it3.remove();
                    }
                } catch (InvalidRegistrarException unused) {
                    it3.remove();
                }
            }
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                for (Object obj : ((Component) it4.next()).f34379b.toArray()) {
                    if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                        if (this.d.contains(obj.toString())) {
                            it4.remove();
                            break;
                        }
                        this.d.add(obj.toString());
                    }
                }
            }
            if (this.f34390a.isEmpty()) {
                CycleDetector.a(arrayList2);
            } else {
                ArrayList arrayList5 = new ArrayList(this.f34390a.keySet());
                arrayList5.addAll(arrayList2);
                CycleDetector.a(arrayList5);
            }
            for (final Component component2 : arrayList2) {
                this.f34390a.put(component2, new Lazy(new Provider() { // from class: com.google.firebase.components.a
                    @Override // com.google.firebase.inject.Provider
                    public final Object get() {
                        Component component3 = component2;
                        return component3.f34382f.c(new RestrictedComponentContainer(component3, this.f34427a));
                    }
                }));
            }
            arrayList4.addAll(l(arrayList2));
            arrayList4.addAll(m());
            k();
        }
        Iterator it5 = arrayList4.iterator();
        while (it5.hasNext()) {
            ((Runnable) it5.next()).run();
        }
        Boolean bool = (Boolean) this.f34394f.get();
        if (bool != null) {
            j(this.f34390a, bool.booleanValue());
        }
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final synchronized Provider b(Qualified qualified) {
        Preconditions.a(qualified, "Null interface requested.");
        return (Provider) this.f34391b.get(qualified);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final synchronized Provider d(Qualified qualified) {
        LazySet lazySet = (LazySet) this.f34392c.get(qualified);
        if (lazySet != null) {
            return lazySet;
        }
        return f34389h;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Deferred h(Qualified qualified) {
        Provider providerB = b(qualified);
        if (providerB == null) {
            return new OptionalProvider(OptionalProvider.f34415c, OptionalProvider.d);
        }
        return providerB instanceof OptionalProvider ? (OptionalProvider) providerB : new OptionalProvider(null, providerB);
    }

    public final void j(HashMap map, boolean z) {
        ArrayDeque<Event> arrayDeque;
        Set<Map.Entry> setEntrySet;
        for (Map.Entry entry : map.entrySet()) {
            Component component = (Component) entry.getKey();
            Provider provider = (Provider) entry.getValue();
            int i2 = component.d;
            if (i2 == 1 || (i2 == 2 && z)) {
                provider.get();
            }
        }
        EventBus eventBus = this.f34393e;
        synchronized (eventBus) {
            try {
                arrayDeque = eventBus.f34408b;
                if (arrayDeque != null) {
                    eventBus.f34408b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            for (Event event : arrayDeque) {
                event.getClass();
                synchronized (eventBus) {
                    try {
                        ArrayDeque arrayDeque2 = eventBus.f34408b;
                        if (arrayDeque2 != null) {
                            arrayDeque2.add(event);
                        } else {
                            synchronized (eventBus) {
                                try {
                                    Map map2 = (Map) eventBus.f34407a.get(event.f35127a);
                                    setEntrySet = map2 == null ? Collections.EMPTY_SET : map2.entrySet();
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            for (Map.Entry entry2 : setEntrySet) {
                                ((Executor) entry2.getValue()).execute(new jr(entry2, event, 16));
                            }
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
    }

    public final void k() {
        HashMap map = this.f34391b;
        HashMap map2 = this.f34392c;
        for (Component component : this.f34390a.keySet()) {
            for (Dependency dependency : component.f34380c) {
                boolean z = dependency.f34404b == 2;
                Qualified qualified = dependency.f34403a;
                if (z && !map2.containsKey(qualified)) {
                    Set set = Collections.EMPTY_SET;
                    LazySet lazySet = new LazySet();
                    lazySet.f34414b = null;
                    lazySet.f34413a = Collections.newSetFromMap(new ConcurrentHashMap());
                    lazySet.f34413a.addAll(set);
                    map2.put(qualified, lazySet);
                } else if (map.containsKey(qualified)) {
                    continue;
                } else {
                    int i2 = dependency.f34404b;
                    if (i2 == 1) {
                        throw new MissingDependencyException("Unsatisfied dependency for component " + component + ": " + qualified);
                    }
                    if (i2 != 2) {
                        map.put(qualified, new OptionalProvider(OptionalProvider.f34415c, OptionalProvider.d));
                    }
                }
            }
        }
    }

    public final ArrayList l(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Component component = (Component) it.next();
            if (component.f34381e == 0) {
                Provider provider = (Provider) this.f34390a.get(component);
                for (Qualified qualified : component.f34379b) {
                    HashMap map = this.f34391b;
                    if (map.containsKey(qualified)) {
                        arrayList2.add(new b((OptionalProvider) ((Provider) map.get(qualified)), provider, 0));
                    } else {
                        map.put(qualified, provider);
                    }
                }
            }
        }
        return arrayList2;
    }

    public final ArrayList m() {
        HashMap map = this.f34392c;
        ArrayList arrayList = new ArrayList();
        HashMap map2 = new HashMap();
        for (Map.Entry entry : this.f34390a.entrySet()) {
            Component component = (Component) entry.getKey();
            if (component.f34381e != 0) {
                Provider provider = (Provider) entry.getValue();
                for (Qualified qualified : component.f34379b) {
                    if (!map2.containsKey(qualified)) {
                        map2.put(qualified, new HashSet());
                    }
                    ((Set) map2.get(qualified)).add(provider);
                }
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (map.containsKey(entry2.getKey())) {
                LazySet lazySet = (LazySet) map.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new b(lazySet, (Provider) it.next(), 1));
                }
            } else {
                Qualified qualified2 = (Qualified) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                LazySet lazySet2 = new LazySet();
                lazySet2.f34414b = null;
                lazySet2.f34413a = Collections.newSetFromMap(new ConcurrentHashMap());
                lazySet2.f34413a.addAll(set);
                map.put(qualified2, lazySet2);
            }
        }
        return arrayList;
    }

    @Deprecated
    public ComponentRuntime(Executor executor, Iterable<ComponentRegistrar> iterable, Component<?>... componentArr) {
        ArrayList arrayList = new ArrayList();
        Iterator<ComponentRegistrar> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(new kn(it.next(), 0));
        }
        this(executor, arrayList, Arrays.asList(componentArr), ComponentRegistrarProcessor.s0);
    }
}
