package kotlin.reflect.jvm.internal.impl.renderer;

import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;

/* JADX INFO: loaded from: classes4.dex */
public interface ClassifierNamePolicy {

    public static final class FULLY_QUALIFIED implements ClassifierNamePolicy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FULLY_QUALIFIED f73774a = new FULLY_QUALIFIED();

        @Override // kotlin.reflect.jvm.internal.impl.renderer.ClassifierNamePolicy
        public final String a(ClassifierDescriptor classifierDescriptor, DescriptorRenderer descriptorRenderer) {
            classifierDescriptor.getClass();
            descriptorRenderer.getClass();
            if (classifierDescriptor instanceof TypeParameterDescriptor) {
                Name name = ((TypeParameterDescriptor) classifierDescriptor).getName();
                name.getClass();
                return descriptorRenderer.o(name, false);
            }
            FqNameUnsafe fqNameUnsafeF = DescriptorUtils.f(classifierDescriptor);
            fqNameUnsafeF.getClass();
            return descriptorRenderer.n(fqNameUnsafeF);
        }
    }

    public static final class SHORT implements ClassifierNamePolicy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SHORT f73775a = new SHORT();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor] */
        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Named] */
        /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
        @Override // kotlin.reflect.jvm.internal.impl.renderer.ClassifierNamePolicy
        public final String a(ClassifierDescriptor classifierDescriptor, DescriptorRenderer descriptorRenderer) {
            classifierDescriptor.getClass();
            descriptorRenderer.getClass();
            if (classifierDescriptor instanceof TypeParameterDescriptor) {
                Name name = ((TypeParameterDescriptor) classifierDescriptor).getName();
                name.getClass();
                return descriptorRenderer.o(name, false);
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(classifierDescriptor.getName());
                classifierDescriptor = classifierDescriptor.d();
            } while (classifierDescriptor instanceof ClassDescriptor);
            return RenderingUtilsKt.d(CollectionsKt.n(arrayList));
        }
    }

    public static final class SOURCE_CODE_QUALIFIED implements ClassifierNamePolicy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SOURCE_CODE_QUALIFIED f73776a = new SOURCE_CODE_QUALIFIED();

        public static String b(ClassifierDescriptor classifierDescriptor) {
            String strD;
            Name name = classifierDescriptor.getName();
            name.getClass();
            String strA = RenderingUtilsKt.a(name);
            if (!(classifierDescriptor instanceof TypeParameterDescriptor)) {
                DeclarationDescriptor declarationDescriptorD = classifierDescriptor.d();
                declarationDescriptorD.getClass();
                if (declarationDescriptorD instanceof ClassDescriptor) {
                    strD = b((ClassifierDescriptor) declarationDescriptorD);
                } else if (declarationDescriptorD instanceof PackageFragmentDescriptor) {
                    FqNameUnsafe fqNameUnsafe = ((PackageFragmentDescriptor) declarationDescriptorD).c().f73679a;
                    fqNameUnsafe.getClass();
                    strD = RenderingUtilsKt.d(FqNameUnsafe.f(fqNameUnsafe));
                } else {
                    strD = null;
                }
                if (strD != null && !strD.equals("")) {
                    return strD + JwtParser.SEPARATOR_CHAR + strA;
                }
            }
            return strA;
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.ClassifierNamePolicy
        public final String a(ClassifierDescriptor classifierDescriptor, DescriptorRenderer descriptorRenderer) {
            classifierDescriptor.getClass();
            descriptorRenderer.getClass();
            return b(classifierDescriptor);
        }
    }

    String a(ClassifierDescriptor classifierDescriptor, DescriptorRenderer descriptorRenderer);
}
