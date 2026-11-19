package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes4.dex */
final class CapturedTypeParameterDescriptor implements TypeParameterDescriptor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeParameterDescriptor f72363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeclarationDescriptor f72364c;
    public final int d;

    public CapturedTypeParameterDescriptor(TypeParameterDescriptor typeParameterDescriptor, DeclarationDescriptor declarationDescriptor, int i2) {
        typeParameterDescriptor.getClass();
        declarationDescriptor.getClass();
        this.f72363b = typeParameterDescriptor;
        this.f72364c = declarationDescriptor;
        this.d = i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final StorageManager H() {
        StorageManager storageManagerH = this.f72363b.H();
        storageManagerH.getClass();
        return storageManagerH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final boolean L() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    /* JADX INFO: renamed from: a */
    public final TypeParameterDescriptor y0() {
        TypeParameterDescriptor typeParameterDescriptorY0 = this.f72363b.y0();
        typeParameterDescriptorY0.getClass();
        return typeParameterDescriptorY0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final DeclarationDescriptor d() {
        return this.f72364c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.f72363b.getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final int getIndex() {
        return this.f72363b.getIndex() + this.d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Named
    public final Name getName() {
        Name name = this.f72363b.getName();
        name.getClass();
        return name;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    public final SourceElement getSource() {
        SourceElement source = this.f72363b.getSource();
        source.getClass();
        return source;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final List getUpperBounds() {
        List upperBounds = this.f72363b.getUpperBounds();
        upperBounds.getClass();
        return upperBounds;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor j() {
        TypeConstructor typeConstructorJ = this.f72363b.j();
        typeConstructorJ.getClass();
        return typeConstructorJ;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final Variance l() {
        Variance varianceL = this.f72363b.l();
        varianceL.getClass();
        return varianceL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final SimpleType o() {
        SimpleType simpleTypeO = this.f72363b.o();
        simpleTypeO.getClass();
        return simpleTypeO;
    }

    public final String toString() {
        return this.f72363b + "[inner-copy]";
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final boolean u() {
        return this.f72363b.u();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public final Object v(DeclarationDescriptorVisitor declarationDescriptorVisitor, Object obj) {
        return this.f72363b.v(declarationDescriptorVisitor, obj);
    }
}
