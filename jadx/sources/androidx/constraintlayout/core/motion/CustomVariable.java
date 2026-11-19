package androidx.constraintlayout.core.motion;

import defpackage.fc;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
public class CustomVariable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11323c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f11324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f11325f;

    public CustomVariable(CustomVariable customVariable) {
        this.f11323c = Integer.MIN_VALUE;
        this.d = Float.NaN;
        this.f11324e = null;
        this.f11321a = customVariable.f11321a;
        this.f11322b = customVariable.f11322b;
        this.f11323c = customVariable.f11323c;
        this.d = customVariable.d;
        this.f11324e = customVariable.f11324e;
        this.f11325f = customVariable.f11325f;
    }

    public static String a(int i2) {
        String str = "00000000" + Integer.toHexString(i2);
        return "#".concat(str.substring(str.length() - 8));
    }

    public final void b(Object obj) {
        switch (this.f11322b) {
            case 900:
            case 906:
                this.f11323c = ((Integer) obj).intValue();
                break;
            case 901:
                this.d = ((Float) obj).floatValue();
                break;
            case 902:
                this.f11323c = ((Integer) obj).intValue();
                break;
            case 903:
                this.f11324e = (String) obj;
                break;
            case 904:
                this.f11325f = ((Boolean) obj).booleanValue();
                break;
            case 905:
                this.d = ((Float) obj).floatValue();
                break;
        }
    }

    public final String toString() {
        String strL = fc.l(new StringBuilder(), this.f11321a, ':');
        switch (this.f11322b) {
            case 900:
                StringBuilder sbT = n00.t(strL);
                sbT.append(this.f11323c);
                return sbT.toString();
            case 901:
                StringBuilder sbT2 = n00.t(strL);
                sbT2.append(this.d);
                return sbT2.toString();
            case 902:
                return strL.concat(a(this.f11323c));
            case 903:
                StringBuilder sbT3 = n00.t(strL);
                sbT3.append(this.f11324e);
                return sbT3.toString();
            case 904:
                StringBuilder sbT4 = n00.t(strL);
                sbT4.append(Boolean.valueOf(this.f11325f));
                return sbT4.toString();
            case 905:
                StringBuilder sbT5 = n00.t(strL);
                sbT5.append(this.d);
                return sbT5.toString();
            default:
                return strL.concat("????");
        }
    }

    public CustomVariable(String str, int i2, String str2) {
        this.f11323c = Integer.MIN_VALUE;
        this.d = Float.NaN;
        this.f11321a = str;
        this.f11322b = i2;
        this.f11324e = str2;
    }

    public CustomVariable(String str, int i2, int i3) {
        this.f11323c = Integer.MIN_VALUE;
        this.d = Float.NaN;
        this.f11324e = null;
        this.f11321a = str;
        this.f11322b = i2;
        if (i2 == 901) {
            this.d = i3;
        } else {
            this.f11323c = i3;
        }
    }

    public CustomVariable(String str, int i2, float f2) {
        this.f11323c = Integer.MIN_VALUE;
        this.f11324e = null;
        this.f11321a = str;
        this.f11322b = i2;
        this.d = f2;
    }

    public CustomVariable(String str, int i2, boolean z) {
        this.f11323c = Integer.MIN_VALUE;
        this.d = Float.NaN;
        this.f11324e = null;
        this.f11321a = str;
        this.f11322b = i2;
        this.f11325f = z;
    }

    public CustomVariable(String str, int i2) {
        this.f11323c = Integer.MIN_VALUE;
        this.d = Float.NaN;
        this.f11324e = null;
        this.f11321a = str;
        this.f11322b = i2;
    }

    public CustomVariable(String str, int i2, Object obj) {
        this.f11323c = Integer.MIN_VALUE;
        this.d = Float.NaN;
        this.f11324e = null;
        this.f11321a = str;
        this.f11322b = i2;
        b(obj);
    }

    public CustomVariable(CustomVariable customVariable, Object obj) {
        this.f11323c = Integer.MIN_VALUE;
        this.d = Float.NaN;
        this.f11324e = null;
        this.f11321a = customVariable.f11321a;
        this.f11322b = customVariable.f11322b;
        b(obj);
    }
}
