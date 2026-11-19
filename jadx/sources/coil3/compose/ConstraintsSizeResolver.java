package coil3.compose;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import coil3.compose.internal.UtilsKt;
import coil3.size.Dimension;
import coil3.size.DimensionKt;
import coil3.size.Size;
import coil3.size.SizeResolver;
import defpackage.a2;
import defpackage.md;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/compose/ConstraintsSizeResolver;", "Lcoil3/size/SizeResolver;", "Landroidx/compose/ui/layout/LayoutModifier;", "<init>", "()V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ConstraintsSizeResolver implements SizeResolver, LayoutModifier {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f21297b = UtilsKt.f21340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f21298c = new ArrayList();

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final MeasureResult e(MeasureScope measureScope, Measurable measurable, long j2) {
        v(j2);
        Placeable placeableT = measurable.T(j2);
        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 2));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // coil3.size.SizeResolver
    public final Object g(Continuation continuation) throws Throwable {
        ConstraintsSizeResolver$size$1 constraintsSizeResolver$size$1;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        Dimension pixels;
        if (continuation instanceof ConstraintsSizeResolver$size$1) {
            constraintsSizeResolver$size$1 = (ConstraintsSizeResolver$size$1) continuation;
            int i2 = constraintsSizeResolver$size$1.f21301e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                constraintsSizeResolver$size$1.f21301e = i2 - Integer.MIN_VALUE;
            } else {
                constraintsSizeResolver$size$1 = new ConstraintsSizeResolver$size$1(this, (ContinuationImpl) continuation);
            }
        } else {
            constraintsSizeResolver$size$1 = new ConstraintsSizeResolver$size$1(this, (ContinuationImpl) continuation);
        }
        Object obj = constraintsSizeResolver$size$1.f21300c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = constraintsSizeResolver$size$1.f21301e;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (Constraints.k(this.f21297b)) {
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                try {
                    constraintsSizeResolver$size$1.f21299b = ref$ObjectRef2;
                    constraintsSizeResolver$size$1.f21301e = 1;
                    CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(constraintsSizeResolver$size$1), 1);
                    cancellableContinuationImpl.initCancellability();
                    ref$ObjectRef2.f71921b = cancellableContinuationImpl;
                    this.f21298c.add(cancellableContinuationImpl);
                    if (cancellableContinuationImpl.getResult() == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$ObjectRef = ref$ObjectRef2;
                    ArrayList arrayList = this.f21298c;
                    TypeIntrinsics.a(arrayList).remove(ref$ObjectRef.f71921b);
                } catch (Throwable th2) {
                    ref$ObjectRef = ref$ObjectRef2;
                    th = th2;
                    ArrayList arrayList2 = this.f21298c;
                    TypeIntrinsics.a(arrayList2).remove(ref$ObjectRef.f71921b);
                    throw th;
                }
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = constraintsSizeResolver$size$1.f21299b;
            try {
                ResultKt.b(obj);
                ArrayList arrayList3 = this.f21298c;
                TypeIntrinsics.a(arrayList3).remove(ref$ObjectRef.f71921b);
            } catch (Throwable th3) {
                th = th3;
                ArrayList arrayList4 = this.f21298c;
                TypeIntrinsics.a(arrayList4).remove(ref$ObjectRef.f71921b);
                throw th;
            }
        }
        long j2 = this.f21297b;
        MeasurePolicy measurePolicy = UtilsKt.f21339a;
        int iH = Constraints.h(j2);
        Dimension pixels2 = Dimension.Undefined.f21685a;
        if (iH != Integer.MAX_VALUE) {
            DimensionKt.a(iH);
            pixels = new Dimension.Pixels(iH);
        } else {
            pixels = pixels2;
        }
        int iG = Constraints.g(j2);
        if (iG != Integer.MAX_VALUE) {
            DimensionKt.a(iG);
            pixels2 = new Dimension.Pixels(iG);
        }
        return new Size(pixels, pixels2);
    }

    public final void v(long j2) {
        this.f21297b = j2;
        if (Constraints.k(j2)) {
            return;
        }
        ArrayList<Continuation> arrayList = this.f21298c;
        if (arrayList.isEmpty()) {
            return;
        }
        this.f21298c = new ArrayList();
        for (Continuation continuation : arrayList) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Unit.f71739a);
        }
    }
}
