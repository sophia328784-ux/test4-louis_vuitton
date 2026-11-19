package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.TypedArrayUtils;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class TransitionSet extends Transition {
    public ArrayList F;
    public boolean G;
    public int H;
    public boolean I;
    public int J;
    public Transition[] K;

    public static class TransitionSetListener extends TransitionListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TransitionSet f20029a;

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
            TransitionSet transitionSet = this.f20029a;
            if (transitionSet.I) {
                return;
            }
            transitionSet.T();
            transitionSet.I = true;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void i(Transition transition) {
            TransitionSet transitionSet = this.f20029a;
            int i2 = transitionSet.H - 1;
            transitionSet.H = i2;
            if (i2 == 0) {
                transitionSet.I = false;
                transitionSet.u();
            }
            transition.H(this);
        }
    }

    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = new ArrayList();
        this.G = true;
        this.I = false;
        this.J = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f19993e);
        X(TypedArrayUtils.d(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.Transition
    public final boolean A() {
        for (int i2 = 0; i2 < this.F.size(); i2++) {
            if (((Transition) this.F.get(i2)).A()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.transition.Transition
    public final boolean B() {
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!((Transition) this.F.get(i2)).B()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.transition.Transition
    public final void F(View view) {
        super.F(view);
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Transition) this.F.get(i2)).F(view);
        }
    }

    @Override // androidx.transition.Transition
    public final void G() {
        this.y = 0L;
        TransitionListenerAdapter transitionListenerAdapter = new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.2
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
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public final void k(Transition transition) {
                TransitionSet transitionSet = TransitionSet.this;
                transitionSet.F.remove(transition);
                if (transitionSet.A()) {
                    return;
                }
                transitionSet.E(transitionSet, Transition.TransitionNotification.f20018c, false);
                transitionSet.s = true;
                transitionSet.E(transitionSet, Transition.TransitionNotification.f20017b, false);
            }
        };
        for (int i2 = 0; i2 < this.F.size(); i2++) {
            Transition transition = (Transition) this.F.get(i2);
            transition.a(transitionListenerAdapter);
            transition.G();
            long j2 = transition.y;
            boolean z = this.G;
            long j3 = this.y;
            if (z) {
                this.y = Math.max(j3, j2);
            } else {
                transition.A = j3;
                this.y = j3 + j2;
            }
        }
    }

    @Override // androidx.transition.Transition
    public final Transition H(Transition.TransitionListener transitionListener) {
        super.H(transitionListener);
        return this;
    }

    @Override // androidx.transition.Transition
    public final void J(View view) {
        for (int i2 = 0; i2 < this.F.size(); i2++) {
            ((Transition) this.F.get(i2)).J(view);
        }
        this.g.remove(view);
    }

    @Override // androidx.transition.Transition
    public final void K(View view) {
        super.K(view);
        Transition[] transitionArr = this.K;
        this.K = null;
        if (transitionArr == null) {
            transitionArr = new Transition[this.F.size()];
        }
        Transition[] transitionArr2 = (Transition[]) this.F.toArray(transitionArr);
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            transitionArr2[i2].K(view);
        }
        Arrays.fill(transitionArr2, (Object) null);
        this.K = transitionArr2;
    }

    @Override // androidx.transition.Transition
    public final void L() {
        ArrayList arrayList;
        if (this.F.isEmpty()) {
            T();
            u();
            return;
        }
        TransitionSetListener transitionSetListener = new TransitionSetListener();
        transitionSetListener.f20029a = this;
        Iterator it = this.F.iterator();
        while (it.hasNext()) {
            ((Transition) it.next()).a(transitionSetListener);
        }
        this.H = this.F.size();
        if (this.G) {
            Iterator it2 = this.F.iterator();
            while (it2.hasNext()) {
                ((Transition) it2.next()).L();
            }
            return;
        }
        int i2 = 1;
        while (true) {
            int size = this.F.size();
            arrayList = this.F;
            if (i2 >= size) {
                break;
            }
            Transition transition = (Transition) arrayList.get(i2 - 1);
            final Transition transition2 = (Transition) this.F.get(i2);
            transition.a(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.1
                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public final void i(Transition transition3) {
                    transition2.L();
                    transition3.H(this);
                }
            });
            i2++;
        }
        Transition transition3 = (Transition) arrayList.get(0);
        if (transition3 != null) {
            transition3.L();
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    @Override // androidx.transition.Transition
    public final void M(long j2, long j3) {
        long j4;
        long j5 = this.y;
        long j6 = 0;
        if (this.f20000j != null) {
            if (j2 < 0 && j3 < 0) {
                return;
            }
            if (j2 > j5 && j3 > j5) {
                return;
            }
        }
        boolean z = j2 < j3;
        if ((j2 >= 0 && j3 < 0) || (j2 <= j5 && j3 > j5)) {
            this.s = false;
            E(this, Transition.TransitionNotification.f20016a, z);
        }
        if (!this.G) {
            int size = 1;
            while (true) {
                int size2 = this.F.size();
                ArrayList arrayList = this.F;
                if (size >= size2) {
                    size = arrayList.size();
                    break;
                } else if (((Transition) arrayList.get(size)).A > j3) {
                    break;
                } else {
                    size++;
                }
            }
            int i2 = size - 1;
            if (j2 >= j3) {
                while (true) {
                    if (i2 < this.F.size()) {
                        Transition transition = (Transition) this.F.get(i2);
                        long j7 = transition.A;
                        j4 = j6;
                        long j8 = j2 - j7;
                        if (j8 < j4) {
                            break;
                        }
                        transition.M(j8, j3 - j7);
                        i2++;
                        j6 = j4;
                    }
                }
            } else {
                j4 = 0;
                while (i2 >= 0) {
                    Transition transition2 = (Transition) this.F.get(i2);
                    long j9 = transition2.A;
                    long j10 = j2 - j9;
                    transition2.M(j10, j3 - j9);
                    if (j10 >= 0) {
                        break;
                    } else {
                        i2--;
                    }
                }
            }
            if (this.f20000j != null) {
                if ((j2 > j5 || j3 > j5) && (j2 >= 0 || j3 < j4)) {
                    return;
                }
                if (j2 > j5) {
                    this.s = true;
                }
                E(this, Transition.TransitionNotification.f20017b, z);
            }
        }
        for (int i3 = 0; i3 < this.F.size(); i3++) {
            ((Transition) this.F.get(i3)).M(j2, j3);
        }
        j4 = j6;
        if (this.f20000j != null) {
            if (j2 > j5) {
                return;
            } else {
                return;
            }
            if (j2 > j5) {
                this.s = true;
            }
            E(this, Transition.TransitionNotification.f20017b, z);
        }
    }

    @Override // androidx.transition.Transition
    public final void N(long j2) {
        ArrayList arrayList;
        this.d = j2;
        if (j2 < 0 || (arrayList = this.F) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Transition) this.F.get(i2)).N(j2);
        }
    }

    @Override // androidx.transition.Transition
    public final void O(Transition.EpicenterCallback epicenterCallback) {
        this.w = epicenterCallback;
        this.J |= 8;
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Transition) this.F.get(i2)).O(epicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    public final void P(TimeInterpolator timeInterpolator) {
        this.J |= 1;
        ArrayList arrayList = this.F;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((Transition) this.F.get(i2)).P(timeInterpolator);
            }
        }
        this.f19996e = timeInterpolator;
    }

    @Override // androidx.transition.Transition
    public final void Q(PathMotion pathMotion) {
        super.Q(pathMotion);
        this.J |= 4;
        if (this.F != null) {
            for (int i2 = 0; i2 < this.F.size(); i2++) {
                ((Transition) this.F.get(i2)).Q(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void R() {
        this.J |= 2;
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Transition) this.F.get(i2)).R();
        }
    }

    @Override // androidx.transition.Transition
    public final void S(long j2) {
        this.f19995c = j2;
    }

    @Override // androidx.transition.Transition
    public final String U(String str) {
        String strU = super.U(str);
        for (int i2 = 0; i2 < this.F.size(); i2++) {
            StringBuilder sbU = n00.u(strU, "\n");
            sbU.append(((Transition) this.F.get(i2)).U(str.concat("  ")));
            strU = sbU.toString();
        }
        return strU;
    }

    public final void V(Transition transition) {
        this.F.add(transition);
        transition.f20000j = this;
        long j2 = this.d;
        if (j2 >= 0) {
            transition.N(j2);
        }
        if ((this.J & 1) != 0) {
            transition.P(this.f19996e);
        }
        if ((this.J & 2) != 0) {
            transition.R();
        }
        if ((this.J & 4) != 0) {
            transition.Q(this.x);
        }
        if ((this.J & 8) != 0) {
            transition.O(this.w);
        }
    }

    public final Transition W(int i2) {
        if (i2 < 0 || i2 >= this.F.size()) {
            return null;
        }
        return (Transition) this.F.get(i2);
    }

    public final void X(int i2) {
        if (i2 == 0) {
            this.G = true;
        } else {
            if (i2 != 1) {
                throw new AndroidRuntimeException(pq0.k(i2, "Invalid parameter for TransitionSet ordering: "));
            }
            this.G = false;
        }
    }

    @Override // androidx.transition.Transition
    public final void b(View view) {
        for (int i2 = 0; i2 < this.F.size(); i2++) {
            ((Transition) this.F.get(i2)).b(view);
        }
        this.g.add(view);
    }

    @Override // androidx.transition.Transition
    public final void cancel() {
        super.cancel();
        Transition[] transitionArr = this.K;
        this.K = null;
        if (transitionArr == null) {
            transitionArr = new Transition[this.F.size()];
        }
        Transition[] transitionArr2 = (Transition[]) this.F.toArray(transitionArr);
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            transitionArr2[i2].cancel();
        }
        Arrays.fill(transitionArr2, (Object) null);
        this.K = transitionArr2;
    }

    @Override // androidx.transition.Transition
    public final void d(TransitionValues transitionValues) {
        View view = transitionValues.f20031b;
        if (D(view)) {
            for (Transition transition : this.F) {
                if (transition.D(view)) {
                    transition.d(transitionValues);
                    transitionValues.f20032c.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void f(TransitionValues transitionValues) {
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((Transition) this.F.get(i2)).f(transitionValues);
        }
    }

    @Override // androidx.transition.Transition
    public final void g(TransitionValues transitionValues) {
        View view = transitionValues.f20031b;
        if (D(view)) {
            for (Transition transition : this.F) {
                if (transition.D(view)) {
                    transition.g(transitionValues);
                    transitionValues.f20032c.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.F = new ArrayList();
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            Transition transitionClone = ((Transition) this.F.get(i2)).clone();
            transitionSet.F.add(transitionClone);
            transitionClone.f20000j = transitionSet;
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    public final void l(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList arrayList, ArrayList arrayList2) {
        long j2 = this.f19995c;
        int size = this.F.size();
        for (int i2 = 0; i2 < size; i2++) {
            Transition transition = (Transition) this.F.get(i2);
            if (j2 > 0 && (this.G || i2 == 0)) {
                long j3 = transition.f19995c;
                if (j3 > 0) {
                    transition.S(j3 + j2);
                } else {
                    transition.S(j2);
                }
            }
            transition.l(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    public TransitionSet() {
        this.F = new ArrayList();
        this.G = true;
        this.I = false;
        this.J = 0;
    }
}
