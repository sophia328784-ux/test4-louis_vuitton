package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameter;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyJavaTypeParameterResolver implements TypeParameterResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyJavaResolverContext f72965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DeclarationDescriptor f72966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72967c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MemoizedFunctionToNullable f72968e;

    public LazyJavaTypeParameterResolver(LazyJavaResolverContext lazyJavaResolverContext, DeclarationDescriptor declarationDescriptor, JavaTypeParameterListOwner javaTypeParameterListOwner, int i2) {
        lazyJavaResolverContext.getClass();
        declarationDescriptor.getClass();
        javaTypeParameterListOwner.getClass();
        this.f72965a = lazyJavaResolverContext;
        this.f72966b = declarationDescriptor;
        this.f72967c = i2;
        ArrayList typeParameters = javaTypeParameterListOwner.getTypeParameters();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = typeParameters.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            linkedHashMap.put(it.next(), Integer.valueOf(i3));
            i3++;
        }
        this.d = linkedHashMap;
        this.f72968e = this.f72965a.f72962a.f72944a.g(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaTypeParameterResolver$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final LazyJavaTypeParameterResolver f72969b;

            {
                this.f72969b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                JavaTypeParameter javaTypeParameter = (JavaTypeParameter) obj;
                javaTypeParameter.getClass();
                LazyJavaTypeParameterResolver lazyJavaTypeParameterResolver = this.f72969b;
                LinkedHashMap linkedHashMap2 = lazyJavaTypeParameterResolver.d;
                DeclarationDescriptor declarationDescriptor2 = lazyJavaTypeParameterResolver.f72966b;
                Integer num = (Integer) linkedHashMap2.get(javaTypeParameter);
                if (num == null) {
                    return null;
                }
                int iIntValue = num.intValue();
                LazyJavaResolverContext lazyJavaResolverContext2 = lazyJavaTypeParameterResolver.f72965a;
                lazyJavaResolverContext2.getClass();
                return new LazyJavaTypeParameterDescriptor(ContextKt.b(new LazyJavaResolverContext(lazyJavaResolverContext2.f72962a, lazyJavaTypeParameterResolver, lazyJavaResolverContext2.f72964c), declarationDescriptor2.getAnnotations()), javaTypeParameter, lazyJavaTypeParameterResolver.f72967c + iIntValue, declarationDescriptor2);
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver
    public final TypeParameterDescriptor a(JavaTypeParameter javaTypeParameter) {
        javaTypeParameter.getClass();
        LazyJavaTypeParameterDescriptor lazyJavaTypeParameterDescriptor = (LazyJavaTypeParameterDescriptor) this.f72968e.invoke(javaTypeParameter);
        return lazyJavaTypeParameterDescriptor != null ? lazyJavaTypeParameterDescriptor : this.f72965a.f72963b.a(javaTypeParameter);
    }
}
