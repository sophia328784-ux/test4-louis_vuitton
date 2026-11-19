package defpackage;

import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerScrollPosition;
import androidx.compose.foundation.pager.PagerScrollPositionKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p70 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f78779c;

    public /* synthetic */ p70(PagerState pagerState, int i2) {
        this.f78778b = i2;
        this.f78779c = pagerState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.Float] */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.lang.Number] */
    /* JADX WARN: Type inference failed for: r15v4, types: [java.lang.Long] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PagerMeasureResult pagerMeasureResult;
        int i2 = this.f78778b;
        PagerMeasureResult pagerMeasureResult2 = null;
        PagerState pagerState = this.f78779c;
        switch (i2) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.f(semanticsPropertyReceiver, new CollectionInfo(1, pagerState.o()));
                return Unit.f71739a;
            case 1:
                ?? ValueOf = (Float) obj;
                float fFloatValue = ValueOf.floatValue();
                long jA = PagerScrollPositionKt.a(pagerState);
                float f2 = pagerState.f5763i + fFloatValue;
                long jD = MathKt.d(f2);
                pagerState.f5763i = f2 - jD;
                if (Math.abs(fFloatValue) >= 1.0E-4f) {
                    long j2 = jA + jD;
                    long jE = RangesKt.e(j2, pagerState.f5762h, pagerState.g);
                    ?? r0 = j2 != jE;
                    long j3 = jE - jA;
                    float f3 = j3;
                    pagerState.f5764j = f3;
                    long jAbs = Math.abs(j3);
                    float fQ = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    if (jAbs != 0) {
                        ((SnapshotMutableStateImpl) pagerState.F).setValue(Boolean.valueOf(f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM));
                        ((SnapshotMutableStateImpl) pagerState.G).setValue(Boolean.valueOf(f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    }
                    int i3 = (int) j3;
                    int i4 = -i3;
                    PagerMeasureResult pagerMeasureResultM = ((PagerMeasureResult) ((SnapshotMutableStateImpl) pagerState.m).getF10755b()).m(i4);
                    if (pagerMeasureResultM == null || (pagerMeasureResult = pagerState.f5758b) == null) {
                        pagerMeasureResult2 = pagerMeasureResultM;
                    } else {
                        PagerMeasureResult pagerMeasureResultM2 = pagerMeasureResult.m(i4);
                        if (pagerMeasureResultM2 != null) {
                            pagerState.f5758b = pagerMeasureResultM2;
                            pagerMeasureResult2 = pagerMeasureResultM;
                        }
                    }
                    if (pagerMeasureResult2 != null) {
                        pagerState.h(pagerMeasureResult2, pagerState.f5757a, true);
                        ObservableScopeInvalidator.b(pagerState.B);
                    } else {
                        PagerScrollPosition pagerScrollPosition = pagerState.d;
                        PagerState pagerState2 = pagerScrollPosition.f5749a;
                        MutableFloatState mutableFloatState = pagerScrollPosition.f5751c;
                        if (pagerState2.q() != 0) {
                            fQ = i3 / pagerState2.q();
                        }
                        ((SnapshotMutableFloatStateImpl) mutableFloatState).w(((SnapshotMutableFloatStateImpl) mutableFloatState).a() + fQ);
                        Remeasurement remeasurement = (Remeasurement) ((SnapshotMutableStateImpl) pagerState.y).getF10755b();
                        if (remeasurement != null) {
                            remeasurement.e();
                        }
                    }
                    if (r0 != false) {
                        ValueOf = Long.valueOf(j3);
                    }
                    fFloatValue = ValueOf.floatValue();
                }
                return Float.valueOf(fFloatValue);
            default:
                NestedPrefetchScope nestedPrefetchScope = (NestedPrefetchScope) obj;
                Snapshot.f8462e.getClass();
                Snapshot snapshotA = Snapshot.Companion.a();
                Function1 f8547i = snapshotA != null ? snapshotA.getF8454f() : null;
                Snapshot snapshotB = Snapshot.Companion.b(snapshotA);
                try {
                    nestedPrefetchScope.a(pagerState.f5760e);
                    return Unit.f71739a;
                } finally {
                    Snapshot.Companion.e(snapshotA, snapshotB, f8547i);
                }
        }
    }
}
