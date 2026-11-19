package com.google.android.gms.internal.fido;

import defpackage.ct0;
import defpackage.md;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
class zzge extends zzgf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzgb f29890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Character f29891c;
    public volatile zzgf d;

    public zzge(zzgb zzgbVar, Character ch) {
        this.f29890b = zzgbVar;
        if (ch != null) {
            byte[] bArr = zzgbVar.g;
            if (bArr.length > 61 && bArr[61] != -1) {
                md.n(zzbo.a("Padding character %s was already in alphabet", ch));
                throw null;
            }
        }
        this.f29891c = ch;
    }

    @Override // com.google.android.gms.internal.fido.zzgf
    public void a(StringBuilder sb, byte[] bArr, int i2) {
        int i3 = 0;
        zzbm.b(0, i2, bArr.length);
        while (i3 < i2) {
            zzgb zzgbVar = this.f29890b;
            d(sb, bArr, i3, Math.min(zzgbVar.f29887f, i2 - i3));
            i3 += zzgbVar.f29887f;
        }
    }

    public zzgf c(zzgb zzgbVar, Character ch) {
        return new zzge(zzgbVar, ch);
    }

    public final void d(StringBuilder sb, byte[] bArr, int i2, int i3) {
        zzbm.b(i2, i2 + i3, bArr.length);
        zzgb zzgbVar = this.f29890b;
        int i4 = zzgbVar.f29887f;
        int i5 = zzgbVar.d;
        if (i3 > i4) {
            ct0.c();
            return;
        }
        int i6 = 0;
        long j2 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            j2 = (j2 | ((long) (bArr[i2 + i7] & 255))) << 8;
        }
        int i8 = (i3 + 1) * 8;
        while (i6 < i3 * 8) {
            sb.append(zzgbVar.f29884b[((int) (j2 >>> ((i8 - i5) - i6))) & zzgbVar.f29885c]);
            i6 += i5;
        }
        if (this.f29891c != null) {
            while (i6 < zzgbVar.f29887f * 8) {
                sb.append('=');
                i6 += i5;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzge) {
            zzge zzgeVar = (zzge) obj;
            if (this.f29890b.equals(zzgeVar.f29890b) && Objects.equals(this.f29891c, zzgeVar.f29891c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f29891c) ^ this.f29890b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        zzgb zzgbVar = this.f29890b;
        sb.append(zzgbVar);
        if (8 % zzgbVar.d != 0) {
            Character ch = this.f29891c;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public zzge(String str, String str2) {
        this(new zzgb(str, str2.toCharArray()), (Character) '=');
    }
}
