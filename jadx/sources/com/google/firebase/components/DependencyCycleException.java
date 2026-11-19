package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DependencyCycleException extends DependencyException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f34406b;

    public DependencyCycleException(List<Component<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f34406b = list;
    }
}
