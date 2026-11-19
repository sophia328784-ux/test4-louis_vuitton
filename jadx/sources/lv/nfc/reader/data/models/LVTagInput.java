package lv.nfc.reader.data.models;

import android.nfc.tech.NfcV;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class LVTagInput {
    private List<String> cxidAllowList;
    private Map<String, String> headers;
    private String host;
    private NfcV nfc;

    public LVTagInput(String str, NfcV nfcV, Map<String, String> map, List<String> list) {
        this.host = str;
        this.nfc = nfcV;
        this.headers = map;
        this.cxidAllowList = list;
    }

    public List<String> getCxidAllowList() {
        return this.cxidAllowList;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public String getHost() {
        return this.host;
    }

    public NfcV getNfc() {
        return this.nfc;
    }

    public void setHeaders(Map<String, String> map) {
        this.headers = map;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setNfc(NfcV nfcV) {
        this.nfc = nfcV;
    }
}
