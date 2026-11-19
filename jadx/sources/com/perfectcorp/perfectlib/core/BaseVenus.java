package com.perfectcorp.perfectlib.core;

import com.perfectcorp.common.PfCommonsJni;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.perfectlib.jniproxy.CUIMakeupLive;
import com.perfectcorp.perfectlib.jniproxy.UIMakeupJNI;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.v7;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class BaseVenus extends CUIMakeupLive {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f40073c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f40074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f40075f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f40076h;

    public BaseVenus() {
        super(IO.d(PfCommonsJni.a()).concat("libvenus.so"));
        this.f40073c = new AtomicInteger(0);
        this.d = false;
        this.f40074e = false;
        this.f40075f = false;
        this.g = false;
        this.f40076h = 0;
    }

    public final boolean n(int[] iArr, byte[] bArr, Object[] objArr, int[] iArr2, int i2, int i3, int i4, int i5) {
        Objects.requireNonNull(iArr, "intermediate_model == null");
        Objects.requireNonNull(bArr, "static_model == null");
        Objects.requireNonNull(objArr, "colorable_layers == null");
        if (objArr.length != i2) {
            v7.e(") != ", objArr.length, i2, "colorable_layers.length (");
            return false;
        }
        int i6 = 0;
        for (Object obj : objArr) {
            Objects.requireNonNull(obj, "name[" + i6 + "] == null");
            i6++;
        }
        Objects.requireNonNull(iArr2, "colors == null");
        if (UIMakeupJNI.CUIMakeupLive_PreprocessEyeContactModel(this.f40398a, this, iArr, bArr, objArr, iArr2, i2, i3, 200, 200, i4, i5)) {
            return true;
        }
        md.n("PreprocessEyeContactModel failed.");
        return false;
    }

    public final boolean o() {
        if (UIMakeupJNI.CUIMakeupLive_SetFaceRegionOccludeLV(this.f40398a, this, true)) {
            return true;
        }
        v7.h("SetFaceRegionOccludeLV failed.");
        return false;
    }

    public final boolean p(String str, String str2, String str3, String str4) {
        if (UIMakeupJNI.CUIMakeupLive_SetInternalModelPaths(this.f40398a, this, str, str2, str3, str4)) {
            return true;
        }
        v7.h(d21.p(fc.s("SetInternalModelPaths failed. detect=", str, ", align=", str2, ", eye="), str3, ", mouth=", str4));
        return false;
    }

    public final boolean q(String str, String str2, String str3, String str4) {
        if (UIMakeupJNI.CUIMakeupLive_SetInternalModelPathsLV(this.f40398a, this, str, str2, str3, str4)) {
            return true;
        }
        v7.h(d21.p(fc.s("SetInternalModelPaths failed. detect=", str, ", align=", str2, ", eye="), str3, ", region=", str4));
        return false;
    }

    public final int r() {
        while (true) {
            AtomicInteger atomicInteger = this.f40073c;
            int i2 = atomicInteger.get();
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(~i2);
            if (iNumberOfTrailingZeros < 14 && atomicInteger.compareAndSet(i2, (1 << iNumberOfTrailingZeros) | i2)) {
                return iNumberOfTrailingZeros;
            }
        }
    }

    public final void s(int i2) {
        AtomicInteger atomicInteger;
        int i3;
        do {
            atomicInteger = this.f40073c;
            i3 = atomicInteger.get();
        } while (!atomicInteger.compareAndSet(i3, i3 ^ i2));
    }
}
