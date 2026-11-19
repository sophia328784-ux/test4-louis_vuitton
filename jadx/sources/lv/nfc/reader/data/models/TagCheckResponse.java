package lv.nfc.reader.data.models;

import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class TagCheckResponse implements Serializable {
    private Data data;

    public class Data {

        @SerializedName("APDU")
        private String apdu;
        private String connectionId;

        public Data() {
        }

        public String getApdu() {
            return this.apdu;
        }

        public String getConnectionId() {
            return this.connectionId;
        }

        public void setApdu(String str) {
            this.apdu = str;
        }

        public void setConnectionId(String str) {
            this.connectionId = str;
        }
    }

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }
}
