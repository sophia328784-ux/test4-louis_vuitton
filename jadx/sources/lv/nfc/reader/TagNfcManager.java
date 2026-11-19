package lv.nfc.reader;

import androidx.lifecycle.MutableLiveData;
import lv.nfc.reader.data.models.LVResult;
import lv.nfc.reader.data.models.LVTagInput;
import lv.nfc.reader.data.models.LVTagResult;

/* JADX INFO: loaded from: classes4.dex */
public class TagNfcManager {
    public MutableLiveData<LVResult<LVTagResult>> scan(LVTagInput lVTagInput) {
        final MutableLiveData<LVResult<LVTagResult>> mutableLiveData = new MutableLiveData<>();
        new TagNfcExecutor().scanTag(lVTagInput, new TagNfcExecutorCallback() { // from class: lv.nfc.reader.TagNfcManager.1
            @Override // lv.nfc.reader.TagNfcExecutorCallback
            public void error(Exception exc) {
                mutableLiveData.postValue(new LVResult(exc));
            }

            @Override // lv.nfc.reader.TagNfcExecutorCallback
            public void success(LVTagResult lVTagResult) {
                mutableLiveData.postValue(new LVResult(lVTagResult));
            }
        });
        return mutableLiveData;
    }
}
