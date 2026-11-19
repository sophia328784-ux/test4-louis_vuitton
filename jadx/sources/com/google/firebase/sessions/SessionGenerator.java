package com.google.firebase.sessions;

import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/sessions/SessionGenerator;", "", "Lcom/google/firebase/sessions/TimeProvider;", "timeProvider", "Lcom/google/firebase/sessions/UuidGenerator;", "uuidGenerator", "<init>", "(Lcom/google/firebase/sessions/TimeProvider;Lcom/google/firebase/sessions/UuidGenerator;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SessionGenerator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f35493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UuidGenerator f35494b;

    @Inject
    public SessionGenerator(TimeProvider timeProvider, UuidGenerator uuidGenerator) {
        timeProvider.getClass();
        uuidGenerator.getClass();
        this.f35493a = timeProvider;
        this.f35494b = uuidGenerator;
    }

    public final SessionDetails a(SessionDetails sessionDetails) {
        String str;
        String string = this.f35494b.next().toString();
        string.getClass();
        String lowerCase = StringsKt.J(string, "-", "").toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return new SessionDetails(lowerCase, (sessionDetails == null || (str = sessionDetails.f35467b) == null) ? lowerCase : str, sessionDetails != null ? sessionDetails.f35468c + 1 : 0, this.f35493a.a().f35538b);
    }
}
