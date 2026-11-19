package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;

/* JADX INFO: loaded from: classes4.dex */
public final class KotlinJvmBinaryPackageSourceElement implements SourceElement {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyJavaPackageFragment f73257b;

    public KotlinJvmBinaryPackageSourceElement(LazyJavaPackageFragment lazyJavaPackageFragment) {
        lazyJavaPackageFragment.getClass();
        this.f73257b = lazyJavaPackageFragment;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        LazyJavaPackageFragment lazyJavaPackageFragment = this.f73257b;
        sb.append(lazyJavaPackageFragment);
        sb.append(": ");
        sb.append(((Map) StorageKt.a(lazyJavaPackageFragment.f73018k, LazyJavaPackageFragment.p[0])).keySet());
        return sb.toString();
    }
}
