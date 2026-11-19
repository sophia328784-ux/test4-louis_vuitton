package com.linecorp.linesdk;

import defpackage.n00;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetFriendsResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f36053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36054b;

    public GetFriendsResponse(List<LineFriendProfile> list, String str) {
        this.f36053a = list;
        this.f36054b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GetFriendsResponse{friends=");
        sb.append(this.f36053a);
        sb.append(", nextPageRequestToken='");
        return n00.r(this.f36054b, "'}", sb);
    }

    public GetFriendsResponse(List<LineFriendProfile> list) {
        this.f36053a = list;
    }
}
