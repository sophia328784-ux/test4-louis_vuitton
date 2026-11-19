package com.vuitton.android.presentation.redirectlink;

import android.app.Activity;
import android.net.Uri;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LinkViewModel {
    void B8();

    SharedFlow Eb();

    StateFlow Z6();

    void Zb();

    Flow c2();

    void f1();

    void l9(Activity activity, Uri uri, String str, boolean z);

    void wc(String str);
}
