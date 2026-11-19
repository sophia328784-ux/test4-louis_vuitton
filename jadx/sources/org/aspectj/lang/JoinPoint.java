package org.aspectj.lang;

/* JADX INFO: loaded from: classes3.dex */
public interface JoinPoint {

    public interface EnclosingStaticPart extends StaticPart {
    }

    public interface StaticPart {
    }

    Object getTarget();
}
