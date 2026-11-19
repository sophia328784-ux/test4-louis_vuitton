package com.google.android.gms.internal.clearcut;

import defpackage.r81;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class zzfz {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile int f29754b = -1;

    public static final void b(zzfz zzfzVar, byte[] bArr, int i2) {
        try {
            zzfs zzfsVar = new zzfs(bArr, i2);
            zzfzVar.a(zzfsVar);
            ByteBuffer byteBuffer = zzfsVar.f29752a;
            if (byteBuffer.remaining() == 0) {
                return;
            }
            throw new IllegalStateException("Did not write as much data as expected, " + byteBuffer.remaining() + " bytes remaining.");
        } catch (IOException e2) {
            r81.g("Serializing to a byte array threw an IOException (should never happen).", e2);
        }
    }

    public void a(zzfs zzfsVar) {
    }

    public int c() {
        return 0;
    }

    @Override // 
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public zzfz clone() {
        return (zzfz) super.clone();
    }

    public final String toString() {
        String strValueOf;
        StringBuffer stringBuffer = new StringBuffer();
        try {
            zzga.a(null, this, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e2) {
            strValueOf = String.valueOf(e2.getMessage());
            if (strValueOf.length() == 0) {
                return new String("Error printing proto: ");
            }
            return "Error printing proto: ".concat(strValueOf);
        } catch (InvocationTargetException e3) {
            strValueOf = String.valueOf(e3.getMessage());
            if (strValueOf.length() == 0) {
                return new String("Error printing proto: ");
            }
            return "Error printing proto: ".concat(strValueOf);
        }
    }
}
