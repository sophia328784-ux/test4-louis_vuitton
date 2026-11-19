package com.google.firebase.components;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.lc0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
abstract class CycleDetector {

    public static class ComponentNode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Component f34398a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashSet f34399b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashSet f34400c = new HashSet();

        public ComponentNode(Component component) {
            this.f34398a = component;
        }
    }

    public static class Dep {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Qualified f34401a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f34402b;

        public Dep(Qualified qualified, boolean z) {
            this.f34401a = qualified;
            this.f34402b = z;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Dep) {
                Dep dep = (Dep) obj;
                if (dep.f34401a.equals(this.f34401a) && dep.f34402b == this.f34402b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Boolean.valueOf(this.f34402b).hashCode() ^ ((this.f34401a.hashCode() ^ 1000003) * 1000003);
        }
    }

    public static void a(ArrayList arrayList) {
        HashMap map = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (true) {
            int i2 = 0;
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (ComponentNode componentNode : (Set) it2.next()) {
                        for (Dependency dependency : componentNode.f34398a.f34380c) {
                            if (dependency.f34405c == 0) {
                                Set<ComponentNode> set = (Set) map.get(new Dep(dependency.f34403a, dependency.f34404b == 2));
                                if (set != null) {
                                    for (ComponentNode componentNode2 : set) {
                                        componentNode.f34399b.add(componentNode2);
                                        componentNode2.f34400c.add(componentNode);
                                    }
                                }
                            }
                        }
                    }
                }
                HashSet<ComponentNode> hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                HashSet hashSet2 = new HashSet();
                for (ComponentNode componentNode3 : hashSet) {
                    if (componentNode3.f34400c.isEmpty()) {
                        hashSet2.add(componentNode3);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    ComponentNode componentNode4 = (ComponentNode) hashSet2.iterator().next();
                    hashSet2.remove(componentNode4);
                    i2++;
                    for (ComponentNode componentNode5 : componentNode4.f34399b) {
                        componentNode5.f34400c.remove(componentNode4);
                        if (componentNode5.f34400c.isEmpty()) {
                            hashSet2.add(componentNode5);
                        }
                    }
                }
                if (i2 == arrayList.size()) {
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                for (ComponentNode componentNode6 : hashSet) {
                    if (!componentNode6.f34400c.isEmpty() && !componentNode6.f34399b.isEmpty()) {
                        arrayList2.add(componentNode6.f34398a);
                    }
                }
                throw new DependencyCycleException(arrayList2);
            }
            Component component = (Component) it.next();
            ComponentNode componentNode7 = new ComponentNode(component);
            for (Qualified qualified : component.f34379b) {
                boolean z = component.f34381e == 0;
                Dep dep = new Dep(qualified, !z);
                if (!map.containsKey(dep)) {
                    map.put(dep, new HashSet());
                }
                Set set2 = (Set) map.get(dep);
                if (!set2.isEmpty() && z) {
                    lc0.n("Multiple components provide ", qualified, FileUtils.HIDDEN_PREFIX);
                    return;
                }
                set2.add(componentNode7);
            }
        }
    }
}
