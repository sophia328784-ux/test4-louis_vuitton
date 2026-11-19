package com.vuitton.android.presentation.push;

import android.app.Activity;
import android.content.Intent;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.main.MainActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/push/NotificationsManager;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NotificationsManager {
    boolean a();

    void b();

    boolean c();

    Object d(ContinuationImpl continuationImpl);

    boolean e();

    void f(BaseActivity baseActivity);

    void g(BaseActivity baseActivity, Intent intent);

    Object h(String str);

    Object i(String str, ContinuationImpl continuationImpl);

    void init();

    Object j(ContinuationImpl continuationImpl);

    void k(boolean z, MainActivity mainActivity);

    void l();

    void m(String str);

    void n();

    List o();

    void p(Activity activity, boolean z);

    boolean q();
}
