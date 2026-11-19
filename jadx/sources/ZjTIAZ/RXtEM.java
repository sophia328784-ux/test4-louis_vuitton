package ZjTIAZ;

import android.content.Context;
import android.content.SharedPreferences;
import com.linkplay.medialib.ContentTree;
import defpackage.pq0;
import java.util.concurrent.atomic.AtomicReference;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public class RXtEM {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f244h = 1967;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f245i = 6632;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final RXtEM f246j = new RXtEM();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Context f247a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f248b = new AtomicReference();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f249c = new AtomicReference();
    public final AtomicReference d = new AtomicReference();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReference f250e = new AtomicReference();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReference f251f = new AtomicReference();
    public final AtomicReference g = new AtomicReference();

    public static String d(String str) {
        int i2;
        int i3;
        if (str != null) {
            return str;
        }
        if ((f245i ^ 6632) == 0) {
            return "";
        }
        while (true) {
            int i4 = f245i;
            int i5 = i4 + 26;
            if (i5 == 92) {
                if ((f244h ^ 1967) != 0) {
                    while (true) {
                        int i6 = f244h;
                        int i7 = i6 + 78;
                        if (i7 == 17) {
                            f244h = ((i6 ^ 3159) % 93) % 17;
                            break;
                        }
                        if (i7 == 97) {
                            while (true) {
                                f244h ^= 6212;
                            }
                        }
                    }
                }
                f245i = (i4 * 756) + i4;
                if ((f244h ^ 1967) != 0) {
                    do {
                        i3 = f244h;
                    } while (i3 + 39 != 55);
                    f244h = pq0.D(i3, i3, i3, i3);
                }
            } else if (i5 == 142) {
                while (true) {
                    int i8 = f245i ^ 4056;
                    if ((f244h ^ 1967) != 0) {
                        break;
                    }
                    f245i = (i8 % 30) >> 17;
                }
                while (true) {
                    int i9 = f244h;
                    int i10 = i9 + 91;
                    if (i10 == 6) {
                        i2 = (i9 + i9) % 87;
                    } else if (i10 == 175) {
                        i2 = i9 >> 107;
                    } else if (i10 == 178) {
                        f244h = (i9 >> 19) + i9;
                    } else if (i10 == 330) {
                        break;
                    }
                    f244h = i2 + i9;
                    break;
                }
                while (true) {
                    f244h = ((f244h * 29) >> 14) ^ 4070;
                }
            }
        }
    }

    public static RXtEM i() {
        return f246j;
    }

    /* JADX INFO: Infinite loop detected, blocks: 21, insns: 0 */
    /* JADX WARN: Code duplicated, block: B:112:? A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x00d6 -> B:61:0x00c4). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x00e1 -> B:61:0x00c4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:64:0x00d8
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.String a() {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ZjTIAZ.RXtEM.a():java.lang.String");
    }

    public final synchronized void b() {
        try {
            try {
                SharedPreferences sharedPreferencesC = c();
                if (sharedPreferencesC == null) {
                    return;
                }
                SharedPreferences.Editor editorEdit = sharedPreferencesC.edit();
                editorEdit.putString(CNATAC.a("}@{@\\@pDpET"), (String) this.f248b.get());
                editorEdit.putString(CNATAC.a("}VJ@ZUAA}"), (String) this.f249c.get());
                String str = (String) this.d.get();
                if (str != null && !str.isEmpty() && !ContentTree.ROOT_ID.equals(str)) {
                    editorEdit.putString(CNATAC.a("mUglG]DE\u007f"), str);
                }
                String str2 = (String) this.f250e.get();
                if (str2 != null && !str2.isEmpty() && !ContentTree.ROOT_ID.equals(str2)) {
                    editorEdit.putString(CNATAC.a("mUgl@[HNp]"), str2);
                }
                String str3 = (String) this.f251f.get();
                if (str3 != null && !str3.isEmpty()) {
                    editorEdit.putString(CNATAC.a("zRclV\\LRhAAYQiGYPFDMI"), str3);
                }
                String str4 = (String) this.g.get();
                if (str4 != null && !str4.isEmpty() && !ContentTree.ROOT_ID.equals(str4) && !CNATAC.a("#\u0014").equals(str4)) {
                    editorEdit.putString(CNATAC.a("j@cZPWpIu"), str4);
                }
                editorEdit.apply();
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("}DcVwS[A1TM_PFCQFD"), e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final SharedPreferences c() {
        try {
            if (this.f247a != null) {
                return this.f247a.getSharedPreferences(CNATAC.a("mJx\u001dRYNMpX\u001b^ZBZYG\u0004[^HHJBDL@AV"), 0);
            }
            GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("]MtAVV\u007fRtWPNPXT]Z\nJONK\\C\u0001DBMICC\u0012\u0018Ytri{gT\u0010{`4{c{t"), new Throwable[0]);
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final String e() {
        String str = (String) this.g.get();
        return (str == null || str.isEmpty() || CNATAC.a("#\u0014").equals(str)) ? ContentTree.ROOT_ID : str;
    }

    public final String f() {
        String str = (String) this.f250e.get();
        return (str == null || str.isEmpty()) ? ContentTree.ROOT_ID : str;
    }

    public final String g() {
        String str = (String) this.d.get();
        return (str == null || str.isEmpty()) ? ContentTree.ROOT_ID : str;
    }

    public final String h() {
        try {
            AtomicReference atomicReference = this.f248b;
            String str = atomicReference.get() != null ? (String) atomicReference.get() : "";
            if (str != null && !str.isEmpty()) {
                String strD = d(DQwsTh.A.h());
                String strD2 = d(AcVtYN.I.p());
                AtomicReference atomicReference2 = this.f249c;
                return str + "$" + strD + "$" + strD2 + "$" + (atomicReference2.get() != null ? (String) atomicReference2.get() : "") + "$" + a();
            }
            return CNATAC.a("j@sRF^[\r|^WUYS");
        } catch (Exception e2) {
            GWINqE.b(e2);
            return CNATAC.a("j@sRF^[\r|^WUYS");
        }
    }

    public final synchronized String j() {
        try {
            SharedPreferences sharedPreferencesC = c();
            if (sharedPreferencesC == null) {
                return "";
            }
            String string = sharedPreferencesC.getString(CNATAC.a("}VJ[RAG"), null);
            if (string == null) {
                string = "";
            }
            return string;
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("i@a\u007fRA[sByTO]\u0016R@JO[XDAA"), e2);
            return "";
        }
        throw th;
    }

    public final String k() {
        String str = (String) this.f251f.get();
        return (str == null || str.isEmpty()) ? "" : str;
    }

    public final void l(String str, String str2, String str3, String str4) {
        try {
            this.f248b.set(str);
            this.f249c.set(str2);
            boolean z = (str3 == null || str3.isEmpty() || ContentTree.ROOT_ID.equals(str3)) ? false : true;
            boolean z2 = (str4 == null || str4.isEmpty() || ContentTree.ROOT_ID.equals(str4)) ? false : true;
            if (z && z2) {
                this.d.set(str3);
                this.f250e.set(str4);
            } else {
                GpYFMu.c(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("~Pa\u001b\u001a\b\u000fPcTFYG@^VN\nNTD][YOE\u0003gut\u0007KYysy=6qEG2wuaw7qg|j`dj50umhakPfdp^\u0001") + z + CNATAC.a("\"\u0005vUZ{AF~gTP\\R\n") + z2 + ")", new Throwable[0]);
            }
            b();
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("~Pa\u0013VJLEaE\\S["), e2);
        }
    }

    public final synchronized void m(String str) {
        try {
            SharedPreferences sharedPreferencesC = c();
            if (sharedPreferencesC == null) {
            } else {
                sharedPreferencesC.edit().putString(CNATAC.a("}VJ[RAG"), str).apply();
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("}DcV`agAbY\u0015YMURH]CDB"), e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    public final synchronized void n(String str, String str2) {
        boolean z;
        try {
            if (str != null) {
                try {
                    if (str.isEmpty() || ContentTree.ROOT_ID.equals(str)) {
                        z = false;
                    } else {
                        z = true;
                    }
                } catch (Exception e2) {
                    GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("{UqRGWlPcaTUG\u0016R@JO[XDAA"), e2);
                }
            } else {
                z = false;
            }
            boolean z2 = (str2 == null || str2.isEmpty() || ContentTree.ROOT_ID.equals(str2)) ? false : true;
            if (z && z2) {
                this.d.set(str);
                this.f250e.set(str2);
                SharedPreferences sharedPreferencesC = c();
                if (sharedPreferencesC == null) {
                    return;
                }
                sharedPreferencesC.edit().putString(CNATAC.a("mUglG]DE\u007f"), (String) this.d.get()).putString(CNATAC.a("mUgl@[HNp]"), (String) this.f250e.get()).apply();
                return;
            }
            GpYFMu.c(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("{UqRGWlPcaTUG\u0016DS@Z[II\u0014\u000fYOTBHLB\u0007LYnz<5jpKU|Euy\u007fs%") + z + CNATAC.a("\"\u0005vUZ{AF~gTP\\R\n") + z2 + ")", new Throwable[0]);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void o(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty() && !ContentTree.ROOT_ID.equals(str) && !CNATAC.a("#\u0014").equals(str)) {
                    this.g.set(str);
                    SharedPreferences sharedPreferencesC = c();
                    if (sharedPreferencesC == null) {
                    } else {
                        sharedPreferencesC.edit().putString(CNATAC.a("j@cZPWpIu"), str).apply();
                    }
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("{UqRGWkEgXVY|R\u0017]QIN\\YG@^"), e2);
            }
        }
    }

    public final synchronized void p(String str) {
        try {
            if (str.isEmpty()) {
                return;
            }
            this.f251f.set(str);
            SharedPreferences sharedPreferencesC = c();
            if (sharedPreferencesC == null) {
            } else {
                sharedPreferencesC.edit().putString(CNATAC.a("zRclV\\LRhAAYQiGYPFDMI"), str).apply();
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("{UqRGW{Wgt[_GOGLLN{MTB@QE\u0002F\\FCW\\Quu"), e2);
        }
    }
}
