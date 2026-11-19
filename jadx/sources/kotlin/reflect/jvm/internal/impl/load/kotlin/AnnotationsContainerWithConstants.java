package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class AnnotationsContainerWithConstants<A, C> extends AbstractBinaryClassAnnotationLoader.AnnotationsContainer<A> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f73209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f73210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f73211c;

    public AnnotationsContainerWithConstants(Map<MemberSignature, ? extends List<? extends A>> map, Map<MemberSignature, ? extends C> map2, Map<MemberSignature, ? extends C> map3) {
        map.getClass();
        map2.getClass();
        map3.getClass();
        this.f73209a = map;
        this.f73210b = map2;
        this.f73211c = map3;
    }
}
