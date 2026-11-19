package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.b21;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractIterator<T> extends UnmodifiableIterator<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public State f33512b = State.NOT_READY;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f33513c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State DONE;
        public static final State FAILED;
        public static final State NOT_READY;
        public static final State READY;

        static {
            State state = new State("READY", 0);
            READY = state;
            State state2 = new State("NOT_READY", 1);
            NOT_READY = state2;
            State state3 = new State("DONE", 2);
            DONE = state3;
            State state4 = new State("FAILED", 3);
            FAILED = state4;
            $VALUES = new State[]{state, state2, state3, state4};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public abstract Object a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        State state = this.f33512b;
        State state2 = State.FAILED;
        Preconditions.q(state != state2);
        int iOrdinal = this.f33512b.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            this.f33512b = state2;
            this.f33513c = a();
            if (this.f33512b != State.DONE) {
                this.f33512b = State.READY;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        this.f33512b = State.NOT_READY;
        Object obj = this.f33513c;
        this.f33513c = null;
        return obj;
    }
}
