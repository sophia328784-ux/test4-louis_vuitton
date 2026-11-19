package retrofit2;

/* JADX INFO: loaded from: classes5.dex */
public interface Callback<T> {
    void onFailure(Call call, Throwable th);

    void onResponse(Call call, Response response);
}
