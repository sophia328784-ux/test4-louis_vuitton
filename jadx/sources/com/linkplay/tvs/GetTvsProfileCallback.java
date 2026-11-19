package com.linkplay.tvs;

/* JADX INFO: loaded from: classes2.dex */
public interface GetTvsProfileCallback {
    void onFailure(Exception exc);

    void onSuccess(TvsProfile tvsProfile);
}
