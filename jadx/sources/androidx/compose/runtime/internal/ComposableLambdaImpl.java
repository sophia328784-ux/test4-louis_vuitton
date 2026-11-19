package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.b3;
import defpackage.g2;
import defpackage.i1;
import defpackage.v1;
import defpackage.w3;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/internal/ComposableLambdaImpl;", "Landroidx/compose/runtime/internal/ComposableLambda;", "", ConfigurationName.KEY, "", "tracked", "", "block", "<init>", "(IZLjava/lang/Object;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposableLambdaImpl implements ComposableLambda {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8383c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RecomposeScope f8384e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f8385f;

    /* JADX INFO: renamed from: androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass1 extends AdaptedFunctionReference implements Function2<Composer, Integer, Unit> {
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int iIntValue = ((Number) obj2).intValue();
            ((ComposableLambdaImpl) this.receiver).a((Composer) obj, iIntValue);
            return Unit.f71739a;
        }
    }

    public ComposableLambdaImpl(int i2, boolean z, Object obj) {
        this.f8382b = i2;
        this.f8383c = z;
        this.d = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final /* bridge */ /* synthetic */ Object A(Object obj, Object obj2, Object obj3) {
        return b(obj, (Composer) obj2, ((Number) obj3).intValue());
    }

    @Override // kotlin.jvm.functions.Function5
    public final /* bridge */ /* synthetic */ Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return e(obj, obj2, obj3, (Composer) obj4, ((Number) obj5).intValue());
    }

    public final Object a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(this.f8382b);
        i(gapComposerH);
        int iA = i2 | (gapComposerH.K(this) ? ComposableLambdaKt.a(2, 0) : ComposableLambdaKt.a(1, 0));
        Object obj = this.d;
        obj.getClass();
        TypeIntrinsics.e(2, obj);
        Object objInvoke = ((Function2) obj).invoke(gapComposerH, Integer.valueOf(iA));
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new AnonymousClass1(2, this, ComposableLambdaImpl.class, "invoke", "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", 8);
        }
        return objInvoke;
    }

    public final Object b(Object obj, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(this.f8382b);
        i(gapComposerH);
        int iA = gapComposerH.K(this) ? ComposableLambdaKt.a(2, 1) : ComposableLambdaKt.a(1, 1);
        Object obj2 = this.d;
        obj2.getClass();
        TypeIntrinsics.e(3, obj2);
        Object objA = ((Function3) obj2).A(obj, gapComposerH, Integer.valueOf(iA | i2));
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(this, obj, i2, 10);
        }
        return objA;
    }

    public final Object c(Object obj, Object obj2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(this.f8382b);
        i(gapComposerH);
        int iA = gapComposerH.K(this) ? ComposableLambdaKt.a(2, 2) : ComposableLambdaKt.a(1, 2);
        Object obj3 = this.d;
        obj3.getClass();
        TypeIntrinsics.e(4, obj3);
        Object objG = ((Function4) obj3).g(obj, obj2, gapComposerH, Integer.valueOf(iA | i2));
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 7, this, obj, obj2);
        }
        return objG;
    }

    public final Object d(Object obj, Object obj2, Boolean bool, Object obj3, Object obj4, Object obj5, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(this.f8382b);
        i(gapComposerH);
        int iA = gapComposerH.K(this) ? ComposableLambdaKt.a(2, 6) : ComposableLambdaKt.a(1, 6);
        Object obj6 = this.d;
        obj6.getClass();
        TypeIntrinsics.e(8, obj6);
        Object objQ = ((Function8) obj6).q(obj, obj2, bool, obj3, obj4, obj5, gapComposerH, Integer.valueOf(i2 | iA));
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w3(this, obj, obj2, bool, obj3, obj4, obj5, i2, 3);
        }
        return objQ;
    }

    public final Object e(Object obj, Object obj2, Object obj3, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(this.f8382b);
        i(gapComposerH);
        int iA = gapComposerH.K(this) ? ComposableLambdaKt.a(2, 3) : ComposableLambdaKt.a(1, 3);
        Object obj4 = this.d;
        obj4.getClass();
        TypeIntrinsics.e(5, obj4);
        Object objD = ((Function5) obj4).D(obj, obj2, obj3, gapComposerH, Integer.valueOf(iA | i2));
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(this, obj, obj2, obj3, i2, 11);
        }
        return objD;
    }

    public final Object f(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(this.f8382b);
        i(gapComposerH);
        int iA = gapComposerH.K(this) ? ComposableLambdaKt.a(2, 4) : ComposableLambdaKt.a(1, 4);
        Object obj5 = this.d;
        obj5.getClass();
        TypeIntrinsics.e(6, obj5);
        Object objL = ((Function6) obj5).l(obj, obj2, obj3, obj4, gapComposerH, Integer.valueOf(i2 | iA));
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(this, obj, obj2, obj3, obj4, i2, 8);
        }
        return objL;
    }

    @Override // kotlin.jvm.functions.Function4
    public final /* bridge */ /* synthetic */ Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        return c(obj, obj2, (Composer) obj3, ((Number) obj4).intValue());
    }

    public final void i(Composer composer) {
        RecomposeScopeImpl recomposeScopeImplU;
        if (!this.f8383c || (recomposeScopeImplU = composer.u()) == null) {
            return;
        }
        composer.E(recomposeScopeImplU);
        if (ComposableLambdaKt.c(this.f8384e, recomposeScopeImplU)) {
            this.f8384e = recomposeScopeImplU;
            return;
        }
        ArrayList arrayList = this.f8385f;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            this.f8385f = arrayList2;
            arrayList2.add(recomposeScopeImplU);
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (ComposableLambdaKt.c((RecomposeScope) arrayList.get(i2), recomposeScopeImplU)) {
                arrayList.set(i2, recomposeScopeImplU);
                return;
            }
        }
        arrayList.add(recomposeScopeImplU);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return a((Composer) obj, ((Number) obj2).intValue());
    }

    @Override // kotlin.jvm.functions.Function6
    public final /* bridge */ /* synthetic */ Object l(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return f(obj, obj2, obj3, obj4, (Composer) obj5, ((Number) obj6).intValue());
    }

    @Override // kotlin.jvm.functions.Function8
    public final /* bridge */ /* synthetic */ Object q(Object obj, Object obj2, Boolean bool, Object obj3, Object obj4, Object obj5, Composer composer, Integer num) {
        return d(obj, obj2, bool, obj3, obj4, obj5, composer, num.intValue());
    }
}
