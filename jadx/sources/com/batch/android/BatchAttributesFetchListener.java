package com.batch.android;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface BatchAttributesFetchListener {
    void onError();

    void onSuccess(Map<String, BatchUserAttribute> map);
}
