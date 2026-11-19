package androidx.fragment.app;

import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import defpackage.az;
import defpackage.b21;
import defpackage.d21;
import defpackage.lc0;
import defpackage.md;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentTransaction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13330c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13332f;
    public boolean g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f13334i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13335j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f13336k;
    public int l;
    public CharSequence m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f13328a = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f13333h = true;
    public boolean p = false;

    @Deprecated
    public FragmentTransaction() {
    }

    public final void b(DialogFragment dialogFragment, String str) {
        i(0, dialogFragment, str, 1);
    }

    public final void c(Op op) {
        this.f13328a.add(op);
        op.d = this.f13329b;
        op.f13340e = this.f13330c;
        op.f13341f = this.d;
        op.g = this.f13331e;
    }

    public final void d(String str) {
        if (!this.f13333h) {
            md.k("This FragmentTransaction is not allowed to be added to the back stack.");
        } else {
            this.g = true;
            this.f13334i = str;
        }
    }

    public abstract int e();

    public abstract int f();

    public abstract void g();

    public abstract void h();

    public void i(int i2, Fragment fragment, String str, int i3) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            FragmentStrictMode.d(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            lc0.w("Fragment ", cls.getCanonicalName(), " must be a public static class to be  properly recreated from instance state.");
            return;
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                sb.append(fragment);
                sb.append(": was ");
                md.k(d21.p(sb, fragment.mTag, " now ", str));
                return;
            }
            fragment.mTag = str;
        }
        if (i2 != 0) {
            if (i2 == -1) {
                b21.o(fragment, " with tag ", str, " to container view with no id", "Can't add fragment ");
                return;
            }
            int i4 = fragment.mFragmentId;
            if (i4 != 0 && i4 != i2) {
                StringBuilder sb2 = new StringBuilder("Can't change container ID of fragment ");
                sb2.append(fragment);
                az.t(sb2, ": was ", fragment.mFragmentId, " now ", i2);
                return;
            }
            fragment.mFragmentId = i2;
            fragment.mContainerId = i2;
        }
        c(new Op(fragment, i3));
    }

    public void j(Fragment fragment) {
        c(new Op(fragment, 4));
    }

    public abstract boolean k();

    public void l(Fragment fragment) {
        c(new Op(fragment, 3));
    }

    public final void m(int i2, Fragment fragment, String str) {
        if (i2 != 0) {
            i(i2, fragment, str, 2);
        } else {
            md.n("Must use non-zero containerViewId");
        }
    }

    public final void n(int i2, int i3, int i4, int i5) {
        this.f13329b = i2;
        this.f13330c = i3;
        this.d = i4;
        this.f13331e = i5;
    }

    public void o(Fragment fragment, Lifecycle.State state) {
        Op op = new Op();
        op.f13337a = 10;
        op.f13338b = fragment;
        op.f13339c = false;
        op.f13342h = fragment.mMaxState;
        op.f13343i = state;
        c(op);
    }

    public void p(Fragment fragment) {
        c(new Op(fragment, 8));
    }

    public void q(Fragment fragment) {
        c(new Op(fragment, 5));
    }

    public static final class Op {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f13337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Fragment f13338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13339c = true;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f13340e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f13341f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Lifecycle.State f13342h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Lifecycle.State f13343i;

        public Op(Fragment fragment, int i2) {
            this.f13337a = i2;
            this.f13338b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f13342h = state;
            this.f13343i = state;
        }

        public Op(int i2, Fragment fragment, int i3) {
            this.f13337a = i2;
            this.f13338b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f13342h = state;
            this.f13343i = state;
        }
    }

    public FragmentTransaction(int i2) {
    }
}
