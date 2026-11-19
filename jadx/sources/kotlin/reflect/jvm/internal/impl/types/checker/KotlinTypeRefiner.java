package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KotlinTypeRefiner extends AbstractTypeRefiner {

    public static final class Default extends KotlinTypeRefiner {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Default f74271a = new Default();

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeRefiner
        public final KotlinType a(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            return (KotlinType) kotlinTypeMarker;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final void b(ClassId classId) {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final void c(ModuleDescriptor moduleDescriptor) {
            moduleDescriptor.getClass();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final void d(DeclarationDescriptor declarationDescriptor) {
            declarationDescriptor.getClass();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final Collection e(ClassDescriptor classDescriptor) {
            classDescriptor.getClass();
            Collection collectionI = classDescriptor.j().i();
            collectionI.getClass();
            return collectionI;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final KotlinType f(KotlinTypeMarker kotlinTypeMarker) {
            kotlinTypeMarker.getClass();
            return (KotlinType) kotlinTypeMarker;
        }
    }

    public abstract void b(ClassId classId);

    public abstract void c(ModuleDescriptor moduleDescriptor);

    public abstract void d(DeclarationDescriptor declarationDescriptor);

    public abstract Collection e(ClassDescriptor classDescriptor);

    public abstract KotlinType f(KotlinTypeMarker kotlinTypeMarker);
}
