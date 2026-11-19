package com.linecorp.linesdk;

import defpackage.n00;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GetGroupsResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f36055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36056b;

    public GetGroupsResponse(List<LineGroup> list, String str) {
        this.f36055a = list;
        this.f36056b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GetFriendsResponse{groups=");
        sb.append(this.f36055a);
        sb.append(", nextPageRequestToken='");
        return n00.r(this.f36056b, "'}", sb);
    }

    public GetGroupsResponse(List<LineGroup> list) {
        this.f36055a = list;
    }
}
