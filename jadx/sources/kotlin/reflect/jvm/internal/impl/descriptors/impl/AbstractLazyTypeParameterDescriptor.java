package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractLazyTypeParameterDescriptor extends AbstractTypeParameterDescriptor {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractLazyTypeParameterDescriptor(StorageManager storageManager, DeclarationDescriptor declarationDescriptor, Annotations annotations, Name name, Variance variance, boolean z, int i2, SourceElement sourceElement, SupertypeLoopChecker supertypeLoopChecker) {
        super(storageManager, declarationDescriptor, annotations, name, variance, z, i2, sourceElement, supertypeLoopChecker);
        if (storageManager == null) {
            Z(0);
            throw null;
        }
        if (declarationDescriptor == null) {
            Z(1);
            throw null;
        }
        if (annotations == null) {
            Z(2);
            throw null;
        }
        if (name == null) {
            Z(3);
            throw null;
        }
        if (variance == null) {
            Z(4);
            throw null;
        }
        if (sourceElement == null) {
            Z(5);
            throw null;
        }
        if (supertypeLoopChecker != null) {
        } else {
            Z(6);
            throw null;
        }
    }

    public static /* synthetic */ void Z(int i2) {
        Object[] objArr = new Object[3];
        switch (i2) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor";
        objArr[2] = "<init>";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    public final String toString() {
        String str = "";
        String str2 = this.g ? "reified " : "";
        if (l() != Variance.INVARIANT) {
            str = l() + " ";
        }
        return str2 + str + getName();
    }
}
