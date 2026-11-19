package org.aspectj.runtime.reflect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.SourceLocation;

/* JADX INFO: loaded from: classes3.dex */
class JoinPointImpl implements ProceedingJoinPoint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f77563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f77564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f77565c;
    public final JoinPoint.StaticPart d;

    public static class StaticPartImpl implements JoinPoint.StaticPart {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f77566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Signature f77567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SourceLocation f77568c;

        public StaticPartImpl(int i2, String str, Signature signature, SourceLocation sourceLocation) {
            this.f77566a = str;
            this.f77567b = signature;
            this.f77568c = sourceLocation;
        }

        public final String toString() {
            StringMaker stringMaker = StringMaker.f77579e;
            StringBuffer stringBuffer = new StringBuffer();
            String strSubstring = this.f77566a;
            int iLastIndexOf = strSubstring.lastIndexOf(45);
            if (iLastIndexOf != -1) {
                strSubstring = strSubstring.substring(iLastIndexOf + 1);
            }
            stringBuffer.append(strSubstring);
            stringBuffer.append("(");
            stringBuffer.append(((SignatureImpl) this.f77567b).d());
            stringBuffer.append(")");
            return stringBuffer.toString();
        }
    }

    public JoinPointImpl(JoinPoint.StaticPart staticPart, Object obj, Object obj2, Object[] objArr) {
        this.d = staticPart;
        this.f77563a = obj;
        this.f77564b = obj2;
        this.f77565c = objArr;
    }

    @Override // org.aspectj.lang.JoinPoint
    public final Object getTarget() {
        return this.f77564b;
    }

    public final String toString() {
        return this.d.toString();
    }
}
