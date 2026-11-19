package androidx.constraintlayout.compose;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.layout.Measurable;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.ConstraintSetParser;
import defpackage.j00;
import defpackage.ll0;
import defpackage.pq0;
import defpackage.r3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/constraintlayout/compose/ConstraintSetForInlineDsl;", "Landroidx/constraintlayout/compose/ConstraintSet;", "Landroidx/compose/runtime/RememberObserver;", "Landroidx/constraintlayout/compose/ConstraintLayoutScope;", "scope", "<init>", "(Landroidx/constraintlayout/compose/ConstraintLayoutScope;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ConstraintSetForInlineDsl implements ConstraintSet, RememberObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConstraintLayoutScope f11254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f11255c;
    public final SnapshotStateObserver d = new SnapshotStateObserver(new Function1<Function0<? extends Unit>, Unit>() { // from class: androidx.constraintlayout.compose.ConstraintSetForInlineDsl$observer$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Function0 function0 = (Function0) obj;
            if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                function0.mo47invoke();
            } else {
                ConstraintSetForInlineDsl constraintSetForInlineDsl = this.f11260c;
                Handler handler = constraintSetForInlineDsl.f11255c;
                if (handler == null) {
                    handler = new Handler(Looper.getMainLooper());
                    constraintSetForInlineDsl.f11255c = handler;
                }
                handler.post(new r3(function0, 6));
            }
            return Unit.f71739a;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f11256e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1 f11257f = new Function1<Unit, Unit>() { // from class: androidx.constraintlayout.compose.ConstraintSetForInlineDsl$onCommitAffectingConstrainLambdas$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            this.f11261c.f11256e = true;
            return Unit.f71739a;
        }
    };
    public final ArrayList g = new ArrayList();

    public ConstraintSetForInlineDsl(ConstraintLayoutScope constraintLayoutScope) {
        this.f11254b = constraintLayoutScope;
    }

    @Override // androidx.constraintlayout.compose.ConstraintSet
    public final void a(final State state, final List list) {
        this.g.clear();
        this.d.e(Unit.f71739a, this.f11257f, new Function0<Unit>() { // from class: androidx.constraintlayout.compose.ConstraintSetForInlineDsl$applyTo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() throws CLParsingException {
                ConstraintSetForInlineDsl constraintSetForInlineDsl = this;
                ConstraintLayoutScope constraintLayoutScope = constraintSetForInlineDsl.f11254b;
                List list2 = list;
                int size = list2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Object z = ((Measurable) list2.get(i2)).getZ();
                    ConstraintLayoutParentData constraintLayoutParentData = z instanceof ConstraintLayoutParentData ? (ConstraintLayoutParentData) z : null;
                    if (constraintLayoutParentData != null) {
                        ConstrainedLayoutReference constrainedLayoutReference = constraintLayoutParentData.f11248b;
                        constraintLayoutScope.getClass();
                        String string = constrainedLayoutReference.f11234b.toString();
                        CLObject cLObject = constraintLayoutScope.f11238a;
                        CLElement cLElementL = cLObject.L(string);
                        if ((cLElementL instanceof CLObject ? (CLObject) cLElementL : null) == null) {
                            cLObject.R(string, new CLObject(new char[0]));
                        }
                        CLElement cLElementE = cLObject.E(string);
                        if (!(cLElementE instanceof CLObject)) {
                            StringBuilder sbR = pq0.r("no object found for key <", string, ">, found [");
                            sbR.append(cLElementE.v());
                            sbR.append("] : ");
                            sbR.append(cLElementE);
                            throw new CLParsingException(sbR.toString(), cLObject);
                        }
                        constraintLayoutParentData.f11249c.invoke(new ConstrainScope(constrainedLayoutReference.f11234b, (CLObject) cLElementE));
                    }
                    constraintSetForInlineDsl.g.add(constraintLayoutParentData);
                }
                ConstraintSetParser.h(constraintLayoutScope.f11238a, state, new ConstraintSetParser.LayoutVariables());
                return Unit.f71739a;
            }
        });
        this.f11256e = false;
    }

    @Override // androidx.constraintlayout.compose.ConstraintSet
    public final boolean b(List list) {
        if (this.f11256e) {
            return true;
        }
        int size = list.size();
        ArrayList arrayList = this.g;
        if (size != arrayList.size()) {
            return true;
        }
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Object t = ((Measurable) list.get(i2)).getZ();
            if (!Intrinsics.c(t instanceof ConstraintLayoutParentData ? (ConstraintLayoutParentData) t : null, arrayList.get(i2))) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        SnapshotStateObserver snapshotStateObserver = this.d;
        snapshotStateObserver.getClass();
        Snapshot.Companion companion = Snapshot.f8462e;
        ll0 ll0Var = snapshotStateObserver.d;
        companion.getClass();
        snapshotStateObserver.f8503h = Snapshot.Companion.d(ll0Var);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        SnapshotStateObserver snapshotStateObserver = this.d;
        j00 j00Var = snapshotStateObserver.f8503h;
        if (j00Var != null) {
            j00Var.dispose();
        }
        snapshotStateObserver.a();
    }
}
