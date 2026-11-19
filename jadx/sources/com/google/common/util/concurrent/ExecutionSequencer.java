package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class ExecutionSequencer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f33807a = new AtomicReference(ImmediateFuture.f33818c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ThreadConfinedTaskQueue f33808b = new ThreadConfinedTaskQueue();

    /* JADX INFO: renamed from: com.google.common.util.concurrent.ExecutionSequencer$1, reason: invalid class name */
    abstract class AnonymousClass1 implements AsyncCallable<Object> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RunningState {
        private static final /* synthetic */ RunningState[] $VALUES;
        public static final RunningState CANCELLED;
        public static final RunningState NOT_RUN;
        public static final RunningState STARTED;

        static {
            RunningState runningState = new RunningState("NOT_RUN", 0);
            NOT_RUN = runningState;
            RunningState runningState2 = new RunningState("CANCELLED", 1);
            CANCELLED = runningState2;
            RunningState runningState3 = new RunningState("STARTED", 2);
            STARTED = runningState3;
            $VALUES = new RunningState[]{runningState, runningState2, runningState3};
        }

        public static RunningState valueOf(String str) {
            return (RunningState) Enum.valueOf(RunningState.class, str);
        }

        public static RunningState[] values() {
            return (RunningState[]) $VALUES.clone();
        }
    }

    public static final class ThreadConfinedTaskQueue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Thread f33811a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Runnable f33812b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Executor f33813c;
    }

    public final ListenableFuture a(final AsyncCallable asyncCallable, Executor executor) {
        executor.getClass();
        final TaskNonReentrantExecutor taskNonReentrantExecutor = new TaskNonReentrantExecutor(executor, this, null);
        AsyncCallable<Object> asyncCallable2 = new AsyncCallable<Object>() { // from class: com.google.common.util.concurrent.ExecutionSequencer.2
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                return !taskNonReentrantExecutor.trySetStarted() ? Futures.e() : asyncCallable.call();
            }

            public final String toString() {
                return asyncCallable.toString();
            }
        };
        final SettableFuture settableFuture = new SettableFuture();
        final ListenableFuture listenableFuture = (ListenableFuture) this.f33807a.getAndSet(settableFuture);
        final TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(asyncCallable2);
        listenableFuture.addListener(trustedListenableFutureTaskCreate, taskNonReentrantExecutor);
        final ListenableFuture listenableFutureI = Futures.i(trustedListenableFutureTaskCreate);
        Runnable runnable = new Runnable() { // from class: com.google.common.util.concurrent.c
            @Override // java.lang.Runnable
            public final void run() {
                TrustedListenableFutureTask trustedListenableFutureTask = trustedListenableFutureTaskCreate;
                if (trustedListenableFutureTask.isDone()) {
                    settableFuture.setFuture(listenableFuture);
                } else if (listenableFutureI.isCancelled() && taskNonReentrantExecutor.trySetCancelled()) {
                    trustedListenableFutureTask.cancel(false);
                }
            }
        };
        DirectExecutor directExecutor = DirectExecutor.INSTANCE;
        listenableFutureI.addListener(runnable, directExecutor);
        trustedListenableFutureTaskCreate.addListener(runnable, directExecutor);
        return listenableFutureI;
    }

    public static final class TaskNonReentrantExecutor extends AtomicReference<RunningState> implements Executor, Runnable {
        Executor delegate;
        ExecutionSequencer sequencer;

        @LazyInit
        Thread submitting;
        Runnable task;

        private TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer) {
            super(RunningState.NOT_RUN);
            this.delegate = executor;
            this.sequencer = executionSequencer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetCancelled() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.CANCELLED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetStarted() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.STARTED);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (get() == RunningState.CANCELLED) {
                this.delegate = null;
                this.sequencer = null;
                return;
            }
            this.submitting = Thread.currentThread();
            try {
                ExecutionSequencer executionSequencer = this.sequencer;
                Objects.requireNonNull(executionSequencer);
                ThreadConfinedTaskQueue threadConfinedTaskQueue = executionSequencer.f33808b;
                if (threadConfinedTaskQueue.f33811a == this.submitting) {
                    this.sequencer = null;
                    Preconditions.q(threadConfinedTaskQueue.f33812b == null);
                    threadConfinedTaskQueue.f33812b = runnable;
                    Executor executor = this.delegate;
                    Objects.requireNonNull(executor);
                    threadConfinedTaskQueue.f33813c = executor;
                    this.delegate = null;
                } else {
                    Executor executor2 = this.delegate;
                    Objects.requireNonNull(executor2);
                    this.delegate = null;
                    this.task = runnable;
                    executor2.execute(this);
                }
            } finally {
                this.submitting = null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Executor executor;
            Thread threadCurrentThread = Thread.currentThread();
            if (threadCurrentThread != this.submitting) {
                Runnable runnable = this.task;
                Objects.requireNonNull(runnable);
                this.task = null;
                runnable.run();
                return;
            }
            ThreadConfinedTaskQueue threadConfinedTaskQueue = new ThreadConfinedTaskQueue();
            threadConfinedTaskQueue.f33811a = threadCurrentThread;
            ExecutionSequencer executionSequencer = this.sequencer;
            Objects.requireNonNull(executionSequencer);
            executionSequencer.f33808b = threadConfinedTaskQueue;
            this.sequencer = null;
            try {
                Runnable runnable2 = this.task;
                Objects.requireNonNull(runnable2);
                this.task = null;
                runnable2.run();
                while (true) {
                    Runnable runnable3 = threadConfinedTaskQueue.f33812b;
                    if (runnable3 == null || (executor = threadConfinedTaskQueue.f33813c) == null) {
                        break;
                    }
                    threadConfinedTaskQueue.f33812b = null;
                    threadConfinedTaskQueue.f33813c = null;
                    executor.execute(runnable3);
                }
                threadConfinedTaskQueue.f33811a = null;
            } catch (Throwable th) {
                threadConfinedTaskQueue.f33811a = null;
                throw th;
            }
        }

        public /* synthetic */ TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer, AnonymousClass1 anonymousClass1) {
            this(executor, executionSequencer);
        }
    }
}
