package androidx.core.view.insets;

import android.graphics.RectF;
import androidx.core.graphics.Insets;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class ProtectionGroup implements SystemBarStateMonitor.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f12299a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SystemBarStateMonitor f12300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Insets f12301c;
    public Insets d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f12303f;

    public ProtectionGroup(SystemBarStateMonitor systemBarStateMonitor, ArrayList arrayList) {
        Insets insets = Insets.f12053e;
        this.f12301c = insets;
        this.d = insets;
        f(arrayList, false);
        f(arrayList, true);
        ArrayList arrayList2 = systemBarStateMonitor.f12309b;
        if (!arrayList2.contains(this)) {
            arrayList2.add(this);
            d(systemBarStateMonitor.f12310c, systemBarStateMonitor.d);
            e(systemBarStateMonitor.f12311e);
        }
        this.f12300b = systemBarStateMonitor;
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public final void a() {
        int i2 = this.f12302e;
        boolean z = i2 > 0;
        int i3 = i2 - 1;
        this.f12302e = i3;
        if (z && i3 == 0) {
            g();
        }
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public final void b(int i2, Insets insets, RectF rectF) {
        Insets insets2 = this.d;
        ArrayList arrayList = this.f12299a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Protection protection = (Protection) arrayList.get(size);
            int i3 = protection.f12288a;
            if ((i3 & i2) != 0) {
                Protection.Attributes attributes = protection.f12289b;
                if (!attributes.d) {
                    attributes.d = true;
                    Protection.Attributes.Callback callback = attributes.f12298i;
                    if (callback != null) {
                        callback.c(true);
                    }
                }
                if (i3 == 1) {
                    int i4 = insets2.f12054a;
                    if (i4 > 0) {
                        protection.c(insets.f12054a / i4);
                    }
                    protection.b(rectF.left);
                } else if (i3 == 2) {
                    int i5 = insets2.f12055b;
                    if (i5 > 0) {
                        protection.c(insets.f12055b / i5);
                    }
                    protection.b(rectF.top);
                } else if (i3 == 4) {
                    int i6 = insets2.f12056c;
                    if (i6 > 0) {
                        protection.c(insets.f12056c / i6);
                    }
                    protection.b(rectF.right);
                } else if (i3 == 8) {
                    int i7 = insets2.d;
                    if (i7 > 0) {
                        protection.c(insets.d / i7);
                    }
                    protection.b(rectF.bottom);
                }
            }
        }
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public final void c() {
        this.f12302e++;
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public final void d(Insets insets, Insets insets2) {
        this.f12301c = insets;
        this.d = insets2;
        g();
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public final void e(int i2) {
        ArrayList arrayList = this.f12299a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Protection) arrayList.get(size)).a(i2);
        }
    }

    public final void f(List list, boolean z) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Protection protection = (Protection) list.get(i2);
            protection.getClass();
            if ((protection instanceof ColorProtection) == z) {
                Object obj = protection.f12291e;
                if (obj != null) {
                    throw new IllegalStateException(protection + " (" + (i2 + 1) + "/" + size + ") is already controlled by " + obj + " but is still added to " + this);
                }
                protection.f12291e = this;
                this.f12299a.add(protection);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005f A[PHI: r7
      0x005f: PHI (r7v6 int) = (r7v5 int), (r7v9 int), (r7v11 int), (r7v13 int) binds: [B:49:0x00b4, B:41:0x0096, B:33:0x0078, B:24:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    public final void g() {
        int i2;
        Insets insetsC;
        ArrayList arrayList = this.f12299a;
        Insets insets = Insets.f12053e;
        Insets insetsA = insets;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Protection protection = (Protection) arrayList.get(size);
            Insets insets2 = this.f12301c;
            Insets insets3 = this.d;
            protection.f12290c = insets2;
            Protection.Attributes attributes = protection.f12289b;
            protection.d = insets3;
            if (!attributes.f12294c.equals(insetsA)) {
                attributes.f12294c = insetsA;
                Protection.Attributes.Callback callback = attributes.f12298i;
                if (callback != null) {
                    callback.d(insetsA);
                }
            }
            int i3 = protection.f12288a;
            if (i3 == 1) {
                i2 = protection.f12290c.f12054a;
                int i4 = protection.d.f12054a;
                if (attributes.f12292a != i4) {
                    attributes.f12292a = i4;
                    Protection.Attributes.Callback callback2 = attributes.f12298i;
                    if (callback2 != null) {
                        callback2.f(i4);
                    }
                }
                if (protection instanceof ColorProtection) {
                    insetsC = Insets.c(i2, 0, 0, 0);
                } else {
                    insetsC = insets;
                }
            } else if (i3 == 2) {
                i2 = protection.f12290c.f12055b;
                int i5 = protection.d.f12055b;
                if (attributes.f12293b != i5) {
                    attributes.f12293b = i5;
                    Protection.Attributes.Callback callback3 = attributes.f12298i;
                    if (callback3 != null) {
                        callback3.b(i5);
                    }
                }
                if (protection instanceof ColorProtection) {
                    insetsC = Insets.c(0, i2, 0, 0);
                } else {
                    insetsC = insets;
                }
            } else if (i3 == 4) {
                i2 = protection.f12290c.f12056c;
                int i6 = protection.d.f12056c;
                if (attributes.f12292a != i6) {
                    attributes.f12292a = i6;
                    Protection.Attributes.Callback callback4 = attributes.f12298i;
                    if (callback4 != null) {
                        callback4.f(i6);
                    }
                }
                if (protection instanceof ColorProtection) {
                    insetsC = Insets.c(0, 0, i2, 0);
                } else {
                    insetsC = insets;
                }
            } else if (i3 != 8) {
                insetsC = insets;
                i2 = 0;
            } else {
                i2 = protection.f12290c.d;
                int i7 = protection.d.d;
                if (attributes.f12293b != i7) {
                    attributes.f12293b = i7;
                    Protection.Attributes.Callback callback5 = attributes.f12298i;
                    if (callback5 != null) {
                        callback5.b(i7);
                    }
                }
                if (protection instanceof ColorProtection) {
                    insetsC = Insets.c(0, 0, 0, i2);
                } else {
                    insetsC = insets;
                }
            }
            boolean z = i2 > 0;
            if (attributes.d != z) {
                attributes.d = z;
                Protection.Attributes.Callback callback6 = attributes.f12298i;
                if (callback6 != null) {
                    callback6.c(z);
                }
            }
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            protection.b(i2 > 0 ? 1.0f : 0.0f);
            if (i2 > 0) {
                f2 = 1.0f;
            }
            protection.c(f2);
            insetsA = Insets.a(insetsA, insetsC);
        }
    }
}
