package com.networkbench.agent.impl.j;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f37397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte f37398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte f37399c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37401f;

    public b(byte b2, byte b3, byte b4, int i2, int i3, int i4) {
        this.f37397a = b2;
        this.f37398b = b3;
        this.f37399c = b4;
        this.d = i2;
        this.f37400e = i3;
        this.f37401f = i4;
    }

    public static byte[] a(long j2) {
        return new byte[]{(byte) (((-72057594037927936L) & j2) >> 56), (byte) ((71776119061217280L & j2) >> 48), (byte) ((280375465082880L & j2) >> 40), (byte) ((1095216660480L & j2) >> 32), (byte) ((4278190080L & j2) >> 24), (byte) ((16711680 & j2) >> 16), (byte) ((65280 & j2) >> 8), (byte) (j2 & 255)};
    }

    public static long b(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 56) | ((((long) bArr[1]) & 255) << 48) | ((((long) bArr[2]) & 255) << 40) | ((((long) bArr[3]) & 255) << 32) | ((((long) bArr[4]) & 255) << 24) | ((((long) bArr[5]) & 255) << 16) | ((((long) bArr[6]) & 255) << 8) | (255 & ((long) bArr[7]));
    }

    public static b a(byte[] bArr) {
        long jB = b(bArr);
        return new b((byte) ((4035225266123964416L & jB) >>> 59), (byte) (((-4611686018427387904L) & jB) >>> 62), (byte) ((504403158265495552L & jB) >>> 56), (int) (jB & 134217727), (int) ((274743689216L & jB) >>> 27), (int) ((17317308137472L & jB) >>> 38));
    }

    public byte[] a() {
        return a((((long) this.f37398b) << 62) | (((long) this.f37397a) << 59) | (((long) this.f37399c) << 56) | (((long) this.f37401f) << 38) | (((long) this.f37400e) << 27) | ((long) this.d));
    }

    public static byte[] a(int i2) {
        return new byte[]{(byte) (((-16777216) & i2) >> 24), (byte) ((16711680 & i2) >> 16), (byte) ((65280 & i2) >> 8), (byte) (i2 & 255)};
    }
}
