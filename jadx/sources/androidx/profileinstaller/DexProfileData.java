package androidx.profileinstaller;

import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
class DexProfileData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f19108c;
    public long d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f19109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f19110f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f19111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TreeMap f19112i;

    public DexProfileData(String str, String str2, long j2, int i2, int i3, int i4, int[] iArr, TreeMap treeMap) {
        this.f19106a = str;
        this.f19107b = str2;
        this.f19108c = j2;
        this.f19109e = i2;
        this.f19110f = i3;
        this.g = i4;
        this.f19111h = iArr;
        this.f19112i = treeMap;
    }
}
