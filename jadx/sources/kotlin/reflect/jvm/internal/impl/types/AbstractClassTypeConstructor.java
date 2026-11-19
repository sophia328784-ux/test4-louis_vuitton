package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractClassTypeConstructor extends AbstractTypeConstructor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClassTypeConstructor(StorageManager storageManager) {
        super(storageManager);
        if (storageManager != null) {
        } else {
            l(0);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public static /* synthetic */ void l(int i2) {
        String str = (i2 == 1 || i2 == 3 || i2 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 1 || i2 == 3 || i2 == 4) ? 2 : 3];
        if (i2 == 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        } else if (i2 == 2) {
            objArr[0] = "classifier";
        } else if (i2 == 3 || i2 == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        } else {
            objArr[0] = "storageManager";
        }
        if (i2 == 1) {
            objArr[1] = "getBuiltIns";
        } else if (i2 == 3 || i2 == 4) {
            objArr[1] = "getAdditionalNeighboursInSupertypeGraph";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor";
        }
        if (i2 != 1) {
            if (i2 == 2) {
                objArr[2] = "isSameClassifier";
            } else if (i2 != 3 && i2 != 4) {
                objArr[2] = "<init>";
            }
        }
        String str2 = String.format(str, objArr);
        if (i2 != 1 && i2 != 3 && i2 != 4) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ClassifierBasedTypeConstructor
    public final boolean a(ClassifierDescriptor classifierDescriptor) {
        boolean z;
        if (classifierDescriptor instanceof ClassDescriptor) {
            ClassDescriptor classDescriptorY = y();
            classDescriptorY.getClass();
            if (!Intrinsics.c(classDescriptorY.getName(), classifierDescriptor.getName())) {
                z = false;
                break;
            }
            DeclarationDescriptor declarationDescriptorD = classDescriptorY.d();
            DeclarationDescriptor declarationDescriptorD2 = classifierDescriptor.d();
            while (true) {
                if (declarationDescriptorD != null && declarationDescriptorD2 != null) {
                    if (!(declarationDescriptorD instanceof ModuleDescriptor)) {
                        if (!(declarationDescriptorD2 instanceof ModuleDescriptor)) {
                            if (declarationDescriptorD instanceof PackageFragmentDescriptor) {
                                if (!(declarationDescriptorD2 instanceof PackageFragmentDescriptor) || !Intrinsics.c(((PackageFragmentDescriptor) declarationDescriptorD).c(), ((PackageFragmentDescriptor) declarationDescriptorD2).c())) {
                                    break;
                                }
                            } else if (!(declarationDescriptorD2 instanceof PackageFragmentDescriptor) && Intrinsics.c(declarationDescriptorD.getName(), declarationDescriptorD2.getName())) {
                                declarationDescriptorD = declarationDescriptorD.d();
                                declarationDescriptorD2 = declarationDescriptorD2.d();
                            }
                        }
                        z = false;
                        break;
                    }
                    z = declarationDescriptorD2 instanceof ModuleDescriptor;
                    break;
                }
                z = true;
                break;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    public final KotlinType c() {
        ClassDescriptor classDescriptorY = y();
        if (classDescriptorY == null) {
            KotlinBuiltIns.a(107);
            throw null;
        }
        Name name = KotlinBuiltIns.f72242f;
        if (KotlinBuiltIns.b(classDescriptorY, StandardNames.FqNames.f72271a) || KotlinBuiltIns.b(classDescriptorY, StandardNames.FqNames.f72272b)) {
            return null;
        }
        return g().e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    public final Collection d(boolean z) {
        DeclarationDescriptor declarationDescriptorD = y().d();
        if (!(declarationDescriptorD instanceof ClassDescriptor)) {
            List list = Collections.EMPTY_LIST;
            if (list != null) {
                return list;
            }
            l(3);
            throw null;
        }
        SmartList smartList = new SmartList();
        ClassDescriptor classDescriptor = (ClassDescriptor) declarationDescriptorD;
        smartList.add(classDescriptor.o());
        ClassDescriptor classDescriptorF0 = classDescriptor.f0();
        if (z && classDescriptorF0 != null) {
            smartList.add(classDescriptorF0.o());
        }
        return smartList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns g() {
        KotlinBuiltIns kotlinBuiltInsE = DescriptorUtilsKt.e(y());
        if (kotlinBuiltInsE != null) {
            return kotlinBuiltInsE;
        }
        l(1);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public abstract ClassDescriptor y();
}
