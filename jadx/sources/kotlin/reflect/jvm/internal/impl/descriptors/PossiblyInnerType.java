package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;

/* JADX INFO: loaded from: classes4.dex */
public final class PossiblyInnerType {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ClassifierDescriptorWithTypeParameters f72396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f72397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PossiblyInnerType f72398c;

    public PossiblyInnerType(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, List<? extends TypeProjection> list, PossiblyInnerType possiblyInnerType) {
        classifierDescriptorWithTypeParameters.getClass();
        list.getClass();
        this.f72396a = classifierDescriptorWithTypeParameters;
        this.f72397b = list;
        this.f72398c = possiblyInnerType;
    }
}
