package com.bumptech.glide.request;

/* JADX INFO: loaded from: classes2.dex */
public final class ErrorRequestCoordinator implements RequestCoordinator, Request {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f24936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequestCoordinator f24937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Request f24938c;
    public volatile Request d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RequestCoordinator.RequestState f24939e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RequestCoordinator.RequestState f24940f;

    public ErrorRequestCoordinator(Object obj, RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f24939e = requestState;
        this.f24940f = requestState;
        this.f24936a = obj;
        this.f24937b = requestCoordinator;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean a() {
        boolean z;
        synchronized (this.f24936a) {
            try {
                RequestCoordinator.RequestState requestState = this.f24939e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.SUCCESS;
                z = requestState == requestState2 || this.f24940f == requestState2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public final boolean b() {
        boolean z;
        synchronized (this.f24936a) {
            try {
                z = this.f24938c.b() || this.d.b();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void begin() {
        synchronized (this.f24936a) {
            try {
                RequestCoordinator.RequestState requestState = this.f24939e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f24939e = requestState2;
                    this.f24938c.begin();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean c(Request request) {
        boolean z;
        boolean zEquals;
        RequestCoordinator.RequestState requestState;
        synchronized (this.f24936a) {
            RequestCoordinator requestCoordinator = this.f24937b;
            z = false;
            if (requestCoordinator == null || requestCoordinator.c(this)) {
                RequestCoordinator.RequestState requestState2 = this.f24939e;
                RequestCoordinator.RequestState requestState3 = RequestCoordinator.RequestState.FAILED;
                if (requestState2 != requestState3) {
                    zEquals = request.equals(this.f24938c);
                } else {
                    zEquals = request.equals(this.d) && ((requestState = this.f24940f) == RequestCoordinator.RequestState.SUCCESS || requestState == requestState3);
                }
                if (zEquals) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void clear() {
        synchronized (this.f24936a) {
            try {
                RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
                this.f24939e = requestState;
                this.f24938c.clear();
                if (this.f24940f != requestState) {
                    this.f24940f = requestState;
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean d(Request request) {
        boolean z;
        synchronized (this.f24936a) {
            RequestCoordinator requestCoordinator = this.f24937b;
            z = requestCoordinator == null || requestCoordinator.d(this);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final void e(Request request) {
        synchronized (this.f24936a) {
            try {
                if (request.equals(this.d)) {
                    this.f24940f = RequestCoordinator.RequestState.FAILED;
                    RequestCoordinator requestCoordinator = this.f24937b;
                    if (requestCoordinator != null) {
                        requestCoordinator.e(this);
                    }
                    return;
                }
                this.f24939e = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator.RequestState requestState = this.f24940f;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f24940f = requestState2;
                    this.d.begin();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean f() {
        boolean z;
        synchronized (this.f24936a) {
            try {
                RequestCoordinator.RequestState requestState = this.f24939e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.CLEARED;
                z = requestState == requestState2 && this.f24940f == requestState2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final void g(Request request) {
        synchronized (this.f24936a) {
            try {
                if (request.equals(this.f24938c)) {
                    this.f24939e = RequestCoordinator.RequestState.SUCCESS;
                } else if (request.equals(this.d)) {
                    this.f24940f = RequestCoordinator.RequestState.SUCCESS;
                }
                RequestCoordinator requestCoordinator = this.f24937b;
                if (requestCoordinator != null) {
                    requestCoordinator.g(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.bumptech.glide.request.RequestCoordinator] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override // com.bumptech.glide.request.RequestCoordinator
    public final RequestCoordinator getRoot() {
        ?? root;
        synchronized (this.f24936a) {
            try {
                RequestCoordinator requestCoordinator = this.f24937b;
                this = this;
                if (requestCoordinator != null) {
                    root = requestCoordinator.getRoot();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean h(Request request) {
        if (request instanceof ErrorRequestCoordinator) {
            ErrorRequestCoordinator errorRequestCoordinator = (ErrorRequestCoordinator) request;
            if (this.f24938c.h(errorRequestCoordinator.f24938c) && this.d.h(errorRequestCoordinator.d)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean i(Request request) {
        boolean z;
        synchronized (this.f24936a) {
            RequestCoordinator requestCoordinator = this.f24937b;
            z = (requestCoordinator == null || requestCoordinator.i(this)) && request.equals(this.f24938c);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f24936a) {
            try {
                RequestCoordinator.RequestState requestState = this.f24939e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                z = requestState == requestState2 || this.f24940f == requestState2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void pause() {
        synchronized (this.f24936a) {
            try {
                RequestCoordinator.RequestState requestState = this.f24939e;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState == requestState2) {
                    this.f24939e = RequestCoordinator.RequestState.PAUSED;
                    this.f24938c.pause();
                }
                if (this.f24940f == requestState2) {
                    this.f24940f = RequestCoordinator.RequestState.PAUSED;
                    this.d.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
