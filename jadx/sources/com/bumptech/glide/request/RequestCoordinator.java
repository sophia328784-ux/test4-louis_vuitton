package com.bumptech.glide.request;

/* JADX INFO: loaded from: classes2.dex */
public interface RequestCoordinator {

    public enum RequestState {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);

        private final boolean isComplete;

        RequestState(boolean z) {
            this.isComplete = z;
        }

        public final boolean a() {
            return this.isComplete;
        }
    }

    boolean b();

    boolean c(Request request);

    boolean d(Request request);

    void e(Request request);

    void g(Request request);

    RequestCoordinator getRoot();

    boolean i(Request request);
}
