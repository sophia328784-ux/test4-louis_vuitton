package androidx.hilt.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.vuitton.android.data.repository.VideoPreloadWorker;

/* JADX INFO: loaded from: classes3.dex */
public interface WorkerAssistedFactory<T extends ListenableWorker> {
    VideoPreloadWorker a(Context context, WorkerParameters workerParameters);
}
