package androidx.navigation3.scene;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation3.runtime.NavEntry;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.ll0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0081\b\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B1\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/navigation3/scene/SinglePaneScene;", "", "T", "Landroidx/navigation3/scene/Scene;", ConfigurationName.KEY, "Landroidx/navigation3/runtime/NavEntry;", "entry", "", "previousEntries", "<init>", "(Ljava/lang/Object;Landroidx/navigation3/runtime/NavEntry;Ljava/util/List;)V", "navigation3-ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SinglePaneScene<T> implements Scene<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f18417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NavEntry f18418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f18419c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ComposableLambdaImpl f18420e = new ComposableLambdaImpl(-322904035, true, new ll0(this, 16));

    public SinglePaneScene(Object obj, NavEntry<T> navEntry, List<NavEntry<T>> list) {
        this.f18417a = obj;
        this.f18418b = navEntry;
        this.f18419c = list;
        this.d = CollectionsKt.O(navEntry);
    }

    @Override // androidx.navigation3.scene.Scene
    /* JADX INFO: renamed from: a, reason: from getter */
    public final List getF18419c() {
        return this.f18419c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SinglePaneScene.class == obj.getClass()) {
            SinglePaneScene singlePaneScene = (SinglePaneScene) obj;
            if (Intrinsics.c(this.f18417a, singlePaneScene.f18417a) && Intrinsics.c(this.f18418b, singlePaneScene.f18418b) && Intrinsics.c(this.f18419c, singlePaneScene.f18419c) && Intrinsics.c(this.d, singlePaneScene.d)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.navigation3.scene.Scene
    /* JADX INFO: renamed from: getContent, reason: from getter */
    public final ComposableLambdaImpl getF18420e() {
        return this.f18420e;
    }

    @Override // androidx.navigation3.scene.Scene
    /* JADX INFO: renamed from: getEntries, reason: from getter */
    public final List getD() {
        return this.d;
    }

    @Override // androidx.navigation3.scene.Scene
    /* JADX INFO: renamed from: getKey, reason: from getter */
    public final Object getF18417a() {
        return this.f18417a;
    }

    public final int hashCode() {
        return (this.d.hashCode() * 31) + (this.f18419c.hashCode() * 31) + (this.f18418b.hashCode() * 31) + (this.f18417a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SinglePaneScene(key=");
        sb.append(this.f18417a);
        sb.append(", entry=");
        sb.append(this.f18418b);
        sb.append(", previousEntries=");
        sb.append(this.f18419c);
        sb.append(", entries=");
        return tr.m(sb, this.d, ')');
    }
}
