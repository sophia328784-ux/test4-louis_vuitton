package com.sightcall.core.experiences.wrapper;

import android.content.Intent;
import android.net.Uri;
import androidx.fragment.app.Fragment;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J=\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072!\u0010\b\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u00030\tH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;", "", "startWithIntent", "", "uri", "Landroid/net/Uri;", DbParams.KEY_DATA, "", "myCallback", "Lkotlin/Function1;", "Landroid/content/Intent;", "Lkotlin/ParameterName;", "name", "intent", "startWithFragment", "Landroidx/fragment/app/Fragment;", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DigitalFlowWrapper {
    Fragment startWithFragment(Uri uri);

    void startWithIntent(Uri uri, String data, Function1<? super Intent, Unit> myCallback);
}
