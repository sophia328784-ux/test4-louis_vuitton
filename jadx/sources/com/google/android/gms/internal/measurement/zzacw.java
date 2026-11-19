package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.n91;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class zzacw implements zzafo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzacv f30382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30384c;
    public int d = 0;

    public zzacw(zzacv zzacvVar) {
        this.f30382a = zzacvVar;
        zzacvVar.f30381c = this;
    }

    public static final void v(int i2) throws zzaeh {
        if ((i2 & 3) == 0) {
            return;
        }
        n91.c("Failed to parse the message.");
    }

    public static final void w(int i2) throws zzaeh {
        if ((i2 & 7) == 0) {
            return;
        }
        n91.c("Failed to parse the message.");
    }

    public final long A() throws zzaeg {
        q(0);
        return this.f30382a.q();
    }

    public final long B() throws zzaeg {
        q(0);
        return this.f30382a.r();
    }

    public final int C() throws zzaeg {
        q(0);
        return this.f30382a.s();
    }

    public final long D() throws zzaeg {
        q(1);
        return this.f30382a.t();
    }

    public final int E() throws zzaeg {
        q(5);
        return this.f30382a.u();
    }

    public final boolean F() throws zzaeg {
        q(0);
        return this.f30382a.v();
    }

    public final String G() throws zzaeg {
        q(2);
        return this.f30382a.w();
    }

    public final String H() throws zzaeg {
        q(2);
        return this.f30382a.x();
    }

    public final void I(zzafc zzafcVar, zzafp zzafpVar, zzadf zzadfVar) throws zzaeh {
        q(2);
        r(zzafcVar, zzafpVar, zzadfVar);
    }

    public final void J(zzafc zzafcVar, zzafp zzafpVar, zzadf zzadfVar) throws zzaeg {
        q(3);
        s(zzafcVar, zzafpVar, zzadfVar);
    }

    public final zzacr K() throws zzaeg {
        q(2);
        return this.f30382a.y();
    }

    public final int L() throws zzaeg {
        q(0);
        return this.f30382a.A();
    }

    public final int M() throws zzaeg {
        q(0);
        return this.f30382a.B();
    }

    public final int N() throws zzaeg {
        q(5);
        return this.f30382a.C();
    }

    public final long O() throws zzaeg {
        q(1);
        return this.f30382a.D();
    }

    public final int P() throws zzaeg {
        q(0);
        return this.f30382a.E();
    }

    public final long Q() throws zzaeg {
        q(0);
        return this.f30382a.F();
    }

    public final void R(zzaef zzaefVar) throws zzaeh {
        int iL;
        int i2 = this.f30383b & 7;
        zzacv zzacvVar = this.f30382a;
        if (i2 == 1) {
            do {
                zzaefVar.add(Double.valueOf(zzacvVar.o()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            this.d = iL;
            return;
        }
        if (i2 != 2) {
            r81.k();
            return;
        }
        int iA = zzacvVar.A();
        w(iA);
        int iE = zzacvVar.e() + iA;
        do {
            zzaefVar.add(Double.valueOf(zzacvVar.o()));
        } while (zzacvVar.e() < iE);
    }

    public final void S(zzaef zzaefVar) throws zzaeh {
        int iL;
        int i2 = this.f30383b & 7;
        zzacv zzacvVar = this.f30382a;
        if (i2 == 2) {
            int iA = zzacvVar.A();
            v(iA);
            int iE = zzacvVar.e() + iA;
            do {
                zzaefVar.add(Float.valueOf(zzacvVar.p()));
            } while (zzacvVar.e() < iE);
            return;
        }
        if (i2 != 5) {
            r81.k();
            return;
        }
        do {
            zzaefVar.add(Float.valueOf(zzacvVar.p()));
            if (zzacvVar.d()) {
                return;
            } else {
                iL = zzacvVar.l();
            }
        } while (iL == this.f30383b);
        this.d = iL;
    }

    public final void T(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzaeq;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzaeq zzaeqVar = (zzaeq) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iE = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaeqVar.h(zzacvVar.q());
                } while (zzacvVar.e() < iE);
                u(iE);
                return;
            }
            do {
                zzaeqVar.h(zzacvVar.q());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 0) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iE2 = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.q()));
                } while (zzacvVar.e() < iE2);
                u(iE2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.q()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void a(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzaeq;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzaeq zzaeqVar = (zzaeq) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iE = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaeqVar.h(zzacvVar.r());
                } while (zzacvVar.e() < iE);
                u(iE);
                return;
            }
            do {
                zzaeqVar.h(zzacvVar.r());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 0) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iE2 = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.r()));
                } while (zzacvVar.e() < iE2);
                u(iE2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.r()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void b(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzadv;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzadv zzadvVar = (zzadv) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iE = zzacvVar.e() + zzacvVar.A();
                do {
                    zzadvVar.h(zzacvVar.s());
                } while (zzacvVar.e() < iE);
                u(iE);
                return;
            }
            do {
                zzadvVar.h(zzacvVar.s());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 0) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iE2 = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.s()));
                } while (zzacvVar.e() < iE2);
                u(iE2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.s()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void c(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzaeq;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzaeq zzaeqVar = (zzaeq) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iA = zzacvVar.A();
                w(iA);
                int iE = zzacvVar.e() + iA;
                do {
                    zzaeqVar.h(zzacvVar.t());
                } while (zzacvVar.e() < iE);
                return;
            }
            do {
                zzaeqVar.h(zzacvVar.t());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 1) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iA2 = zzacvVar.A();
                w(iA2);
                int iE2 = zzacvVar.e() + iA2;
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.t()));
                } while (zzacvVar.e() < iE2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.t()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void d(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzadv;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzadv zzadvVar = (zzadv) zzaefVar;
            int i3 = i2 & 7;
            if (i3 == 2) {
                int iA = zzacvVar.A();
                v(iA);
                int iE = zzacvVar.e() + iA;
                do {
                    zzadvVar.h(zzacvVar.u());
                } while (zzacvVar.e() < iE);
                return;
            }
            if (i3 != 5) {
                r81.k();
                return;
            }
            do {
                zzadvVar.h(zzacvVar.u());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 == 2) {
                int iA2 = zzacvVar.A();
                v(iA2);
                int iE2 = zzacvVar.e() + iA2;
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.u()));
                } while (zzacvVar.e() < iE2);
                return;
            }
            if (i4 != 5) {
                r81.k();
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.u()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void e(zzaef zzaefVar) throws zzaeh {
        int iL;
        int i2 = this.f30383b & 7;
        zzacv zzacvVar = this.f30382a;
        if (i2 == 0) {
            do {
                zzaefVar.add(Boolean.valueOf(zzacvVar.v()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            this.d = iL;
            return;
        }
        if (i2 != 2) {
            r81.k();
            return;
        }
        int iE = zzacvVar.e() + zzacvVar.A();
        do {
            zzaefVar.add(Boolean.valueOf(zzacvVar.v()));
        } while (zzacvVar.e() < iE);
        u(iE);
    }

    public final void f(zzaef zzaefVar, boolean z) throws zzaeg {
        int iL;
        int iL2;
        if ((this.f30383b & 7) != 2) {
            r81.k();
            return;
        }
        boolean z2 = zzaefVar instanceof zzaen;
        zzacv zzacvVar = this.f30382a;
        if (z2 && !z) {
            zzaen zzaenVar = (zzaen) zzaefVar;
            do {
                K();
                zzaenVar.e0();
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            do {
                zzaefVar.add(z ? H() : G());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void g(zzaef zzaefVar, zzafp zzafpVar, zzadf zzadfVar) throws zzaeh {
        int iL;
        int i2 = this.f30383b;
        if ((i2 & 7) != 2) {
            r81.k();
            return;
        }
        do {
            Object objD0 = zzafpVar.d0();
            r(objD0, zzafpVar, zzadfVar);
            zzafpVar.g(objD0);
            zzaefVar.add(objD0);
            zzacv zzacvVar = this.f30382a;
            if (zzacvVar.d() || this.d != 0) {
                return;
            } else {
                iL = zzacvVar.l();
            }
        } while (iL == i2);
        this.d = iL;
    }

    public final void h(zzaef zzaefVar, zzafp zzafpVar, zzadf zzadfVar) throws zzaeg {
        int iL;
        int i2 = this.f30383b;
        if ((i2 & 7) != 3) {
            r81.k();
            return;
        }
        do {
            Object objD0 = zzafpVar.d0();
            s(objD0, zzafpVar, zzadfVar);
            zzafpVar.g(objD0);
            zzaefVar.add(objD0);
            zzacv zzacvVar = this.f30382a;
            if (zzacvVar.d() || this.d != 0) {
                return;
            } else {
                iL = zzacvVar.l();
            }
        } while (iL == i2);
        this.d = iL;
    }

    public final void i(zzaef zzaefVar) throws zzaeg {
        int iL;
        if ((this.f30383b & 7) != 2) {
            r81.k();
            return;
        }
        do {
            zzaefVar.add(K());
            zzacv zzacvVar = this.f30382a;
            if (zzacvVar.d()) {
                return;
            } else {
                iL = zzacvVar.l();
            }
        } while (iL == this.f30383b);
        this.d = iL;
    }

    public final void j(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzadv;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzadv zzadvVar = (zzadv) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iE = zzacvVar.e() + zzacvVar.A();
                do {
                    zzadvVar.h(zzacvVar.A());
                } while (zzacvVar.e() < iE);
                u(iE);
                return;
            }
            do {
                zzadvVar.h(zzacvVar.A());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 0) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iE2 = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.A()));
                } while (zzacvVar.e() < iE2);
                u(iE2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.A()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void k(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzadv;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzadv zzadvVar = (zzadv) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iE = zzacvVar.e() + zzacvVar.A();
                do {
                    zzadvVar.h(zzacvVar.B());
                } while (zzacvVar.e() < iE);
                u(iE);
                return;
            }
            do {
                zzadvVar.h(zzacvVar.B());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 0) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iE2 = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.B()));
                } while (zzacvVar.e() < iE2);
                u(iE2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.B()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void l(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzadv;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzadv zzadvVar = (zzadv) zzaefVar;
            int i3 = i2 & 7;
            if (i3 == 2) {
                int iA = zzacvVar.A();
                v(iA);
                int iE = zzacvVar.e() + iA;
                do {
                    zzadvVar.h(zzacvVar.C());
                } while (zzacvVar.e() < iE);
                return;
            }
            if (i3 != 5) {
                r81.k();
                return;
            }
            do {
                zzadvVar.h(zzacvVar.C());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 == 2) {
                int iA2 = zzacvVar.A();
                v(iA2);
                int iE2 = zzacvVar.e() + iA2;
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.C()));
                } while (zzacvVar.e() < iE2);
                return;
            }
            if (i4 != 5) {
                r81.k();
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.C()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void m(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzaeq;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzaeq zzaeqVar = (zzaeq) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 1) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iA = zzacvVar.A();
                w(iA);
                int iE = zzacvVar.e() + iA;
                do {
                    zzaeqVar.h(zzacvVar.D());
                } while (zzacvVar.e() < iE);
                return;
            }
            do {
                zzaeqVar.h(zzacvVar.D());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 1) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iA2 = zzacvVar.A();
                w(iA2);
                int iE2 = zzacvVar.e() + iA2;
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.D()));
                } while (zzacvVar.e() < iE2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.D()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void n(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzadv;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzadv zzadvVar = (zzadv) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iE = zzacvVar.e() + zzacvVar.A();
                do {
                    zzadvVar.h(zzacvVar.E());
                } while (zzacvVar.e() < iE);
                u(iE);
                return;
            }
            do {
                zzadvVar.h(zzacvVar.E());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 0) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iE2 = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaefVar.add(Integer.valueOf(zzacvVar.E()));
                } while (zzacvVar.e() < iE2);
                u(iE2);
                return;
            }
            do {
                zzaefVar.add(Integer.valueOf(zzacvVar.E()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void o(zzaef zzaefVar) throws zzaeh {
        int iL;
        int iL2;
        boolean z = zzaefVar instanceof zzaeq;
        int i2 = this.f30383b;
        zzacv zzacvVar = this.f30382a;
        if (z) {
            zzaeq zzaeqVar = (zzaeq) zzaefVar;
            int i3 = i2 & 7;
            if (i3 != 0) {
                if (i3 != 2) {
                    r81.k();
                    return;
                }
                int iE = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaeqVar.h(zzacvVar.F());
                } while (zzacvVar.e() < iE);
                u(iE);
                return;
            }
            do {
                zzaeqVar.h(zzacvVar.F());
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL2 = zzacvVar.l();
                }
            } while (iL2 == this.f30383b);
        } else {
            int i4 = i2 & 7;
            if (i4 != 0) {
                if (i4 != 2) {
                    r81.k();
                    return;
                }
                int iE2 = zzacvVar.e() + zzacvVar.A();
                do {
                    zzaefVar.add(Long.valueOf(zzacvVar.F()));
                } while (zzacvVar.e() < iE2);
                u(iE2);
                return;
            }
            do {
                zzaefVar.add(Long.valueOf(zzacvVar.F()));
                if (zzacvVar.d()) {
                    return;
                } else {
                    iL = zzacvVar.l();
                }
            } while (iL == this.f30383b);
            iL2 = iL;
        }
        this.d = iL2;
    }

    public final void p(zzaew zzaewVar, zzaeu zzaeuVar, zzadf zzadfVar) throws zzaeg {
        int i2;
        int i3;
        q(2);
        zzacv zzacvVar = this.f30382a;
        int iA = zzacvVar.a(zzacvVar.A());
        Object obj = zzaeuVar.f30428c;
        Object objT = "";
        Object objT2 = obj;
        while (true) {
            try {
                int iX = x();
                if (iX == Integer.MAX_VALUE || zzacvVar.d()) {
                    break;
                }
                boolean zN = false;
                if (iX == 1) {
                    objT = t(zzaeuVar.f30426a, null, null);
                } else if (iX != 2) {
                    try {
                        if (!((zzacvVar.d() || (i3 = this.f30383b) == this.f30384c) ? false : zzacvVar.n(i3))) {
                            throw new zzaeh("Unable to parse map entry.");
                        }
                    } catch (zzaeg e2) {
                        if (!zzacvVar.d() && (i2 = this.f30383b) != this.f30384c) {
                            zN = zzacvVar.n(i2);
                        }
                        if (!zN) {
                            throw new zzaeh("Unable to parse map entry.", e2);
                        }
                    }
                } else {
                    objT2 = t(zzaeuVar.f30427b, obj.getClass(), zzadfVar);
                }
            } catch (Throwable th) {
                zzacvVar.b(iA);
                throw th;
            }
        }
        zzaewVar.put(objT, objT2);
        zzacvVar.b(iA);
    }

    public final void q(int i2) throws zzaeg {
        if ((this.f30383b & 7) == i2) {
            return;
        }
        r81.k();
    }

    public final void r(Object obj, zzafp zzafpVar, zzadf zzadfVar) throws zzaeh {
        zzacv zzacvVar = this.f30382a;
        int iA = zzacvVar.A();
        if (zzacvVar.f30379a + zzacvVar.f30380b >= 100) {
            n91.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return;
        }
        int iA2 = zzacvVar.a(iA);
        zzacvVar.f30379a++;
        zzafpVar.i(obj, this, zzadfVar);
        zzacvVar.m(0);
        zzacvVar.f30379a--;
        zzacvVar.b(iA2);
    }

    public final void s(Object obj, zzafp zzafpVar, zzadf zzadfVar) {
        int i2 = this.f30384c;
        this.f30384c = ((this.f30383b >>> 3) << 3) | 4;
        try {
            zzafpVar.i(obj, this, zzadfVar);
            if (this.f30383b != this.f30384c) {
                throw new zzaeh("Failed to parse the message.");
            }
            this.f30384c = i2;
        } catch (Throwable th) {
            this.f30384c = i2;
            throw th;
        }
    }

    public final Object t(zzagm zzagmVar, Class cls, zzadf zzadfVar) throws zzaeh {
        zzagm zzagmVar2 = zzagm.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                return Double.valueOf(y());
            case 1:
                return Float.valueOf(z());
            case 2:
                return Long.valueOf(B());
            case 3:
                return Long.valueOf(A());
            case 4:
                return Integer.valueOf(C());
            case 5:
                return Long.valueOf(D());
            case 6:
                return Integer.valueOf(E());
            case 7:
                return Boolean.valueOf(F());
            case 8:
                return H();
            case 9:
            default:
                md.n("unsupported field type.");
                return null;
            case 10:
                q(2);
                zzafp zzafpVarA = zzafl.f30448c.a(cls);
                Object objD0 = zzafpVarA.d0();
                r(objD0, zzafpVarA, zzadfVar);
                zzafpVarA.g(objD0);
                return objD0;
            case 11:
                return K();
            case 12:
                return Integer.valueOf(L());
            case 13:
                return Integer.valueOf(M());
            case 14:
                return Integer.valueOf(N());
            case 15:
                return Long.valueOf(O());
            case 16:
                return Integer.valueOf(P());
            case 17:
                return Long.valueOf(Q());
        }
    }

    public final void u(int i2) throws zzaeh {
        if (this.f30382a.e() == i2) {
            return;
        }
        n91.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final int x() {
        int iL = this.d;
        if (iL != 0) {
            this.f30383b = iL;
            this.d = 0;
        } else {
            iL = this.f30382a.l();
            this.f30383b = iL;
        }
        if (iL == 0 || iL == this.f30384c) {
            return Integer.MAX_VALUE;
        }
        return iL >>> 3;
    }

    public final double y() throws zzaeg {
        q(1);
        return this.f30382a.o();
    }

    public final float z() throws zzaeg {
        q(5);
        return this.f30382a.p();
    }
}
