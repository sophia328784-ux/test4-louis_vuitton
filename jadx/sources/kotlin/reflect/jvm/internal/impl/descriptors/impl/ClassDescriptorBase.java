package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ClassDescriptorBase extends AbstractClassDescriptor {
    public final DeclarationDescriptor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SourceElement f72474h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f72475i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClassDescriptorBase(StorageManager storageManager, DeclarationDescriptor declarationDescriptor, Name name, SourceElement sourceElement, boolean z) {
        super(storageManager, name);
        if (storageManager == null) {
            y0(0);
            throw null;
        }
        if (declarationDescriptor == null) {
            y0(1);
            throw null;
        }
        if (name == null) {
            y0(2);
            throw null;
        }
        if (sourceElement == null) {
            y0(3);
            throw null;
        }
        this.g = declarationDescriptor;
        this.f72474h = sourceElement;
        this.f72475i = z;
    }

    public static /* synthetic */ void y0(int i2) {
        String str = (i2 == 4 || i2 == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i2 == 4 || i2 == 5) ? 2 : 3];
        if (i2 == 1) {
            objArr[0] = "containingDeclaration";
        } else if (i2 == 2) {
            objArr[0] = "name";
        } else if (i2 == 3) {
            objArr[0] = Payload.SOURCE;
        } else if (i2 == 4 || i2 == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[0] = "storageManager";
        }
        if (i2 == 4) {
            objArr[1] = "getContainingDeclaration";
        } else if (i2 != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[1] = "getSource";
        }
        if (i2 != 4 && i2 != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i2 != 4 && i2 != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor d() {
        DeclarationDescriptor declarationDescriptor = this.g;
        if (declarationDescriptor != null) {
            return declarationDescriptor;
        }
        y0(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    public final SourceElement getSource() {
        SourceElement sourceElement = this.f72474h;
        if (sourceElement != null) {
            return sourceElement;
        }
        y0(5);
        throw null;
    }

    public boolean isExternal() {
        return this.f72475i;
    }
}
