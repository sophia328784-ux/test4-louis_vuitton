package org.bouncycastle.cms;

/* JADX INFO: loaded from: classes3.dex */
public class CMSAttributeTableGenerationException extends CMSRuntimeException {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Exception f77598e;

    public CMSAttributeTableGenerationException(String str, Exception exc) {
        super(str);
        this.f77598e = exc;
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException, java.lang.Throwable
    public Throwable getCause() {
        return this.f77598e;
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException
    public Exception getUnderlyingException() {
        return this.f77598e;
    }

    public CMSAttributeTableGenerationException(String str) {
        super(str);
    }
}
