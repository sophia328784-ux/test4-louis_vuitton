package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.DataReader;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface DataSource extends DataReader {

    public interface Factory {
        DataSource a();
    }

    long a(DataSpec dataSpec);

    void c(TransferListener transferListener);

    void close();

    default Map f() {
        return Collections.EMPTY_MAP;
    }

    Uri getUri();
}
