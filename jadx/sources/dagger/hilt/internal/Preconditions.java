package dagger.hilt.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Preconditions {
    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }
}
