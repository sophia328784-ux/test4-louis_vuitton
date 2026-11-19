package androidx.navigation3.ui;

import androidx.navigation3.scene.Scene;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0081\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006B\u0015\b\u0016\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\n"}, d2 = {"Landroidx/navigation3/ui/AnimatedSceneKey;", "", "Lkotlin/reflect/KClass;", "clazz", ConfigurationName.KEY, "<init>", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)V", "Landroidx/navigation3/scene/Scene;", "scene", "(Landroidx/navigation3/scene/Scene;)V", "navigation3-ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AnimatedSceneKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KClass f18421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f18422b;

    public AnimatedSceneKey(Scene<?> scene) {
        this(Reflection.f71922a.b(scene.getClass()), scene.getF18417a());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnimatedSceneKey)) {
            return false;
        }
        AnimatedSceneKey animatedSceneKey = (AnimatedSceneKey) obj;
        return Intrinsics.c(this.f18421a, animatedSceneKey.f18421a) && Intrinsics.c(this.f18422b, animatedSceneKey.f18422b);
    }

    public final int hashCode() {
        return this.f18422b.hashCode() + (this.f18421a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AnimatedSceneKey(clazz=");
        sb.append(this.f18421a);
        sb.append(", key=");
        return o60.r(sb, this.f18422b, ')');
    }

    public AnimatedSceneKey(KClass<?> kClass, Object obj) {
        this.f18421a = kClass;
        this.f18422b = obj;
    }
}
