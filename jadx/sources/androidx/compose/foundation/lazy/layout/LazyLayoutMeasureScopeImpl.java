package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;", "itemContentFactory", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "subcomposeMeasureScope", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutMeasureScopeImpl implements LazyLayoutMeasureScope, MeasureScope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LazyLayoutItemContentFactory f5486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SubcomposeMeasureScope f5487c;
    public final LazyLayoutItemProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableIntObjectMap f5488e;

    public LazyLayoutMeasureScopeImpl(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeMeasureScope subcomposeMeasureScope) {
        this.f5486b = lazyLayoutItemContentFactory;
        this.f5487c = subcomposeMeasureScope;
        this.d = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.f5476b.mo47invoke();
        IntObjectMapKt.a();
        this.f5488e = IntObjectMapKt.a();
    }

    @Override // androidx.compose.ui.unit.Density
    public final int B0(float f2) {
        return this.f5487c.B0(f2);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult B1(int i2, int i3, Map map, Function1 function1, Function1 function2) {
        return this.f5487c.B1(i2, i3, map, function1, function2);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope
    public final List C1(int i2) {
        MutableIntObjectMap mutableIntObjectMap = this.f5488e;
        List list = (List) mutableIntObjectMap.b(i2);
        if (list != null) {
            return list;
        }
        LazyLayoutItemProvider lazyLayoutItemProvider = this.d;
        Object objD = lazyLayoutItemProvider.d(i2);
        List listN = this.f5487c.N(objD, this.f5486b.a(objD, lazyLayoutItemProvider.f(i2), i2));
        mutableIntObjectMap.i(i2, listN);
        return listN;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float E0(long j2) {
        return this.f5487c.E0(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long K1(long j2) {
        return this.f5487c.K1(j2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long Q(float f2) {
        return this.f5487c.Q(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long R(long j2) {
        return this.f5487c.R(j2);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult V0(int i2, int i3, Map map, Function1 function1) {
        return this.f5487c.V0(i2, i3, map, function1);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float Z(long j2) {
        return this.f5487c.Z(j2);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity */
    public final float getF11000b() {
        return this.f5487c.getF11000b();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.f5487c.getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    public final long j0(float f2) {
        return this.f5487c.j0(f2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float k1(int i2) {
        return this.f5487c.k1(i2);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float l1(float f2) {
        return this.f5487c.l1(f2);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1 */
    public final float getF11001c() {
        return this.f5487c.getF11001c();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean u0() {
        return this.f5487c.u0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float u1(float f2) {
        return this.f5487c.u1(f2);
    }
}
