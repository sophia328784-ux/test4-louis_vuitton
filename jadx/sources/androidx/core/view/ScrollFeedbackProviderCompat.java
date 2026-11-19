package androidx.core.view;

import android.os.Build;
import android.view.ScrollFeedbackProvider;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: loaded from: classes.dex */
public class ScrollFeedbackProviderCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScrollFeedbackProviderImpl f12187a;

    public static class ScrollFeedbackProviderApi35Impl implements ScrollFeedbackProviderImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ScrollFeedbackProvider f12188a;

        public ScrollFeedbackProviderApi35Impl(NestedScrollView nestedScrollView) {
            this.f12188a = ScrollFeedbackProvider.createProvider(nestedScrollView);
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollLimit(int i2, int i3, int i4, boolean z) {
            this.f12188a.onScrollLimit(i2, i3, i4, z);
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollProgress(int i2, int i3, int i4, int i5) {
            this.f12188a.onScrollProgress(i2, i3, i4, i5);
        }
    }

    public static class ScrollFeedbackProviderBaseImpl implements ScrollFeedbackProviderImpl {
        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollLimit(int i2, int i3, int i4, boolean z) {
        }

        @Override // androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl
        public final void onScrollProgress(int i2, int i3, int i4, int i5) {
        }
    }

    public interface ScrollFeedbackProviderImpl {
        void onScrollLimit(int i2, int i3, int i4, boolean z);

        void onScrollProgress(int i2, int i3, int i4, int i5);
    }

    public ScrollFeedbackProviderCompat(NestedScrollView nestedScrollView) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f12187a = new ScrollFeedbackProviderApi35Impl(nestedScrollView);
        } else {
            this.f12187a = new ScrollFeedbackProviderBaseImpl();
        }
    }

    public final void a(int i2, int i3, int i4, boolean z) {
        this.f12187a.onScrollLimit(i2, i3, i4, z);
    }

    public final void b(int i2, int i3, int i4, int i5) {
        this.f12187a.onScrollProgress(i2, i3, i4, i5);
    }
}
