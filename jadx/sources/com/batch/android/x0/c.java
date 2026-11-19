package com.batch.android.x0;

import com.batch.android.z0.z;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'c' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static final c A;
    public static final c B;
    public static final c C;
    public static final c D;
    public static final c E;
    public static final c F;
    public static final c G;
    public static final c H;
    public static final c I;
    public static final c J;
    public static final c K;
    public static final c L;
    private static final c[] M;
    private static final /* synthetic */ c[] N;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f24161c;
    public static final c d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f24162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c f24163f;
    public static final c g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c f24164h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c f24165i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c f24166j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final c f24167k;
    public static final c l;
    public static final c m;
    public static final c n;
    public static final c o;
    public static final c p;
    public static final c q;
    public static final c r;
    public static final c s;
    public static final c t;
    public static final c u;
    public static final c v;
    public static final c w;
    public static final c x;
    public static final c y;
    public static final c z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z f24168b;

    static {
        z zVar = z.INTEGER;
        f24161c = new c("POSFIXINT", 0, zVar);
        z zVar2 = z.MAP;
        d = new c("FIXMAP", 1, zVar2);
        z zVar3 = z.ARRAY;
        f24162e = new c("FIXARRAY", 2, zVar3);
        z zVar4 = z.STRING;
        f24163f = new c("FIXSTR", 3, zVar4);
        g = new c("NIL", 4, z.NIL);
        f24164h = new c("NEVER_USED", 5, null);
        f24165i = new c("BOOLEAN", 6, z.BOOLEAN);
        z zVar5 = z.BINARY;
        f24166j = new c("BIN8", 7, zVar5);
        f24167k = new c("BIN16", 8, zVar5);
        l = new c("BIN32", 9, zVar5);
        z zVar6 = z.EXTENSION;
        m = new c("EXT8", 10, zVar6);
        n = new c("EXT16", 11, zVar6);
        o = new c("EXT32", 12, zVar6);
        z zVar7 = z.FLOAT;
        p = new c("FLOAT32", 13, zVar7);
        q = new c("FLOAT64", 14, zVar7);
        r = new c("UINT8", 15, zVar);
        s = new c("UINT16", 16, zVar);
        t = new c("UINT32", 17, zVar);
        u = new c("UINT64", 18, zVar);
        v = new c("INT8", 19, zVar);
        w = new c("INT16", 20, zVar);
        x = new c("INT32", 21, zVar);
        y = new c("INT64", 22, zVar);
        z = new c("FIXEXT1", 23, zVar6);
        A = new c("FIXEXT2", 24, zVar6);
        B = new c("FIXEXT4", 25, zVar6);
        C = new c("FIXEXT8", 26, zVar6);
        D = new c("FIXEXT16", 27, zVar6);
        E = new c("STR8", 28, zVar4);
        F = new c("STR16", 29, zVar4);
        G = new c("STR32", 30, zVar4);
        H = new c("ARRAY16", 31, zVar3);
        I = new c("ARRAY32", 32, zVar3);
        J = new c("MAP16", 33, zVar2);
        K = new c("MAP32", 34, zVar2);
        L = new c("NEGFIXINT", 35, zVar);
        N = a();
        M = new c[256];
        for (int i2 = 0; i2 <= 255; i2++) {
            M[i2] = a((byte) i2);
        }
    }

    private c(String str, int i2, z zVar) {
        super(str, i2);
        this.f24168b = zVar;
    }

    public static c a(byte b2) {
        if (h.a.g(b2)) {
            return f24161c;
        }
        if (h.a.f(b2)) {
            return L;
        }
        if (h.a.b(b2)) {
            return f24163f;
        }
        if (h.a.c(b2)) {
            return f24162e;
        }
        if (h.a.d(b2)) {
            return d;
        }
        switch (b2) {
            case -64:
                return g;
            case -63:
            default:
                return f24164h;
            case -62:
            case -61:
                return f24165i;
            case -60:
                return f24166j;
            case -59:
                return f24167k;
            case -58:
                return l;
            case -57:
                return m;
            case -56:
                return n;
            case -55:
                return o;
            case -54:
                return p;
            case -53:
                return q;
            case -52:
                return r;
            case -51:
                return s;
            case -50:
                return t;
            case -49:
                return u;
            case -48:
                return v;
            case -47:
                return w;
            case -46:
                return x;
            case -45:
                return y;
            case -44:
                return z;
            case -43:
                return A;
            case -42:
                return B;
            case -41:
                return C;
            case -40:
                return D;
            case -39:
                return E;
            case -38:
                return F;
            case -37:
                return G;
            case -36:
                return H;
            case -35:
                return I;
            case -34:
                return J;
            case -33:
                return K;
        }
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) N.clone();
    }

    public z b() throws d {
        if (this != f24164h) {
            return this.f24168b;
        }
        throw new d("Cannot convert NEVER_USED to ValueType");
    }

    public static c b(byte b2) {
        return M[b2 & 255];
    }

    private static /* synthetic */ c[] a() {
        return new c[]{f24161c, d, f24162e, f24163f, g, f24164h, f24165i, f24166j, f24167k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L};
    }
}
