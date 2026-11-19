package kotlin.reflect.jvm.internal;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d20;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorVisitorEmptyBodies;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u00002\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\t\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorVisitorEmptyBodies;", "Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "container", "<init>", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "descriptor", DbParams.KEY_DATA, "visitPropertyDescriptor", "(Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "visitFunctionDescriptor", "(Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/DescriptorKCallable;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class CreateKCallableVisitor extends DeclarationDescriptorVisitorEmptyBodies<DescriptorKCallable<?>, Unit> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KDeclarationContainerImpl f72009a;

    public CreateKCallableVisitor(KDeclarationContainerImpl kDeclarationContainerImpl) {
        kDeclarationContainerImpl.getClass();
        this.f72009a = kDeclarationContainerImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorVisitorEmptyBodies, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
    public final Object g(PropertyDescriptorImpl propertyDescriptorImpl, Object obj) {
        int i2;
        propertyDescriptorImpl.getClass();
        ((Unit) obj).getClass();
        List listR0 = propertyDescriptorImpl.r0();
        listR0.getClass();
        if (listR0.isEmpty()) {
            i2 = (propertyDescriptorImpl.u != null ? 1 : 0) + (propertyDescriptorImpl.v != null ? 1 : 0);
        } else {
            i2 = -1;
        }
        boolean z = propertyDescriptorImpl.g;
        KDeclarationContainerImpl kDeclarationContainerImpl = this.f72009a;
        if (z) {
            if (i2 == -1) {
                return new DescriptorKMutablePropertyN(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
            if (i2 == 0) {
                return new DescriptorKMutableProperty0(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
            if (i2 == 1) {
                return new DescriptorKMutableProperty1(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
            if (i2 == 2) {
                return new DescriptorKMutableProperty2(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
        } else {
            if (i2 == -1) {
                return new DescriptorKPropertyN(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
            if (i2 == 0) {
                return new DescriptorKProperty0(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
            if (i2 == 1) {
                return new DescriptorKProperty1(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
            if (i2 == 2) {
                return new DescriptorKProperty2(kDeclarationContainerImpl, propertyDescriptorImpl);
            }
        }
        d20.c(propertyDescriptorImpl, "Unsupported property: ");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorVisitorEmptyBodies, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor
    public final Object l(FunctionDescriptor functionDescriptor, Object obj) {
        ((Unit) obj).getClass();
        return new DescriptorKFunction(this.f72009a, functionDescriptor);
    }
}
