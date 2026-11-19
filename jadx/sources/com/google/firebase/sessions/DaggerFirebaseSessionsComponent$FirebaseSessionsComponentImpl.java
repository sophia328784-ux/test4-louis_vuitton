package com.google.firebase.sessions;

import com.google.firebase.sessions.dagger.internal.InstanceFactory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class DaggerFirebaseSessionsComponent$FirebaseSessionsComponentImpl implements FirebaseSessionsComponent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InstanceFactory f35411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InstanceFactory f35412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Provider f35413c;
    public Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InstanceFactory f35414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Provider f35415f;
    public InstanceFactory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Provider f35416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public InstanceFactory f35417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Provider f35418j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Provider f35419k;
    public Provider l;
    public Provider m;
    public Provider n;
    public Provider o;
    public Provider p;
    public Provider q;
    public Provider r;
    public Provider s;
    public Provider t;
    public Provider u;
    public Provider v;
    public Provider w;

    @Override // com.google.firebase.sessions.FirebaseSessionsComponent
    public final SharedSessionRepository a() {
        return (SharedSessionRepository) this.u.get();
    }

    @Override // com.google.firebase.sessions.FirebaseSessionsComponent
    public final FirebaseSessions b() {
        return (FirebaseSessions) this.w.get();
    }
}
