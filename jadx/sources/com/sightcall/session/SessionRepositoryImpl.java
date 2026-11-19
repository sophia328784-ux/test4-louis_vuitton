package com.sightcall.session;

import android.net.Uri;
import com.sightcall.httpclient.AuthorizationToken;
import com.sightcall.pratik.Result;
import com.sightcall.session.datasource.reference.ReferenceDataSource;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0096@¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\tH\u0016J\"\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0012J\"\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/sightcall/session/SessionRepositoryImpl;", "Lcom/sightcall/session/SessionRepository;", "referenceDataSource", "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;", "<init>", "(Lcom/sightcall/session/datasource/reference/ReferenceDataSource;)V", "getReference", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/session/Reference;", "", "uri", "Landroid/net/Uri;", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "interruptGetReference", "switchToGuest", "Lcom/sightcall/session/ReferenceUpdate;", "token", "Lcom/sightcall/httpclient/AuthorizationToken;", "(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "switchToAttendee", "session_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SessionRepositoryImpl implements SessionRepository {
    private final ReferenceDataSource referenceDataSource;

    @Inject
    public SessionRepositoryImpl(ReferenceDataSource referenceDataSource) {
        referenceDataSource.getClass();
        this.referenceDataSource = referenceDataSource;
    }

    @Override // com.sightcall.session.SessionRepository
    public Object getReference(Uri uri, Continuation<? super Result<Reference, Unit>> continuation) {
        return this.referenceDataSource.getReference(uri, continuation);
    }

    @Override // com.sightcall.session.SessionRepository
    public void interruptGetReference() {
        this.referenceDataSource.interruptGetReference();
    }

    @Override // com.sightcall.session.SessionRepository
    public Object switchToAttendee(AuthorizationToken authorizationToken, Continuation<? super Result<ReferenceUpdate, Unit>> continuation) {
        return this.referenceDataSource.switchToAttendee(authorizationToken, continuation);
    }

    @Override // com.sightcall.session.SessionRepository
    public Object switchToGuest(AuthorizationToken authorizationToken, Continuation<? super Result<ReferenceUpdate, Unit>> continuation) {
        return this.referenceDataSource.switchToGuest(authorizationToken, continuation);
    }
}
