package retrofit2;

import okhttp3.Request;

/* JADX INFO: loaded from: classes5.dex */
public interface Call<T> extends Cloneable {
    void cancel();

    /* JADX INFO: renamed from: clone */
    Call mo90clone();

    Response execute();

    boolean isCanceled();

    void p(Callback callback);

    Request request();
}
