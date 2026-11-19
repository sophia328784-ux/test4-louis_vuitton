package androidx.security.crypto;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class MasterKey$1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f19865a;

    static {
        int[] iArr = new int[MasterKey$KeyScheme.values().length];
        f19865a = iArr;
        try {
            iArr[MasterKey$KeyScheme.AES256_GCM.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
    }
}
