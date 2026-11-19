package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_ExternalPRequestContext extends ExternalPRequestContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f27883a;

    public static final class Builder extends ExternalPRequestContext.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f27884a;

        @Override // com.google.android.datatransport.cct.internal.ExternalPRequestContext.Builder
        public final ExternalPRequestContext a() {
            return new AutoValue_ExternalPRequestContext(this.f27884a);
        }

        @Override // com.google.android.datatransport.cct.internal.ExternalPRequestContext.Builder
        public final ExternalPRequestContext.Builder b(Integer num) {
            this.f27884a = num;
            return this;
        }
    }

    public AutoValue_ExternalPRequestContext(Integer num) {
        this.f27883a = num;
    }

    @Override // com.google.android.datatransport.cct.internal.ExternalPRequestContext
    public final Integer b() {
        return this.f27883a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ExternalPRequestContext)) {
            return false;
        }
        ExternalPRequestContext externalPRequestContext = (ExternalPRequestContext) obj;
        Integer num = this.f27883a;
        if (num == null) {
            return externalPRequestContext.b() == null;
        }
        return num.equals(externalPRequestContext.b());
    }

    public final int hashCode() {
        Integer num = this.f27883a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.f27883a + "}";
    }
}
