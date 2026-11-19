package com.linkplay.core.nas;

import java.util.List;
import org.teleal.cling.model.ContentItem;

/* JADX INFO: loaded from: classes.dex */
public interface LPMediaServerResultListener {
    void onFailed(Exception exc);

    void onSuccess(List<ContentItem> list);
}
