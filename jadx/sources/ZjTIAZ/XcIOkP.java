package ZjTIAZ;

/* JADX INFO: loaded from: classes.dex */
public class XcIOkP {
    public static final XcIOkP d = new XcIOkP();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public GznHzJ f316a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f317b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f318c = new Object();

    public interface GznHzJ {
        void a(float f2);
    }

    /* JADX INFO: renamed from: ZjTIAZ.XcIOkP$XcIOkP, reason: collision with other inner class name */
    class C0007XcIOkP implements AcVtYN.eTLkQn {
        public C0007XcIOkP() {
        }

        public final void a() {
            try {
                XcIOkP xcIOkP = XcIOkP.d;
                throw null;
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
        }

        public final void b(float f2) {
            try {
                XcIOkP xcIOkP = XcIOkP.this;
                xcIOkP.f317b = f2;
                GznHzJ gznHzJ = xcIOkP.f316a;
                if (gznHzJ != null) {
                    gznHzJ.a(f2);
                }
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
        }
    }

    public final void a(GznHzJ gznHzJ) {
        this.f316a = gznHzJ;
        try {
            C0007XcIOkP c0007XcIOkP = new C0007XcIOkP();
            AcVtYN acVtYN = AcVtYN.I;
            acVtYN.getClass();
            try {
                acVtYN.D = c0007XcIOkP;
                int i2 = acVtYN.f137b;
                if (i2 != 1 && i2 != 3) {
                    acVtYN.F = "";
                    acVtYN.g(1, 100L);
                }
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
            GznHzJ gznHzJ2 = this.f316a;
            if (gznHzJ2 != null) {
                gznHzJ2.a(this.f317b);
            }
        } catch (Exception e3) {
            GWINqE.b(e3);
        }
    }
}
