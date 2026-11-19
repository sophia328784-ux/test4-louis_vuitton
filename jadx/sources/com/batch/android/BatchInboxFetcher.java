package com.batch.android;

import android.os.Handler;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BatchInboxFetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.batch.android.q.f f22770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f22771b = new Handler();

    public interface OnNewNotificationsFetchedListener {
        void onFetchFailure(String str);

        void onFetchSuccess(List<BatchInboxNotificationContent> list, boolean z, boolean z2);
    }

    public interface OnNextPageFetchedListener {
        void onFetchFailure(String str);

        void onFetchSuccess(List<BatchInboxNotificationContent> list, boolean z);
    }

    public BatchInboxFetcher(com.batch.android.q.f fVar) {
        this.f22770a = fVar;
    }

    public void fetchNewNotifications(OnNewNotificationsFetchedListener onNewNotificationsFetchedListener) {
        if (onNewNotificationsFetchedListener != null && this.f22771b != null) {
            onNewNotificationsFetchedListener = new a(onNewNotificationsFetchedListener);
        }
        this.f22770a.a(onNewNotificationsFetchedListener);
    }

    public void fetchNextPage(OnNextPageFetchedListener onNextPageFetchedListener) {
        if (onNextPageFetchedListener != null && this.f22771b != null) {
            onNextPageFetchedListener = new b(onNextPageFetchedListener);
        }
        this.f22770a.a(onNextPageFetchedListener);
    }

    public List<BatchInboxNotificationContent> getFetchedNotifications() {
        return this.f22770a.a();
    }

    public boolean hasMore() {
        return !this.f22770a.b();
    }

    public void markAllAsRead() {
        this.f22770a.c();
    }

    public void markAsDeleted(BatchInboxNotificationContent batchInboxNotificationContent) {
        this.f22770a.a(batchInboxNotificationContent);
    }

    public void markAsRead(BatchInboxNotificationContent batchInboxNotificationContent) {
        this.f22770a.b(batchInboxNotificationContent);
    }

    public void setFetchLimit(int i2) {
        this.f22770a.a(i2);
    }

    public void setFilterSilentNotifications(boolean z) {
        this.f22770a.a(z);
    }

    public void setHandlerOverride(Handler handler) {
        if (handler != null) {
            this.f22771b = handler;
        }
    }

    public void setMaxPageSize(int i2) {
        this.f22770a.b(i2);
    }

    public class a implements OnNewNotificationsFetchedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OnNewNotificationsFetchedListener f22772a;

        public a(OnNewNotificationsFetchedListener onNewNotificationsFetchedListener) {
            this.f22772a = onNewNotificationsFetchedListener;
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNewNotificationsFetchedListener
        public void onFetchFailure(String str) {
            BatchInboxFetcher.this.f22771b.post(new m(str, 0, this.f22772a));
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNewNotificationsFetchedListener
        public void onFetchSuccess(final List<BatchInboxNotificationContent> list, final boolean z, final boolean z2) {
            Handler handler = BatchInboxFetcher.this.f22771b;
            final OnNewNotificationsFetchedListener onNewNotificationsFetchedListener = this.f22772a;
            handler.post(new Runnable() { // from class: com.batch.android.n
                @Override // java.lang.Runnable
                public final void run() {
                    onNewNotificationsFetchedListener.onFetchSuccess(list, z, z2);
                }
            });
        }
    }

    public class b implements OnNextPageFetchedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OnNextPageFetchedListener f22774a;

        public b(OnNextPageFetchedListener onNextPageFetchedListener) {
            this.f22774a = onNextPageFetchedListener;
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNextPageFetchedListener
        public void onFetchFailure(String str) {
            BatchInboxFetcher.this.f22771b.post(new m(str, 1, this.f22774a));
        }

        @Override // com.batch.android.BatchInboxFetcher.OnNextPageFetchedListener
        public void onFetchSuccess(final List<BatchInboxNotificationContent> list, final boolean z) {
            Handler handler = BatchInboxFetcher.this.f22771b;
            final OnNextPageFetchedListener onNextPageFetchedListener = this.f22774a;
            handler.post(new Runnable() { // from class: com.batch.android.o
                @Override // java.lang.Runnable
                public final void run() {
                    onNextPageFetchedListener.onFetchSuccess(list, z);
                }
            });
        }
    }
}
