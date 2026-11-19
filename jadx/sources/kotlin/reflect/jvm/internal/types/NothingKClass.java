package kotlin.reflect.jvm.internal.types;

import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.KTypeParameterOwnerImpl;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/reflect/jvm/internal/types/NothingKClass;", "Lkotlin/reflect/KClass;", "Ljava/lang/Void;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;", "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NothingKClass implements KClass<Void>, KTypeParameterOwnerImpl, TypeConstructorMarker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final NothingKClass f74437c = new NothingKClass();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KClass f74438b = Reflection.f71922a.b(Void.class);

    @Override // kotlin.reflect.KClass
    public final String B() {
        return "Nothing";
    }

    @Override // kotlin.reflect.KClass
    public final boolean equals(Object obj) {
        return this.f74438b.equals(obj);
    }

    @Override // kotlin.reflect.KClass
    public final Collection f() {
        return this.f74438b.f();
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public final List getAnnotations() {
        return this.f74438b.getAnnotations();
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: getTypeParameters */
    public final List getD() {
        return this.f74438b.getD();
    }

    @Override // kotlin.reflect.KClass
    public final int hashCode() {
        return this.f74438b.hashCode();
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: i */
    public final List getF74432e() {
        return this.f74438b.getF74432e();
    }

    @Override // kotlin.reflect.KClass
    public final boolean isAbstract() {
        return this.f74438b.isAbstract();
    }

    @Override // kotlin.reflect.KClass
    public final boolean k() {
        return this.f74438b.k();
    }

    @Override // kotlin.reflect.KClass
    public final boolean m() {
        return this.f74438b.m();
    }

    @Override // kotlin.reflect.KClass
    public final boolean r() {
        return this.f74438b.r();
    }

    @Override // kotlin.reflect.KClass
    public final Object s() {
        return (Void) this.f74438b.s();
    }

    @Override // kotlin.reflect.KClass
    public final boolean t(Object obj) {
        return this.f74438b.t(obj);
    }

    public final String toString() {
        return "NothingKClass";
    }

    @Override // kotlin.reflect.KClass
    public final Collection v() {
        return this.f74438b.v();
    }

    @Override // kotlin.reflect.KClass
    /* JADX INFO: renamed from: w */
    public final String getF74431c() {
        return "kotlin.Nothing";
    }
}
