package com.perfectcorp.common.concurrent;

import com.perfectcorp.common.PfCommons;
import java.util.concurrent.Executor;

/* JADX WARN: Enum visitor error
java.lang.NullPointerException
	at jadx.core.dex.visitors.EnumVisitor.searchEnumSuperCtrInsn(EnumVisitor.java:495)
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:473)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public abstract class CallingThread implements Executor {
    public static final CallingThread ANY;
    public static final CallingThread MAIN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ CallingThread[] f39169a;

    static {
        CallingThread callingThread = new CallingThread() { // from class: com.perfectcorp.common.concurrent.a
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                if (PfCommons.a()) {
                    runnable.run();
                } else {
                    PfCommons.c(runnable);
                }
            }
        };
        MAIN = callingThread;
        CallingThread callingThread2 = new CallingThread() { // from class: com.perfectcorp.common.concurrent.b
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        };
        ANY = callingThread2;
        f39169a = new CallingThread[]{callingThread, callingThread2};
    }

    public static CallingThread valueOf(String str) {
        return (CallingThread) Enum.valueOf(CallingThread.class, str);
    }

    public static CallingThread[] values() {
        return (CallingThread[]) f39169a.clone();
    }
}
