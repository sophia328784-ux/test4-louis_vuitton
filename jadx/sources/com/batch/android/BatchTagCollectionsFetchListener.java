package com.batch.android;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface BatchTagCollectionsFetchListener {
    void onError();

    void onSuccess(Map<String, Set<String>> map);
}
