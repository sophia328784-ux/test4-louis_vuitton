package com.google.android.gms.internal.fido;

import com.sightcall.advancedannotations.domain.parser.ColorParser;
import com.sightcall.advancedannotations.domain.parser.DeleteParser;
import defpackage.md;
import java.io.IOException;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzgf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzgf f29892a;

    static {
        new zzgd("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new zzgd("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new zzge("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new zzge("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        f29892a = new zzgc(new zzgb("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', ColorParser.ColorInstruction, DeleteParser.DeleteInstruction, 'E', 'F'}));
    }

    public abstract void a(StringBuilder sb, byte[] bArr, int i2);

    public final String b(int i2, byte[] bArr) {
        zzbm.b(0, i2, bArr.length);
        zzgb zzgbVar = ((zzge) this).f29890b;
        int i3 = zzgbVar.f29887f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(zzgbVar.f29886e * zzgh.a(i2, i3));
        try {
            a(sb, bArr, i2);
            return sb.toString();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }
}
