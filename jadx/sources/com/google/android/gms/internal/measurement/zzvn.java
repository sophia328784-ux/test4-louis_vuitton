package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.cj;
import defpackage.d21;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzvn implements zzws {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzws f31013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UUID f31014c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f31015e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Thread f31016f;

    public zzvn(String str, zzws zzwsVar, zzwq zzwqVar) {
        this.f31015e = str;
        this.f31013b = zzwsVar;
        zzvn zzvnVar = (zzvn) zzwsVar;
        this.f31014c = zzvnVar.f31014c;
        this.d = zzvnVar.d;
        this.f31016f = Thread.currentThread();
    }

    public static String c(UUID uuid) {
        return "tk-trace-id: ".concat(String.valueOf(Long.toString(uuid.getLeastSignificantBits() >>> 1, 36)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzwq zzwqVarC = zzvy.c();
        zzws zzwsVar = zzwqVarC.f31057b;
        String str = this.f31015e;
        if (zzwsVar == null) {
            throw new zzvv(d21.p(new StringBuilder(str.length() + 101), "Tried to end [", str, "], but no trace was active. This is caused by mismatched or missing calls to beginSpan."));
        }
        if (this == zzwsVar) {
            zzvy.b(zzwqVarC, zzwsVar.e0());
            this.f31016f = null;
            return;
        }
        String strH0 = zzwsVar.h0();
        StringBuilder sb = new StringBuilder(str.length() + 79 + String.valueOf(strH0).length() + 1);
        cj.C(sb, "Tried to end span ", str, ", but that span is not the current span. The current span is ", strH0);
        sb.append(FileUtils.HIDDEN_PREFIX);
        throw new zzvw(sb.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final Thread d0() {
        return this.f31016f;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzws e0() {
        return this.f31013b;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final UUID f0() {
        return this.f31014c;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final String g0() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final String h0() {
        return this.f31015e;
    }

    /* JADX WARN: Code duplicated, block: B:134:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x0067  */
    /* JADX WARN: Code duplicated, block: B:70:0x01f4  */
    public final String toString() {
        int i2;
        int i3;
        zzwo zzwoVar;
        Iterator it;
        zzwm zzwmVar;
        int i4;
        zzwn zzwnVar;
        AtomicReference atomicReference = zzvy.f31026a;
        int i5 = 0;
        int length = 0;
        zzws zzwsVarE0 = this;
        while (zzwsVarE0 != null) {
            i5++;
            length += zzwsVarE0.h0().length();
            zzwsVarE0 = zzwsVarE0.e0();
            if (zzwsVarE0 != null) {
                length += 4;
            }
        }
        if (i5 > 250) {
            String[] strArr = new String[i5];
            zzws zzwsVarE1 = this;
            for (int i6 = i5 - 1; i6 >= 0; i6--) {
                strArr[i6] = zzwsVarE1.h0();
                zzwsVarE1 = zzwsVarE1.e0();
            }
            ImmutableMap.Builder builder = new ImmutableMap.Builder();
            UnmodifiableIterator it2 = ImmutableSet.t(strArr).iterator();
            int i7 = 0;
            while (it2.hasNext()) {
                builder.d(it2.next(), Integer.valueOf(i7));
                i7++;
            }
            int i8 = 1;
            ImmutableMap immutableMapA = builder.a(true);
            int i9 = i5 >> 2;
            if (immutableMapA.size() > i9) {
                zzwoVar = null;
            } else {
                int i10 = i5 + 1;
                int[] iArr = new int[i10];
                for (int i11 = 0; i11 < i5; i11++) {
                    iArr[i11] = ((Integer) immutableMapA.get(strArr[i11])).intValue();
                }
                iArr[i5] = immutableMapA.size();
                zzwp zzwpVar = new zzwp(iArr);
                int i12 = 0;
                while (true) {
                    int i13 = -1;
                    if (i12 >= i10) {
                        break;
                    }
                    zzwpVar.f31055f += i8;
                    int i14 = iArr[i12];
                    while (true) {
                        zzwn zzwnVar2 = null;
                        while (true) {
                            if (zzwpVar.f31055f <= 0) {
                                i4 = i8;
                                break;
                            }
                            int i15 = zzwpVar.f31054e;
                            zzwnVar = zzwpVar.f31053c;
                            i4 = i8;
                            if (i15 == 0) {
                                break;
                            }
                            int i16 = ((zzwn) zzwnVar.d.get(Integer.valueOf(iArr[zzwpVar.d]))).f31045a;
                            int i17 = zzwpVar.f31054e;
                            if (iArr[i16 + i17] == i14) {
                                if (zzwnVar2 != null) {
                                    zzwnVar2.f31047c = zzwpVar.f31053c;
                                }
                                zzwpVar.f31054e = i17 + 1;
                                zzwpVar.a();
                                break;
                            }
                            zzwn zzwnVar3 = (zzwn) zzwpVar.f31053c.d.get(Integer.valueOf(iArr[zzwpVar.d]));
                            int i18 = zzwnVar3.f31045a;
                            int i19 = i13;
                            zzwn zzwnVar4 = new zzwn(i18, (zzwpVar.f31054e + i18) - 1);
                            zzwpVar.f31053c.d.put(Integer.valueOf(iArr[zzwpVar.d]), zzwnVar4);
                            int i20 = zzwnVar4.f31046b + 1;
                            Integer numValueOf = Integer.valueOf(iArr[i20]);
                            HashMap map = zzwnVar4.d;
                            map.put(numValueOf, zzwnVar3);
                            zzwnVar3.f31045a = i20;
                            if (zzwnVar2 != null) {
                                zzwnVar2.f31047c = zzwnVar4;
                            }
                            map.put(Integer.valueOf(i14), new zzwn(i12, 1073741824));
                            zzwpVar.f31055f--;
                            zzwpVar.b();
                            zzwnVar2 = zzwnVar4;
                            i8 = i4;
                            i13 = i19;
                        }
                        HashMap map2 = zzwnVar.d;
                        Integer numValueOf2 = Integer.valueOf(i14);
                        if (map2.containsKey(numValueOf2)) {
                            if (zzwnVar2 != null) {
                                zzwnVar2.f31047c = zzwpVar.f31053c;
                            }
                            zzwpVar.d = i12;
                            zzwpVar.f31054e++;
                            zzwpVar.a();
                            break;
                        }
                        zzwpVar.f31053c.d.put(numValueOf2, new zzwn(i12, 1073741824));
                        if (zzwnVar2 != null) {
                            zzwnVar2.f31047c = zzwpVar.f31053c;
                        }
                        zzwpVar.f31055f += i13;
                        zzwpVar.b();
                        i8 = i4;
                    }
                    i12++;
                    i8 = i4;
                }
                int i21 = i8;
                ArrayDeque arrayDeque = new ArrayDeque();
                zzwn zzwnVar5 = zzwpVar.f31052b;
                zzwm zzwmVar2 = new zzwm(zzwnVar5, 0, -1, -1);
                arrayDeque.push(zzwmVar2);
                while (!arrayDeque.isEmpty()) {
                    zzwm zzwmVar3 = (zzwm) arrayDeque.pop();
                    Iterator it3 = zzwmVar3.d.d.values().iterator();
                    while (it3.hasNext()) {
                        zzwn zzwnVar6 = (zzwn) it3.next();
                        int i22 = zzwmVar3.f31043b;
                        int i23 = zzwmVar3.f31044c;
                        int i24 = zzwnVar6.f31045a;
                        zzwn zzwnVar7 = zzwnVar5;
                        int i25 = zzwnVar6.f31046b;
                        if (zzwpVar.d(i22, i23, i24, i25)) {
                            it = it3;
                        } else {
                            if (zzwnVar6.d.isEmpty()) {
                                int i26 = zzwnVar6.f31045a;
                                it = it3;
                                if (zzwpVar.d(i22, i23, i26, (i26 + i23) - i22)) {
                                }
                                if (zzwmVar2.f31042a < zzwmVar.f31042a) {
                                    zzwmVar2 = zzwmVar;
                                }
                                arrayDeque.push(zzwmVar);
                                zzwnVar5 = zzwnVar7;
                                it3 = it;
                                i21 = 1;
                            } else {
                                it = it3;
                            }
                            zzwmVar = new zzwm(zzwnVar6, i21, zzwnVar6.f31045a, i25);
                            if (zzwmVar2.f31042a < zzwmVar.f31042a) {
                                zzwmVar2 = zzwmVar;
                            }
                            arrayDeque.push(zzwmVar);
                            zzwnVar5 = zzwnVar7;
                            it3 = it;
                            i21 = 1;
                        }
                        zzwmVar = new zzwm(zzwnVar6, zzwmVar3.f31042a + i21, i22, i23);
                        if (zzwmVar2.f31042a < zzwmVar.f31042a) {
                            zzwmVar2 = zzwmVar;
                        }
                        arrayDeque.push(zzwmVar);
                        zzwnVar5 = zzwnVar7;
                        it3 = it;
                        i21 = 1;
                    }
                    i21 = 1;
                }
                int iMin = Math.min(iArr.length, zzwmVar2.f31044c + 1);
                int i27 = 0;
                loop9: while (true) {
                    i2 = zzwmVar2.f31043b;
                    i3 = iMin - i2;
                    zzwnVar5 = (zzwn) zzwnVar5.d.get(Integer.valueOf(iArr[(i27 % i3) + i2]));
                    if (zzwnVar5 == null) {
                        break;
                    }
                    for (int i28 = zzwnVar5.f31045a; i28 < zzwnVar5.f31046b + 1 && i28 < iArr.length; i28++) {
                        if (iArr[(i27 % i3) + i2] != iArr[i28]) {
                            break loop9;
                        }
                        i27++;
                    }
                }
                zzwo zzwoVar2 = new zzwo(i2, iMin, i27 / i3);
                if ((zzwoVar2.f31049b - zzwoVar2.f31048a) * zzwoVar2.f31050c < i9) {
                    zzwoVar = null;
                } else {
                    zzwoVar = zzwoVar2;
                }
            }
            String strConcat = "";
            if (zzwoVar != null) {
                int i29 = zzwoVar.f31048a;
                String strConcat2 = i29 > 0 ? String.valueOf(TextUtils.join(" -> ", Arrays.copyOf(strArr, i29))).concat(" -> ") : "";
                int i30 = zzwoVar.f31049b;
                int i31 = zzwoVar.f31050c;
                int i32 = ((i30 - i29) * i31) + i29;
                strConcat = i32 < i5 ? " -> ".concat(String.valueOf(TextUtils.join(" -> ", Arrays.copyOfRange(strArr, i32, i5)))) : "";
                String strJoin = TextUtils.join(" -> ", Arrays.copyOfRange(strArr, i29, i30));
                Locale locale = Locale.US;
                strConcat = strConcat2 + "{" + strJoin + "}x" + i31 + strConcat;
            }
            if (!strConcat.isEmpty()) {
                return strConcat;
            }
        }
        char[] cArr = new char[length];
        zzws zzwsVarE2 = this;
        while (zzwsVarE2 != null) {
            String strH0 = zzwsVarE2.h0();
            length -= strH0.length();
            strH0.getChars(0, strH0.length(), cArr, length);
            zzwsVarE2 = zzwsVarE2.e0();
            if (zzwsVarE2 != null) {
                length -= 4;
                " -> ".getChars(0, 4, cArr, length);
            }
        }
        return new String(cArr);
    }

    public zzvn(String str, UUID uuid, String str2, zzwq zzwqVar) {
        this.f31015e = str;
        this.f31013b = null;
        this.f31014c = uuid;
        this.d = str2;
        zzwqVar.getClass();
        this.f31016f = Thread.currentThread();
    }
}
