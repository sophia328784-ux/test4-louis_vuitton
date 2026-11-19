package retrofit2;

import defpackage.n00;

/* JADX INFO: loaded from: classes5.dex */
final class SkipCallbackExecutorImpl implements SkipCallbackExecutor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SkipCallbackExecutor f79465f = new SkipCallbackExecutorImpl();

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return SkipCallbackExecutor.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        return obj instanceof SkipCallbackExecutor;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return n00.p(SkipCallbackExecutor.class, new StringBuilder("@"), "()");
    }
}
