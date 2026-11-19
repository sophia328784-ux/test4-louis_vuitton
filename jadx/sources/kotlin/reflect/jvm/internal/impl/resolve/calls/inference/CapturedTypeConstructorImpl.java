package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;

/* JADX INFO: loaded from: classes4.dex */
public final class CapturedTypeConstructorImpl implements CapturedTypeConstructor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeProjection f73863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public NewCapturedTypeConstructor f73864c;

    public CapturedTypeConstructorImpl(TypeProjection typeProjection) {
        typeProjection.getClass();
        this.f73863b = typeProjection;
        typeProjection.b();
        Variance variance = Variance.INVARIANT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean A() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final KotlinBuiltIns g() {
        KotlinBuiltIns kotlinBuiltInsG = this.f73863b.getType().H0().g();
        kotlinBuiltInsG.getClass();
        return kotlinBuiltInsG;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List getParameters() {
        return EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final Collection i() {
        TypeProjection typeProjection = this.f73863b;
        KotlinType type = typeProjection.b() == Variance.OUT_VARIANCE ? typeProjection.getType() : g().p();
        type.getClass();
        return CollectionsKt.O(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor
    public final TypeProjection p() {
        return this.f73863b;
    }

    public final String toString() {
        return "CapturedTypeConstructor(" + this.f73863b + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final /* bridge */ /* synthetic */ ClassifierDescriptor y() {
        return null;
    }
}
