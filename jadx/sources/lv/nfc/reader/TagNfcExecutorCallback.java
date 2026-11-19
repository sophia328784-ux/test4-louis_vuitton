package lv.nfc.reader;

import lv.nfc.reader.data.models.LVTagResult;

/* JADX INFO: loaded from: classes4.dex */
public interface TagNfcExecutorCallback {
    void error(Exception exc);

    void success(LVTagResult lVTagResult);
}
