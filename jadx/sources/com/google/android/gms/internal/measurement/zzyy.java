package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Formattable;
import java.util.Formatter;
import java.util.Locale;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public final class zzyy extends zzabm implements zzabi {
    public final Object[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StringBuilder f31105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31106f;

    public zzyy(zzaaf zzaafVar, Object[] objArr, StringBuilder sb) {
        super(zzaafVar);
        this.f31106f = 0;
        this.d = objArr;
        this.f31105e = sb;
    }

    public static void b(StringBuilder sb, Object obj, String str) {
        sb.append("[INVALID: format=");
        sb.append(str);
        sb.append(", type=");
        sb.append(obj.getClass().getCanonicalName());
        sb.append(", value=");
        sb.append(zzzh.a(obj));
        sb.append("]");
    }

    /* JADX WARN: Code duplicated, block: B:106:0x012c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0132  */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    /* JADX WARN: Code duplicated, block: B:15:0x0027  */
    /* JADX WARN: Code duplicated, block: B:64:0x0094  */
    public final void a(Object obj, zzyz zzyzVar, zzza zzzaVar) {
        String simpleName;
        zzza zzzaVar2;
        boolean zIsValidCodePoint;
        int iOrdinal = zzyzVar.c().ordinal();
        StringBuilder sb = this.f31105e;
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                zIsValidCodePoint = obj instanceof Boolean;
            } else if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        throw null;
                    }
                    if ((obj instanceof Double) || (obj instanceof Float) || (obj instanceof BigDecimal)) {
                        zIsValidCodePoint = true;
                    } else {
                        zIsValidCodePoint = false;
                    }
                } else if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof BigInteger)) {
                    zIsValidCodePoint = true;
                } else {
                    zIsValidCodePoint = false;
                }
            } else if (obj instanceof Character) {
                zIsValidCodePoint = true;
            } else if ((obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short)) {
                zIsValidCodePoint = Character.isValidCodePoint(((Number) obj).intValue());
            } else {
                zIsValidCodePoint = false;
            }
            if (!zIsValidCodePoint) {
                b(sb, obj, zzyzVar.e());
                return;
            }
        }
        int iOrdinal2 = zzyzVar.ordinal();
        if (iOrdinal2 != 0) {
            if (iOrdinal2 == 1) {
                if (zzzaVar.a()) {
                    sb.append(obj);
                    return;
                }
            } else if (iOrdinal2 != 2) {
                if (iOrdinal2 != 3) {
                    if (iOrdinal2 == 5) {
                        if (zzzaVar.a()) {
                            zzzaVar2 = zzzaVar;
                        } else {
                            int i2 = zzzaVar.f31110a;
                            int i3 = i2 & 128;
                            if (i3 == 0) {
                                zzzaVar2 = zzza.f31109e;
                            } else if (i3 == i2 && zzzaVar.f31111b == -1 && zzzaVar.f31112c == -1) {
                                zzzaVar2 = zzzaVar;
                            } else {
                                zzzaVar2 = new zzza(i3, -1, -1);
                            }
                        }
                        if (zzzaVar2.equals(zzzaVar)) {
                            Number number = (Number) obj;
                            Locale locale = zzzh.f31116a;
                            boolean zC = zzzaVar.c();
                            long jLongValue = number.longValue();
                            if (number instanceof Long) {
                                zzzh.b(sb, jLongValue, zC);
                                return;
                            }
                            if (number instanceof Integer) {
                                zzzh.b(sb, jLongValue & BodyPartID.bodyIdMax, zC);
                                return;
                            }
                            if (number instanceof Byte) {
                                zzzh.b(sb, jLongValue & 255, zC);
                                return;
                            }
                            if (number instanceof Short) {
                                zzzh.b(sb, jLongValue & 65535, zC);
                                return;
                            }
                            if (!(number instanceof BigInteger)) {
                                md.k("unsupported number type: ".concat(String.valueOf(number.getClass())));
                                return;
                            }
                            String string = ((BigInteger) number).toString(16);
                            if (zC) {
                                string = string.toUpperCase(zzzh.f31116a);
                            }
                            sb.append(string);
                            return;
                        }
                    }
                } else if (zzzaVar.a()) {
                    sb.append(obj);
                    return;
                }
            } else if (zzzaVar.a()) {
                if (obj instanceof Character) {
                    sb.append(obj);
                    return;
                }
                int iIntValue = ((Number) obj).intValue();
                if ((iIntValue >>> 16) == 0) {
                    sb.append((char) iIntValue);
                    return;
                } else {
                    sb.append(Character.toChars(iIntValue));
                    return;
                }
            }
        } else {
            if (obj instanceof Formattable) {
                Formattable formattable = (Formattable) obj;
                Locale locale2 = zzzh.f31116a;
                int i4 = zzzaVar.f31110a;
                int i5 = i4 & 162;
                if (i5 != 0) {
                    i5 = ((i4 & 32) == 0 ? 0 : 1) | ((i4 & 128) != 0 ? 2 : 0) | ((i4 & 2) == 0 ? 0 : 4);
                }
                int length = sb.length();
                Formatter formatter = new Formatter(sb, zzzh.f31116a);
                try {
                    formattable.formatTo(formatter, i5, zzzaVar.f31111b, zzzaVar.f31112c);
                    return;
                } catch (RuntimeException e2) {
                    sb.setLength(length);
                    try {
                        Appendable appendableOut = formatter.out();
                        try {
                            simpleName = e2.toString();
                        } catch (RuntimeException e3) {
                            simpleName = e3.getClass().getSimpleName();
                        }
                        appendableOut.append(zzzh.c(formattable, simpleName));
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
            }
            if (zzzaVar.a()) {
                sb.append(zzzh.a(obj));
                return;
            }
        }
        String strE = zzyzVar.e();
        if (!zzzaVar.a()) {
            int iB = zzyzVar.b();
            if (zzzaVar.c()) {
                iB &= 65503;
            }
            StringBuilder sb2 = new StringBuilder("%");
            zzzaVar.d(sb2);
            sb2.append((char) iB);
            strE = sb2.toString();
        }
        sb.append(String.format(zzzh.f31116a, strE, obj));
    }
}
