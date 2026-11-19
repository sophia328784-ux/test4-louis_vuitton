package com.bumptech.glide.request;

/* JADX INFO: loaded from: classes2.dex */
public class ThumbnailRequestCoordinator implements RequestCoordinator, Request {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequestCoordinator f24950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile SingleRequest f24952c;
    public volatile Request d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RequestCoordinator.RequestState f24953e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RequestCoordinator.RequestState f24954f;
    public boolean g;

    public ThumbnailRequestCoordinator(Object obj, RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f24953e = requestState;
        this.f24954f = requestState;
        this.f24951b = obj;
        this.f24950a = requestCoordinator;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean a() {
        boolean z;
        synchronized (this.f24951b) {
            z = this.f24953e == RequestCoordinator.RequestState.SUCCESS;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.Request
    public final boolean b() {
        boolean z;
        synchronized (this.f24951b) {
            try {
                z = this.d.b() || this.f24952c.b();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void begin() {
        synchronized (this.f24951b) {
            try {
                this.g = true;
                try {
                    if (this.f24953e != RequestCoordinator.RequestState.SUCCESS) {
                        RequestCoordinator.RequestState requestState = this.f24954f;
                        RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                        if (requestState != requestState2) {
                            this.f24954f = requestState2;
                            this.d.begin();
                        }
                    }
                    if (this.g) {
                        RequestCoordinator.RequestState requestState3 = this.f24953e;
                        RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                        if (requestState3 != requestState4) {
                            this.f24953e = requestState4;
                            this.f24952c.begin();
                        }
                    }
                    this.g = false;
                } catch (Throwable th) {
                    this.g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean c(Request request) {
        boolean z;
        synchronized (this.f24951b) {
            try {
                RequestCoordinator requestCoordinator = this.f24950a;
                z = (requestCoordinator == null || requestCoordinator.c(this)) && request.equals(this.f24952c) && !b();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void clear() {
        synchronized (this.f24951b) {
            this.g = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f24953e = requestState;
            this.f24954f = requestState;
            this.d.clear();
            this.f24952c.clear();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean d(Request request) {
        boolean z;
        synchronized (this.f24951b) {
            try {
                RequestCoordinator requestCoordinator = this.f24950a;
                z = (requestCoordinator == null || requestCoordinator.d(this)) && (request.equals(this.f24952c) || this.f24953e != RequestCoordinator.RequestState.SUCCESS);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final void e(Request request) {
        synchronized (this.f24951b) {
            try {
                if (!request.equals(this.f24952c)) {
                    this.f24954f = RequestCoordinator.RequestState.FAILED;
                    return;
                }
                this.f24953e = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.f24950a;
                if (requestCoordinator != null) {
                    requestCoordinator.e(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean f() {
        boolean z;
        synchronized (this.f24951b) {
            z = this.f24953e == RequestCoordinator.RequestState.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final void g(Request request) {
        synchronized (this.f24951b) {
            try {
                if (request.equals(this.d)) {
                    this.f24954f = RequestCoordinator.RequestState.SUCCESS;
                    return;
                }
                this.f24953e = RequestCoordinator.RequestState.SUCCESS;
                RequestCoordinator requestCoordinator = this.f24950a;
                if (requestCoordinator != null) {
                    requestCoordinator.g(this);
                }
                if (!this.f24954f.a()) {
                    this.d.clear();
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
        synchronized (this.f24951b) {
            try {
                RequestCoordinator requestCoordinator = this.f24950a;
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
        if (!(request instanceof ThumbnailRequestCoordinator)) {
            return false;
        }
        ThumbnailRequestCoordinator thumbnailRequestCoordinator = (ThumbnailRequestCoordinator) request;
        if (this.f24952c == null) {
            if (thumbnailRequestCoordinator.f24952c != null) {
                return false;
            }
        } else if (!this.f24952c.h(thumbnailRequestCoordinator.f24952c)) {
            return false;
        }
        if (this.d == null) {
            return thumbnailRequestCoordinator.d == null;
        }
        return this.d.h(thumbnailRequestCoordinator.d);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public final boolean i(Request request) {
        boolean z;
        synchronized (this.f24951b) {
            try {
                RequestCoordinator requestCoordinator = this.f24950a;
                z = (requestCoordinator == null || requestCoordinator.i(this)) && request.equals(this.f24952c) && this.f24953e != RequestCoordinator.RequestState.PAUSED;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f24951b) {
            z = this.f24953e == RequestCoordinator.RequestState.RUNNING;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final void pause() {
        synchronized (this.f24951b) {
            try {
                if (!this.f24954f.a()) {
                    this.f24954f = RequestCoordinator.RequestState.PAUSED;
                    this.d.pause();
                }
                if (!this.f24953e.a()) {
                    this.f24953e = RequestCoordinator.RequestState.PAUSED;
                    this.f24952c.pause();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
