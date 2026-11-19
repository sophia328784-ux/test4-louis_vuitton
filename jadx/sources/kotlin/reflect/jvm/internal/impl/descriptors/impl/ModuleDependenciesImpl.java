package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class ModuleDependenciesImpl implements ModuleDependencies {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f72524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f72525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f72526c;
    public final Set d;

    public ModuleDependenciesImpl(List<ModuleDescriptorImpl> list, Set<ModuleDescriptorImpl> set, List<ModuleDescriptorImpl> list2, Set<ModuleDescriptorImpl> set2) {
        list.getClass();
        set.getClass();
        list2.getClass();
        set2.getClass();
        this.f72524a = list;
        this.f72525b = set;
        this.f72526c = list2;
        this.d = set2;
    }
}
