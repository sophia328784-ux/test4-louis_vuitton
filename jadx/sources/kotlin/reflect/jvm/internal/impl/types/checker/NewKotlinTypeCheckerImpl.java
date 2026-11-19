package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
public final class NewKotlinTypeCheckerImpl implements NewKotlinTypeChecker {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KotlinTypeRefiner f74289c;
    public final KotlinTypePreparator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OverridingUtil f74290e;

    public NewKotlinTypeCheckerImpl(KotlinTypeRefiner kotlinTypeRefiner, KotlinTypePreparator kotlinTypePreparator) {
        kotlinTypeRefiner.getClass();
        kotlinTypePreparator.getClass();
        this.f74289c = kotlinTypeRefiner;
        this.d = kotlinTypePreparator;
        this.f74290e = new OverridingUtil(OverridingUtil.f73838f, kotlinTypeRefiner, KotlinTypePreparator.Default.f74270a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker
    public final OverridingUtil a() {
        return this.f74290e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker
    public final boolean b(KotlinType kotlinType, KotlinType kotlinType2) {
        kotlinType.getClass();
        kotlinType2.getClass();
        return AbstractTypeChecker.f(ClassicTypeCheckerStateKt.a(false, null, this.d, this.f74289c, 6), kotlinType.K0(), kotlinType2.K0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker
    public final KotlinTypeRefiner c() {
        return this.f74289c;
    }

    public final boolean d(KotlinType kotlinType, KotlinType kotlinType2) {
        kotlinType.getClass();
        kotlinType2.getClass();
        return AbstractTypeChecker.j(AbstractTypeChecker.f74158a, ClassicTypeCheckerStateKt.a(true, null, this.d, this.f74289c, 6), kotlinType.K0(), kotlinType2.K0());
    }

    public /* synthetic */ NewKotlinTypeCheckerImpl(KotlinTypeRefiner kotlinTypeRefiner, KotlinTypePreparator kotlinTypePreparator, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kotlinTypeRefiner, (i2 & 2) != 0 ? KotlinTypePreparator.Default.f74270a : kotlinTypePreparator);
    }
}
