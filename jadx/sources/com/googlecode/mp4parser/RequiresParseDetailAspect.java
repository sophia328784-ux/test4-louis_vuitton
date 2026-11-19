package com.googlecode.mp4parser;

import defpackage.n00;
import defpackage.v7;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.NoAspectBoundException;
import org.aspectj.lang.annotation.Aspect;

/* JADX INFO: loaded from: classes2.dex */
@Aspect
public class RequiresParseDetailAspect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ Throwable f35700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ RequiresParseDetailAspect f35701b;

    static {
        try {
            f35701b = new RequiresParseDetailAspect();
        } catch (Throwable th) {
            f35700a = th;
        }
    }

    public static RequiresParseDetailAspect a() {
        RequiresParseDetailAspect requiresParseDetailAspect = f35701b;
        if (requiresParseDetailAspect != null) {
            return requiresParseDetailAspect;
        }
        throw new NoAspectBoundException("com.googlecode.mp4parser.RequiresParseDetailAspect", f35700a);
    }

    public static void b(JoinPoint joinPoint) {
        if (!(joinPoint.getTarget() instanceof AbstractBox)) {
            v7.h(n00.p(AbstractBox.class, new StringBuilder("Only methods in subclasses of "), " can  be annotated with ParseDetail"));
        } else {
            if (((AbstractBox) joinPoint.getTarget()).f35685c) {
                return;
            }
            ((AbstractBox) joinPoint.getTarget()).i();
        }
    }
}
