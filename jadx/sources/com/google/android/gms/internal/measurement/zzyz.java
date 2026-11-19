package com.google.android.gms.internal.measurement;

import defpackage.fc;
import defpackage.md;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzd' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class zzyz {
    public static final zzyz zza;
    public static final zzyz zzb;
    public static final zzyz zzc;
    public static final zzyz zzd;
    public static final zzyz zze;
    public static final zzyz zzf;
    public static final zzyz zzg;
    public static final zzyz zzh;
    public static final zzyz zzi;
    public static final zzyz zzj;
    private static final zzyz[] zzk;
    private static final /* synthetic */ zzyz[] zzp;
    private final char zzl;
    private final zzzb zzm;
    private final int zzn;
    private final String zzo;

    static {
        zzyz zzyzVar = new zzyz("STRING", 0, 's', zzzb.GENERAL, "-#", true);
        zza = zzyzVar;
        zzyz zzyzVar2 = new zzyz("BOOLEAN", 1, 'b', zzzb.BOOLEAN, "-", true);
        zzb = zzyzVar2;
        zzyz zzyzVar3 = new zzyz("CHAR", 2, 'c', zzzb.CHARACTER, "-", true);
        zzc = zzyzVar3;
        zzzb zzzbVar = zzzb.INTEGRAL;
        zzyz zzyzVar4 = new zzyz("DECIMAL", 3, 'd', zzzbVar, "-0+ ,(", false);
        zzd = zzyzVar4;
        zzyz zzyzVar5 = new zzyz("OCTAL", 4, 'o', zzzbVar, "-#0(", false);
        zze = zzyzVar5;
        zzyz zzyzVar6 = new zzyz("HEX", 5, 'x', zzzbVar, "-#0(", true);
        zzf = zzyzVar6;
        zzzb zzzbVar2 = zzzb.FLOAT;
        zzyz zzyzVar7 = new zzyz("FLOAT", 6, 'f', zzzbVar2, "-#0+ ,(", false);
        zzg = zzyzVar7;
        zzyz zzyzVar8 = new zzyz("EXPONENT", 7, 'e', zzzbVar2, "-#0+ (", true);
        zzh = zzyzVar8;
        zzyz zzyzVar9 = new zzyz("GENERAL", 8, 'g', zzzbVar2, "-0+ ,(", true);
        zzi = zzyzVar9;
        zzyz zzyzVar10 = new zzyz("EXPONENT_HEX", 9, 'a', zzzbVar2, "-#0+ ", true);
        zzj = zzyzVar10;
        zzp = new zzyz[]{zzyzVar, zzyzVar2, zzyzVar3, zzyzVar4, zzyzVar5, zzyzVar6, zzyzVar7, zzyzVar8, zzyzVar9, zzyzVar10};
        zzk = new zzyz[26];
        for (zzyz zzyzVar11 : values()) {
            zzk[(zzyzVar11.zzl | ' ') - 97] = zzyzVar11;
        }
    }

    public zzyz(String str, int i2, char c2, zzzb zzzbVar, String str2, boolean z) {
        super(str, i2);
        this.zzl = c2;
        this.zzm = zzzbVar;
        zzza zzzaVar = zzza.f31109e;
        int i3 = true != z ? 0 : 128;
        for (int i4 = 0; i4 < str2.length(); i4++) {
            int iCharAt = ((int) ((zzza.d >>> ((str2.charAt(i4) - ' ') * 3)) & 7)) - 1;
            if (iCharAt < 0) {
                md.n("invalid flags: ".concat(str2));
                throw null;
            }
            i3 |= 1 << iCharAt;
        }
        this.zzn = i3;
        this.zzo = fc.l(new StringBuilder(String.valueOf(c2).length() + 1), "%", c2);
    }

    public static zzyz a(char c2) {
        zzyz zzyzVar = zzk[(c2 | ' ') - 97];
        if ((c2 & ' ') != 0) {
            return zzyzVar;
        }
        if (zzyzVar == null || (zzyzVar.zzn & 128) == 0) {
            return null;
        }
        return zzyzVar;
    }

    public static zzyz[] values() {
        return (zzyz[]) zzp.clone();
    }

    public final char b() {
        return this.zzl;
    }

    public final zzzb c() {
        return this.zzm;
    }

    public final int d() {
        return this.zzn;
    }

    public final String e() {
        return this.zzo;
    }
}
