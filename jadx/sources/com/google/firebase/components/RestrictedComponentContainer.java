package com.google.firebase.components;

import com.google.firebase.events.Publisher;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.ct0;
import defpackage.pq0;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class RestrictedComponentContainer implements ComponentContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f34420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f34421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f34422c;
    public final Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Set f34423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Set f34424f;
    public final ComponentContainer g;

    public static class RestrictedPublisher implements Publisher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Set f34425a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Publisher f34426b;

        public RestrictedPublisher(Set<Class<?>> set, Publisher publisher) {
            this.f34425a = set;
            this.f34426b = publisher;
        }
    }

    public RestrictedComponentContainer(Component component, ComponentContainer componentContainer) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        Set<Dependency> set = component.f34380c;
        Set set2 = component.g;
        for (Dependency dependency : set) {
            int i2 = dependency.f34405c;
            int i3 = dependency.f34404b;
            boolean z = i2 == 0;
            Qualified qualified = dependency.f34403a;
            if (z) {
                if (i3 == 2) {
                    hashSet4.add(qualified);
                } else {
                    hashSet.add(qualified);
                }
            } else if (i2 == 2) {
                hashSet3.add(qualified);
            } else if (i3 == 2) {
                hashSet5.add(qualified);
            } else {
                hashSet2.add(qualified);
            }
        }
        if (!set2.isEmpty()) {
            hashSet.add(Qualified.a(Publisher.class));
        }
        this.f34420a = Collections.unmodifiableSet(hashSet);
        this.f34421b = Collections.unmodifiableSet(hashSet2);
        this.f34422c = Collections.unmodifiableSet(hashSet3);
        this.d = Collections.unmodifiableSet(hashSet4);
        this.f34423e = Collections.unmodifiableSet(hashSet5);
        this.f34424f = set2;
        this.g = componentContainer;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Object a(Class cls) {
        if (!this.f34420a.contains(Qualified.a(cls))) {
            throw new DependencyException(pq0.n(cls, "Attempting to request an undeclared dependency ", FileUtils.HIDDEN_PREFIX));
        }
        Object objA = this.g.a(cls);
        return !cls.equals(Publisher.class) ? objA : new RestrictedPublisher(this.f34424f, (Publisher) objA);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider b(Qualified qualified) {
        if (this.f34421b.contains(qualified)) {
            return this.g.b(qualified);
        }
        ct0.l("Attempting to request an undeclared dependency Provider<", qualified, ">.");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Set c(Qualified qualified) {
        if (this.d.contains(qualified)) {
            return this.g.c(qualified);
        }
        ct0.l("Attempting to request an undeclared dependency Set<", qualified, ">.");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider d(Qualified qualified) {
        if (this.f34423e.contains(qualified)) {
            return this.g.d(qualified);
        }
        ct0.l("Attempting to request an undeclared dependency Provider<Set<", qualified, ">>.");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Object e(Qualified qualified) {
        if (this.f34420a.contains(qualified)) {
            return this.g.e(qualified);
        }
        ct0.l("Attempting to request an undeclared dependency ", qualified, FileUtils.HIDDEN_PREFIX);
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider g(Class cls) {
        return b(Qualified.a(cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Deferred h(Qualified qualified) {
        if (this.f34422c.contains(qualified)) {
            return this.g.h(qualified);
        }
        ct0.l("Attempting to request an undeclared dependency Deferred<", qualified, ">.");
        return null;
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Deferred i(Class cls) {
        return h(Qualified.a(cls));
    }
}
