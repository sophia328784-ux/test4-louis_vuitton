package androidx.constraintlayout.core;

import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class SolverVariable implements Comparable<SolverVariable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f11314c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11316f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11317h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f11318i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f11319j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Type f11320k;
    public ArrayRow[] l;
    public int m;
    public int n;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type CONSTANT;
        public static final Type ERROR;
        public static final Type SLACK;
        public static final Type UNKNOWN;
        public static final Type UNRESTRICTED;

        static {
            Type type = new Type("UNRESTRICTED", 0);
            UNRESTRICTED = type;
            Type type2 = new Type("CONSTANT", 1);
            CONSTANT = type2;
            Type type3 = new Type("SLACK", 2);
            SLACK = type3;
            Type type4 = new Type("ERROR", 3);
            ERROR = type4;
            Type type5 = new Type("UNKNOWN", 4);
            UNKNOWN = type5;
            $VALUES = new Type[]{type, type2, type3, type4, type5};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public SolverVariable(String str, Type type) {
        this.d = -1;
        this.f11315e = -1;
        this.f11316f = 0;
        this.f11317h = false;
        this.f11318i = new float[9];
        this.f11319j = new float[9];
        this.l = new ArrayRow[16];
        this.m = 0;
        this.n = 0;
        this.f11314c = str;
        this.f11320k = type;
    }

    public final void a(ArrayRow arrayRow) {
        int i2 = 0;
        while (true) {
            int i3 = this.m;
            ArrayRow[] arrayRowArr = this.l;
            if (i2 >= i3) {
                if (i3 >= arrayRowArr.length) {
                    this.l = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.l;
                int i4 = this.m;
                arrayRowArr2[i4] = arrayRow;
                this.m = i4 + 1;
                return;
            }
            if (arrayRowArr[i2] == arrayRow) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final void b(ArrayRow arrayRow) {
        int i2 = this.m;
        int i3 = 0;
        while (i3 < i2) {
            if (this.l[i3] == arrayRow) {
                while (i3 < i2 - 1) {
                    ArrayRow[] arrayRowArr = this.l;
                    int i4 = i3 + 1;
                    arrayRowArr[i3] = arrayRowArr[i4];
                    i3 = i4;
                }
                this.m--;
                return;
            }
            i3++;
        }
    }

    public final void c() {
        this.f11314c = null;
        this.f11320k = Type.UNKNOWN;
        this.f11316f = 0;
        this.d = -1;
        this.f11315e = -1;
        this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.f11317h = false;
        int i2 = this.m;
        for (int i3 = 0; i3 < i2; i3++) {
            this.l[i3] = null;
        }
        this.m = 0;
        this.n = 0;
        this.f11313b = false;
        Arrays.fill(this.f11319j, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    @Override // java.lang.Comparable
    public final int compareTo(SolverVariable solverVariable) {
        return this.d - solverVariable.d;
    }

    public final void d(LinearSystem linearSystem, float f2) {
        this.g = f2;
        this.f11317h = true;
        int i2 = this.m;
        this.f11315e = -1;
        for (int i3 = 0; i3 < i2; i3++) {
            this.l[i3].h(linearSystem, this, false);
        }
        this.m = 0;
    }

    public final void e(LinearSystem linearSystem, ArrayRow arrayRow) {
        int i2 = this.m;
        for (int i3 = 0; i3 < i2; i3++) {
            this.l[i3].i(linearSystem, arrayRow, false);
        }
        this.m = 0;
    }

    public final String toString() {
        if (this.f11314c != null) {
            return "" + this.f11314c;
        }
        return "" + this.d;
    }

    public SolverVariable(Type type, String str) {
        this.d = -1;
        this.f11315e = -1;
        this.f11316f = 0;
        this.f11317h = false;
        this.f11318i = new float[9];
        this.f11319j = new float[9];
        this.l = new ArrayRow[16];
        this.m = 0;
        this.n = 0;
        this.f11320k = type;
    }
}
