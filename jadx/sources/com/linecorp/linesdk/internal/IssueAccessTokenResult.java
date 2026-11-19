package com.linecorp.linesdk.internal;

import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.Scope;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class IssueAccessTokenResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InternalAccessToken f36179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f36180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LineIdToken f36181c;

    public IssueAccessTokenResult(InternalAccessToken internalAccessToken, List<Scope> list, LineIdToken lineIdToken) {
        this.f36179a = internalAccessToken;
        this.f36180b = Collections.unmodifiableList(list);
        this.f36181c = lineIdToken;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            IssueAccessTokenResult issueAccessTokenResult = (IssueAccessTokenResult) obj;
            if (!this.f36179a.equals(issueAccessTokenResult.f36179a) || !this.f36180b.equals(issueAccessTokenResult.f36180b)) {
                return false;
            }
            LineIdToken lineIdToken = issueAccessTokenResult.f36181c;
            LineIdToken lineIdToken2 = this.f36181c;
            if (lineIdToken2 != null) {
                return lineIdToken2.equals(lineIdToken);
            }
            if (lineIdToken == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f36180b.hashCode() + (this.f36179a.hashCode() * 31)) * 31;
        LineIdToken lineIdToken = this.f36181c;
        return iHashCode + (lineIdToken != null ? lineIdToken.hashCode() : 0);
    }

    public final String toString() {
        return "IssueAccessTokenResult{accessToken=#####, scopes=" + this.f36180b + ", idToken=" + this.f36181c + '}';
    }
}
