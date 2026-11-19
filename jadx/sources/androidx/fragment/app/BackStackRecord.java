package androidx.fragment.app;

import androidx.lifecycle.Lifecycle;
import defpackage.az;
import defpackage.lc0;
import defpackage.md;
import defpackage.v7;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {
    public final FragmentManager r;
    public boolean s;
    public int t;
    public boolean u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackStackRecord(BackStackRecord backStackRecord) {
        super(0);
        backStackRecord.r.L();
        FragmentHostCallback fragmentHostCallback = backStackRecord.r.x;
        if (fragmentHostCallback != null) {
            fragmentHostCallback.f13255c.getClassLoader();
        }
        for (FragmentTransaction.Op op : backStackRecord.f13328a) {
            ArrayList arrayList = this.f13328a;
            FragmentTransaction.Op op2 = new FragmentTransaction.Op();
            op2.f13337a = op.f13337a;
            op2.f13338b = op.f13338b;
            op2.f13339c = op.f13339c;
            op2.d = op.d;
            op2.f13340e = op.f13340e;
            op2.f13341f = op.f13341f;
            op2.g = op.g;
            op2.f13342h = op.f13342h;
            op2.f13343i = op.f13343i;
            arrayList.add(op2);
        }
        this.f13329b = backStackRecord.f13329b;
        this.f13330c = backStackRecord.f13330c;
        this.d = backStackRecord.d;
        this.f13331e = backStackRecord.f13331e;
        this.f13332f = backStackRecord.f13332f;
        this.g = backStackRecord.g;
        this.f13333h = backStackRecord.f13333h;
        this.f13334i = backStackRecord.f13334i;
        this.l = backStackRecord.l;
        this.m = backStackRecord.m;
        this.f13335j = backStackRecord.f13335j;
        this.f13336k = backStackRecord.f13336k;
        if (backStackRecord.n != null) {
            ArrayList arrayList2 = new ArrayList();
            this.n = arrayList2;
            arrayList2.addAll(backStackRecord.n);
        }
        if (backStackRecord.o != null) {
            ArrayList arrayList3 = new ArrayList();
            this.o = arrayList3;
            arrayList3.addAll(backStackRecord.o);
        }
        this.p = backStackRecord.p;
        this.t = -1;
        this.u = false;
        this.r = backStackRecord.r;
        this.s = backStackRecord.s;
        this.t = backStackRecord.t;
        this.u = backStackRecord.u;
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.O(2)) {
            toString();
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.g) {
            return true;
        }
        this.r.d.add(this);
        return true;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final int e() {
        return t(false, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final int f() {
        return t(true, true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void g() {
        if (this.g) {
            md.k("This transaction is already being added to the back stack");
        } else {
            this.f13333h = false;
            this.r.C(this, false);
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void h() {
        if (this.g) {
            md.k("This transaction is already being added to the back stack");
        } else {
            this.f13333h = false;
            this.r.C(this, true);
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void i(int i2, Fragment fragment, String str, int i3) {
        super.i(i2, fragment, str, i3);
        fragment.mFragmentManager = this.r;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void j(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.j(fragment);
        } else {
            v7.d(fragment, "Cannot hide Fragment attached to a different FragmentManager. Fragment ");
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final boolean k() {
        return this.f13328a.isEmpty();
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void l(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.l(fragment);
        } else {
            v7.d(fragment, "Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void o(Fragment fragment, Lifecycle.State state) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        FragmentManager fragmentManager2 = this.r;
        if (fragmentManager != fragmentManager2) {
            az.m(fragmentManager2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            return;
        }
        if (state == Lifecycle.State.INITIALIZED && fragment.mState > -1) {
            lc0.n("Cannot set maximum Lifecycle to ", state, " after the Fragment has been created");
        } else if (state != Lifecycle.State.DESTROYED) {
            super.o(fragment, state);
        } else {
            lc0.n("Cannot set maximum Lifecycle to ", state, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void p(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.p(fragment);
        } else {
            v7.d(fragment, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment ");
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void q(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.r) {
            super.q(fragment);
        } else {
            v7.d(fragment, "Cannot show Fragment attached to a different FragmentManager. Fragment ");
        }
    }

    public final void r(int i2) {
        if (this.g) {
            if (FragmentManager.O(2)) {
                toString();
            }
            ArrayList arrayList = this.f13328a;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(i3);
                Fragment fragment = op.f13338b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i2;
                    if (FragmentManager.O(2)) {
                        Objects.toString(op.f13338b);
                        int i4 = op.f13338b.mBackStackNesting;
                    }
                }
            }
        }
    }

    public final void s() {
        ArrayList arrayList = this.f13328a;
        int size = arrayList.size() - 1;
        while (size >= 0) {
            FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(size);
            if (op.f13339c) {
                if (op.f13337a == 8) {
                    op.f13339c = false;
                    arrayList.remove(size - 1);
                    size--;
                } else {
                    int i2 = op.f13338b.mContainerId;
                    op.f13337a = 2;
                    op.f13339c = false;
                    for (int i3 = size - 1; i3 >= 0; i3--) {
                        FragmentTransaction.Op op2 = (FragmentTransaction.Op) arrayList.get(i3);
                        if (op2.f13339c && op2.f13338b.mContainerId == i2) {
                            arrayList.remove(i3);
                            size--;
                        }
                    }
                }
            }
            size--;
        }
    }

    public final int t(boolean z, boolean z2) {
        if (this.s) {
            md.k("commit already called");
            return 0;
        }
        if (FragmentManager.O(2)) {
            toString();
            PrintWriter printWriter = new PrintWriter(new LogWriter());
            u("  ", printWriter, true);
            printWriter.close();
        }
        this.s = true;
        boolean z3 = this.g;
        FragmentManager fragmentManager = this.r;
        if (z3) {
            this.t = fragmentManager.f13272k.getAndIncrement();
        } else {
            this.t = -1;
        }
        if (z2) {
            fragmentManager.z(this, z);
        }
        return this.t;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sb.append(" #");
            sb.append(this.t);
        }
        if (this.f13334i != null) {
            sb.append(" ");
            sb.append(this.f13334i);
        }
        sb.append("}");
        return sb.toString();
    }

    public final void u(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f13334i);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f13332f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f13332f));
            }
            if (this.f13329b != 0 || this.f13330c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f13329b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f13330c));
            }
            if (this.d != 0 || this.f13331e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f13331e));
            }
            if (this.f13335j != 0 || this.f13336k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f13335j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f13336k);
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.m);
            }
        }
        ArrayList arrayList = this.f13328a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(i2);
            switch (op.f13337a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + op.f13337a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i2);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(op.f13338b);
            if (z) {
                if (op.d != 0 || op.f13340e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(op.d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(op.f13340e));
                }
                if (op.f13341f != 0 || op.g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(op.f13341f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(op.g));
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackStackRecord(FragmentManager fragmentManager) {
        super(0);
        fragmentManager.L();
        FragmentHostCallback fragmentHostCallback = fragmentManager.x;
        if (fragmentHostCallback != null) {
            fragmentHostCallback.f13255c.getClassLoader();
        }
        this.t = -1;
        this.u = false;
        this.r = fragmentManager;
    }
}
